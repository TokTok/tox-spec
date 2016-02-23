# Generates `spec.html`.
# `rust.css` must be included alongside with `.html` file in order to work.
spec.html: spec.md
	rustdoc --markdown-css rust.css --output ./ spec.md

check: spec.md
	mdl -w spec.md

install: spec.html ../toktok.github.io
	cp $< ../toktok.github.io
	cp -a img ../toktok.github.io
