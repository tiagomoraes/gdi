package jbdc;

import java.util.ArrayList;

import jbdc.Pessoa;

public class teste {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Pessoa p = new Pessoa();
		System.out.println("ONE NEW MEME");
		p.deleteDatabase();
		p.createDatabase();
		
		p.adicionar("11332237744", "bine dj", "22/10/1999");
		p.adicionar("11331111144", "vini dj", "22/10/1999");
		p.deletar("11332237744");
//		
		ArrayList<String> ret = p.exibir();
		System.out.println(ret.get(0));
		System.out.println(ret.get(1));
		System.out.println(ret.get(2));

	}

}
