chmod +x ibm-1.2.0.17-node-v0.12.18-linux-s390x.bin
printf '5\n\n1\n\n\n\n\n\n' | ./ibm-1.2.0.17-node-v0.12.18-linux-s390x.bin
export PATH=$PATH:/root/ibm/node/bin
npm install -g coffee-script@1.12.3
npm install -g browserify@12.0.1