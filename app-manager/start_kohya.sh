#!/usr/bin/env bash
export PYTHONUNBUFFERED=1
cd /workspace/kohya_ss
source /venv/bin/activate
export HF_HOME="/workspace"
cd /workspace/kohya_ss && nohup ./gui.sh --listen 0.0.0.0 --server_port 3001 --headless > /workspace/logs/kohya_ss.log 2>&1 &
