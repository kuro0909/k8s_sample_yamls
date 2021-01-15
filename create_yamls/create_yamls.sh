#!/bin/bash
cd `dirname $0`
EXPATH=`pwd`

###################################################################
#namespace
NAMESPACE=tsung-test

###################################################################
SUFFIX_YAML=$NAMESPACE"-"
SUFFIX=$NAMESPACE

#deployment nginx variable
DEPLOYMENT_NGINX_NAME=$SUFFIX"-nginx"
DEPLOYMENT_NGINX_APP_LABEL=$SUFFIX"-nginx"

#service nginx variable
SERVICE_NGINX_NAME=$SUFFIX"-nginx"
SERVICE_NGINX_PORT=80

#route nginx variable
ROUTE_NGINX_NAME=$SUFFIX"-nginx-route"
ROUTE_NGINX_HOST=$SUFFIX.apps.oc02.k8s.ctc

#deployment centos variable
DEPLOYMENT_CENTOS_NAME=$SUFFIX"-centos"
DEPLOYMENT_CENTOS_APP_LABEL=$SUFFIX"-template"

#deployment tsung variable
DEPLOYMENT_TSUNG_NAME=$SUFFIX"-tsung"
DEPLOYMENT_TSUNG_APP_LABEL=$SUFFIX"-tsung"
CONFIGMAP_TSUNG_TARGETHOST=$SUFFIX"-nginx"

#export file directory
#default is exports/namespace
EXPORT_DIR=$EXPATH/exports/$NAMESPACE
###################################################################


#plz comment out if you don't need
#source DONT/NEED/YAML.sh
#source $EXPATH/scripts/export-namespace-yaml.sh
source $EXPATH/scripts/export-nginx-yaml.sh
source $EXPATH/scripts/export-role-yaml.sh
source $EXPATH/scripts/export-centos-yaml.sh
source $EXPATH/scripts/export-tsung-yaml.sh
