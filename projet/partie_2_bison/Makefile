all: clean build

build:
	yacc -d compiler.y
	flex lexicograph.l
	gcc y.tab.c lex.yy.c -o compiler -ly -ll

clean:
	@rm lex.yy.c compiler
