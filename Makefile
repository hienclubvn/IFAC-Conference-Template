#change name file in here
NAME_FILE = ifacconf.tex

OPTIIONS = -synctex=1 -interaction=nonstopmode -file-line-error -recorder
OBJS = *.aux *.lof *.log *.lot *.fls *.out *.toc *.fmt *.fot *.cb *.cb2 .*.lb *.bbl *.blg \
*.dvi *.xdv *-converted-to.* *.fdb_latexmk *.synctex *.synctex.gz *.pdfsync
OUTPUT	= -pdf

FILES = $(shell ls)

.SILENT: all build clean

all:
	echo All - repeat 2 times
	latexmk $(OPTIIONS) $(OUTPUT) $(NAME_FILE)
	latexmk $(OPTIIONS) $(OUTPUT) $(NAME_FILE)
build:
	echo fore build / re-build
	pdflatex  $(OPTIIONS) $(NAME_FILE)

clean:
	rm -f $(OBJS)
	echo Clean all $(OBJS) done !
	bash -c "ls -al"