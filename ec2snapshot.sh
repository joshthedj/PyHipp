#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair.pem ec2-user@3.0.209.157 "source ~/.bash_profile; pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-1 --cluster-name ClusTer; ~/update_snapshot.sh data 2 ClusTer"
