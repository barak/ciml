all: book/courseml.pdf
all: slides/01-intro/lec.pdf
all: slides/01-intro/test.pdf
all: slides/01-intro/training.pdf
all: slides/04-feature_rep/features.pdf

.PHONY: all

%.pdf: %.tex
	cd "$(shell dirname $<)" && latexmk --pdf "$(shell basename $<)"

book/courseml.pdf: book/picins.sty

book/picins.sty:
	wget -O $@ http://mirror.unl.edu/ctan/macros/latex209/contrib/picins/picins.sty
