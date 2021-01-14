#!/bin/sh

# 1.拉取eNet支持库
git clone https://$GIT_ACCESS_TOKEN@github.com/tencentyun/iot-p2p.git

cd iot-p2p/components_src/eNet



# 2.编译Linux平台工程配置
mkdir -p build/linux

cd build/linux

cmake ../.. # 编译release版本
#cmake ../.. -DCMAKE_BUILD_TYPE=DEBUG # 编译debug版本

strip -x -S libenet.a -o  libenet_.a
