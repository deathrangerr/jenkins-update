#!/bin/bash
apt install wget -y
#get into the jenkins directory where war is stored
cd /usr/share/jenkins
#stop jenkins
sudo service jenkins stop
#backup old jenkins war file
sudo mv jenkins.war jenkins.war.old
#Get latest Jenkins
sudo wget https://updates.jenkins-ci.org/latest/jenkins.war
#start Jenkins
sudo service jenkins start
