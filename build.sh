#!/bin/bash

# Turn on Bash error checking
set -eu

# Define some constant variables
TEMPLATE="templates/template.html"
SRC="./src"
SITE="./site/"
CSS="css/retro.css"
PANDOC="pandoc -f markdown -t html --template $TEMPLATE -V lang=en -V author-meta=techevo"

# Clear the current local site build if there is one.
if [ -d $SITE ]; then 
	printf "Clearing existing site: %s\n" $SITE
	rm -rf $SITE
fi

# Check that we have a template.html file available.
if [ ! -f "$TEMPLATE" ]; then 
	printf "No template file found at: %s\n" $TEMPLATE
fi

# Make the output directory
mkdir -p $SITE


rsync -r src/ site/
files=$(find $SITE -name "*.md")

for f in $files; do 
	$PANDOC $f > ${f/.md/.html}
	rm $f
done

cp -r css site/css
cp -r img site/img
cp favicon.ico site/favicon.ico

firefox site/index.html
