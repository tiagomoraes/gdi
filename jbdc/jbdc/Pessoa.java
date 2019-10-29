package jbdc;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class Pessoa {
	final static String url = "http://oracle12c.cin.ufpe.br/";
	final static String name = "g192if685cc_eq06";
	final static String password = "wbhbxwvi";
	public static ArrayList<String> pessoas;

	public ArrayList<String> exibir() {
		try (Connection con = DriverManager.getConnection(url, name, password);
				Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
				ResultSet rs = stmt.executeQuery("SELECT * from pessoa");) {

			pessoas.clear();

			while (rs.next()) {
				String cpf = rs.getString(0);
				String nome = rs.getString(1);
				String nascimento = rs.getString(2);
				pessoas.add(cpf);
				pessoas.add(nome);
				pessoas.add(nascimento);
			}
			return pessoas;

		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
		return null;
	}

	public void adicionar(String cpf, String nome, String nascimento) {
		try (Connection con = DriverManager.getConnection(url, name, password);
				PreparedStatement stmt = con
						.prepareStatement("INSERT INTO pessoa(cpf, nome, nascimento) values(?, ?, ?)");) {
			stmt.setString(1, cpf);
			stmt.setString(2, nome);
			stmt.setString(3, nascimento);
			stmt.executeUpdate();

		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}

	public void deletar(String cpf) {
		try (Connection con = DriverManager.getConnection(url, name, password);
				PreparedStatement stmt = con.prepareStatement("DELETE FROM pessoa where cpf= ? ");) {

			stmt.setString(1, cpf);
			stmt.executeUpdate();

		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}

	public void adicionarMidia(String cpf, String path) throws FileNotFoundException {
		InputStream file = new FileInputStream(path);
		try (Connection con = DriverManager.getConnection(url, name, password);
				PreparedStatement stmt = con.prepareStatement("INSERT INTO midia(pessoa, midia) values(?, ?)");) {
			stmt.setString(1, cpf);
			stmt.setBinaryStream(2, file);
			stmt.executeUpdate();

		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}
	
//	public BinaryStream retornarMidia(String cpf) {
//		try (Connection con = DriverManager.getConnection(url, name, password);
//				PreparedStatement stmt = con.prepareStatement("INSERT INTO midia(pessoa, midia) values(?, ?)");) {
//	}
}
