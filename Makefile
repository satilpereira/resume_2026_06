BUILD_DIR=build

all: en pt

en:
	mkdir -p $(BUILD_DIR)
	latexmk -pdf -outdir=$(BUILD_DIR) resume-en.tex

pt:
	mkdir -p $(BUILD_DIR)
	latexmk -pdf -outdir=$(BUILD_DIR) resume-pt.tex

clean:
	latexmk -c -outdir=$(BUILD_DIR)

distclean:
	latexmk -C -outdir=$(BUILD_DIR)
	rm -rf $(BUILD_DIR)