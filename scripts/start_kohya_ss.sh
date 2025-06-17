#!/usr/bin/env bash
export PYTHONUNBUFFERED=1
echo "KOHYA_SS: Starting Kohya_ss Web UI"
cd /workspace/kohya_ss
source /venv/bin/activate
export HF_HOME="/workspace"
export LD_LIBRARY_PATH="/usr/lib/x86_64-linux-gnu"
nohup ./gui.sh --listen 0.0.0.0 --server_port 3001 --headless > /workspace/logs/kohya_ss.log 2>&1 &
echo "KOHYA_SS: Kohya_ss started"
echo "KOHYA_SS: Log file: /workspace/logs/kohya_ss.log"
