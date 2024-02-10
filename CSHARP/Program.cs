// TP1 & TP2 en csharp + CORRECTION DEVOIR 12/01/2024 

using Internal;
using System;

namespace PremierProjet
{
    class Program
    {
        static void Main(string[] args)
        {
            //Exercice1();
            Exercice13();
            Console.ReadLine();
        }

        // exécution du programme...


        static void Exercice1()
        {
            int Variable1;
            Variable1 = 3;
            Console.WriteLine("La valeur de la variable 1 est : " + Variable1);
        }

        static void Exercice2()
        {
            // Déclaration des variables
            Console.WriteLine("La procédure 2 s'execute bien");
            int Valeur1;
            Valeur1 = 9;
            int Valeur2;
            Valeur2 = Valeur1 * Valeur1;
            Valeur1 = 0;
            Console.WriteLine("La valeur de la variable 1 est : " + Valeur1);
            Console.WriteLine("La valeur de la variable 2 est : " + Valeur2);
        }

        static void Exercice3()
        {

            Console.WriteLine("Veuillez saisir un nombre entier");
            string l_NombreSaisie = Console.ReadLine();
            int l_NombreConverti = Convert.ToInt32(l_NombreSaisie);
            int l_Carre = l_NombreConverti * l_NombreConverti;
            Console.WriteLine("Le carré de " + l_NombreConverti + " est " + l_Carre);


        }

        static void Exerice4()
        {
            Console.WriteLine("Bonjour ! Quel est votre nom ?");
            string nom = Console.ReadLine(); // Chaine de caractères à écrire
                                             // la console. 

            Console.WriteLine($"Bonjour, {nom} ! Bienvenue dans le monde de C#.");

            // Attendez que l'utilisateur appuie sur une touche pour quitter.
            Console.WriteLine("Appuyez sur n'importe quelle touche pour quitter...");
            Console.ReadKey();
        }

        static void Exercice5()
        {
            int nombre = 0;             // Déclare une variable pour stocker la saisie de l'utilisateur.
            bool saisieValide = false; // Utilisée pour déterminer si la saisie est valide.

            while (!saisieValide)    // Boucle tant que la saisie n'est pas valide. (vérification par le " ! ")
            {
                Console.WriteLine("Veuillez saisir un nombre entre 1 et 3 :"); // Demande à l'utilisateur de saisir un nombre.
                string saisie = Console.ReadLine(); // Lit la saisie de l'utilisateur sous forme de texte.

                // Tente de convertir la saisie en un nombre entier.
                if (int.TryParse(saisie, out nombre))
                {

                    // Vérifie si le nombre est compris entre 1 et 3.
                    if (nombre >= 1 && nombre <= 3)
                    {
                        saisieValide = true; // La saisie est valide, sort de la boucle.
                    }
                    else
                    {
                        Console.WriteLine("Le nombre doit être compris entre 1 et 3. Veuillez réessayer.");
                        // Affiche un message d'erreur si le nombre n'est pas entre 1 et 3.
                        // Si on marque des chiffres. 
                    }
                }
                else
                {
                    Console.WriteLine("Saisie invalide. Veuillez entrer un nombre valide.");
                    // Affiche un message d'erreur si la saisie n'est pas un nombre valide.
                    // Si on marque des lettres
                }
            }

            Console.WriteLine($"Vous avez saisi le nombre {nombre}. La saisie est valide.");
            // Affiche le nombre saisi une fois que la saisie est valide.
            Console.ReadLine(); // Permet de fermer le code une fois la touche "Entré" appuyée. 
        }

        static void Exercice6()
        {
            Console.WriteLine("Veuillez entrer l'heure actuelle (format 24 heures) :");
            Console.Write("Heures : ");
            int heures = Convert.ToInt32(Console.ReadLine());

            Console.Write("Minutes : ");
            int minutes = Convert.ToInt32(Console.ReadLine());

            // Ajoute une minute à l'heure actuelle.
            minutes++;


            // Vérifie si l'ajout d'une minute nécessite une mise à jour de l'heure.
            if (minutes == 60)
            {
                minutes = 0;
                heures++;

                // Vérifie si l'heure atteint minuit (24 heures).
                if (heures == 24)
                {
                    heures = 0;
                }
            }

            Console.WriteLine($"Dans une minute, il sera {heures} heure(s) et {minutes} minute(s).");
            Console.ReadKey();
        }

        static void Exercice7()
        {
            Console.WriteLine("Veuillez entrer un nombre de départ :");
            // Affiche un message demandant à l'utilisateur de saisir un nombre de départ.
            int nombreDeDepart;

            // Assurez-vous que la saisie de l'utilisateur est un nombre entier valide.
            while (!int.TryParse(Console.ReadLine(), out nombreDeDepart))
            {
                Console.WriteLine("Saisie invalide. Veuillez entrer un nombre valide :");
                // Si la saisie n'est pas un nombre valide, affiche un message d'erreur et redemande la saisie.
            }

            // Affiche les 10 nombres suivants à partir du nombre de départ.
            Console.WriteLine($"Les 10 nombres suivants à partir de {nombreDeDepart} sont :");
            for (int i = nombreDeDepart + 1; i <= nombreDeDepart + 10; i++)
            // On lui dit de rajouter + 1 à chaque fois jusqu'à 10.
            {
                Console.WriteLine(i); // Utilise une boucle pour afficher les nombres de départ + 1 à départ + 10.
                Console.ReadLine();
            }
        }
        static void Exercice8()
        {
            int nombre = 0;             // Déclare une variable pour stocker la saisie de l'utilisateur.
            bool saisieValide = false; // Utilisée pour déterminer si la saisie est valide.

            while (!saisieValide)    // Boucle tant que la saisie n'est pas valide.(vérification par le " ! ")
            {
                Console.WriteLine("Veuillez saisir un nombre entre 10 et 20 :"); // Demande à l'utilisateur de saisir un nombre.
                string saisie = Console.ReadLine(); // Lit la saisie de l'utilisateur sous forme de texte.

                // Tente de convertir la saisie en un nombre entier.
                if (int.TryParse(saisie, out nombre)) // Try Parse = essaye d'analyser) 
                {
                    if (nombre >= 10 && nombre <= 20)
                    {
                        saisieValide = true;
                        // La saisie est valide, sort de la boucle.
                    }
                    else if (nombre < 10)
                    {
                        Console.WriteLine("Plus grand !");
                        // Affiche "Plus grand !" si le nombre est inférieur à 10.
                    }
                    else
                    {
                        Console.WriteLine("Plus petit !");
                        // Affiche "Plus petit !" si le nombre est supérieur à 20.
                    }
                }
                else
                {
                    Console.WriteLine("Saisie invalide. Veuillez entrer un nombre valide.");
                    // Affiche un message d'erreur si la saisie n'est pas un nombre valide.
                }
            }

            Console.WriteLine($"Vous avez saisi le nombre {nombre}. La saisie est valide.");
            // Affiche le nombre saisi une fois que la saisie est valide.
            Console.ReadLine();
        }

        static void Exercice9()
        {
            Console.WriteLine("Veuillez entrer un nombre de départ :");
            int nombreDeDepart;

            // Assurez-vous que la saisie de l'utilisateur est un nombre entier valide.
            while (!int.TryParse(Console.ReadLine(), out nombreDeDepart))
            {
                Console.WriteLine("Saisie invalide. Veuillez entrer un nombre valide :");
            }

            Console.WriteLine($"Table de {nombreDeDepart} :");

            // Affiche la table de multiplication de nombreDeDepart de 1 à 10.
            for (int i = 1; i <= 10; i++)
            {
                int resultat = nombreDeDepart * i;
                Console.WriteLine($"{nombreDeDepart} x {i} = {resultat}");
                Console.ReadLine();
            }

        }

        static void Exercice10()
        {
            int nombre;

            do // Do - while, signifie tant que.
            {
                Console.Write("Veuillez saisir un nombre entre 1 et 3 : ");
                string saisie = Console.ReadLine();

                if (int.TryParse(saisie, out nombre) && nombre >= 1 && nombre <= 3)
                {
                    Console.WriteLine("Vous avez saisi : " + nombre);
                    break; // Sort de la boucle si la saisie est valide
                }
                else
                {
                    Console.WriteLine("Saisie invalide. Veuillez réessayer.");
                }
            } while (true);

            // Le programme continue ici après avoir obtenu une saisie valide.
            Console.WriteLine("Félicitations ! Vous avez saisi un nombre valide entre 1 et 3.");
        }


        static void Exercice11()
        {
            int nombre; // Déclare une variable pour stocker le nombre saisi par l'utilisateur.

            while (true) // Crée une boucle infinie.
            {
                Console.Write("Veuillez saisir un nombre entre 10 et 20 : "); // Demande à l'utilisateur de saisir un nombre.
                string saisie = Console.ReadLine(); // Lit la saisie de l'utilisateur depuis la console.

                if (int.TryParse(saisie, out nombre))
                {
                    // Vérifie si la saisie de l'utilisateur est un nombre entier valide.

                    if (nombre >= 10 && nombre <= 20)
                    {
                        // Vérifie si le nombre est compris entre 10 et 20 inclus.
                        Console.WriteLine("Bravo ! Vous avez saisi un nombre valide entre 10 et 20.");
                        break; // Sort de la boucle si la saisie est valide.
                    }
                    else if (nombre < 10)
                    {
                        // Si le nombre est inférieur à 10, affiche "Plus grand !"
                        Console.WriteLine("Plus grand !");
                    }
                    else
                    {
                        // Si le nombre est supérieur à 20, affiche "Plus petit !"
                        Console.WriteLine("Plus petit !");
                    }
                }
                else
                {
                    // Affiche un message d'erreur si la saisie n'est pas un nombre entier valide.
                    Console.WriteLine("Saisie invalide. Veuillez réessayer.");
                }
            }

            // Le programme continue ici après avoir obtenu une saisie valide.
        }

        static void Exercice12()
        {

            Console.WriteLine("Veuillez saisir un nombre entier");
            string l_NombreSaisie = Console.ReadLine();
            int l_NombreConverti = Convert.ToInt32(l_NombreSaisie);
            // Convertir en valeur numérique pour que la compilation puisse marcher. 
            while (l_NombreConverti < 1 || l_NombreConverti > 3)
            {
                Console.WriteLine("Attention, veuillez saisir un nombre entier compris entre 1 et 3");
                l_NombreSaisie = Console.ReadLine();
                l_NombreConverti = Convert.ToInt32(l_NombreSaisie);
            }
            Console.WriteLine("Le nombre saisi est bien compris entre 1 et 3");

        }
        static void Exercice13()
        {
            // Demande à l'utilisateur de saisir l'heure
            Console.Write("Entrez l'heure : ");
            int heure = int.Parse(Console.ReadLine());

            // Demande à l'utilisateur de saisir les minutes
            Console.Write("Entrez les minutes : ");
            int minutes = int.Parse(Console.ReadLine());

            // Incrémente les minutes de 1
            minutes++;

            // Si les minutes atteignent 60, réinitialise les minutes à 0 et        incrémente l'heure de 1
            if (minutes == 60)
            {
                minutes = 0;
                heure++;
            }

            // Si l'heure atteint 24, réinitialise l'heure à 0
            if (heure == 24)
            {
                heure = 0;
            }

            // Affiche l'heure qu'il sera dans une minute
            Console.WriteLine($"Dans une minute, il sera {heure:D2} heure(s)        {minutes:D2} minute(s).");
        }
        static void Exercice14_displaytab()
        {
            float[] tableau = new float[5];
            RemplirTableau(tableau);
            // Vous pouvez afficher le tableau ici si nécessaire
        }

        static void Exercice14(float[] tableau)
        {
            for (int i = 0; i < tableau.Length; i++)
            {
                Console.Write($"Saisissez la valeur {i + 1}: ");
                if (float.TryParse(Console.ReadLine(), out float valeur))
                {
                    tableau[i] = valeur;
                }
                else
                {
                    Console.WriteLine("Veuillez saisir une valeur valide.");
                    i--;
                }
            }
        }
    }
    static void Exercice15(float[] tableau)
    {
        Console.WriteLine("Contenu du tableau : ");
        foreach (float valeur in tableau)
        {
            Console.Write(valeur);
        }
        Console.WriteLine();
    }

    static void Exercice16(float[] tableau)
    {
        Random rand = new Random();
        for (int i = 0; i < tableau.Length; i++)
        {
            tableau[i] = rand.Next(0, 101); // Valeurs entre 0 et 100
        }
    }

    static float Exercice17(float[] tableau) // nombre à virgule
    {
        float somme = 0;
        foreach (float valeur in tableau)
        {
            somme += valeur;
        }
        return somme / tableau.Length;
    }

    static float Exercice18(float[] tableau)
    {
        float min = tableau[0];
        foreach (float valeur in tableau)
        {
            if (valeur < min)
            {
                min = valeur;
            }
        }
        return min;
    }

    static float Exercice19(float[] tableau)
    {
        float max = tableau[0];
        foreach (float valeur in tableau)
        {
            if (valeur > max)
            {
                max = valeur;
            }
        }
        return max;
    }

    static int Exercice20(float[] tableau, float note) // nombre entier
    {
        for (int i = 0; i < tableau.Length; i++)
        {
            if (tableau[i] == note)
            {
                return i;
            }
        }
        return -1; // indiquer une erreur ou une condition particulière.
    }

    static void Exercice21(float[] tableau)
    {
        int n = tableau.Length;
        for (int i = 0; i < n - 1; i++)
        {
            for (int j = 0; j < n - i - 1; j++)
            {
                if (tableau[j] > tableau[j + 1])
                {
                    float temp = tableau[j];
                    tableau[j] = tableau[j + 1];
                    tableau[j + 1] = temp;
                }
            }
        }
    }

    static int Exercice22(float[] tableau, float note)
    {
        int debut = 0;
        int fin = tableau.Length - 1;

        while (debut <= fin)
        {
            int milieu = (debut + fin) / 2;

            if (tableau[milieu] == note)
            {
                return milieu;
            }
            else if (tableau[milieu] < note)
            {
                debut = milieu + 1;
            }
            else
            {
                fin = milieu - 1;
            }
        }

        return -1; // indiquer une erreur ou une condition particulière.
    }
};


// CORRECTION DEVOIR 12/01/2024 

    static void Différence()
    {
        Console.Write("Entrez le premier nombre : ");
        double nombre1 = Convert.ToDouble(Console.ReadLine());

        Console.Write("Entrez le deuxième nombre : ");
        double nombre2 = Convert.ToDouble(Console.ReadLine());

        double différence = nombre1 - nombre2;

        Console.WriteLine($"La différence entre {nombre1} et {nombre2} est : {différence}");
    }

    static void PrixArticle()
    {
        Console.Write("Entrez le prix HT de l'article : ");
        double montantHT = Convert.ToDouble(Console.ReadLine());

        Console.Write("Entrez le nombre d'articles : ");
        int nombreArticles = Convert.ToInt32(Console.ReadLine());

        Console.Write("Entrez le taux de TVA : ");
        double tauxTVA = Convert.ToDouble(Console.ReadLine());

        double montantTTC = montantHT * tauxTVA / 100 + montantHT;

        Console.WriteLine($"Le prix total TTC pour {nombreArticles} articles est : {montantTTC * nombreArticles}");
    }

    static void NombreSuivants()
    {
        Console.Write("Entrez un nombre : ");
        int nombre = Convert.ToInt32(Console.ReadLine());

        for (int i = 1; i <= 100; i++)
        {
            Console.Write($"{nombre + i} ");
        }
        Console.WriteLine(); // Ajout d'un retour à la ligne à la fin
    }

    static void NombrePaire()
    {
        for (int i = 1; i <= 1000; i++)
        {
            Console.Write($"{i * 2} ");
        }
        Console.WriteLine(); // Ajout d'un retour à la ligne à la fin
    }

    static void SaisieNombre()
    {
        int nombre;
        do
        {
            Console.Write("Entrez un nombre entre 23 et 67 : ");
            nombre = Convert.ToInt32(Console.ReadLine());
        } while (nombre < 23 || nombre > 67);

        Console.WriteLine($"Vous avez saisi le nombre {nombre}.");
    }

    static void MontantImpot()
    {
        Console.Write("Entrez le revenu annuel de la famille : ");
        double revenuAnnuel = Convert.ToDouble(Console.ReadLine());

        Console.Write("Entrez le nombre de personnes dans la famille : ");
        int nombrePersonnes = Convert.ToInt32(Console.ReadLine());

        double revenuRéférence = revenuAnnuel / nombrePersonnes;
        double montantImpot = 0;

        if (revenuRéférence <= 13000)
        {
            montantImpot = 0;
        }
        else if (revenuRéférence > 13000 && revenuRéférence <= 20000)
        {
            montantImpot = revenuRéférence * 5 / 100;
        }
        else
        {
            montantImpot = revenuRéférence * 14 / 100;
        }

        Console.WriteLine($"Le montant de l'impôt à payer est : {montantImpot}");
    };
