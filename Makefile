all: book/courseml.pdf
#all: book/foo.pdf		# requires font: segoeuil
all: slides/01-intro/lec.pdf
all: slides/01-intro/test.pdf
all: slides/01-intro/training.pdf
all: slides/04-feature_rep/features.pdf

RUBBER=rubber

%.pdf: %.tex
	$(RUBBER) --inplace --pdf $<

.PHONY: all
