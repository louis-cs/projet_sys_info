all: clean build

build:
	flex test.l
	gcc lex.yy.c -o test -ll

clean:
	@rm lex.yy.c test
