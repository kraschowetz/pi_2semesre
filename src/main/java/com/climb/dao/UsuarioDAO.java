package com.climb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.climb.model.Produto;
import com.climb.model.Usuario;
import com.climb.utils.ConnectionFactory;


public class UsuarioDAO {
	Connection connection;
	
	public boolean insert(Usuario usuario) {
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "INSERT INTO usuarios (nome, tipo, email, senha) values (?, ?, ?, ?);";
			
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, usuario.getNome());
			ps.setString(2, usuario.getTipo());
			ps.setString(3, usuario.getEmail());
			ps.setString(4, usuario.getSenha());
			
			if(ps.executeUpdate() > 0) {
				return true;
			}
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		}

		return false;
	}

	public ArrayList<Usuario> listar() {
		ArrayList<Usuario> users = new ArrayList<>();
		String sql = "SELECT * FROM usuarios;";
		
		try {
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int idUsuario = rs.getInt("id_usuario");
				String nome = rs.getString("nome");
				String tipo = rs.getString("tipo");
				String email = rs.getString("email");
				String senha = rs.getString("senha");
				
				Usuario item = new Usuario(idUsuario, nome, tipo, email, senha);
				
				users.add(item);
			}
		}
		catch(SQLException ex) { 
			ex.printStackTrace();
		}
		
		return users;
		
	}
	
	public Usuario buscarPorID(int id) {
		Usuario user = null;
		String sql = "SELECT * FROM usuarios WHERE id_usuario = ?;";
		
		try {
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int _id = rs.getInt("id_usuario");
				String nome = rs.getString("nome");
				String tipo = rs.getString("tipo");
				String email = rs.getString("email");
				String senha = rs.getString("senha");
				
				user = new Usuario(_id, nome, tipo, email, senha);
			}
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		}
		
		return user;
	}
	
	public boolean atualizar(Usuario user) {
		try {
			String sql = "UPDATE usuarios SET nome=?, tipo=?, email=?, senha=? WHERE id_usuario=?;";
			
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ps.setString(1, user.getNome());
			ps.setString(2, user.getTipo());
			ps.setString(3, user.getEmail());
			ps.setString(4, user.getSenha());
			ps.setInt(5, user.getId_usuario());

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
			String sql = "DELETE FROM usuarios WHERE id_usuario=?;";
			
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
