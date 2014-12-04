#!/bin/bash

git remote remove origin
git remote add origin ${1}
git pull origin master
git push origin master
