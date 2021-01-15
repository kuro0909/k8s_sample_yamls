#!/bin/bash
cd `dirname $0`
EXPATH=`pwd`

mkdir -p $EXPORT_DIR

#template-deployment-nginx
EXFILENAME=$SUFFIX_YAML'deployment-nginx.yaml'
cp -f $EXPATH/template_yamls/template-deployment-nginx.yaml $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ DEPLOYMENT.NAME }}/$DEPLOYMENT_NGINX_NAME/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ DEPLOYMENT.NAMESPACE }}/$NAMESPACE/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ DEPLOYMENT.APPLABEL }}/$DEPLOYMENT_NGINX_APP_LABEL/g" $EXPORT_DIR/$EXFILENAME


#template-service-nginx
EXFILENAME=$SUFFIX_YAML'service-nginx.yaml'
cp -f $EXPATH/template_yamls/template-service-nginx.yaml $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ SERVICE.NAME }}/$SERVICE_NGINX_NAME/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ SERVICE.NAMESPACE }}/$NAMESPACE/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ SERVICE.PORT }}/$SERVICE_NGINX_PORT/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ SERVICE.APPLABEL }}/$DEPLOYMENT_NGINX_APP_LABEL/g" $EXPORT_DIR/$EXFILENAME


#template-route
EXFILENAME=$SUFFIX_YAML'route.yaml'
cp -f $EXPATH/template_yamls/template-route.yaml $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ ROUTE.NAME }}/$ROUTE_NGINX_NAME/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ ROUTE.SERVICENAME }}/$SERVICE_NGINX_NAME/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ ROUTE.NAMESPACE }}/$NAMESPACE/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ ROUTE.HOST }}/$ROUTE_NGINX_HOST/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ ROUTE.PORT }}/$SERVICE_NGINX_PORT/g" $EXPORT_DIR/$EXFILENAME



#template-configmap
EXFILENAME=$SUFFIX_YAML'configmap-nginx.yaml'
cp -f $EXPATH/template_yamls/template-configmap-nginx.yaml $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ CONFIGMAP.NAMESPACE }}/$NAMESPACE/g" $EXPORT_DIR/$EXFILENAME
