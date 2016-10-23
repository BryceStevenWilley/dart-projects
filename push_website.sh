#!/usr/bin/env bash
pub build
cd build/web
zip -r webapp.zip *
scp webapp.zip bsw2@ssh.clear.rice.edu:~/Public/
ssh bsw2@ssh.clear.rice.edu 'cd Public/ && rm www -rf; mkdir www; cd www; mv ../webapp.zip .; unzip webapp.zip; rm webapp.zip'

