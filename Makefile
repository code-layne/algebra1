.PHONY: all desmos clean distclean

LATEXMK = latexmk
LATEXFLAGS = -f -pdf -interaction=nonstopmode -halt-on-error -file-line-error

DESMOS_MAIN = desmos/desmos_algebra1_reference.tex
DESMOS_TEX = desmos/*.tex

all: desmos

desmos: $(DESMOS_MAIN)
	mkdir -p build/desmos
	$(LATEXMK) $(LATEXFLAGS) -outdir=build/desmos $(DESMOS_MAIN)

clean:
	$(LATEXMK) -c $(DESMOS_MAIN)
	rm -rf build

distclean:
	$(LATEXMK) -C $(DESMOS_MAIN)
	rm -rf build