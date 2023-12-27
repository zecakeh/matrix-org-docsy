#!/bin/sh
#
# Fetch local copies of the remote CSS and JS files.

cd $(dirname "$0")/static

set -e

curl -o "js/jsquery-3.6.3.min.js" "https://code.jquery.com/jquery-3.6.3.min.js"
curl -o "js/lunr-2.3.9.min.js" "https://unpkg.com/lunr@2.3.9/lunr.min.js"

# we just grab the latest version of markmap-autoloader, since that's what the upstream source does
curl -o "js/markmap-autoloader.js" "https://cdn.jsdelivr.net/npm/markmap-autoloader"

katex_version=0.16.4
mkdir -p "css/katex@${katex_version}/dist" "js/katex@${katex_version}/dist/contrib"
curl -o "css/katex@${katex_version}/dist/katex.min.css" "https://cdn.jsdelivr.net/npm/katex@${katex_version}/dist/katex.min.css"
curl -o "js/katex@${katex_version}/dist/katex.min.js" "https://cdn.jsdelivr.net/npm/katex@${katex_version}/dist/katex.min.js"
curl -o "js/katex@${katex_version}/dist/contrib/mhchem.min.js" "https://cdn.jsdelivr.net/npm/katex@${katex_version}/dist/contrib/mhchem.min.js"
curl -o "js/katex@${katex_version}/dist/contrib/auto-render.min.js" "https://cdn.jsdelivr.net/npm/katex@${katex_version}/dist/contrib/auto-render.min.js"

curl -o "js/mermaid-9.3.0.min.js" "https://cdn.jsdelivr.net/npm/mermaid@9.3.0/dist/mermaid.min.js"
curl -o "js/docsearch-3.5.2.min.js" "https://cdn.jsdelivr.net/npm/@docsearch/js@3.5.2"
curl -o "css/docsearch-3.5.2.min.css" "https://cdn.jsdelivr.net/npm/@docsearch/css@3.5.2"

