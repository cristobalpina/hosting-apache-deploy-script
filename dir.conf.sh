#!/bin/sh

DIRECTORY_INDEX=$1

cat  << EOF
<IfModule mod_dir.c>
        DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm $DIRECTORY_INDEX
</IfModule>
EOF
