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

all: cv_master cv_kor

template:
	cp $(AWESOME_CV_DIR)/awesome-cv.cls ./
	cp $(AWESOME_CV_DIR)/fontawesome.sty ./
	cp -r $(AWESOME_CV_DIR)/fonts ./

cv_master: template
	git checkout master
	$(CC) -output-directory=$(ROOT_DIR) $(ROOT_DIR)/cv.tex

cv_kor: template
	git checkout @38.kor
	$(CC) -output-directory=$(ROOT_DIR) -jobname=cv_kor $(ROOT_DIR)/cv.tex
