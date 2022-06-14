#!/bin/bash
source .env;

set -e;
echo Enter the desired commit, tag, or branch name;
read -r hash;
set -x;
docker run -d -p 80:80 -p 443:443 "$PROJECT_NAME:$hash"
