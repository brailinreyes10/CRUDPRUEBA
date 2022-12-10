using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CRUDPRUEBA
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if(UsuarioRegis.Autentificar(txtusuario.Text,txtcontraseña.Text) >0)
                {
                this.Hide();
                Menu f = new Menu();
                f.ShowDialog();
            }
            else
                MessageBox.Show("¡Usuario/Contraseña Incorrecto!");
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            this.Hide();
            Registrar f = new Registrar();
            f.ShowDialog();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            btniniciarsesion.Enabled = false;
        }

        private void validarcompos()
        {
            var vr = !string.IsNullOrEmpty(txtusuario.Text) &&
                !string.IsNullOrEmpty(txtcontraseña.Text);
            btniniciarsesion.Enabled = vr;
        }

        private void txtusuario_TextChanged(object sender, EventArgs e)
        {
            validarcompos();
        }

        private void txtcontraseña_TextChanged(object sender, EventArgs e)
        {
            validarcompos();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
