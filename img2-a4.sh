#!/bin/bash
for FILE in "$@"; do
	convert "${FILE}" -format jpg -set units PixelsPerInch -resample 96 -resize '794x1123>' -density 96 "${FILE%.*}"-modified.jpg
	mv "${FILE%.*}"-modified.jpg "${FILE}"
done
exit 0
