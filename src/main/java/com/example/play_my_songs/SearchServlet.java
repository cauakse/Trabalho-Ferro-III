package com.example.play_my_songs;

import java.io.*;

import com.example.play_my_songs.util.SearchFunction;
import com.example.play_my_songs.util.Usuario;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "searchServlet", value = "/search-servlet")

public class SearchServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String valor = request.getParameter("valorDeBusca");
        SearchFunction.setSearchName(valor);
    }

}