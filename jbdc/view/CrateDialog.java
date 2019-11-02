package view;

import java.awt.BorderLayout;
import java.awt.FlowLayout;

import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import model.Pessoa;

import javax.swing.JLabel;
import javax.swing.SwingConstants;
import javax.swing.JTextField;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

public class CrateDialog extends JDialog {

	private final JPanel contentPanel = new JPanel();
	private JTextField txtCpf;
	private JTextField txtNome;
	private JTextField txtDataNascimento;
	public Pessoa pessoa;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		try {
			CrateDialog dialog = new CrateDialog();
			dialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
			dialog.setVisible(true);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * Create the dialog.
	 */
	public CrateDialog() {
		pessoa = new Pessoa();
		
		setBounds(100, 100, 324, 300);
		getContentPane().setLayout(new BorderLayout());
		contentPanel.setBorder(new EmptyBorder(5, 5, 5, 5));
		getContentPane().add(contentPanel, BorderLayout.CENTER);
		contentPanel.setLayout(null);
		{
			JLabel lblCpf = new JLabel("CPF*");
			lblCpf.setHorizontalAlignment(SwingConstants.LEFT);
			lblCpf.setBounds(13, 12, 66, 25);
			contentPanel.add(lblCpf);
		}
		{
			txtCpf = new JTextField();
			txtCpf.setColumns(10);
			txtCpf.setBounds(14, 39, 175, 32);
			contentPanel.add(txtCpf);
		}
		{
			JLabel lblNome = new JLabel("Nome*");
			lblNome.setHorizontalAlignment(SwingConstants.LEFT);
			lblNome.setBounds(13, 83, 80, 25);
			contentPanel.add(lblNome);
		}
		{
			txtNome = new JTextField();
			txtNome.setColumns(10);
			txtNome.setBounds(14, 110, 284, 32);
			contentPanel.add(txtNome);
		}
		{
			JLabel lblDataNascimento = new JLabel("Data de Nascimento*");
			lblDataNascimento.setHorizontalAlignment(SwingConstants.LEFT);
			lblDataNascimento.setBounds(12, 154, 151, 25);
			contentPanel.add(lblDataNascimento);
		}
		{
			txtDataNascimento = new JTextField();
			txtDataNascimento.setColumns(10);
			txtDataNascimento.setBounds(13, 178, 124, 32);
			contentPanel.add(txtDataNascimento);
		}
		{
			JPanel buttonPane = new JPanel();
			buttonPane.setLayout(new FlowLayout(FlowLayout.RIGHT));
			getContentPane().add(buttonPane, BorderLayout.SOUTH);
			{
				JButton okButton = new JButton("Criar");
				okButton.addActionListener(new ActionListener() {
					public void actionPerformed(ActionEvent e) {
						System.out.println(txtCpf.getText());
						System.out.println(txtNome.getText());
						System.out.println(txtDataNascimento.getText());
						pessoa.adicionarPessoa(txtCpf.getText(), txtNome.getText(), txtDataNascimento.getText());
						dispose();
					}
				});
				okButton.setActionCommand("OK");
				buttonPane.add(okButton);
				getRootPane().setDefaultButton(okButton);
			}
			{
				JButton cancelButton = new JButton("Cancelar");
				cancelButton.setActionCommand("Cancel");
				
				cancelButton.addActionListener(new ActionListener() {
					
					@Override
					public void actionPerformed(ActionEvent e) {
						dispose();
						
					}
				});
				buttonPane.add(cancelButton);
			}
		}
	}

}
