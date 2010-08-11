LILYPOND = /usr/bin/lilypond

all: brielle-for-guitar.pdf

%.ps : *.ly
	$(LILYPOND) --ps $*.ly

%.pdf : *.ly
	$(LILYPOND) --pdf $*.ly

clean:
	-rm *.pdf *.ps *.mid
