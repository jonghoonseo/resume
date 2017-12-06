CC = xelatex
ROOT_DIR = .
CV_DIR = $(ROOT_DIR)/cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
AWESOME_CV_DIR = Awesome-CV

.PHONY: all clean

cv: template
	$(CC) -output-directory=$(ROOT_DIR) $(ROOT_DIR)/cv.tex

clean:
	rm -rf $(ROOT_DIR)/*.pdf

template:
	cp $(AWESOME_CV_DIR)/awesome-cv.cls ./
	cp $(AWESOME_CV_DIR)/fontawesome.sty ./
	cp -r $(AWESOME_CV_DIR)/fonts ./

cv_kor: template
	$(CC) -output-directory=$(ROOT_DIR) -jobname=$@ $(ROOT_DIR)/cv.tex
