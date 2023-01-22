#!/bin/bash

# Export PATH to include the IBM WebSphere Application Server bin directory
export PATH=$PATH:/opt/IBM/WebSphere/AppServer/bin

# Create an application server profile
/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName AppSrv01 -profilePath /opt/IBM/WebSphere/AppServer/profiles/AppSrv01 -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/managed

# Create a DMGR profile
/opt/IBM/WebSphere/AppServer/bin/manageprofiles.sh -create -profileName Dmgr01 -profilePath /opt/IBM/WebSphere/AppServer/profiles/Dmgr01 -templatePath /opt/IBM/WebSphere/AppServer/profileTemplates/management

# Add the application server profile as a node to the DMGR
/opt/IBM/WebSphere/AppServer/bin/addNode.sh 192.168.0.100 8879 AppSrv01

# Start the DMGR
/opt/IBM/WebSphere/AppServer/bin/startManager.sh