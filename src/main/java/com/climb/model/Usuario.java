package com.climb.model;

public class Usuario {
	int id_usuario;
	String tipo; //cliente ou admin
	String nome;
	String email;
	String senha;
	
	public int getId_usuario() {
		return id_usuario;
	}

	public void setId_usuario(int id_usuario) {
		this.id_usuario = id_usuario;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
	
	public Usuario(int id_usuario, String tipo, String nome, String email, String senha) {
		super();
		this.id_usuario = id_usuario;
		this.tipo = tipo;
		this.nome = nome;
		this.email = email;
		this.senha = senha;
	}
}
