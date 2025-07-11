<div align="center">

# Docker image for Kohya_ss

![Docker Pulls](https://img.shields.io/docker/pulls/ashleykza/kohya?style=for-the-badge&logo=docker&label=Docker%20Pulls&link=https%3A%2F%2Fhub.docker.com%2Frepository%2Fdocker%2Fashleykza%2Fkohya%2Fgeneral)
![Template Version](https://img.shields.io/github/v/tag/ashleykleynhans/kohya-docker?style=for-the-badge&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0idXRmLTgiPz4KPCEtLSBHZW5lcmF0b3I6IEFkb2JlIElsbHVzdHJhdG9yIDI2LjUuMywgU1ZHIEV4cG9ydCBQbHVnLUluIC4gU1ZHIFZlcnNpb246IDYuMDAgQnVpbGQgMCkgIC0tPgo8c3ZnIHZlcnNpb249IjEuMSIgaWQ9IkxheWVyXzEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IgoJIHZpZXdCb3g9IjAgMCAyMDAwIDIwMDAiIHN0eWxlPSJlbmFibGUtYmFja2dyb3VuZDpuZXcgMCAwIDIwMDAgMjAwMDsiIHhtbDpzcGFjZT0icHJlc2VydmUiPgo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPgoJLnN0MHtmaWxsOiM2NzNBQjc7fQo8L3N0eWxlPgo8Zz4KCTxnPgoJCTxwYXRoIGNsYXNzPSJzdDAiIGQ9Ik0xMDE3Ljk1LDcxMS4wNGMtNC4yMiwyLjM2LTkuMTgsMy4wMS0xMy44NiwxLjgyTDM4Ni4xNyw1NTUuM2MtNDEuNzItMTAuNzYtODYuMDItMC42My0xMTYuNiwyOS43MwoJCQlsLTEuNCwxLjM5Yy0zNS45MiwzNS42NS0yNy41NSw5NS44LDE2Ljc0LDEyMC4zbDU4NC4zMiwzMjQuMjNjMzEuMzYsMTcuNCw1MC44Miw1MC40NSw1MC44Miw4Ni4zMnY4MDYuNzYKCQkJYzAsMzUuNDktMzguNDEsNTcuNjctNjkuMTUsMzkuOTRsLTcwMy4xNS00MDUuNjRjLTIzLjYtMTMuNjEtMzguMTMtMzguNzgtMzguMTMtNjYuMDJWNjY2LjYzYzAtODcuMjQsNDYuNDUtMTY3Ljg5LDEyMS45Mi0yMTEuNjYKCQkJTDkzMy44NSw0Mi4xNWMyMy40OC0xMy44LDUxLjQ3LTE3LjcsNzcuODMtMTAuODRsNzQ1LjcxLDE5NC4xYzMxLjUzLDguMjEsMzYuOTksNTAuNjUsOC41Niw2Ni41N0wxMDE3Ljk1LDcxMS4wNHoiLz4KCQk8cGF0aCBjbGFzcz0ic3QwIiBkPSJNMTUyNy43NSw1MzYuMzhsMTI4Ljg5LTc5LjYzbDE4OS45MiwxMDkuMTdjMjcuMjQsMTUuNjYsNDMuOTcsNDQuNzMsNDMuODIsNzYuMTVsLTQsODU3LjYKCQkJYy0wLjExLDI0LjM5LTEzLjE1LDQ2Ljg5LTM0LjI1LDU5LjExbC03MDEuNzUsNDA2LjYxYy0zMi4zLDE4LjcxLTcyLjc0LTQuNTktNzIuNzQtNDEuOTJ2LTc5Ny40MwoJCQljMC0zOC45OCwyMS4wNi03NC45MSw1NS4wNy05My45Nmw1OTAuMTctMzMwLjUzYzE4LjIzLTEwLjIxLDE4LjY1LTM2LjMsMC43NS00Ny4wOUwxNTI3Ljc1LDUzNi4zOHoiLz4KCQk8cGF0aCBjbGFzcz0ic3QwIiBkPSJNMTUyNC4wMSw2NjUuOTEiLz4KCTwvZz4KPC9nPgo8L3N2Zz4K&logoColor=%23ffffff&label=Template%20Version&color=%23673ab7)

</div>

## Installs

* Ubuntu 22.04 LTS
* CUDA 12.4 / 12.8 (12.4 is the default)
* Python 3.11.12
* Torch 2.6.0 / 2.7.0 (2.6.0 is the default)
* xformers 0.0.29.post3 / 0.0.30 (0.0.29.post3 is the default)
* [Jupyter Lab](https://github.com/jupyterlab/jupyterlab)
* [code-server](https://github.com/coder/code-server)
* [Kohya_ss](https://github.com/bmaltais/kohya_ss) v25.2.1
* [runpodctl](https://github.com/runpod/runpodctl)
* [OhMyRunPod](https://github.com/kodxana/OhMyRunPod)
* [RunPod File Uploader](https://github.com/kodxana/RunPod-FilleUploader)
* [rclone](https://rclone.org/)
* [Application Manager](https://github.com/ashleykleynhans/app-manager)

## Available on Runpod

This image is designed to work on [Runpod](https://runpod.io?ref=2xxro4sy).

| Runpod Template Version                                                                 | Runpod Template Description                        |
|-----------------------------------------------------------------------------------------|----------------------------------------------------|
| [CUDA 12.4 template](https://runpod.io/console/deploy?template=uajca40f1z&ref=2xxro4sy) | Template with CUDA 12.4 for non-RTX 5090 GPU types |
| [CUDA 12.8 template](https://runpod.io/console/deploy?template=8y5a02q55r&ref=2xxro4sy) | Template with CUDA 12.8 for RTX 5090 GPU type      |


## Building the Docker image

> [!NOTE]
> You will need to edit the `docker-bake.hcl` file and update `REGISTRY_USER`,
> and `RELEASE`.  You can obviously edit the other values too, but these
> are the most important ones.

```bash
# Clone the repo
git clone https://github.com/ashleykleynhans/kohya-docker.git

# Download the models
cd kohya-docker
wget https://huggingface.co/stabilityai/stable-diffusion-xl-base-1.0/resolve/main/sd_xl_base_1.0.safetensors

# Log in to Docker Hub
docker login

# Build the default image (CUDA 12.4), tag the image, and push the image to Docker Hub
docker buildx bake -f docker-bake.hcl --push

# OR build a different image (eg. CUDA 12.8), tag the image, and push the image to Docker Hub
docker buildx bake -f docker-bake.hcl cu128-py311 --push

# OR build ALL images, tag the images, and push the images to Docker Hub
docker buildx bake -f docker-bake.hcl all --push

# Same as above but customize registry/user/release:
REGISTRY=ghcr.io REGISTRY_USER=myuser RELEASE=my-release docker buildx \
    bake -f docker-bake.hcl --push
```

## Running Locally

### Install Nvidia CUDA Driver

- [Linux](https://docs.nvidia.com/cuda/cuda-installation-guide-linux/index.html)
- [Windows](https://docs.nvidia.com/cuda/cuda-installation-guide-microsoft-windows/index.html)

### Start the Docker container

```bash
docker run -d \
  --gpus all \
  -v /workspace \
  -p 3000:3001 \
  -p 8000:8000 \
  -p 7777:7777 \
  -p 8888:8888 \
  -p 2999:2999 \
  -e ENABLE_TENSORBOARD=1 \
  ashleykza/kohya:latest
```

You can obviously substitute the image name and tag with your own.

## Ports

| Connect Port | Internal Port | Description          |
|--------------|---------------|----------------------|
| 3000         | 3001          | Kohya_ss             |
| 6006         | 6066          | Tensorboard          |
| 8000         | 8000          | Application Manager  |
| 7777         | 7777          | Code Server          |
| 8888         | 8888          | Jupyter Lab          |
| 2999         | 2999          | Runpod File Uploader |

## Environment Variables

| Variable             | Description                                      | Default               |
|----------------------|--------------------------------------------------|-----------------------|
| JUPYTER_LAB_PASSWORD | Set a password for Jupyter lab                   | not set - no password |
| DISABLE_AUTOLAUNCH   | Disable Kohya_ss from launching automatically    | (not set)             |
| DISABLE_SYNC         | Disable syncing if using a Runpod network volume | (not set)             |
| ENABLE_TENSORBOARD   | Enables Tensorboard on port 6006                 | enabled               |

## Logs

Kohya_ss creates a log file, and you can tail the log instead of
killing the service to view the logs.

| Application | Log file                     |
|-------------|------------------------------|
| Kohya_ss    | /workspace/logs/kohya_ss.log |

For example:

```bash
tail -f /workspace/logs/kohya_ss.log
```

## Acknowledgements

1. [Bernard Maltais](https://github.com/bmaltais) (core developer of Kohya_ss)
   for assisting with optimizing the Docker image.
2. [Madiator2011](https://github.com/kodxana) for advice
   and suggestions on improving these images, as well as all of the code for the
   code-server which was borrowed from his [madiator-docker-runpod](
   https://github.com/kodxana/madiator-docker-runpod) GitHub repository.

## Community and Contributing

Pull requests and issues on [GitHub](https://github.com/ashleykleynhans/kohya-docker)
are welcome. Bug fixes and new features are encouraged.

## Appreciate my work?

<a href="https://www.buymeacoffee.com/ashleyk" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 217px !important;" ></a>
