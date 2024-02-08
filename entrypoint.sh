#!/bin/sh

if [ x$PLUGIN_IMAGE != x ]
then
  caprover deploy --caproverUrl $PLUGIN_SERVER --appToken $PLUGIN_TOKEN --appName $PLUGIN_APP -i $PLUGIN_IMAGE
elif [ x$PLUGIN_BRANCH != x ]
then
  caprover deploy --caproverUrl $PLUGIN_SERVER --appToken $PLUGIN_TOKEN --appName $PLUGIN_APP -b $PLUGIN_BRANCH
else
  caprover deploy --caproverUrl $PLUGIN_SERVER --appToken $PLUGIN_TOKEN --appName $PLUGIN_APP --tarFile ./deploy.tar
fi