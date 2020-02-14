#!/bin/bash

echo Copying files...
lftp --env-password sftp://wiech13@apps.wikitree.com << EOF
  mkdir www/topola-viewer.new
  mirror -R build/ www/topola-viewer.new/
  rm -r www/topola-viewer.old
  mv www/topola-viewer www/topola-viewer.old
  mv www/topola-viewer.new www/topola-viewer
EOF
echo Done.
