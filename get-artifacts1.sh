#!/bin/bash

TOKEN=$(cat ~/token.gh)

OWNER="C0C01611"
REPO="graphes"

curl -H "Authorization: token $TOKEN" \
     -H "Accept: application/vnd.github.v3+json" \
     -H "Content-Type: application/json" \
     "https://api.github.com/repos/$OWNER/$REPO/actions/artifacts" \
     -o gh-artifacts.json

