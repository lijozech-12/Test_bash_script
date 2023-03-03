#!/bin/bash
mkdir "test_lijo"
wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.1.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> /root/.bashrc
source /root/.bashrc
echo "succeful"
wget https://raw.githubusercontent.com/lijozech-12/Test_bash_script/main/mqtt_test2.sh
chmod +x mqtt_test2.sh
./mqtt_test2.sh


