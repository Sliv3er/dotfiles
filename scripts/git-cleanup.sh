#!/bin/bash
# Git cleanup script - Ayoub Ghodhbane
# Removes merged branches and prunes remote refs

echo 'Fetching and pruning...'
git fetch --prune

echo 'Removing merged branches (except main/master/dev)...'
git branch --merged | grep -v '\*\|main\|master\|dev' | xargs -n 1 git branch -d 2>/dev/null

echo 'Current branches:'
git branch -a

echo 'Done!'