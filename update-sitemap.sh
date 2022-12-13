#!/bin/bash
set -euxo pipefail
DATE=$(date -Iseconds)
sed -i '' -e "s/\<lastmod\>.*\<\/lastmod>/\<lastmod\>$DATE\<\/lastmod\>/g" "$(cd "$(dirname "$0")"; pwd)/sitemap.xml"