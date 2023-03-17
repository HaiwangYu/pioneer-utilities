SIF=pioneer_ffdb71.sif # latest
#SIF=pioneer_40c633.sif # test

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

singularity exec \
  --bind /home \
  --bind $SCRIPT_DIR:/pioneer \
  $SIF \
  env -i /bin/bash --rcfile login.rc
