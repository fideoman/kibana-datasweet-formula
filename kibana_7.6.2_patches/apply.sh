#!/bin/bash

BASEDIR=$(dirname "$0")
KIBANADIR="/usr/share/kibana"

diff -u ${BASEDIR}/orig_dev_files/agg_config.ts ${BASEDIR}/dev_files/agg_config.ts > ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_dev_files/components/agg.tsx ${BASEDIR}/dev_files/components/agg.tsx >> ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_dev_files/components/agg_common_props.ts ${BASEDIR}/dev_files/components/agg_common_props.ts >> ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_dev_files/components/agg_group.tsx ${BASEDIR}/dev_files/components/agg_group.tsx >> ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_dev_files/utilities.ts ${BASEDIR}/dev_files/utilities.ts >> ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_prod_files/agg_config.js ${BASEDIR}/prod_files/agg_config.js >> ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_prod_files/agg_group.js ${BASEDIR}/prod_files/agg_group.js >> ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_prod_files/components/agg.js ${BASEDIR}/prod_files/components/agg.js >> ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_prod_files/components/agg_common_props.js ${BASEDIR}/prod_files/components/agg_common_props.js >> ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_prod_files/components/agg_group.js ${BASEDIR}/prod_files/components/agg_group.js >> ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_prod_files/sidebar.js ${BASEDIR}/prod_files/sidebar.js >> ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_prod_files/utilities.js ${BASEDIR}/prod_files/utilities.js >> ${BASEDIR}/patch_changes.diff
diff -u ${BASEDIR}/orig_prod_files/_get_aspects.js ${BASEDIR}/prod_files/_get_aspects.js >> ${BASEDIR}/patch_changes.diff

cp -v ${BASEDIR}/dev_files/agg_config.ts ${KIBANADIR}/src/legacy/ui/public/agg_types/agg_config.ts
cp -v ${BASEDIR}/dev_files/components/agg.tsx ${KIBANADIR}/src/legacy/ui/public/vis/editors/default/components/agg.tsx
cp -v ${BASEDIR}/dev_files/components/agg_common_props.ts ${KIBANADIR}/src/legacy/ui/public/vis/editors/default/components/agg_common_props.ts
cp -v ${BASEDIR}/dev_files/components/agg_group.tsx ${KIBANADIR}/src/legacy/ui/public/vis/editors/default/components/agg_group.tsx
cp -v ${BASEDIR}/dev_files/utilities.ts ${KIBANADIR}/src/legacy/ui/public/visualize/loader/pipeline_helpers/utilities.ts
cp -v ${BASEDIR}/prod_files/_get_aspects.js ${KIBANADIR}/src/legacy/ui/public/agg_response/point_series/_get_aspects.js
cp -v ${BASEDIR}/prod_files/sidebar.js ${KIBANADIR}/src/legacy/ui/public/vis/editors/default/sidebar.js
cp -v ${BASEDIR}/prod_files/agg_group.js ${KIBANADIR}/src/legacy/ui/public/vis/editors/default/agg_group.js
cp -v ${BASEDIR}/prod_files/agg_config.js ${KIBANADIR}/src/legacy/ui/public/agg_types/agg_config.js
cp -v ${BASEDIR}/prod_files/components/agg.js ${KIBANADIR}/src/legacy/ui/public/vis/editors/default/components/agg.js
cp -v ${BASEDIR}/prod_files/components/agg_common_props.js ${KIBANADIR}/src/legacy/ui/public/vis/editors/default/components/agg_common_props.js
cp -v ${BASEDIR}/prod_files/components/agg_group.js ${KIBANADIR}/src/legacy/ui/public/vis/editors/default/components/agg_group.js
cp -v ${BASEDIR}/prod_files/utilities.js ${KIBANADIR}/src/legacy/ui/public/visualize/loader/pipeline_helpers/utilities.js

exit 0
