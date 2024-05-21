#!/bin/bash
# 远程过程执行添加文件夹

# folders=("kubevirt-device-plugin.git" "go-xdxlib.git" "go-xdxml.git" "xdxct-device-plugin.git" "libxdxgpu-container.git" "docker-toolkit.git")
folders=("xdxct-vgpu-device-manager.git")


for folder in "${folders[@]}"; do
    command="mkdir -p $folder && cd $folder && git init --bare && git symbolic-ref HEAD refs/heads/main"
    ssh git@10.211.10.15 "$command"
done
