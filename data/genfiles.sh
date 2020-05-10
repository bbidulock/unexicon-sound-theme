#!/bin/bash

# Generates automake includes files

file="$1"
srcdir=$(dirname "$0")
test "$srcdir" = "." && srcdir=

echo -n "Generating $file for srcdir=$srcdir ... (this will take a minute) ..."
echo -n "" >$file

echo -e -n "unexicon_files =" >>$file
d=sounds/unexicon/stereo
test -n "$srcdir" && d="$srcdir/$d"
find "$d" -name '*.oga' -o -name '*.ogg' -o -name '*.wav' -o -name '*.disabled' -o -name '*.sound' | \
sort | while read f; do
	test -n "$srcdir" && f=$(echo "$f"|sed "s,^$srcdir/,,")
	echo -e " \\" >>$file
	echo -e -n "\t$f" >>$file
done
echo -e "\n" >>$file

echo " done."

