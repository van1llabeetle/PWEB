package pacote.servlet;

import java.io.IOException;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pacote.usuario.Usuario;

@WebServlet("/taghtml")
public class TagHtmlServlet extends HttpServlet {

	private static final long serialVersionUID = 773040671940560995L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<Usuario> listaDeUsuario = new ArrayList<Usuario>();

		for (int i = 0; i <10; i++) {
			Usuario usuario = new Usuario();
			usuario.setEmail("usuario" + i + "@gmail.com");

			listaDeUsuario.add(usuario);
		}
		req.setAttribute("listaDeUsuario", listaDeUsuario);

		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		//configuração do texto impresso na console 

		System.out.println("Seu e-mail foi enviado com sucesso!");
		System.out.println("-------Nova caixa de entrada-------");
		System.out.println();

		String email = req.getParameter("email");
		System.out.println("E-mail enviado para: " + email);
		System.out.println();

		String titulo = req.getParameter("titulo");
		System.out.println(titulo);

		//Condigurações de cumprimento

		String cumprimento = req.getParameter("radio");
		int hora = LocalTime.now().getHour();

		if (cumprimento!=null && !cumprimento.equals(null)) {
			if (cumprimento.equals("formal") && cumprimento != null) {
				if (cumprimento!=null && !cumprimento.isEmpty()) {
					System.out.println("Prezada(o)");
				}
			} else if (cumprimento != null){
				if (hora >= 5 && hora <= 11.59) {
					System.out.println("Bom dia,");
				} else if (hora >= 12 && hora <= 18.59) {
					System.out.println("Boa tarde,");
				} else {
					System.out.println("Boa noite,");
				}
			}
		}

		String mensagem= req.getParameter("mensagem");
		System.out.println(mensagem);
		System.out.println();

		// caixa de aviso
		String aviso = req.getParameter("aviso");
		if (aviso!=null && !aviso.equals(null)) {
			System.out.println("Atenção: esse é um e-mail automático e não deve ser respondido.");

		}
		req.getRequestDispatcher("index.jsp").forward(req, resp);
	}
}