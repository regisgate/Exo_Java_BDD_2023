User
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
<% if (valeur != null && !valeur.isEmpty()) { %>
    <% int taille = Integer.parseInt(valeur); %>

    <%-- Exercice 1 : Le carré d'étoiles --%>
    <h2>Exercice 1 : Le carré d'étoiles</h2>
    <% for (int i = 0; i < taille; i++) { %>
        <% for (int j = 0; j < taille; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <%-- Exercice 2 : Triangle rectangle gauche --%>
    <h2>Exercice 2 : Triangle rectangle gauche</h2>
    <% for (int i = 1; i <= taille; i++) { %>
        <% for (int j = 1; j <= i; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <%-- Exercice 3 : Triangle rectangle inversé --%>
    <h2>Exercice 3 : Triangle rectangle inversé</h2>
    <% for (int i = taille; i > 0; i--) { %>
        <% for (int j = 0; j < i; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <%-- Exercice 4 : Triangle rectangle aligné à droite --%>
    <h2>Exercice 4 : Triangle rectangle 2</h2>
    <% for (int i = 1; i <= taille; i++) { %>
        <% for (int j = 1; j <= taille - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int k = 1; k <= i; k++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <%-- Exercice 5 : Triangle isocèle --%>
    <h2>Exercice 5 : Triangle isocele</h2>
    <% for (int i = 1; i <= taille; i++) { %>
        <% for (int j = 1; j <= taille - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int k = 1; k <= (2 * i - 1); k++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <%-- Exercice 6 : Demi losange --%>
    <h2>Exercice 6 : Le demi losange</h2>
    <% for (int i = 1; i <= taille; i++) { %>
        <% for (int j = 1; j <= taille - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int k = 1; k <= i; k++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
    <% for (int i = taille - 1; i > 0; i--) { %>
        <% for (int j = 1; j <= taille - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int k = 1; k <= i; k++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>

    <%-- Exercice 7 : La table de multiplication --%>
    <h2>Exercice 7 : La table de multiplication</h2>
    <% for (int i = 1; i <= 10; i++) { %>
        <p><%= taille %> x <%= i %> = <%= taille * i %></p>
    <% } %>
<% } %>


<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
