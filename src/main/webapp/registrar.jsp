<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="acesso.jsp"%>
<!DOCTYPE html>
<html>
<head>
  <title>Registro de Músicas</title>
  <link rel="stylesheet" href="styles/registro.css">
  <script src="js/validation.js"></script>
</head>
<body>

<div class="navbar">
  <span>Olá, <%= usuario.getNome() %></span>
  <a href="home.jsp">Página Inicial</a>
</div>

<div class="container">
  <h2>Registro de Música</h2>
  <form method="POST" enctype="multipart/form-data" id="fform">

    <label for="file">Arquivo:</label>
    <input type="file" name="file" id="file"/>

    <label for="estilo">Estilo Musical:</label>
    <select id="estilo" name="estilo" required>
      <option value="">Selecione...</option>
      <option value="Rock">Rock</option>
      <option value="Pop">Pop</option>
      <option value="Sertanejo">Sertanejo</option>
      <option value="Funk">Funk</option>
      <option value="Eletrônica">Eletrônica</option>
      <option value="MPB">MPB</option>
      <option value="Clássica">Clássica</option>
    </select>



    <label for="nomeMusica">Nome da Música:</label>
    <input type="text" id="nomeMusica" name="nomeMusica" required placeholder="Ex: Bohemian_Rhapsody" onchange="">

    <label for="cantor">Cantor/Banda:</label>
    <input type="text" id="cantor" name="cantor" required placeholder="Ex: Queen">

    <button onclick="EnviarArquivo()">Registrar Música</button>
  </form>
</div>

</body>
</html>
