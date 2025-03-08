<%@ page import="com.example.play_my_songs.util.Usuario" %>

<%
    Usuario usuario = (Usuario) session.getAttribute("user");
    if (usuario==null || !usuario.isAtivo())
        response.sendRedirect(".");
%>