#!/bin/bash

## Setup environment variables
CONF_REGION=[YOUR-REGION]
mkdir conf
touch conf/config
echo CONF_REGION=$CONF_REGION >> ~/conf/config
CONF_PROJECT_ID=[YOUR-PROJECT-ID]
echo CONF_PROJECT_ID=$CONF_PROJECT_ID >> ~/conf/config
source conf/config

## Validate if the GPC project exists
PROJECT=glocud projects list --filter taas-admin
## Create GCP Project
gcloud projects create $CONF_PROJECT_ID --name=$CONF_PROJECT_ID
## Create dataset