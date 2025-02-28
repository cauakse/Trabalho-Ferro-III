package com.example.play_my_songs.util;

public class Usuario {
    private String nome;
    private boolean ativo;
    private int nivel;

    public Usuario(String nome, int nivel) {
        this.nome = nome;
        this.ativo = true;
        this.nivel = nivel;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public boolean isAtivo() {
        return ativo;
    }

    public void setAtivo(boolean ativo) {
        this.ativo = ativo;
    }

    public int getNivel() {
        return nivel;
    }

    public void setNivel(int nivel) {
        this.nivel = nivel;
    }
}
