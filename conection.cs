using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MVP_BD_PRFinal.Conexion;

namespace MVP_BD_PRFinal
{
    public partial class conection : Form
    {
        public conection()
        {
            InitializeComponent();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            string server = txtServer.Text;

            SqlConnection cmd =  conexion.getConexxion(server);
            variable_global.cmd = cmd;
            variable_global.server = server;
            if (cmd.State.ToString() == "Open")
            {
                //MessageBox.Show("Conectado");
                Form1 f1 = new Form1();
                this.Hide();
                f1.Show();
            }
            else
            {
                MessageBox.Show("Error de conexion");
            }
            
        }
    }
}
