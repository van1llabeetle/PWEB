package prova;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/controle")

public class controle extends HttpServlet {
	private static final long serialVersionUID= 1L;
	List<produto> listaProduto= new ArrayList<produto>();
	boolean validar;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		
		produto prod = new produto ();
		String preco = req.getParameter("preco");
		String nome = req.getParameter("nome");
		
		prod.setNome(nome);
		prod.setPreco( preco);
		
	
		
		System.out.println("O nome informado foi: " + prod.getNome());
		System.out.println("O preco informado foi: " + prod.getPreco());
		for(produto produto : listaProduto) {
			if(produto.getNome().equals(nome)) {
				 validar = true;
			}else {
				 validar = false;
			}
		}
		
		if(validar == true) {
			req.setAttribute("mensagem", nome +" previamente cadastrado");
		}else {
			listaProduto.add(prod);
			req.setAttribute("mense", nome + " incluído com sucesso");
		}
		
		
		
		req.getRequestDispatcher("index.jsp").forward(req, resp);

	
	}
}
