package br.edu.ifgoiano.repositorio;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.edu.ifgoiano.entidade.Produto;

public class ProdutoRepositorio {

	Connection conn;
	
	public ProdutoRepositorio() {
		try {
			Class.forName("org.h2.Driver");
			conn = DriverManager.
			        getConnection("jdbc:h2:~/test", "sa", "sa");
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Produto> listarProdutos(){
		List<Produto> listaProduto = new ArrayList<Produto>();
		
		String sql = "select nome, preco from produto";
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet result = ps.executeQuery();
			
			while(result.next()) {
				Produto produto = new Produto();
				produto.setNome(result.getString("nome"));
				produto.setPreco(result.getDouble("preco"));
				
				listaProduto.add(produto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listaProduto;
	}
	
	public void inserirProduto(Produto produto) {
		String sql = "insert into produto (nome, preco) values (?, ?)";
		
		try {
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, produto.getNome());
			ps.setDouble(2, produto.getPreco());
			
			ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
