#!/bin/bash

# basename - strip directory and suffix from filenames
# dirname  - strip last component from file name

ABSDIR=$(cd $(dirname "$0") > /dev/null; pwd)
ABSPATH=$(cd $(dirname "$0") > /dev/null; pwd)/$(basename $0)
echo $ABSDIR
echo $ABSPATH
