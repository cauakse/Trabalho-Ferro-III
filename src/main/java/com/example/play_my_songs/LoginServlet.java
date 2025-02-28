package com.example.play_my_songs;

import java.io.*;

import com.example.play_my_songs.util.Usuario;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "loginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String emailValidation = email.substring(0,email.indexOf('@'));
        if (password.equals(emailValidation)){
            Usuario user = new Usuario(emailValidation, 0);
            HttpSession httpSession = request.getSession();
            httpSession.setAttribute("user",user);
            response.sendRedirect("home.jsp");
            return;
        }
        else
        {
            response.sendRedirect(".");
        }
    }

}