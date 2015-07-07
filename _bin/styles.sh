#!/bin/sh

mkdir ../css/themes 2>/dev/null

for theme in $(find ../_less/themes -type f -name "*.less" -printf "%f " | sed 's/\.less//g'); do
lessc ../_less/themes/${theme}.less >../css/themes/${theme}.css
lessc --clean-css ../_less/themes/${theme}.less >../css/themes/${theme}.min.css
done
