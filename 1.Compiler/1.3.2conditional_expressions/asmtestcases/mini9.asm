something 
tmp_var n° 0 = 10
tid a = elemId 0
something 
tmp_var n° 2 = 17
tid d = elemId 2
something 
tmp_var n° 4 = 1
tid b = elemId 4
something 
tmp_var n° 6 <-> elemId 1
tmp_var n° 7 <-> elemId 3
elemId 6 + elemId 7
adresse de b : 5 
tid b = elemId 6
something 
something 
tmp_var n° 8 <-> elemId 1
tmp_var n° 9 <-> elemId 5
elemId 8 == elemId 9
something 
tmp_var n° 10 <-> elemId 3
tmp_var n° 11 = 1
elemId 10 + elemId 11
adresse de d : 3 
tid d = elemId 10
something 
tmp_var n° 12 <-> elemId 1
tmp_var n° 13 = 1
elemId 12 - elemId 13
adresse de a : 1 
tid a = elemId 12
something 
something 
something 
tmp_var n° 14 <-> elemId 3
tmp_var n° 15 = 2
elemId 14 + elemId 15
adresse de d : 3 
tid d = elemId 14
something 
tmp_var n° 16 <-> elemId 1
tmp_var n° 17 = 2
elemId 16 - elemId 17
adresse de a : 1 
tid a = elemId 16
something 
something 
something 
something 
tmp_var n° 18 = 24
adresse de d : 3 
tid d = elemId 18
something 
something 
tmp_var n° 19 <-> elemId 5
tmp_var n° 20 <-> elemId 3
elemId 19 >= elemId 20
something 
tmp_var n° 21 <-> elemId 1
tmp_var n° 22 <-> elemId 5
elemId 21 < elemId 22
something 
tmp_var n° 23 = 2
adresse de b : 5 
tid b = elemId 23
something 
something 
something 
something 
something 
something 
tmp_var n° 24 <-> elemId 5
tmp_var n° 25 <-> elemId 3
elemId 24 * elemId 25
adresse de a : 1 
tid a = elemId 24
something 
something 
something 
Taille de la llist: 14
Element n° 24: tmp type: int constante: 0 adresse: 24 profondeur: 1 initialisé: 0 
Element n° 23: tmp type: int constante: 0 adresse: 23 profondeur: 3 initialisé: 0 
Element n° 18: tmp type: int constante: 0 adresse: 18 profondeur: 1 initialisé: 0 
Element n° 16: tmp type: int constante: 0 adresse: 16 profondeur: 2 initialisé: 0 
Element n° 14: tmp type: int constante: 0 adresse: 14 profondeur: 2 initialisé: 0 
Element n° 12: tmp type: int constante: 0 adresse: 12 profondeur: 2 initialisé: 0 
Element n° 10: tmp type: int constante: 0 adresse: 10 profondeur: 2 initialisé: 0 
Element n° 6: tmp type: int constante: 0 adresse: 6 profondeur: 1 initialisé: 0 
Element n° 5: b type: int constante: 0 adresse: 5 profondeur: 1 initialisé: 1 
Element n° 4: tmp type: int constante: 0 adresse: 4 profondeur: 1 initialisé: 0 
Element n° 3: d type: int constante: 0 adresse: 3 profondeur: 1 initialisé: 1 
Element n° 2: tmp type: int constante: 0 adresse: 2 profondeur: 1 initialisé: 0 
Element n° 1: a type: int constante: 0 adresse: 1 profondeur: 1 initialisé: 1 
Element n° 0: tmp type: int constante: 0 adresse: 0 profondeur: 1 initialisé: 0 
Taille de la liste: 120
AFC   0   10 
STORE 0   0  
LOAD  0   0  
STORE 1   0  
AFC   0   17 
STORE 2   0  
LOAD  0   2  
STORE 3   0  
AFC   0   1  
STORE 4   0  
LOAD  0   4  
STORE 5   0  
LOAD  0   1  
STORE 6   0  
LOAD  0   3  
STORE 7   0  
LOAD  0   6  
LOAD  1   7  
ADD   2   0   1  
STORE 6   2  
LOAD  0   6  
STORE 5   0  
PRI   5  
LOAD  0   1  
STORE 8   0  
LOAD  0   5  
STORE 9   0  
LOAD  0   8  
LOAD  1   9  
EQU   2   0   1  
STORE 8   2  
LOAD  0   8  
JMPC  55  0  
LOAD  0   3  
STORE 10  0  
AFC   0   1  
STORE 11  0  
LOAD  0   10 
LOAD  1   11 
ADD   2   0   1  
STORE 10  2  
LOAD  0   10 
STORE 3   0  
LOAD  0   1  
STORE 12  0  
AFC   0   1  
STORE 13  0  
LOAD  0   12 
LOAD  1   13 
SUB   2   0   1  
STORE 12  2  
LOAD  0   12 
STORE 1   0  
PRI   1  
JMP   76 
LOAD  0   3  
STORE 14  0  
AFC   0   2  
STORE 15  0  
LOAD  0   14 
LOAD  1   15 
ADD   2   0   1  
STORE 14  2  
LOAD  0   14 
STORE 3   0  
LOAD  0   1  
STORE 16  0  
AFC   0   2  
STORE 17  0  
LOAD  0   16 
LOAD  1   17 
SUB   2   0   1  
STORE 16  2  
LOAD  0   16 
STORE 1   0  
PRI   1  
PRI   3  
AFC   0   24 
STORE 18  0  
LOAD  0   18 
STORE 3   0  
PRI   3  
LOAD  0   5  
STORE 19  0  
LOAD  0   3  
STORE 20  0  
LOAD  0   19 
LOAD  1   20 
SUPE  2   0   1  
STORE 19  2  
LOAD  0   19 
JMPC  108 0  
LOAD  0   1  
STORE 21  0  
LOAD  0   5  
STORE 22  0  
LOAD  0   21 
LOAD  1   22 
INF   2   0   1  
STORE 21  2  
LOAD  0   21 
JMPC  106 0  
AFC   0   2  
STORE 23  0  
LOAD  0   23 
STORE 5   0  
PRI   5  
JMP   109
PRI   3  
LOAD  0   5  
STORE 24  0  
LOAD  0   3  
STORE 25  0  
LOAD  0   24 
LOAD  1   25 
MUL   2   0   1  
STORE 24  2  
LOAD  0   24 
STORE 1   0  
PRI   1  
