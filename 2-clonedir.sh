#!/bin/bash
# push 文件
set -eu

# folders=("kubevirt-device-plugin" "go-xdxlib" "go-xdxml" "xdxct-device-plugin" "libxdxgpu-container" "docker-toolkit")
folders=("xdxct-vgpu-device-manager")

for folder in "${folders[@]}"; do
    remote_addr="https://github.com/chen-mao/$folder.git"
    git clone $remote_addr
done