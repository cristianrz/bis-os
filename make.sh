#!/bin/sh

pages="$(ls -1 ./pages)"

for page in $pages; do
	title="$(head -n 1 "pages/${page}" | sed 's/## //g')"
	page_html="$(echo $page | sed 's/.md/.html/g')"
	echo "* [$title]($page_html)"
done
