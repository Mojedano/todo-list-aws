#!/bin/bash
# cambio prueba pipeline

set -x
du -hs * | sort -h
sam deploy template.yaml --config-env ${ENVIRONMENT} --no-confirm-changeset --force-upload --no-fail-on-empty-changeset --no-progressbar --S3-s3://aws-sam-cli-managed-default-samclisourcebucket-1f0mtqtjfscly/todo-list-aws/
