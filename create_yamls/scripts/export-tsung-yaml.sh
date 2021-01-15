#!/bin/bash
cd `dirname $0`
EXPATH=`pwd`


mkdir -p $EXPORT_DIR

#template-deployment-tsung
EXFILENAME=$SUFFIX_YAML'deployment-tsung.yaml'
cp -f $EXPATH/template_yamls/template-deployment-tsung.yaml $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ DEPLOYMENT.NAME }}/$DEPLOYMENT_TSUNG_NAME/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ DEPLOYMENT.NAMESPACE }}/$NAMESPACE/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ DEPLOYMENT.APPLABEL }}/$DEPLOYMENT_TSUNG_APP_LABEL/g" $EXPORT_DIR/$EXFILENAME


#template-configmap
EXFILENAME=$SUFFIX_YAML'configmap-tsung.yaml'
cp -f $EXPATH/template_yamls/template-configmap-tsung.yaml $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ CONFIGMAP.NAMESPACE }}/$NAMESPACE/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ CONFIGMAP.TARGETHOST }}/$CONFIGMAP_TSUNG_TARGETHOST/g" $EXPORT_DIR/$EXFILENAME
