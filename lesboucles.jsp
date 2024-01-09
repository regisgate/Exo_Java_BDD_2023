<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<%-- Récupération de la valeur saisie par l'utilisateur --%>
<% String valeur = request.getParameter("valeur"); %>
    
    <%-- Vérification de l'existence de la valeur --%>
    <% if (valeur != null && !valeur.isEmpty()) { %>
        <% int taille = Integer.parseInt(valeur); %>
        <h2>Exercice 1 : Le carré d'étoiles</h2>
        <% for (int i = 0; i < taille; i++) { %>
            <% for (int j = 0; j < taille; j++) { %>
                <%= "*" %>
            <% } %>
            <br>
        <% } %>
    <% } %>

<%-- Exercice 2 : Triangle rectangle gauche --%>
<h2>Exercice 2 : Triangle rectangle gauche</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<% String valeurTriangle = request.getParameter("valeurTriangle"); %>
<% if (valeurTriangle != null && !valeurTriangle.isEmpty()) { %>
    <% int tailleTriangle = Integer.parseInt(valeurTriangle); %>
    <% for (int i = 1; i <= tailleTriangle; i++) { %>
        <% for (int j = 1; j <= i; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
<% } %>

<%-- Exercice 3 : Triangle rectangle inversé --%>
<h2>Exercice 3 : Triangle rectangle inversé</h2>
<p>Ecrire le code afin de produire un triangle rectangle aligné sur la gauche</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<% String valeurTriangleInverse = request.getParameter("valeurTriangleInverse"); %>
<% if (valeurTriangleInverse != null && !valeurTriangleInverse.isEmpty()) { %>
    <% int tailleTriangleInverse = Integer.parseInt(valeurTriangleInverse); %>
    <% for (int i = tailleTriangleInverse; i > 0; i--) { %>
        <% for (int j = 0; j < i; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
<% } %>



<%-- Exercice 4: Triangle Rectangle Aligné à Droite --%>
<% String valeurTriangleDroit = request.getParameter("valeurTriangleDroit"); %>
<% if (valeurTriangleDroit != null && !valeurTriangleDroit.isEmpty()) { %>
    <% int tailleTriangleDroit = Integer.parseInt(valeurTriangleDroit); %>
    <% for (int i = 1; i <= tailleTriangleDroit; i++) { %>
        <% for (int j = 1; j <= tailleTriangleDroit - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int k = 1; k <= i; k++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
<% } %>


<%-- Exercice 5: Triangle Isocèle --%>
<% String valeurTriangleIsocele = request.getParameter("valeurTriangleIsocele"); %>
<% if (valeurTriangleIsocele != null && !valeurTriangleIsocele.isEmpty()) { %>
    <% int tailleTriangleIsocele = Integer.parseInt(valeurTriangleIsocele); %>
    <% for (int i = 1; i <= tailleTriangleIsocele; i++) { %>
        <% for (int j = 1; j <= tailleTriangleIsocele - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int k = 1; k <= (2 * i - 1); k++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
<% } %>


<%-- Exercice 6: Demi Losange --%>
<% String valeurDemiLosange = request.getParameter("valeurDemiLosange"); %>
<% if (valeurDemiLosange != null && !valeurDemiLosange.isEmpty()) { %>
    <% int tailleDemiLosange = Integer.parseInt(valeurDemiLosange); %>
    <% for (int i = 1; i <= tailleDemiLosange; i++) { %>
        <% for (int j = 1; j <= tailleDemiLosange - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int k = 1; k <= i; k++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
    <% for (int i = tailleDemiLosange - 1; i > 0; i--) { %>
        <% for (int j = 1; j <= tailleDemiLosange - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int k = 1; k <= i; k++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
<% } %>

<h2>Exercice 7 : La table de multiplication</h2>
<p>Ecrire le code afin de créser une table de multiplication</p>
<p>Exemple si l'utilisateur saisie le valeur 5</p>
<p>5 x 1 = 5</p>
<p>5 x 2 = 10</p>
<p>5 x 3 = 15</p>
<p>5 x 4 = 20</p>
<p>5 x 5 = 25</p>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
