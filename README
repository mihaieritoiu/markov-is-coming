ERIȚOIU MIHAI-DORIN
Anul I
Gupa: 314
Seria: CC
An universitar: 2024-2025

Tema 1 - Metode Numerice

1. Markov is coming ...

    1) parse_labyrinth
        Aceasta functie citeste un fisier, urmand a returna o matrice numerica care reprezinta
        labirintul problemei.
    
    2) get_adjency_matrix
        Construim matricea de adiacenta a labirintului de dimensiuni m x n + 2, unde n si m
        reprezinta numarul liniilor, respectiv coloanelor, iar cele 2 in plus reprezinta
        cazurile de WIN si LOSE.

    3) get_link_matrix
        Construim o matrice ce prezinta probabilitatile de castig ale tranzitiilor dintre
        noduri. Folosim functia anterioara, apoi calculam, pe baza datelor din matricea rezultata,
        probabilitatile.

    4) get_Jacobi_parameters
        Extrage parametrii necesari pentru a folosi metoda Jacobi de rezolvare a sistemelor
        de ecuatii liniare.

    5) perform_iterative
        Rezolva sistemul cu ajutorul metodei Jacobi aplicand formula de iteratie
        x = G * x + c pana cand eroarea este mai mica decat toleranta data sau se atinge numarul maxim de pasi.

    6) heuristic_greedy
        Aceasta functie gaseste un drum castigator folosind o metoda greedy bazata pe matricea de probabilitati, calculata anterior. La fiecare pas se alege vecinul cu probabilitatea cea mai mare de castig.

    7) decoded_path
        Decodeaza vectorul de pozitii liniare sub forma de coordonate (i, j), returnand o matrice cu 2 coloane.

2. Linear Regression

    1) parse_data_set_file
        Citeste un fisier text si returneaza un vector coloana Y si o matrice InitialMatrix.

    2) prepare_for_regression
        Functia aceasta converteste stringurile in valori numerice binare si returneaza matricea FeatureMatrix cu noile valori.

    3) parse_csv_file
        Parcurge un fisier de tip CSV si returneaza un vector coloana si o matrice, asemenea functiei parse_data_set_file.

    4)  gradient_descendent
        Functia executa mai intai regresia liniara folosind formula prezentata in enuntul problemei, apoi returneaza vectorul Theta, cu continutul 0 pe prima linie si ceilalti coeficienti calculati pe urmatoarele.

    5) normal_equation
        Verifica mai intai daca matricea este pozitiv definita. In cazul optim, in care este pozitiv definita, se va trece la rezolvarea sistemului folosind metoda gradientului conjugat. In celalat caz, cand matricea nu este pozitiv definita, se va returna vectorul Theta cu valori nule.

    6) lasso_regression_cost_function
        Calculeaza costul regresiei Lasso conform indicatiilor oferite in enunt. Se foloseste un parametru de regularizare lambda care controleaza cat de mult penalizam coeficientii.

    7) ridge_regression_cost_function
        Aceasta functie calculeaza costul pentru regresia Ridge, dupa formula din enunt.

3. MNIST 101

    1) load_dataset
        Functia primeste o cale catre un fisier .mat si returneaza datele extrase din acesta.

    2) split_dataset
        Functia impafte datele in seturi de antrenare si de testare. Mai intai se amesteca folosind functia randperm, apoi selecteaza "percent" din date pentru antrenare, restul fiind automat pentru testare,.

    3) initialize_weights
        Initialieaza matricea de greutati dintre 2 straturi, unde L_prev este numarul de unitati din stratul precedent, iar L_next este numarul de unitati din urmatorul strat. Se foloseste valoarea "epsilon" care controleaza intervalul valorilor random generate.

    4) cost_function
        Functia calculeaza un cost si gradientul pentru o retea cu un strat ascuns. Compara predictiile cu valorile reale si regularizeaza. Calculeaza apoi gradientul pentru fiecare greutate.

    5) predict_classes
        Aceasta functie realizeaza predictia pentru clasele din fiecare exemplu. Se alege clasa cu cea mai mare probabilitate de pe fiecare linie.



Surse folosite in implementarea functiilor:

1. Laboratoarele de pe platforma curs.upb.ro, cursul de MN
2. Cursul MATLAB OnRamp
3. https://www.mathworks.com/help/?s_tid=user_nav_help
4. https://stackoverflow.com/questions
5. pentru parse_data_set_file.m - https://stackoverflow.com/questions/29080425/how-to-perform-string-to-double-in-matlab-using-delimiter