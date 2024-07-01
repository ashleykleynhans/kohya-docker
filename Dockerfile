ARG BASE_IMAGE
FROM ${BASE_IMAGE}

SHELL ["/bin/bash", "-o", "pipefail", "-c"]
ENV DEBIAN_FRONTEND=noninteractive \
    TZ=Europe/London \
    PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=on \
    SHELL=/bin/bash

# Add SDXL base model
# This needs to already have been downloaded:
#   wget https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors
RUN mkdir -p /sd-models
COPY sd_xl_base_1.0.safetensors /sd-models/sd_xl_base_1.0.safetensors

# Create workspace working directory
WORKDIR /

# Install Kohya_ss
ARG KOHYA_VERSION
RUN git clone https://github.com/bmaltais/kohya_ss.git /kohya_ss && \
    cd /kohya_ss && \
    git checkout ${KOHYA_VERSION} && \
    git submodule update --init --recursive

ARG INDEX_URL
ARG TORCH_VERSION
ARG XFORMERS_VERSION
WORKDIR /kohya_ss
COPY kohya_ss/requirements* ./
RUN python3 -m venv --system-site-packages /venv && \
    source /venv/bin/activate && \
    pip3 install torch==${TORCH_VERSION} torchvision torchaudio --index-url ${INDEX_URL} && \
    pip3 install xformers==${XFORMERS_VERSION} --index-url ${INDEX_URL} && \
    pip3 install bitsandbytes==0.43.0 \
        tensorboard==2.14.1 tensorflow==2.14.0 \
        wheel packaging tensorrt && \
    pip3 install tensorflow[and-cuda] && \
    pip3 install -r requirements.txt && \
    deactivate

# Install Application Manager
ARG APP_MANAGER_VERSION
WORKDIR /
RUN git clone https://github.com/ashleykleynhans/app-manager.git /app-manager && \
    cd /app-manager && \
    git checkout tags/${APP_MANAGER_VERSION} && \
    npm install
COPY app-manager/config.json /app-manager/public/config.json
COPY --chmod=755 app-manager/*.sh /app-manager/scripts/

# Remove existing SSH host keys
RUN rm -f /etc/ssh/ssh_host_*

# NGINX Proxy
COPY nginx/nginx.conf /etc/nginx/nginx.conf

# Set template version
ARG RELEASE
ENV TEMPLATE_VERSION=${RELEASE}

# Copy the scripts
COPY --chmod=755 scripts/* ./

# Copy the accelerate configuration
COPY kohya_ss/accelerate.yaml ./

# Start the container
SHELL ["/bin/bash", "--login", "-c"]
CMD [ "/start.sh" ]
