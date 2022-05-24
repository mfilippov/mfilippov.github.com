#!/bin/bash
set -euxo pipefail
DATE=$(date -I seconds)
sed -i '' -e "s/\<lastmod\>.*\<\/lastmod>/\<lastmod\>$DATE\<\/lastmod\>/g" "$(cd "$(dirname "$0")"; pwd)/sitemap.xml"