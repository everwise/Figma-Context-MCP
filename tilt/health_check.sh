#!/bin/bash

echo "Performing health check for figma-mcp..."

# Only needed when using the frontend docker container, which we are not currently doing
# if ! grep -q 'NPM_TOKEN' .env; then
#     if [ -z "$NPM_TOKEN" ]; then
#         echo "NPM_TOKEN is not set, which is required to build."
#         exit 1
#     fi
# fi
