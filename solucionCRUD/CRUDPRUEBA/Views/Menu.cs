using CRUDPRUEBA.Methods;
using CRUDPRUEBA.Models;
using CRUDPRUEBA.Views;
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
    public partial class Menu : Form
    {
        public List<Employee> Employees { get; set; }

        public Menu()
        {
            InitializeComponent();
        }

        private void Menu_Load(object sender, EventArgs e)
        {
            Employees = EmployeeMethod.GetAllEmployee();
            dtgEmployee.DataSource = Employees;
            dtgEmployee.AutoGenerateColumns = false;
        }

        private void LoadData()
        {
            Employees = EmployeeMethod.GetAllEmployee();
            dtgEmployee.DataSource = Employees;
            dtgEmployee.AutoGenerateColumns = false;
        }

        private void tabPage6_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Desea salir del sistema?", "Salir", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if (result == DialogResult.Yes)
            {
                //Desloguearlo y mandarlo a login

                this.Close();

                Form1 loginForm = new Form1();
                loginForm.Show();
            }
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (tabControl1.SelectedIndex == 5)
            {
                DialogResult result = MessageBox.Show("Desea salir del sistema?", "Salir", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                if (result == DialogResult.Yes)
                {
                    //Desloguearlo y mandarlo a login
                    this.Close();

                    Form1 loginForm = new Form1();
                    loginForm.Show();
                }
                else
                    tabControl1.SelectedIndex = 0;
            }
        }

        private void btnNewEmployee_Click(object sender, EventArgs e)
        {
            AddEmployee addEmployee = new AddEmployee();

            if (addEmployee.ShowDialog() == DialogResult.OK)
            {
                RefreshData();
            }
        }

        private void RefreshData()
        {
            LoadData();
        }
    }
}
