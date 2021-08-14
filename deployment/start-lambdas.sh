#!/bin/bash

pkill sam;
sam local start-api -t /vagrant/lambdaA.yaml --warm-containers eager 2>&1 | sed -e 's/^/[LAMBDA_A] /' \
& sam local start-lambda -t /vagrant/lambdaB.yaml --warm-containers eager --host 172.17.0.1 2>&1 | sed -e 's/^/[LAMBDA_B] /'
