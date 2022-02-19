#!/bin/bash

tr -s '\n' < $1 | tr [:lower:] [:upper:] > output.txt
mv output.txt $1

