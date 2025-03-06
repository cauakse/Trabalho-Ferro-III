package com.example.play_my_songs;

import java.io.*;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "envioServlet", value = "/envio-servlet")
@MultipartConfig(
        location="/",
        fileSizeThreshold=1024*1024,    // 1MB *
        maxFileSize=1024*1024*100,      // 100MB **
        maxRequestSize=1024*1024*10*10  // 100MB ***
)
public class EnvioServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        PrintWriter writer = response.getWriter();
        try {
            String nomeMusica = request.getParameter("nomeMusica");
            String estilo = request.getParameter("estilo");
            String cantor = request.getParameter("cantor");

            String fileName = nomeMusica + "_" + estilo + "_" + cantor + ".mp3";

            Part filePart = request.getPart("file");

            File fpasta = new File(getServletContext().getRealPath("/") + "/musicas");
            fpasta.mkdir();

            File file = new File(fpasta, fileName);
            try (OutputStream out = new FileOutputStream(file);
                 InputStream filecontent = filePart.getInputStream()) {
                byte[] bytes = new byte[1024];
                int read;
                while ((read = filecontent.read(bytes)) != -1) {
                    out.write(bytes, 0, read);
                }
            }

            writer.println("Novo arquivo " + fileName + " criado na pasta /musicas");
        } catch (Exception e) {
            writer.println("Erro ao receber o arquivo");
            writer.println("<br/> ERRO: " + e.getMessage());
        } finally {
            writer.close();
        }
    }
}
