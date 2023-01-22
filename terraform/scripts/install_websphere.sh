#!/bin/bash

# Download IBM WebSphere Application Server installation package
curl -LO http://public.dhe.ibm.com/software/websphere/appserv/support/tools/install/WAS_V9.0_MP_ML.tar.gz

# Extract the package
tar -xzvf WAS_V9.0_MP_ML.tar.gz

# Change directory to the extracted package
cd WAS_V9.0_MP_ML

# Run the installation script with the options file
sudo ./install.sh -options response.txt