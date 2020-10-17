CC = xelatex
REF = biber
ROOT_DIR = .
CV_DIR = $(ROOT_DIR)/cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
OUTPUT_DIR = $(ROOT_DIR)/output
AWESOME_CV_DIR = Awesome-CV

.PHONY: all clean

cv: template
	$(CC) -output-directory=$(OUTPUT_DIR) $(ROOT_DIR)/cv.tex
	$(REF) -output-directory=$(OUTPUT_DIR) $(ROOT_DIR)/cv.tex
	$(CC) -output-directory=$(OUTPUT_DIR) $(ROOT_DIR)/cv.tex
	cp $(OUTPUT_DIR)/cv.pdf $(ROOT_DIR)

clean:
	rm -rf $(ROOT_DIR)/*.pdf

template:
	cp $(AWESOME_CV_DIR)/awesome-cv.cls ./
	cp $(AWESOME_CV_DIR)/fontawesome.sty ./
	cp -r $(AWESOME_CV_DIR)/fonts ./

cv_kor: template
	$(CC) -output-directory=$(ROOT_DIR) -jobname=$@ $(ROOT_DIR)/cv.tex
