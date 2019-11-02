package model;

import java.awt.BorderLayout;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.util.ArrayList;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class teste {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Pessoa p = new Pessoa();
		System.out.println("ONE NEW MEME");
		p.tableOperation(p.dropPessoa);
		p.tableOperation(p.createPessoa);
		p.tableOperation(p.dropMidia);
		p.tableOperation(p.createMidia);
		p.adicionarPessoa("66611122233", "binidj", "22/10/1999");
		p.adicionarPessoa("66441122233", "bebeu", "26/05/6666");
		p.adicionarPessoa("66611144233", "eidson", "22/10/1999");
		
		p.atualizarPessoa("66611144233", "wilson", "01/03/1002");
		
		p.deletarPessoa("66441122233");
		
		try {
			p.adicionarMidia("66611144233", "/home/tiago/Imagens/oi.png");
		} catch (Exception e) {
			System.out.println("deu meme");
			e.printStackTrace();
		}
 		
		
		try {
			//Blob is = p.retornarMidia("66611144233");
			byte[] meme = p.retornarMidia("66611144233");
			InputStream in = new ByteArrayInputStream(meme);
			BufferedImage image = ImageIO.read(in);
			if (image == null) System.out.println("DEU RUIM");
			JFrame frame = new JFrame();
			JLabel label = new JLabel(new ImageIcon(image));
			frame.getContentPane().add(label, BorderLayout.CENTER);
			frame.pack();
			frame.setVisible(true);
		} catch (Exception e) {
			System.out.println("deu menes");
			e.printStackTrace();
		}
		
//		
		ArrayList<String> ret = p.exibir();
		
		for (String d : ret) {
			System.out.println(d);
		}
		
	}

}
