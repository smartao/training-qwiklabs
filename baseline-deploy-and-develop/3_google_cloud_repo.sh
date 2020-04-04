#!/usr/bin/env bash

gcloud source repos create REPO_DEMO
gcloud source repos clone REPO_DEMO
cd REPO_DEMO || exit 1
echo "Hello World!" > myfile.txt
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git add myfile.txt
git commit -m "First file using Cloud Source Repositories" myfile.txt
git push origin master