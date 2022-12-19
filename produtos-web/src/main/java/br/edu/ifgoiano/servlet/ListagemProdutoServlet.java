package br.edu.ifgoiano.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.edu.ifgoiano.entidade.Produto;
import br.edu.ifgoiano.repositorio.ProdutoRepositorio;

@WebServlet("/listagemProduto")
public class ListagemProdutoServlet extends HttpServlet {

	private static final long serialVersionUID = 8443487028811544944L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ProdutoRepositorio repositorio = new ProdutoRepositorio();
		
		List<Produto> listaDeProduto = repositorio.listarProdutos();
		
		req.setAttribute("listaDeProduto", listaDeProduto);
		
		req.getRequestDispatcher("listagemProduto.jsp").forward(req, resp);
	}
}









