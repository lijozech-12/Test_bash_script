#!/bin/bash
mkdir "test_lijo"
wget https://go.dev/dl/go1.20.1.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.20.1.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" >> /root/.bashrc
source /root/.bashrc
go install github.com/krylovsk/mqtt-benchmark@main
cd ~/go/bin
./mqtt-benchmark --count 100 --payload 1676570398825836,235.262466,23.732767,4433.850586,235.275360,17.919977,3349.596924,237.041306,24.686216,5047.470215,38371494\n1676570400326152,235.114334,23.694399,4417.975586,234.834595,17.955975,3354.332031,236.488953,24.684692,5028.304688,38371500\n1676570401826254,235.694199,23.745787,4444.926758,235.690048,17.927025,3369.361084,236.673019,24.678722,5036.729492,38371505\n1676570403326665,235.231232,23.683762,4412.731934,235.060135,17.884850,3343.694092,236.757965,24.726858,5047.745605,38371510\n1676570404827033,235.801849,23.704594,4442.655273,235.351608,17.931808,3361.906982,236.704941,24.614113,5025.634277,38371516 --clients 700 --qos 0 >> mqtt_test_results.txt

