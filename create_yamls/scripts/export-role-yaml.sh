#!/bin/bash
cd `dirname $0`
EXPATH=`pwd`

mkdir -p $EXPORT_DIR

#template-role
EXFILENAME=$SUFFIX_YAML'role.yaml'
cp -f $EXPATH/template_yamls/template-role.yaml $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ ROLE.NAMESPACE }}/$NAMESPACE/g" $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ ROLE.NAME }}/$NAMESPACE/g" $EXPORT_DIR/$EXFILENAME

