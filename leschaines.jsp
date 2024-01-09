<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les chaines</title>
</head>
<body bgcolor=white>
    <h1>Exercices sur les chaînes de caractères</h1>
    <form action="#" method="post">
        <p>Saisir une chaîne (Du texte avec 6 caractères minimum) : <input type="text" id="inputValeur" name="chaine">
        <input type="submit" value="Afficher">
    </form>

    <%-- Récupération de la chaîne saisie par l'utilisateur --%>
    <% 
    String chaine = request.getParameter("chaine"); 
    if (chaine != null && chaine.length() >= 6) {
        int longueurChaine = chaine.length();

<h2>Exercice 1 : Combien de 'e' dans notre chaîne de caractères ?</h2>
<% int compteurE = 0;
   for (int i = 0; i < longueurChaine; i++) {
       if (chaine.charAt(i) == 'e') {
           compteurE++;
       }
   }
%>
<p>Nombre de 'e' dans votre chaîne : <%= compteurE %></p>
<h2>Exercice 2 : Affichage vertical</h2>
<% for (int i = 0; i < longueurChaine; i++) { %>
    <p><%= chaine.charAt(i) %></p>
<% } %>

<h2>Exercice 3 : Retour à la ligne</h2>
<% for (int i = 0; i < longueurChaine; i++) {
    if (chaine.charAt(i) == ' ') {
        out.println("<br>");
    } else {
        out.print(chaine.charAt(i));
    }
} %>
<br>

<h2>Exercice 4 : Afficher une lettre sur deux</h2>
<% for (int i = 0; i < longueurChaine; i+=2) { %>
    <%= chaine.charAt(i) %>
<% } %>
<br>

<h2>Exercice 5 : La phrase en verlan</h2>
<% for (int i = longueurChaine - 1; i >= 0; i--) { %>
    <%= chaine.charAt(i) %>
<% } %>
<br>
<h2>Exercice 6 : Consonnes et voyelles</h2>
<% int compteurVoyelles = 0, compteurConsonnes = 0;
   String voyelles = "aeiouAEIOU";
   for (int i = 0; i < longueurChaine; i++) {
       char c = chaine.charAt(i);
       if (voyelles.indexOf(c) >= 0) {
           compteurVoyelles++;
       } else if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z')) {
           compteurConsonnes++;
       }
   }
%>
<p>Nombre de voyelles : <%= compteurVoyelles %>, Nombre de consonnes : <%= compteurConsonnes %></p>
        
    } else if (chaine != null) {
        out.println("<p>Erreur : Veuillez saisir au moins 6 caractères.</p>");
    }
    %>
    <p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
