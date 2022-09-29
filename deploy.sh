#!/bin/bash

# Archive git repository
git archive HEAD > deploy.tar

# Add `.git` directory to `tar`
tar -rf deploy.tar .git

# Deploy the `tar` to your CapRover server
npx caprover deploy -t ./deploy.tar

# Remove the tar
rm ./deploy.tar