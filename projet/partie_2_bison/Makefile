# all: clean build

# build:
# 	yacc -d compiler.y
# 	flex lexicograph.l
# 	gcc y.tab.c lex.yy.c -o compiler -ly -ll



compile: y.tab.c lex.yy.c
	gcc y.tab.c lex.yy.c -o compiler -ly -ll

y.tab.c: compiler.y
	yacc -d compiler.y
lex.yy.c: lexicograph.l
	flex lexicograph.l


test: compile
	./compiler < testfile.c


clean:
	@rm lex.yy.c compiler
