.PHONY: cv

CC = xelatex
ROOT_DIR = .
CV_DIR = $(ROOT_DIR)/cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')
AWESOME_CV_DIR = Awesome-CV

cv: $(ROOT_DIR)/cv.tex $(CV_SRCS)
	cp $(AWESOME_CV_DIR)/awesome-cv.cls ./
	cp $(AWESOME_CV_DIR)/fontawesome.sty ./
	cp -r $(AWESOME_CV_DIR)/fonts ./
	$(CC) -output-directory=$(ROOT_DIR) $<

clean:
	rm -rf $(ROOT_DIR)/*.pdf
