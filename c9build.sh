#!/bin/bash

mkdir -p $HOME/bin
curl -s https://testspace-client.s3.amazonaws.com/testspace-linux-dev.tgz | tar -zxvf- -C $HOME/bin
CI=true testspace config url http://095d8acfaaf71b4a0f3767e41152620ebdda1b31:@mark.stridespace.com
testspace -v

#sudo pip install pytest
#py.test test_space.py --junitxml=test_space.xml -v --tb=no

testspace test_space.xml --repo git