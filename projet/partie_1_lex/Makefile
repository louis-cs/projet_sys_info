all: clean build

build:
	flex partie_1.l
	gcc lex.yy.c -o lexicograph -ll

clean:
	@rm lex.yy.c lexicograph
