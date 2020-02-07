#! /bin/bash

BASEDIR=$(dirname "$0")
PROD=$1
TYPE="dev"
EXTENSION="ts"
EXTENSION_X="tsx"

if [ "$PROD" = "prod" ]
then
  TYPE="prod"
  EXTENSION="js"
  EXTENSION_X="js"
fi

echo "Start ${TYPE} installation"

echo "Saved current kibana files"
cp ${BASEDIR}/../../../src/legacy/ui/public/agg_response/point_series/_get_aspects.js ${BASEDIR}/../../../src/legacy/ui/public/agg_response/point_series/_get_aspects.js.orig
cp ${BASEDIR}/../../../src/legacy/ui/public/agg_types/agg_config.${EXTENSION} ${BASEDIR}/../../../src/legacy/ui/public/agg_types/agg_config.${EXTENSION}.orig
cp ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/agg_group.js ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/agg_group.js.orig
cp ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg.${EXTENSION_X} ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg.${EXTENSION_X}.orig
cp ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_common_props.${EXTENSION} ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_common_props.${EXTENSION}.orig
cp ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_group.${EXTENSION_X} ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_group.${EXTENSION_X}.orig
cp ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/sidebar.js ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/sidebar.js.orig
cp ${BASEDIR}/../../../src/legacy/ui/public/visualize/loader/pipeline_helpers/utilities.${EXTENSION} ${BASEDIR}/../../../src/legacy/ui/public/visualize/loader/pipeline_helpers/utilities.${EXTENSION}.orig

echo "Copie patched files in kibana tree"
cp ${BASEDIR}/${TYPE}/_get_aspects.js ${BASEDIR}/../../../src/legacy/ui/public/agg_response/point_series/_get_aspects.js
cp ${BASEDIR}/${TYPE}/agg_config.${EXTENSION} ${BASEDIR}/../../../src/legacy/ui/public/agg_types/agg_config.${EXTENSION}
cp ${BASEDIR}/${TYPE}/agg_group.js ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/agg_group.js
cp ${BASEDIR}/${TYPE}/components/agg.${EXTENSION_X} ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg.${EXTENSION_X}
cp ${BASEDIR}/${TYPE}/components/agg_common_props.${EXTENSION} ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_common_props.${EXTENSION}
cp ${BASEDIR}/${TYPE}/components/agg_group.${EXTENSION_X} ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_group.${EXTENSION_X}
cp ${BASEDIR}/${TYPE}/sidebar.js ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/sidebar.js
cp ${BASEDIR}/${TYPE}/utilities.${EXTENSION} ${BASEDIR}/../../../src/legacy/ui/public/visualize/loader/pipeline_helpers/utilities.${EXTENSION}
