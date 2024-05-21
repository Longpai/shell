#!/bin/bash
# 远程过程执行添加文件夹

set -eu
# folders=("xdxct-vgpu-device-manager" "kubevirt-device-plugin" "go-xdxlib" "go-xdxml" "xdxct-device-plugin" "libxdxgpu-container" "docker-toolkit")
folders=("bugzilla-install")

for folder in "${folders[@]}"; do
    command="cd $folder.git && git symbolic-ref HEAD refs/heads/main"
    ssh git@10.211.10.15 "$command"
done
