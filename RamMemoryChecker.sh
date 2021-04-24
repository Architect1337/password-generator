#!/bin/bash

echo "There is" $(free -m | grep Mem | cut -b 5- | awk '{print $1;}')"MB of RAM memory"



