#!/usr/bin/env bash

# Setup tectonic command
mkdir -p ~/.cache/docker-tectonic
tectonic="docker run -ti --rm --user $(id -u) --volume $(pwd):/tectonic:z fabianhauser/tectonic:0.1.6-2"

# Setup asciidoc command (TODO)
asciidoctor_pdf="docker run -ti --rm --user $(id -u) --volume $(pwd):/documents:z asciidoctor/docker-asciidoctor asciidoctor-pdf"

mkdir -p export/
$tectonic foo.tex
$asciidoctor_pdf demo.adoc
mv ./*.pdf "export/"