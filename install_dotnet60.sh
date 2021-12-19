#!/bin/bash
# Chmod and run as SU
#
# Package paths for 6.0:
# "https://dotnetcli.azureedge.net/dotnet/Sdk/6.0.101/dotnet-sdk-6.0.101-linux-x64.tar.gz"

mkdir -p /.netRuntime
mkdir -p /.netRuntime/dotnet60
cd /.netRuntime/dotnet60
curl -L -o dotnet-sdk-6.0.101-linux-x64.tar.gz "https://dotnetcli.azureedge.net/dotnet/Sdk/6.0.101/dotnet-sdk-6.0.101-linux-x64.tar.gz"
tar zxf dotnet-sdk-6.0.101-linux-x64.tar.gz -C /.netRuntime/dotnet60
echo export DOTNET_ROOT=/.netRuntime/dotnet60 >> /etc/bash.bashrc
echo export PATH=\$PATH:/.netRuntime/dotnet60 >> /etc/bash.bashrc
