#!/bin/sh

mkdir ../_less/themes 2>/dev/null

for theme in $(ls ../_less/bootswatch); do
cat <<EOD >../_less/themes/${theme}.less
@import "../bootstrap/bootstrap.less";
@import "../bootswatch/${theme}/variables.less";
@import "../bootswatch/${theme}/bootswatch.less";
@import "../bootstrap/utilities.less";
EOD

done

