something 
tmp_var n° 1 = 10
tid a = elemId 1
something 
tmp_var n° 3 = 2
tid d = elemId 3
something 
tmp_var n° 5 = 10
tid b = elemId 5
something 
tmp_var n° 7 <-> elemId 2
tmp_var n° 8 <-> elemId 4
elemId 7 + elemId 8
adresse de b : 6 
tid b = elemId 7
something 
tmp_var n° 9 = 4
adresse de c : 0 
tid c = elemId 9
something 
something 
something 
tmp_var n° 10 <-> elemId 2
tmp_var n° 11 = 20
elemId 10 < elemId 11
something 
tmp_var n° 12 <-> elemId 4
tmp_var n° 13 = 3
elemId 12 * elemId 13
adresse de d : 4 
tid d = elemId 12
something 
tmp_var n° 14 <-> elemId 2
tmp_var n° 15 = 1
elemId 14 + elemId 15
adresse de a : 2 
tid a = elemId 14
something 
something 
tmp_var n° 16 <-> elemId 0
tmp_var n° 17 = 0
elemId 16 >= elemId 17
something 
something 
something 
tmp_var n° 18 <-> elemId 4
tmp_var n° 19 <-> elemId 6
elemId 18 >= elemId 19
something 
something 
tmp_var n° 20 <-> elemId 6
tmp_var n° 21 <-> elemId 2
elemId 20 * elemId 21
adresse de b : 6 
tid b = elemId 20
something 
something 
something 
something 
something 
tmp_var n° 22 <-> elemId 0
tmp_var n° 23 = 1
elemId 22 - elemId 23
adresse de c : 0 
tid c = elemId 22
something 
something 
something 
something 
something 
something 
Taille de la llist: 13
Element n° 22: tmp type: int constante: 0 adresse: 22 profondeur: 2 initialisé: 0 
Element n° 20: tmp type: int constante: 0 adresse: 20 profondeur: 4 initialisé: 0 
Element n° 14: tmp type: int constante: 0 adresse: 14 profondeur: 2 initialisé: 0 
Element n° 12: tmp type: int constante: 0 adresse: 12 profondeur: 2 initialisé: 0 
Element n° 9: tmp type: int constante: 0 adresse: 9 profondeur: 1 initialisé: 0 
Element n° 7: tmp type: int constante: 0 adresse: 7 profondeur: 1 initialisé: 0 
Element n° 6: b type: int constante: 0 adresse: 6 profondeur: 1 initialisé: 1 
Element n° 5: tmp type: int constante: 0 adresse: 5 profondeur: 1 initialisé: 0 
Element n° 4: d type: int constante: 0 adresse: 4 profondeur: 1 initialisé: 1 
Element n° 3: tmp type: int constante: 0 adresse: 3 profondeur: 1 initialisé: 0 
Element n° 2: a type: int constante: 0 adresse: 2 profondeur: 1 initialisé: 1 
Element n° 1: tmp type: int constante: 0 adresse: 1 profondeur: 1 initialisé: 0 
Element n° 0: c type: int constante: 0 adresse: 0 profondeur: 1 initialisé: 1 
Taille de la liste: 108
AFC   0   10 
STORE 1   0  
LOAD  0   1  
STORE 2   0  
AFC   0   2  
STORE 3   0  
LOAD  0   3  
STORE 4   0  
AFC   0   10 
STORE 5   0  
LOAD  0   5  
STORE 6   0  
LOAD  0   2  
STORE 7   0  
LOAD  0   4  
STORE 8   0  
LOAD  0   7  
LOAD  1   8  
ADD   2   0   1  
STORE 7   2  
LOAD  0   7  
STORE 6   0  
AFC   0   4  
STORE 9   0  
LOAD  0   9  
STORE 0   0  
PRI   6  
PRI   2  
LOAD  0   2  
STORE 10  0  
AFC   0   20 
STORE 11  0  
LOAD  0   10 
LOAD  1   11 
INF   2   0   1  
STORE 10  2  
LOAD  0   10 
JMPC  105 0  
LOAD  0   4  
STORE 12  0  
AFC   0   3  
STORE 13  0  
LOAD  0   12 
LOAD  1   13 
MUL   2   0   1  
STORE 12  2  
LOAD  0   12 
STORE 4   0  
LOAD  0   2  
STORE 14  0  
AFC   0   1  
STORE 15  0  
LOAD  0   14 
LOAD  1   15 
ADD   2   0   1  
STORE 14  2  
LOAD  0   14 
STORE 2   0  
PRI   2  
LOAD  0   0  
STORE 16  0  
AFC   0   0  
STORE 17  0  
LOAD  0   16 
LOAD  1   17 
SUPE  2   0   1  
STORE 16  2  
LOAD  0   16 
JMPC  71  0  
PRI   0  
JMP   94 
LOAD  0   4  
STORE 18  0  
LOAD  0   6  
STORE 19  0  
LOAD  0   18 
LOAD  1   19 
SUPE  2   0   1  
STORE 18  2  
LOAD  0   18 
JMPC  93  0  
PRI   4  
LOAD  0   6  
STORE 20  0  
LOAD  0   2  
STORE 21  0  
LOAD  0   20 
LOAD  1   21 
MUL   2   0   1  
STORE 20  2  
LOAD  0   20 
STORE 6   0  
JMP   94 
PRI   6  
LOAD  0   0  
STORE 22  0  
AFC   0   1  
STORE 23  0  
LOAD  0   22 
LOAD  1   23 
SUB   2   0   1  
STORE 22  2  
LOAD  0   22 
STORE 0   0  
JMP   28 
PRI   2  
PRI   0  
PRI   4  
