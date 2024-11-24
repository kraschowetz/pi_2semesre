package com.climb.model;

public class Produto {
	int idProduto;
	float preco;
	String nome;
	String categoria;
	int estoque;
	
	public Produto(int idProduto, float preco, String nome, String categoria, int estoque) {
		super();
		this.idProduto = idProduto;
		this.preco = preco;
		this.nome = nome;
		this.categoria = categoria;
		this.estoque = estoque;
	}
	
	public int getIdProduto() {
		return idProduto;
	}
	public void setIdProduto(int idProduto) {
		this.idProduto = idProduto;
	}
	public float getPreco() {
		return preco;
	}
	public void setPreco(float preco) {
		this.preco = preco;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public int getEstoque() {
		return estoque;
	}
	public void setEstoque(int estoque) {
		this.estoque = estoque;
	}
}
