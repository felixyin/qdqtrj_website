#!/bin/sh

python3.8 -m virtualenv venv
source venv/bin/activate
pip3.8 list
env LDFLAGS="-I/usr/local/opt/openssl/include -L/usr/local/opt/openssl/lib" pip3.8 --no-cache install -r requirements.txt
pip3.8 list
python -V