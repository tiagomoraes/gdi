package jbdc;

import java.io.DataInputStream;
import java.io.File;
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
	final static String url = "jdbc:oracle:thin:@oracle12c.cin.ufpe.br:1521:instance01";
	final static String name = "g192if685cc_eq06";
	final static String password = "wbhbxwvi";
	
	final static String dropPessoa = "DROP table pessoa";
	final static String dropMidia = "DROP table midia";
	
	final static String createPessoa = 	"CREATE table pessoa(\n" + 
										"    cpf VARCHAR2(11) NOT NULL,\n" + 
										"    nome VARCHAR2(20) NOT NULL,\n" + 
										"    data_de_nascimento VARCHAR2(20) NOT NULL,\n" + 
										"    CONSTRAINT pessoa_pk PRIMARY KEY (cpf)\n" + 
										")";
	
	final static String createMidia = 	"CREATE table midia(\n" + 
										"    id VARCHAR2(11) NOT NULL,\n" + 
										"    imagem blob,\n" + 
										"    CONSTRAINT midia_pk PRIMARY KEY (id)\n" + 
										")";
	
	final static String adicionarPessoa = "INSERT INTO pessoa(cpf, nome, data_de_nascimento) values(?, ?, ?)";
	
	final static String atualizarPessoa = "UPDATE pessoa SET nome=?, data_de_nascimento=? WHERE cpf=?";
	
	final static String removerPessoa = "DELETE FROM pessoa where cpf= ? ";
	final static String exibirPessoa = "SELECT * from pessoa";
	
	final static String adicionarMidia = "INSERT INTO midia(id, imagem) values(?, ?)";
	final static String removerMidia = "SELECT imagem from midia where id= ? ";
	
	public static ArrayList<String> pessoas;
	
	public Pessoa () {
		try  {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pessoas = new ArrayList<String>();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void tableOperation (String crt) {
		try  {
			Connection con = DriverManager.getConnection(url, name, password);
			PreparedStatement stmt = con.prepareStatement(crt);
			stmt.executeUpdate(); stmt.close(); con.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<String> exibir() {
		try (Connection con = DriverManager.getConnection(url, name, password);
				Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
				ResultSet rs = stmt.executeQuery(exibirPessoa);) {

			pessoas.clear();

			while (rs.next()) {
				String cpf = rs.getString(1);
				String nome = rs.getString(2);
				String nascimento = rs.getString(3);
				pessoas.add(cpf);
				pessoas.add(nome);
				pessoas.add(nascimento);
			}
			
			stmt.close(); rs.close(); con.close();

		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
		return pessoas;
	}

	public void adicionarPessoa(String cpf, String nome, String nascimento) {
		try (Connection con = DriverManager.getConnection(url, name, password);
				PreparedStatement stmt = con
						.prepareStatement(adicionarPessoa);) {
			
			stmt.setString(1, cpf); stmt.setString(2, nome); stmt.setString(3, nascimento);
			
			stmt.executeUpdate(); stmt.close(); con.close();
			
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}
	
	public void atualizarPessoa(String cpf, String nome, String nascimento) {
		try (Connection con = DriverManager.getConnection(url, name, password);
				PreparedStatement stmt = con.prepareStatement(atualizarPessoa);) {
			
			stmt.setString(1, nome); stmt.setString(2, nascimento); stmt.setString(3, cpf);
			
			
			System.out.println("OK");
			
			
			stmt.executeUpdate(); stmt.close(); con.close();
			
		} catch (SQLException e) {
			System.out.println("MEMED");
			e.printStackTrace();
			//JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}

	public void deletarPessoa(String cpf) {
		try (Connection con = DriverManager.getConnection(url, name, password);
				PreparedStatement stmt = con.prepareStatement(removerPessoa);) {

			stmt.setString(1, cpf);
			
			stmt.executeUpdate(); stmt.close(); con.close();
		
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}
	
	public void adicionarMidia(String cpf, String path) throws FileNotFoundException {
		File img = new File(path);
		byte[] imagem = new byte[(int) img.length()];
		DataInputStream is = new DataInputStream(new FileInputStream(path));
		
		try {
			is.readFully(imagem);
			is.close();
		} catch	(Exception e) {
			e.printStackTrace();
		}
		
		try (Connection con = DriverManager.getConnection(url, name, password);
				PreparedStatement stmt = con.prepareStatement(adicionarMidia);) {
			
			stmt.setString(1, cpf); stmt.setObject(2, imagem);
			
			stmt.executeUpdate(); stmt.close(); con.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
	}

	public InputStream retornarMidia(String cpf) {
		InputStream is = null;
		try(Connection con = DriverManager.getConnection(url, name, password);
			PreparedStatement stmt = con.prepareStatement(removerMidia);) {
			
			stmt.setString(1, cpf);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				is = rs.getBinaryStream(1);
			}
			
			stmt.close(); con.close();
		} catch (SQLException e) {
			JOptionPane.showMessageDialog(null, e.getMessage());
		}
		return is;
	}
}

// https://www.devmedia.com.br/blobs-com-jdbc-e-swing-aprenda-a-lidar-com-campos-binarios-em-java/8584
