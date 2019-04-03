#include <stdio.h>
#include <stdlib.h>

typedef enum t_op_code {
    ADD, MUL, SUB, DIV, COP,
    AFC, LOAD, STORE, EQU,
    INF, INFE, SUP, SUPE,
    JMP, JMPC, PRI
} t_op_code;

// =============================================================================
typedef struct binelement {
    short       size;
    t_op_code   OP_CODE;
    short       A;
    short       B;
    short       C;
} binelement;

typedef struct bintable {
  binelement* first;
  int size;
  int next;
} bintable;

bintable * bintable_create(){
  bintable* bt = malloc(sizeof(*bt));
  if (bt == NULL) {
    printf("\x1b[1m[\x1b[91mwarn\x1b[0m\x1b[1m] malloc in llist_asm_create!\x1b[0m\n");
    return NULL;
  }
  bt->size = 0;
  bt->next = 0;
  return bt;
}

int bintable_add(bintable* bt, t_op_code op, int Rx, int Ry, int Rz){
    return 0;
}

int readasmfile(FILE * fd_asm){
    char line[255] = NULL;
    
}

// =============================================================================

int main(int argc, char const *argv[]) {
    if (argc != 3) {
        printf("Usage : ./asm2bin asmfile.asm outbinary.out\n");
        exit(1);
    }
    const char * infile  = argv[1];
    const char * outfile = argv[2];

    FILE * fd_infile  = NULL;
    FILE * fd_outfile = NULL;

    // Read file $1
    readasmfile(fd_infile);
    // Parse

    // Write bin to file $2

    return 0;
}
