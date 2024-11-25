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
import com.climb.dao.UsuarioDAO;
import com.climb.model.Produto;
import com.climb.model.Usuario;

@WebServlet(name="usuarios", urlPatterns={"/usuarios","/usuarios/novo","/usuarios/cadastro","/usuarios/listar","/usuarios/editar","/usuarios/update","/usuarios/excluir", "/usuarios/login", "/usuarios/logout"})
public class UsuarioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UsuarioDAO dao = null;
    
    private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
    	ArrayList<Usuario> lista = dao.listar();
    	request.setAttribute("lista", lista);
    	RequestDispatcher dispatcher = request.getRequestDispatcher("/views/usuarios/usuarios-listar.jsp");
    	dispatcher.forward(request, response);
    }
    
    private void novo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String tipo = request.getParameter("tipo");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		if(nome != null && tipo != null && email != null && senha != null) {
			Usuario user = new Usuario(0, nome, tipo, email, senha); //sql vai sobrescrever o id, eu espero
			dao.insert(user);
		}
		
		try {
			listar(request, response);
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}
    
    private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id_usuario"));
		Usuario alter = dao.buscarPorID(id);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/usuarios/usuario-cadastro.jsp");
		request.setAttribute("usuario", alter);
		dispatcher.forward(request, response);
	}
    
    private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id_usuario"));
		String nome = request.getParameter("nome");
		String tipo = request.getParameter("tipo");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");
		
		Usuario alter = new Usuario(id, nome, tipo, email, senha);
		
		dao.atualizar(alter);
		response.sendRedirect("listar");
	}
    
    private void excluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id_usuario"));
		dao.excluir(id);
		response.sendRedirect("listar");
	}
    
    private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	Usuario loginUser = dao.bucarPorEmail(request.getParameter("login_email"));
    	HttpSession session = request.getSession();
    	String senha = request.getParameter("login_senha");
    	
    	if(loginUser == null) {
    		response.sendRedirect("/Climb/index.jsp");
    		return;
    	}
    	
    	if(!loginUser.getSenha().equals(senha)) {
    		response.sendRedirect("/Climb/index.jsp");
			// response.sendRedirect("https://" + loginUser.getSenha() + "--" + senha); <- forma grotesca, mas eficiente (eu acho) de debugar usuario & senha
			return;
    	}
    	
		session.setAttribute("adm", loginUser.getTipo().equals("adm") ? true : false);
		session.setAttribute("user", loginUser);
    	response.sendRedirect("/Climb/index.jsp");
    	
    }
    
    private void logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession();
		session.setAttribute("adm", false);
		session.setAttribute("user", null);

    	response.sendRedirect("/Climb/index.jsp");
    }
    
    public UsuarioController() {
        super();
        dao = new UsuarioDAO();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getServletPath();
		RequestDispatcher dispatcher;
		
		try {
			switch(action) {
				case "/usuarios/novo":
					novo(request, response);
					break;
				case "/usuarios/listar":
					listar(request, response);
					break;
				case "/usuarios/cadastro":
					dispatcher = request.getRequestDispatcher("/views/usuarios/usuario-cadastro.jsp");
					dispatcher.forward(request, response);
					break;
				case "/usuarios/excluir":
					excluir(request, response);
					break;
				case "/usuarios/editar":
					editar(request, response);
					break;
				case "/usuarios/update":
					update(request, response);
					break;
				case "/usuarios/login":
					login(request, response);
					break;
				case "/usuarios/logout":
					logout(request, response);
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

/*
    	if(loginUser != null) {
			if(loginUser.getSenha() == senha) {
				request.setAttribute("looged", true);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/area-adm.jsp");
				dispatcher.forward(request, response);
				return;
			}
    	}
		try {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
			dispatcher.forward(request, response);
		} catch (IOException e) {
			e.printStackTrace();
		}
*/