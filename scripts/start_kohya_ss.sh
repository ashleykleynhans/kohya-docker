#!/usr/bin/env bash
export PYTHONUNBUFFERED=1
echo "Starting Kohya_ss Web UI"
cd /workspace/kohya_ss
source /venv/bin/activate
export HF_HOME="/workspace"
nohup ./gui.sh --listen 0.0.0.0 --server_port 3001 --headless > /workspace/logs/kohya_ss.log 2>&1 &
echo "Kohya_ss started"
echo "Log file: /workspace/logs/kohya_ss.log"
