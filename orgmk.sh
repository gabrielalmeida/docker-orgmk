#!/bin/sh

if [ $# -eq 0 ]; then
cat <<-EOF
  Usage: ormk.sh EXPORT_FORMAT SOURCE_FILE [ORGMK_OPTIONS]

  Ex: orgmk.sh html sample.org
EOF
    exit 0
fi


FILE=$(basename $2)
docker run --rm -v "$PWD:/tmp" gabrielalmeida/orgmk "org2$1" "${@:3}" "/tmp/$FILE"

echo "\n\n✅  Done! If no errors ocurred the file should have been exported to the same path of the source file"
