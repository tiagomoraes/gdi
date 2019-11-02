package view;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import java.awt.BorderLayout;
import javax.swing.JLabel;
import javax.swing.SwingConstants;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;

import model.Pessoa;

import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;

import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.border.LineBorder;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;
import javax.swing.filechooser.FileNameExtensionFilter;

import java.awt.Color;
import javax.swing.border.Border;

public class Home {

	private JFrame frame;
	private JTable table;
	private JTextField txtCpf;
	private JTextField txtNome;
	private JTextField txtDataNascimento;
	private DefaultTableModel tableModel;
	private String selectedCpf;
	private String selectedNome;
	private String selectedDataNascimento;
	private int selectedLine;
	public Pessoa pessoa;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Home window = new Home();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public Home() {
		pessoa = new Pessoa();
		selectedCpf = "";
		selectedNome = "";
		selectedDataNascimento = "";
		selectedLine = 0;
		
		pessoa.resetTables();
		initialize();
	}
	
	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame();
		frame.setBounds(100, 100, 738, 810);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		JPanel panel = new JPanel();
		frame.getContentPane().add(panel, BorderLayout.CENTER);
		panel.setLayout(null);
		
		JLabel lblPessoas = new JLabel("PESSOAS");
		lblPessoas.setBounds(299, 27, 124, 29);
		lblPessoas.setFont(new Font("Dialog", Font.BOLD, 24));
		lblPessoas.setHorizontalAlignment(SwingConstants.CENTER);
		panel.add(lblPessoas);
		
		String[] colunas = {"CPF", "Nome", "Data de Nascimento"};
		tableModel = new DefaultTableModel();
		tableModel.setColumnIdentifiers(colunas);
		
		table = new JTable(tableModel);
		table.setBorder(new LineBorder(Color.GRAY, 2));
		table.setBounds(40, 86, 646, 272);
		
		
		// Adicionar pessoa
		JButton btnCriar = new JButton("+ Adicionar Nova Pessoa");
		btnCriar.setBounds(474, 370, 212, 38);
		
		btnCriar.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				CrateDialog criarNovaPessoa = new CrateDialog();
				criarNovaPessoa.setVisible(true);
				
				criarNovaPessoa.addWindowListener(new WindowAdapter() {
					public void windowClosed(WindowEvent e) {
					    loadTable();
					  }
				});
			}
		});
		
		panel.add(btnCriar);
		
		JPanel panelEdit = new JPanel();
		panelEdit.setBounds(0, 420, 738, 360);
		panel.add(panelEdit);
		panelEdit.setLayout(null);
		
		JLabel lblCpf = new JLabel("CPF*");
		lblCpf.setBounds(364, 25, 66, 25);
		panelEdit.add(lblCpf);
		lblCpf.setHorizontalAlignment(SwingConstants.LEFT);
		
		txtCpf = new JTextField();
		txtCpf.setBounds(364, 47, 175, 32);
        txtCpf.setEditable(false);

		panelEdit.add(txtCpf);
		txtCpf.setColumns(10);
		
		JLabel lblNome = new JLabel("Nome*");
		lblNome.setBounds(364, 91, 80, 25);
		panelEdit.add(lblNome);
		lblNome.setHorizontalAlignment(SwingConstants.LEFT);
		
		txtNome = new JTextField();
		txtNome.setBounds(364, 118, 284, 32);
		panelEdit.add(txtNome);
		txtNome.setColumns(10);
		
		JLabel lblDataNascimento = new JLabel("Data de Nascimento*");
		lblDataNascimento.setBounds(364, 163, 151, 25);
		panelEdit.add(lblDataNascimento);
		lblDataNascimento.setHorizontalAlignment(SwingConstants.LEFT);
		
		txtDataNascimento = new JTextField();
		txtDataNascimento.setBounds(364, 188, 124, 32);
		panelEdit.add(txtDataNascimento);
		txtDataNascimento.setColumns(10);
		
		// Adicionar imagem
		JButton btnAdicionarImagem = new JButton("+ Adicionar Foto");
		btnAdicionarImagem.setBounds(90, 225, 165, 29);
		
		btnAdicionarImagem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				JFileChooser jfc = new JFileChooser();
                jfc.setFileFilter(new FileNameExtensionFilter("Imagem", "jpg", "jpeg", "gif", "png"));
                jfc.setFileSelectionMode(JFileChooser.FILES_ONLY);
                int retorno = jfc.showDialog(jfc, "Selecione");
                
                if(retorno == JFileChooser.APPROVE_OPTION) {
                	try {
                		pessoa.adicionarMidia(selectedCpf, jfc.getSelectedFile().getPath());
					} catch (FileNotFoundException ex) {
						ex.printStackTrace();
					}
                }
			}
		});
		panelEdit.add(btnAdicionarImagem);
		
		// Editar pessoa
		JButton btnEditar = new JButton("Salvar");
		btnEditar.setBounds(241, 304, 114, 44);
		panelEdit.add(btnEditar);
		
		JButton btnExcuir = new JButton("Excluir");
		btnExcuir.setBounds(378, 304, 114, 44);
		panelEdit.add(btnExcuir);
		
		JLabel lblImage = new JLabel(new ImageIcon("/home/tiago/ufpe/gdi/jbdc/images/Captura de tela de 2019-10-23 10-41-34.png"));
		lblImage.setBounds(90, 25, 165, 188);
		panelEdit.add(lblImage);
		
		btnExcuir.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				System.out.println(txtCpf.getText());
				System.out.println(txtNome.getText());
				System.out.println(txtDataNascimento.getText());
				pessoa.deletarPessoa(txtCpf.getText());		
				loadTable();
			}
		});
		
		btnEditar.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				System.out.println(txtCpf.getText());
				System.out.println(txtNome.getText());
				System.out.println(txtDataNascimento.getText());
				pessoa.atualizarPessoa(txtCpf.getText(), txtNome.getText(), txtDataNascimento.getText());		
				loadTable();
			}
		});
		
		// Selecionar pessoa a ser editada
		table.getSelectionModel().addListSelectionListener(new ListSelectionListener() {
		    @Override
		    public void valueChanged(ListSelectionEvent event) {
		        if (table.getSelectedRow() > -1) {
		        	selectedLine = table.getSelectedRow();
		        	selectedCpf = table.getValueAt(selectedLine, 0).toString();
		        	selectedNome = table.getValueAt(selectedLine, 1).toString();
		        	selectedDataNascimento = table.getValueAt(selectedLine, 2).toString();
		        }
		        
		        if(selectedCpf != "") {
		        	txtCpf.setText(selectedCpf);
		        	txtNome.setText(selectedNome);
		        	txtDataNascimento.setText(selectedDataNascimento);
		        }
		    }
		});
		
		panel.add(table);
		
		btnAdicionarImagem.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				
			}
		});
	}
	
	public void loadTable() {
		// Clear table
		tableModel.setRowCount(0);
		
		Object[] row = new Object[3];
		ArrayList<String> arrayPessoas = pessoa.exibir();
		for(int i = 0; i < arrayPessoas.size(); i+=3) {
			row[0] = arrayPessoas.get(i);
			row[1] = arrayPessoas.get(i+1);
			row[2] = arrayPessoas.get(i+2);
			
			tableModel.addRow(row);
		}
	}
	public Border getTableBorder() {
		return table.getBorder();
	}
	public void setTableBorder(Border border) {
		table.setBorder(border);
	}
}
