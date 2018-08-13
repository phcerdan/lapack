#!/bin/bash
set -e
for f in $(find ./SRC | ack "\.f$"); do f2c $f; done
mkdir -p CSRC
for f in $(find ./SRC | ack "\.c$"); do mv $f ./CSRC; done
