#!/bin/bash

# 비밀번호 변수 설정
PASSWORD="nvidia"

# make 빌드
make TARGET=ARMV8

# sudo make install (비밀번호 자동 입력)
echo "$PASSWORD" | sudo -S make PREFIX=/usr/local install

# .bashrc 환경변수 설정
cd
echo 'export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib' >> ~/.bashrc
source ~/.bashrc

# libv4l-dev 자동 설치 (yes 자동 + 비밀번호 자동 입력)
echo "$PASSWORD" | sudo -S apt-get install -y libv4l-dev
