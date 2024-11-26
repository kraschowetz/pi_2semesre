package com.climb.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import com.climb.dao.ProdutoDAO;
import com.climb.model.Produto;

enum TipoDeCatalogo {
	ADM_LISTAR,
	CATALOGO,
	CATALOGO_ERR_ESTOQUE
}

@WebServlet(name="produtos", urlPatterns={"/produtos","/produtos/novo","/produtos/cadastro","/produtos/listar","/produtos/editar","/produtos/update","/produtos/excluir", "/produtos/catalogo", "/produtos/catalogo-sem-estoque", "/produtos/item-carrinho", "/produtos/carrinho", "/produtos/remover", "/produtos/comprar"})
public class ProdutoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ProdutoDAO dao = null;
    
    private void listar(HttpServletRequest request, HttpServletResponse response, TipoDeCatalogo tipo) throws ServletException, IOException, SQLException{
    	ArrayList<Produto> lista = dao.listar();
    	request.setAttribute("lista", lista);
    	RequestDispatcher dispatcher;
    	
    	if(tipo == TipoDeCatalogo.ADM_LISTAR) {
			dispatcher = request.getRequestDispatcher("/views/produtos/produtos-listar.jsp");
    	}
    	else if(tipo == TipoDeCatalogo.CATALOGO){
			dispatcher = request.getRequestDispatcher("/catalogo.jsp");
    	}
    	else {
    		request.setAttribute("err_estoque", true);
			dispatcher = request.getRequestDispatcher("/catalogo.jsp");
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
			listar(request, response, TipoDeCatalogo.ADM_LISTAR);
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
    
    private void addCarrinho(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id_produto"));
		int estoqueCarrinho = 0;
		HttpSession session = request.getSession();
		
		//testar
		if(session.getAttribute("user") == null) {
			response.sendRedirect("/Climb/login.jsp");
			return;
		}
		
		@SuppressWarnings("unchecked")
		ArrayList<Integer> carrinho = (ArrayList<Integer>) session.getAttribute("carrinho");
		
		if(carrinho != null) {
			for(int i : carrinho) {
				if(i == id) {
					estoqueCarrinho++;
				}
			}
		}
		
		if(dao.buscarPorID(id).getEstoque() >= (estoqueCarrinho + 1)) {
			//pode comprar
			if(carrinho != null) {
				carrinho.add(id);
			}
			else {
				carrinho = new ArrayList<Integer>();
				carrinho.add(id);
			}
			session.setAttribute("carrinho", carrinho);
			response.sendRedirect("/Climb/produtos/catalogo");
		}
		else {
			response.sendRedirect("/Climb/produtos/catalogo-sem-estoque");
		}
		
    }
    
    private void listarCarrinho(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
    	RequestDispatcher dispatcher;

		@SuppressWarnings("unchecked")
		ArrayList<Integer> carrinho = (ArrayList<Integer>) session.getAttribute("carrinho");
		ArrayList<Produto> list = new ArrayList<Produto>();
		
		for(int i : carrinho) {
			list.add(dao.buscarPorID(i));
		}

    	request.setAttribute("lista", list);
    	
		dispatcher = request.getRequestDispatcher("/catalogo.jsp");
    	dispatcher = request.getRequestDispatcher("/views/produtos/carrinho.jsp");
    	dispatcher.forward(request, response);
    }
    
    private void removerCarrinho(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
    	RequestDispatcher dispatcher;
    	int id = Integer.parseInt(request.getParameter("id_produto"));
		@SuppressWarnings("unchecked")
		ArrayList<Integer> carrinho = (ArrayList<Integer>) session.getAttribute("carrinho");

		carrinho.remove((Object)id);
		
		session.setAttribute("carrinho", carrinho);
    	dispatcher = request.getRequestDispatcher("/produtos/carrinho");

    	dispatcher.forward(request, response);
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
					listar(request, response, TipoDeCatalogo.ADM_LISTAR);
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
					listar(request, response, TipoDeCatalogo.CATALOGO);
					break;
				case "/produtos/catalogo-sem-estoque":
					listar(request, response, TipoDeCatalogo.CATALOGO_ERR_ESTOQUE);
					break;
				case "/produtos/item-carrinho":
					addCarrinho(request, response);
					break;
				case "/produtos/carrinho":
					listarCarrinho(request, response);
					break;
				case "/produtos/remover":
					removerCarrinho(request, response);
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
