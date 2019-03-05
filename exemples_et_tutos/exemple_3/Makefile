all: clean build

build:
	flex test.l
	gcc lex.yy.c -o test -ll

clean:
	@if [ -f lex.yy.c ] ; then rm lex.yy.c; fi;
	@if [ -f test ] ; then rm test; fi;
