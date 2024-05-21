#!/bin/bash
# push 文件
set -eu
folders=("xdxct-vgpu-device-manager" "kubevirt-device-plugin" "go-xdxlib" "go-xdxml" "xdxct-device-plugin" "libxdxgpu-container" "docker-toolkit" "bugzilla-install" "some-images")
script_dir=$(dirname "$(readlink -f "$0")")
cd $script_dir

for folder in "${folders[@]}"; do
    if [ -d "$folder" ]; then
        echo "Delete dir $folder..."
        rm -rf $folder
    fi
done