package com.climb.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import com.climb.dao.ProdutoDAO;
import com.climb.model.Produto;

@WebServlet(name="produtos", urlPatterns={"/produtos","/produtos/novo","/produtos/cadastro","/produtos/listar","/produtos/editar","/produtos/update","/produtos/excluir", "/produtos/catalogo"})
public class ProdutoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProdutoDAO dao = null;
    
    private void listar(HttpServletRequest request, HttpServletResponse response, boolean adm) throws ServletException, IOException, SQLException{
    	ArrayList<Produto> lista = dao.listar();
    	request.setAttribute("lista", lista);
    	RequestDispatcher dispatcher;
    	
    	if(adm) {
			dispatcher = request.getRequestDispatcher("/views/produtos/produtos-listar.jsp");
    	}
    	else {
			dispatcher = request.getRequestDispatcher("/catalogo.jsp");
			System.out.println("falso");
    	}
    	dispatcher.forward(request, response);
    }
    
    private void novo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		float preco = Float.parseFloat(request.getParameter("preco"));
		String categoria = request.getParameter("categoria");
		int estoque = Integer.parseInt(request.getParameter("estoque"));
		
		if(nome != null && categoria != null && estoque > 0 && preco > 0) {
			Produto produto = new Produto(0, preco, nome, categoria, estoque); //sql vai sobrescrever o id, eu espero
			dao.insert(produto);
		}
		
		try {
			listar(request, response, true);
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}
    
    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id_produto"));
		Produto alter = dao.buscarPorID(id);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/produtos/produto-cadastro.jsp");
		request.setAttribute("produto", alter);
		dispatcher.forward(request, response);
	}
    
    private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id_produto"));
		String nome = request.getParameter("nome");
		float preco = Float.parseFloat(request.getParameter("preco"));
		String categoria = request.getParameter("categoria");
		int estoque = Integer.parseInt(request.getParameter("estoque"));
		
		Produto alter = new Produto(id, preco, nome, categoria, estoque);
		
		dao.atualizar(alter);
		response.sendRedirect("listar");
	}
    
    private void excluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id_produto"));
		dao.excluir(id);
		response.sendRedirect("listar");
	}
    
    public ProdutoController() {
        super();
        dao = new ProdutoDAO();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		
		try {
			switch(action) {
				case "/produtos/novo":
					novo(request, response);
					break;
				case "/produtos/listar":
					listar(request, response, true);
					break;
				case "/produtos/cadastro":
					RequestDispatcher dispatcher = request.getRequestDispatcher("/views/produtos/produto-cadastro.jsp");
					dispatcher.forward(request, response);
					break;
				case "/produtos/excluir":
					excluir(request, response);
					break;
				case "/produtos/editar":
					editar(request, response);
					break;
				case "/produtos/update":
					update(request, response);
					break;
				case "/produtos/catalogo":
					listar(request, response, false);
					break;
			}
		}
		catch(SQLException ex) {
			throw new ServletException(ex);
		}
	}
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
