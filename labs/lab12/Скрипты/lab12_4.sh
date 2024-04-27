#!/bin/bash
mkdir count
find $1 -name "*$2" -exec cp {} count \;
cd count
ls -l | wc
cd
rm -r count

