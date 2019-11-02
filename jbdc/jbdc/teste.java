package jbdc;

import java.util.ArrayList;

import jbdc.Pessoa;

public class teste {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Pessoa p = new Pessoa();
		System.out.println("ONE NEW MEME");
		p.tableOperation(p.dropPessoa);
		p.tableOperation(p.createPessoa);
		p.adicionarPessoa("66611122233", "binidj", "22/10/1999");
		p.adicionarPessoa("66441122233", "bebeu", "26/05/6666");
		p.adicionarPessoa("66611144233", "eidson", "22/10/1999");
		
		p.atualizarPessoa("66611144233", "wilson", "01/03/1002");
		
		p.deletarPessoa("66441122233");
//		
		ArrayList<String> ret = p.exibir();
		
		for (String d : ret) {
			System.out.println(d);
		}
		
	}

}
