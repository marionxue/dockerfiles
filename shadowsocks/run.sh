#!/bin/bash
# change $password to your own shadowsocks password.
docker run -d --restart=always --name ssserver35537 -p 35537:35537 zyfdedh/shadowsocks:latest -s 0.0.0.0 -p 35537 -k $password -m rc4-md5 -t 300 --fast-open