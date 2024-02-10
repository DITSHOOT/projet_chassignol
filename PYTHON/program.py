import random

# TP1 & TP2 en Python

# Appel de la fonction Exercice13
#exercice13()

def exercice1():
    variable1 = 3
    print("La valeur de la variable 1 est :", variable1)

def exercice2():
    print("La procédure 2 s'execute bien")
    valeur1 = 9
    valeur2 = valeur1 * valeur1
    valeur1 = 0
    print("La valeur de la variable 1 est :", valeur1)
    print("La valeur de la variable 2 est :", valeur2)

def exercice3():
    nombre_saisi = int(input("Veuillez saisir un nombre entier : "))
    carre = nombre_saisi * nombre_saisi
    print(f"Le carré de {nombre_saisi} est {carre}")

def exercice4():
    nom = input("Bonjour ! Quel est votre nom ? ")
    print(f"Bonjour, {nom} ! Bienvenue dans le monde de Python.")

def exercice5():
    nombre = 0
    saisie_valide = False

    while not saisie_valide:
        saisie = input("Veuillez saisir un nombre entre 1 et 3 : ")

        try:
            nombre = int(saisie)
            if 1 <= nombre <= 3:
                saisie_valide = True
            else:
                print("Le nombre doit être compris entre 1 et 3. Veuillez réessayer.")
        except ValueError:
            print("Saisie invalide. Veuillez entrer un nombre valide.")

    print(f"Vous avez saisi le nombre {nombre}. La saisie est valide.")

def exercice6():
    heures = int(input("Veuillez entrer l'heure actuelle (format 24 heures) - Heures : "))
    minutes = int(input("Minutes : "))

    minutes += 1

    if minutes == 60:
        minutes = 0
        heures += 1

        if heures == 24:
            heures = 0

    print(f"Dans une minute, il sera {heures} heure(s) et {minutes} minute(s).")

def exercice7():
    nombre_de_depart = int(input("Veuillez entrer un nombre de départ : "))

    print(f"Les 10 nombres suivants à partir de {nombre_de_depart} sont :")
    for i in range(nombre_de_depart + 1, nombre_de_depart + 11):
        print(i)

def exercice8():
    nombre = 0
    saisie_valide = False

    while not saisie_valide:
        saisie = input("Veuillez saisir un nombre entre 10 et 20 : ")

        try:
            nombre = int(saisie)
            if 10 <= nombre <= 20:
                saisie_valide = True
            elif nombre < 10:
                print("Plus grand !")
            else:
                print("Plus petit !")
        except ValueError:
            print("Saisie invalide. Veuillez entrer un nombre valide.")

    print(f"Vous avez saisi le nombre {nombre}. La saisie est valide.")

def exercice9():
    nombre_de_depart = int(input("Veuillez entrer un nombre de départ : "))

    print(f"Table de {nombre_de_depart} :")
    for i in range(1, 11):
        resultat = nombre_de_depart * i
        print(f"{nombre_de_depart} x {i} = {resultat}")

def exercice10():
    while True:
        saisie = input("Veuillez saisir un nombre entre 1 et 3 : ")

        try:
            nombre = int(saisie)
            if 1 <= nombre <= 3:
                print("Vous avez saisi :", nombre)
                break
            else:
                print("Saisie invalide. Veuillez réessayer.")
        except ValueError:
            print("Saisie invalide. Veuillez entrer un nombre valide.")

    print("Félicitations ! Vous avez saisi un nombre valide entre 1 et 3.")

def exercice11():
    while True:
        saisie = input("Veuillez saisir un nombre entre 10 et 20 : ")

        try:
            nombre = int(saisie)
            if 10 <= nombre <= 20:
                print("Bravo ! Vous avez saisi un nombre valide entre 10 et 20.")
                break
            elif nombre < 10:
                print("Plus grand !")
            else:
                print("Plus petit !")
        except ValueError:
            print("Saisie invalide. Veuillez réessayer.")

def exercice12():
    while True:
        try:
            nombre = int(input("Veuillez saisir un nombre entier entre 1 et 3 : "))
            if 1 <= nombre <= 3:
                print("Le nombre saisi est bien compris entre 1 et 3.")
                break
            else:
                print("Attention, veuillez saisir un nombre entier compris entre 1 et 3.")
        except ValueError:
            print("Saisie invalide. Veuillez entrer un nombre valide.")

def exercice13():
    heure = int(input("Entrez l'heure : "))
    minutes = int(input("Entrez les minutes : "))

    minutes += 1

    if minutes == 60:
        minutes = 0
        heure += 1

        if heure == 24:
            heure = 0

    print(f"Dans une minute, il sera {heure:02d} heure(s) {minutes:02d} minute(s).")

def exercice14_displaytab():
    tableau = [0.0] * 5
    exercice14(tableau)
    # Vous pouvez afficher le tableau ici si nécessaire

def exercice14(tableau):
    for i in range(len(tableau)):
        try:
            valeur = float(input(f"Saisissez la valeur {i + 1}: "))
            tableau[i] = valeur
        except ValueError:
            print("Veuillez saisir une valeur valide.")
            i -= 1

def exercice15(tableau):
    print("Contenu du tableau : ")
    for valeur in tableau:
        print(valeur, end=' ')
    print()

def exercice16(tableau):
    for i in range(len(tableau)):
        tableau[i] = random.randint(0, 100)  # Valeurs entre 0 et 100

def exercice17(tableau):
    somme = sum(tableau)
    return somme / len(tableau)

def exercice18(tableau):
    return min(tableau)

def exercice19(tableau):
    return max(tableau)

def exercice20(tableau, note):
    for i, valeur in enumerate(tableau):
        if valeur == note:
            return i
    return -1  # indiquer une erreur ou une condition particulière.

def exercice21(tableau):
    n = len(tableau)
    for i in range(n - 1):
        for j in range(n - i - 1):
            if tableau[j] > tableau[j + 1]:
                tableau[j], tableau[j + 1] = tableau[j + 1], tableau[j]

def exercice22(tableau, note):
    debut, fin = 0, len(tableau) - 1

    while debut <= fin:
        milieu = (debut + fin) // 2

        if tableau[milieu] == note:
            return milieu
        elif tableau[milieu] < note:
            debut = milieu + 1
        else:
            fin = milieu - 1

    return -1  # indiquer une erreur ou une condition particulière.
