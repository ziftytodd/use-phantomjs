#!/bin/sh
mkdir -p /scratch/jenkins/phantomjs
phantomjs_name=phantomjs-1.8.2-linux-x86_64
test -f /scratch/jenkins/phantomjs/${phantomjs_name}.tar.bz2 ||  wget -q -P /scratch/jenkins/phantomjs https://phantomjs.googlecode.com/files/phantomjs-1.8.2-linux-x86_64.tar.bz2
test -f /scratch/jenkins/phantomjs/${phantomjs_name}/bin/phantomjs || tar xjf /scratch/jenkins/phantomjs/${phantomjs_name}.tar.bz2  -C /scratch/jenkins/phantomjs
export PATH=/scratch/jenkins/phantomjs/${phantomjs_name}/bin:$PATH
