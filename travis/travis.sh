#!/usr/bin/env bash
set -e # halt script on error

echo 'Testing travis...'
bundle exec jekyll build
echo 'Built sucessfully...'
#bundle exec htmlproofer ./_site --disable-external # --only-4xx
#echo 'finished proofing html'