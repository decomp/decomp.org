#!/bin/bash
for f in `go list github.com/decomp/decomp/... | sar "github.com/decomp/decomp/" ""`; do
	echo ${f}
	mkdir -p ${f}
	cp index.html ${f}/index.html
	sar -i "godoc.org/decomp.org/decomp" "godoc.org/decomp.org/decomp/${f}" ${f}/index.html
done
