variable "REGISTRY" {
    default = "docker.io"
}

variable "REGISTRY_USER" {
    default = "ashleykza"
}

variable "APP" {
    default = "kohya"
}

variable "RELEASE" {
    default = "25.2.1"
}

variable "CU_VERSION" {
    default = "124"
}

variable "BASE_IMAGE_REPOSITORY" {
    default = "ashleykza/runpod-base"
}

variable "BASE_IMAGE_VERSION" {
    default = "2.4.2"
}

group "default" {
    targets = ["cu124-py311"]
}

group "all" {
    targets = [
        "cu124-py311",
        "cu128-py311",
    ]
}

target "cu124-py311" {
    dockerfile = "Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/${APP}:${RELEASE}.post1"]
    args = {
        RELEASE             = "${RELEASE}"
        BASE_IMAGE          = "${BASE_IMAGE_REPOSITORY}:${BASE_IMAGE_VERSION}-python3.11-cuda12.4.1-torch2.6.0"
        INDEX_URL           = "https://download.pytorch.org/whl/cu124"
        TORCH_VERSION       = "2.6.0+cu124"
        XFORMERS_VERSION    = "0.0.29.post3"
        KOHYA_VERSION       = "v${RELEASE}"
        APP_MANAGER_VERSION = "1.2.2"
    }
}

target "cu128-py311" {
    dockerfile = "Dockerfile"
    tags = ["${REGISTRY}/${REGISTRY_USER}/${APP}:${RELEASE}.post1"]
    args = {
        RELEASE             = "${RELEASE}"
        BASE_IMAGE          = "${BASE_IMAGE_REPOSITORY}:${BASE_IMAGE_VERSION}-python3.11-cuda12.8.1-torch2.7.0"
        INDEX_URL           = "https://download.pytorch.org/whl/cu128"
        TORCH_VERSION       = "2.7.0+cu128"
        XFORMERS_VERSION    = "0.0.30"
        KOHYA_VERSION       = "v${RELEASE}"
        APP_MANAGER_VERSION = "1.2.2"
    }
}
