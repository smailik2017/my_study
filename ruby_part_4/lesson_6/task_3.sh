#!/bin/bash

ls -l | grep "^-" | awk '{print $1}' | sort | uniq

