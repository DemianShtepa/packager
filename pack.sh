#!/bin/bash
source .env;

set -e;
echo Enter the desired commit, tag, or branch name;
read -r hash;
set -x;
cd ./public-website;
previous=$(git rev-parse HEAD);
git stash
git fetch -a;
git checkout "$hash";
cd ..
docker build -t "$PROJECT_NAME:$hash" .
docker push "$PROJECT_NAME:$hash"
cd ./public-website
git checkout "$previous"
git stash pop

