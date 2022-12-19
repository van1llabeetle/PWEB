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

@WebServlet(urlPatterns = "/cadastroProduto")
public class CadastroProdutoServlet extends HttpServlet {

	private static final long serialVersionUID = -8671429229989703366L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nome = req.getParameter("nome");
		Double preco = Double.valueOf(req.getParameter("preco"));
		
		Produto produto = new Produto();
		produto.setNome(nome);
		produto.setPreco(preco);
		
		Boolean foiCadastrado = inserirProduto(produto);
		
		String mensagem;
		
		if(foiCadastrado) {
			mensagem = produto.getNome() + " incluído com sucesso!";
		}else {
			mensagem = produto.getNome() + " préviamente cadastrado!";
		}
				
		req.setAttribute("mensagem", mensagem);
		req.setAttribute("foiCadastrado", foiCadastrado);		
		req.getRequestDispatcher("cadastroProduto.jsp").forward(req, resp);
	}

	private Boolean inserirProduto(Produto produto) {
		ProdutoRepositorio produtoRepositorio = new ProdutoRepositorio();
		List<Produto> listaProduto = produtoRepositorio.listarProdutos();
		
		for(int i = 0; i < listaProduto.size(); i++) {
			Produto produtoLista = listaProduto.get(i);
			
			if(produtoLista.getNome().equals(produto.getNome())){
				return false;
			}			
		}
		
		produtoRepositorio.inserirProduto(produto);
		
		return true;
	}
}
