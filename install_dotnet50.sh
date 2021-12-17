#!/bin/bash

# Run as SU
mkdir -p /dotnet 
cd /dotnet
curl -L -o dotnet-sdk-5.0.404-linux-x64.tar.gz "https://download.visualstudio.microsoft.com/download/pr/2c1eb8c8-ac05-4dc7-9bef-307b3e450e9d/75e85b3d1662f60afd69572fd5df6884/dotnet-sdk-5.0.404-linux-x64.tar.gz"
tar zxf dotnet-sdk-5.0.404-linux-x64.tar.gz -C /dotnet
echo export DOTNET_ROOT=/dotnet >> /etc/bash.bashrc
echo export PATH=\$PATH:/dotnet >> /etc/bash.bashrc

