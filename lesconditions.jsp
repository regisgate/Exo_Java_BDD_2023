<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
    <title>les conditions</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les conditions</h1>
    <form action="#" method="post">
        <p>Saisir la valeur 1 : <input type="text" name="valeur1"></p>
        <p>Saisir la valeur 2 : <input type="text" name="valeur2"></p>
        <p>Saisir la valeur A : <input type="text" name="valeurA"></p>
        <p>Saisir la valeur B : <input type="text" name="valeurB"></p>
        <p>Saisir la valeur C : <input type="text" name="valeurC"></p>
        <p>Saisir un nombre pour vérifier s'il est pair ou impair : <input type="text" name="nombre"></p>
        <input type="submit" value="Afficher">
    </form>

    <% 
    String valeur1 = request.getParameter("valeur1");
    String valeur2 = request.getParameter("valeur2");
    String valeurA = request.getParameter("valeurA");
    String valeurB = request.getParameter("valeurB");
    String valeurC = request.getParameter("valeurC");
    String nombre = request.getParameter("nombre");

    try {
        // Comparaison des deux premières valeurs
        if (valeur1 != null && valeur2 != null && !valeur1.isEmpty() && !valeur2.isEmpty()) {
            int intValeur1 = Integer.parseInt(valeur1);
            int intValeur2 = Integer.parseInt(valeur2);
            
            if (intValeur1 > intValeur2) {
                out.println("<p>Valeur 1 est supérieure à Valeur 2.</p>");
            } else if (intValeur1 < intValeur2) {
                out.println("<p>Valeur 1 est inférieure à Valeur 2.</p>");
            } else {
                out.println("<p>Valeur 1 est égale à Valeur 2.</p>");
            }
        }

        // Exercice 1 : Comparaison 1
        if (valeurA != null && valeurB != null && valeurC != null && 
            !valeurA.isEmpty() && !valeurB.isEmpty() && !valeurC.isEmpty()) {
            int intValeurA = Integer.parseInt(valeurA);
            int intValeurB = Integer.parseInt(valeurB);
            int intValeurC = Integer.parseInt(valeurC);
            
            if (intValeurC > intValeurA && intValeurC < intValeurB) {
                out.println("<p>Oui, C est compris entre A et B.</p>");
            } else {
                out.println("<p>Non, C n'est pas compris entre A et B.</p>");
            }
        }

        // Exercice 2 : Pair ou Impair ?
        if (nombre != null && !nombre.isEmpty()) {
            int intNombre = Integer.parseInt(nombre);
            
            if (intNombre % 2 == 0) {
                out.println("<p>Le nombre est pair.</p>");
            } else {
                out.println("<p>Le nombre est impair.</p>");
            }
        }

    } catch (NumberFormatException e) {
        out.println("<p>Erreur : Veuillez saisir des valeurs numériques valides.</p>");
    }
    %>

    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
