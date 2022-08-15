#!/bin/bash

# update the apt package list and upgrade the packages
sudo apt update
sudo apt upgrade

# Installing flutter sdk through snap (refer to official documentation)
sudo snap install flutter --classic

# getting and setting the path of the flutter sdk
SDK_PATH=flutter sdk-path
flutter doctor

# Exporting the flutter sdk path into the PATH env variable
export PATH="$PATH:${SDK_PATH}/bin"

# Installing android sdk
sudo apt install android-sdk

# Installing android studio
sudo apt install snapd
# sudo apt install openjdk-11-jdk
sudo snap install android-studio --classic

flutter doctor --android-licenses
