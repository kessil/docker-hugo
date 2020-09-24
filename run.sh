#!/bin/sh

HUGO_THEME = "${HUGO_THEME:=even}"
HUGO_BASEURL = "${HUGO_BASEURL:=http://49.235.90.76:1313}"

echo "HUGO_THEME:" $HUGO_THEME
echo "HUGO_BASEURL" $HUGO_BASEURL
echo "ARGS" $@

HUGO=/usr/local/sbin/hugo
echo "Hugo path: $HUGO"
$HUGO server --theme="$HUGO_THEME" --baseURL="$HUGO_BASEURL" --bind="0.0.0.0" "$@" || exit 1
