#!/bin/bash

PREFIX="$( cd "imgflo-dependencies/install" && pwd )"

export PKG_CONFIG_PATH=${PREFIX}/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=${PREFIX}/lib:$LD_LIBRARY_PATH
#export DYLD_LIBRARY_PATH=${PREFIX}/lib:$DYLD_LIBRARY_PATH
export PATH=${PREFIX}/bin:$PATH
export
GEGL_PATH=${PREFIX}/lib/gegl-0.3:${GEGL_PATH}
export BABL_PATH=${PREFIX}/lib/babl-0.1

# If not sourcing the script, execute the command that follows
if [[ "${BASH_SOURCE[0]}" = "${0}" ]];
then
  exec "$@"
fi
