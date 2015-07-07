#!/bin/sh

STYLE="monokai"

pygmentize -S ${STYLE} -f html > ../css/syntax.css
