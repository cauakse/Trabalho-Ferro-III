<%@ page import="com.example.play_my_songs.util.Usuario" %>
<%@ page import="java.io.File" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<%!
Usuario usuario;
%>
<%
usuario = (Usuario) session.getAttribute("user");
%>
<h1>Olá <%=usuario.getNome()%></h1>

<%
  File pastaweb = new File(request.getServletContext().getRealPath("")+"/musicas");
  if (!pastaweb.exists())
  {
    %>
      <h1>Pasta não Existe</h1>
<%
  }
  else {
    %>
    <h1>Pasta Existe</h1>
<%
  }
  %>
<%
//  if(pastaweb.listFiles().length>0)
//  {
//    for (File file : pastaweb.listFiles())
//      if(file.isFile())  // se é um arquivo e não uma pasta
//        System.out.println(file.getAbsolutePath()+"<br>");
//  }
//  else{
//    System.out.println("Nenhuma musica ainda");
//      }
%>
</body>
</html>