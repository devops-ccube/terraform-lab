#!/bin/bash
set -e

echo "------------ Install NewRelic --------------"

echo "license_key: 59e404a724fa347f4ebf34bf5c0a12475e77eaea" | sudo tee -a /etc/newrelic-infra.yml

curl https://download.newrelic.com/infrastructure_agent/gpg/newrelic-infra.gpg | sudo apt-key add -

printf "deb [arch=amd64] http://download.newrelic.com/infrastructure_agent/linux/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/newrelic-infra.list

sudo apt-get update

sudo apt-get install newrelic-infra -y

