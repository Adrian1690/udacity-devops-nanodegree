#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image
docker build --tag=adrian1690/hello-node .

# Step 2: 
# List docker images
docker image ls

# Step 3: 
# Run  app
docker run -p 8080:80 adrian1690/hello-node



