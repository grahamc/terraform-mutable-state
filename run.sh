#!/bin/sh

set -eux

mylist=$(terraform output --json mylist | jq -rc '. + [now] | .[-2:]');

terraform apply -var mylist="$mylist"
