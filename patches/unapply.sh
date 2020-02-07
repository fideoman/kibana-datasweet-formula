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

echo "Remove ${TYPE} installation"

echo "Remove patched files in kibana tree"
rm ${BASEDIR}/../../../src/legacy/ui/public/agg_response/point_series/_get_aspects.js
rm ${BASEDIR}/../../../src/legacy/ui/public/agg_types/agg_config.${EXTENSION}
rm ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/agg_group.js
rm ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg.${EXTENSION_X}
rm ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_common_props.${EXTENSION}
rm ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_group.${EXTENSION_X}
rm ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/sidebar.js
rm ${BASEDIR}/../../../src/legacy/ui/public/visualize/loader/pipeline_helpers/utilities.${EXTENSION}

echo "Restore previous files in kibana tree"
mv ${BASEDIR}/../../../src/legacy/ui/public/agg_response/point_series/_get_aspects.js.orig ${BASEDIR}/../../../src/legacy/ui/public/agg_response/point_series/_get_aspects.js
mv ${BASEDIR}/../../../src/legacy/ui/public/agg_types/agg_config.${EXTENSION}.orig ${BASEDIR}/../../../src/legacy/ui/public/agg_types/agg_config.${EXTENSION}
mv ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/agg_group.js.orig ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/agg_group.js
mv ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg.${EXTENSION_X}.orig ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg.${EXTENSION_X}
mv ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_common_props.${EXTENSION}.orig ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_common_props.${EXTENSION}
mv ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_group.${EXTENSION_X}.orig ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/components/agg_group.${EXTENSION_X}
mv ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/sidebar.js.orig ${BASEDIR}/../../../src/legacy/ui/public/vis/editors/default/sidebar.js
mv ${BASEDIR}/../../../src/legacy/ui/public/visualize/loader/pipeline_helpers/utilities.${EXTENSION}.orig ${BASEDIR}/../../../src/legacy/ui/public/visualize/loader/pipeline_helpers/utilities.${EXTENSION}
