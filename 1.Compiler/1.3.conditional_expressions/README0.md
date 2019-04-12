# Développement d’un compilateur pour un langage simplifié de type C

Le langage d’entrée est un langage de type C qui reconnaît:

 - La fonction ```main ()```,  les accolades ```{``` et ```}```

 - Les constantes de type entier (mot clé: ```const```) et leur noms

 - Les variables de type entier (mot clé: ```int```) et leur noms. Le nom d’une variable ou d’une constante doit **commencer par une lettre** et peut **contenir de lettres, des chiffres et le underscore ```_```**

 - Les opérations arithmétiques  définies par les signes mathématiques suivants: ```+, -, \*, /, =``` et les parenthèses ```()```

 - Les séparateurs : espace, TAB et virgule

 - La fin de ligne ```\n```

 - La fin d’une instruction signalée par ```;``` comme en langage C classique

 - La fonction ```printf(variable)``` ayant 1 seul paramètre ```variable``` : la variable dont la valeur doit être affichée

 - Les entiers doivent être reconnus sous la forme décimale et la forme exponentielle

 - Notre langage C permet la déclaration de plusieurs variables dans la même ligne (ex: ```int toto, mimi=5;``` ) ou la déclaration de plusieurs constantes dans la même ligne. Dans ce cas n’oubliez pas d’allouer de la mémoire pour chacune des variables et/ou constantes déclarées

 - Notre langage C fait la différence entre lettres minuscules et majuscules. Les mots clés dulangage seront reconnus seulement s’ils sont écrits en minuscule.

 - On autorise la déclaration des constantes et variables seulement à l’intérieur de la fonction ```main()```. Cette partie déclarative doit se trouver avant les instructions, obligatoirement

 - Dans une première phase, aucune autre appel de fonction n’est reconnu par notre langage C simplifié.
