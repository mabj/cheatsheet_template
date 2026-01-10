MAIN_NAME=cheatsheet_template

all: build-example
	echo "[+] Done!"

build-image:
	docker build . -t ${MAIN_NAME}

build:
	docker run -it -m 4g --rm -v .:/experiment -w /experiment ${MAIN_NAME} make

build-example:
	pdflatex -output-format pdf -output-dir /experiment src/example.tex
	pdflatex -output-format pdf -output-dir /experiment src/example.tex
	rm -rf /experiment/*.aux /experiment/*.log /experiment/*.out

enter:
	docker run -it -m 4g --rm -v .:/experiment -w /experiment --entrypoint /bin/bash ${MAIN_NAME}

clean:
	rm -rf /experiment/*.aux /experiment/*.log /experiment/*.out /experiment/*.pdf