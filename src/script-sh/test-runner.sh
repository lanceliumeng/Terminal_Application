#!/bin/bash
now=$(date +"%Y-%m-%d_%H-%M")
rspec -f d >> ./test-log/${now}-test.log