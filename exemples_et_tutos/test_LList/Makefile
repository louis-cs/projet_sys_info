OUTBINARY=test
CSOURCE=main.c LLista.c

all : clean build

build:
	gcc -Wall ${CSOURCE} -o ${OUTBINARY}

clean:
	@if [ -f ${OUTBINARY} ] ;	then rm ${OUTBINARY}; fi;
