#!/usr/bin/env bash

set -e

echo Started some simple termshark tests.

echo Installing termshark for test use.

go install ./...

env

echo Making a test pcap.

cat <<EOF | xxd -r -p > /tmp/test.pcap
d4c3b2a102000400
0000000000000000
0000040006000000
f32a395200000000
4d0000004d000000
1040002035012b59
0006291793f8aaaa
0300000008004500
0037f93900004011
a6dbc0a82c7bc0a8
2cd5f93900450023
8d730001433a5c49
424d54435049505c
6c63636d2e31006f
6374657400f32a39
52000000004d0000
004d000000104000
2035012b59000629
1793f8aaaa030000
00080045000037f9
3900004011a6dbc0
a82c7bc0a82cd5f9
39004500238d7300
01433a5c49424d54
435049505c6c6363
6d2e31006f637465
7400
EOF

echo Running termshark.

~/go/bin/termshark -r /tmp/test.pcap | grep 192.168.44.123

echo Tests were successful.