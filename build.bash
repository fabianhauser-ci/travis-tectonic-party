#!/usr/bin/env bash

mkdir "export/"
tectonic "foo.tex"
mv "foo.pdf" "export/foo.pdf"