#!/bin/bash
tmp=/home/paul/demonstration_ws
if [[ -z "${DEMO_WS}" ]]; then
  echo "export DEMO_WS=$tmp" >> ~/.bashrc
  source ~/.bashrc
fi


