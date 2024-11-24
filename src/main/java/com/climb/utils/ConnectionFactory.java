package com.climb.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	public static final String USUARIO = "root";
	public static final String SENHA = "Joaopedro2005@";
	public static final String NOME_DB = "climb";
	
	public static Connection getConnection() {
		Connection connection = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = String.format("jdbc:mysql://localhost/%s", NOME_DB);
			
			connection = DriverManager.getConnection(url, USUARIO, SENHA);

			return connection;
		}
		catch(SQLException ex) {
			System.out.println("erro ao abrir conexão " + ex.getLocalizedMessage());
			throw new RuntimeException("erro ao abrir connexão", ex);
		}
		catch(Exception ex) {
			System.out.println("errp ao abrir conexão");
			throw new RuntimeException("erro ao registrar driver JDBC", ex);
		}
		
	}
}
