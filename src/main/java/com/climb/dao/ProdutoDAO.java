package com.climb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import com.climb.model.Produto;
import com.climb.utils.ConnectionFactory;

public class ProdutoDAO {
	Connection connection;
	
	public boolean insert(Produto produto) {
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "INSERT INTO produtos (nome, preco, categoria, estoque) values (?, ?, ?, ?);";
			
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, produto.getNome());
			ps.setFloat(2, produto.getPreco());
			ps.setString(3, produto.getCategoria());
			ps.setInt(4, produto.getEstoque());
			
			if(ps.executeUpdate() > 0) {
				return true;
			}
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		}

		return false;
	}
	
	public ArrayList<Produto> listar() {
		ArrayList<Produto> produtos = new ArrayList<>();
		String sql = "SELECT * FROM produtos;";
		
		try {
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int idProduto = rs.getInt("id_produto");
				float preco = rs.getFloat("preco");
				String nome = rs.getString("nome");
				String categoria = rs.getString("categoria");
				int estoque = rs.getInt("estoque");
				
				Produto item = new Produto(idProduto, preco, nome, categoria, estoque);
				
				produtos.add(item);
			}
		}
		catch(SQLException ex) { 
			ex.printStackTrace();
		}
		
		return produtos;
		
	}

	public Produto buscarPorID(int id) {
		Produto produto = null;
		String sql = "SELECT * FROM produtos WHERE id_produto = ?;";
		
		try {
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int idProduto = rs.getInt("id_produto");
				float preco = rs.getFloat("preco");
				String nome = rs.getString("nome");
				String categoria = rs.getString("categoria");
				int estoque = rs.getInt("estoque");
				
				produto = new Produto(idProduto, preco, nome, categoria, estoque);
			}
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		}
		
		return produto;
	}

	public boolean atualizar(Produto produto) {
		try {
			String sql = "UPDATE produtos SET nome=?, preco=?, categoria=?, estoque=? WHERE id_produto=?;";
			
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ps.setString(1, produto.getNome());
			ps.setFloat(2, produto.getPreco());
			ps.setString(3, produto.getCategoria());
			ps.setInt(4, produto.getEstoque());
			ps.setInt(5, produto.getIdProduto());

			if(ps.executeUpdate() > 0) {
				connection.close();
				return true;
			}
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		}
		finally {
			if(connection != null) {
				try {
					connection.close();
					return true;
				}
				catch(SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
		
		return false;
	}
	
	public boolean excluir(int id) {
		try {
			String sql = "DELETE FROM produtos WHERE id_produto=?;";
			
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ps.setInt(1, id);
			
			if(ps.executeUpdate() > 0) {
				connection.close();
				return true;
			}
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		}
		finally {
			if(connection != null) {
				try {
					connection.close();
				}
				catch(SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
		
		return false;
	}
}
