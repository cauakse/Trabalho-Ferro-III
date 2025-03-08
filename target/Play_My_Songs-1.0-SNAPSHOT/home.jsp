<%@ page import="java.io.File" %>
<%@ page import="com.example.play_my_songs.util.SearchFunction" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="acesso.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <title>Lista de Músicas</title>
  <link rel="stylesheet" href="styles/home.css">
  <script src="js/search.js"></script>
</head>
<body>
<div class="navbar">
  <span>Olá, <%= usuario.getNome() %></span>
  <a href="registrar.jsp">Registre uma Música</a>
</div>

<div class="container">
  <div class="headD">
    <h1>Lista de Músicas</h1>
    <div>
      <form id="formBusca">
        <label for="valorDeBusca"></label>
        <input class="searchInput" type="text" id="valorDeBusca" name="valorDeBusca" placeholder="Busque por sua música" value="<%= SearchFunction.searchName%>"/>
        <button type="button" onclick="FiltraValores()">Buscar</button>
      </form>
    </div>
  </div>


  <%
    File pastaweb = new File(request.getServletContext().getRealPath("") + "/musicas");

    if (pastaweb.exists()) {
      File[] arquivos = pastaweb.listFiles();

      if (arquivos != null && arquivos.length > 0) {
  %>
  <ul>
    <%
      for (File file : arquivos) {
        if (file.isFile() && file.getName().toLowerCase().contains(SearchFunction.searchName.toLowerCase())) {
    %>
    <li>
      <h3><%=file.getName()%></h3>
      <audio controls>
        <source src="<%= "musicas/"+ file.getName() %>" type="audio/mpeg">
      </audio>
    </li>
    <%
        }
      }
    %>
  </ul>
  <%
  } else {
  %>
  <p class="error">Nenhuma música encontrada na pasta.</p>
  <%
    }
  } else {
  %>
  <p class="error">A pasta de músicas não existe.</p>
  <%
    }
  %>
</div>

</body>
</html>
