#!/bin/bash
# push 文件
set -eu
# folders=("kubevirt-device-plugin" "go-xdxlib" "go-xdxml" "xdxct-device-plugin" "libxdxgpu-container" "docker-toolkit")
# folders=("go-xdxlib" "go-xdxml" "xdxct-device-plugin" "libxdxgpu-container" "docker-toolkit")
folders=("xdxct-vgpu-device-manager")
script_dir=$(dirname "$(readlink -f "$0")")
echo $script_dir

for folder in "${folders[@]}"; do
    cd $script_dir/$folder
    # git remote remove origin
    # git remote add origin git@10.211.10.15:$folder.git
    # git config --local user.name "xiaoqing.chen"
    # git config --local user.email "xiaoqing.chen@xdxct.com"
    git tag -a -m "v1.0.0 version" v1.0.0
    git push origin main
    git push origin tags
done