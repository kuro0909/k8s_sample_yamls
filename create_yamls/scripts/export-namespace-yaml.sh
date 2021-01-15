#!/bin/bash
cd `dirname $0`
EXPATH=`pwd`

mkdir -p $EXPORT_DIR

#template-namespace
EXFILENAME=$SUFFIX_YAML'namespace.yaml'
cp -f $EXPATH/template_yamls/template-namespace.yaml $EXPORT_DIR/$EXFILENAME
sed -i -e "s/{{ NAMESPACE.NAME }}/$NAMESPACE/g" $EXPORT_DIR/$EXFILENAME
