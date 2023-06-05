#!/bin/bash
# cambio prueba pipeline

set -x
du -hs * | sort -h
sam deploy template.yaml --config-env ${ENVIRONMENT} --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar --resolve-s3 --stack-name "todo-list-aws-staging" --region "us-east-1"