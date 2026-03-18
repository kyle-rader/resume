.PHONY: all build clean open init

init:
	brew install tectonic

all: build

build: kyle_rader_resume.pdf
	@echo "Built: $(CURDIR)/kyle_rader_resume.pdf"

kyle_rader_resume.pdf: kyle_rader_resume.tex awesome-cv.cls
	tectonic kyle_rader_resume.tex

open: kyle_rader_resume.pdf
	open kyle_rader_resume.pdf

clean:
	rm -f *.aux *.log *.out *.xdv
