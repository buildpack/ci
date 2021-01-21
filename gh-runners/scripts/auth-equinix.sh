#!/usr/bin/env bash

set -e

echo "> Setting 'TF_VAR_METAL_AUTH_TOKEN' variable..."
TF_VAR_METAL_AUTH_TOKEN="$(lpass show --note 'Shared-Cloud Native Buildpacks/cnbs-equinix-metal-api-key')"
export TF_VAR_METAL_AUTH_TOKEN

echo "> Setting 'TF_VAR_METAL_PROJECT_ID' variable..."
TF_VAR_METAL_PROJECT_ID="$(lpass show --note 'Shared-Cloud Native Buildpacks/cnbs-equinix-metal-project-id')"
export TF_VAR_METAL_PROJECT_ID
