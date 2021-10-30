using MVP_BD_PRFinal.Conexion;
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

namespace MVP_BD_PRFinal
{
    public partial class agregar_cancion : Form
    {
        public agregar_cancion()
        {
            InitializeComponent();
        }

        private void agregar_cancion_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string disco = comboBox1.SelectedItem.ToString();
            string name = textBox1.Text;
            int numeroPieza = Convert.ToInt32(textBox2.Text);
            string letra = textBox3.Text;
            string date = dateTimePicker1.Value.Date.ToShortDateString();
            int independt = comboBox2.SelectedItem.ToString() == "1" ? 1 : 0;
            getDisco(disco);

            using (SqlConnection conn = conexion.getConexxion(variable_global.server))
            {
                if (variable_global.cmd.State.ToString() == "Open")
                {
                    SqlCommand cmd = new SqlCommand(String.Format("INSERT INTO dbo.cancion_pieza_musical(id_disco, letra, fecha_lanzamiento, nombre, pieza_independiente, numero_pieza) VALUES (\'{0}\', \'{1}\', \'{2}\',\'{3}\' , \'{4}\', {5})", variable_global.id_discoUnique , letra, date, name, independt, numeroPieza ), conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    MessageBox.Show("Registro ingresado correctamente");
                }
                else
                {
                    variable_global.cmd = conexion.getConexxion(variable_global.server);
                }
            }
        }

        public void getDisco(string nameDisco)
        {

            using (SqlConnection conn = conexion.getConexxion(variable_global.server))
            {
                if (variable_global.cmd.State.ToString() == "Open")
                {
                    SqlCommand cmd = new SqlCommand(String.Format("Select id_disco from disco where nombre = \'{0}\'", nameDisco), conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        variable_global.id_discoUnique = (dr["id_disco"].ToString());
                    }
                }
                else
                {
                    variable_global.cmd = conexion.getConexxion(variable_global.server);
                }
            }
        }

        private void comboBox1_DropDown(object sender, EventArgs e)
        {
            comboBox1.Items.Clear();

            using (SqlConnection conn = conexion.getConexxion(variable_global.server))
            {
                if (variable_global.cmd.State.ToString() == "Open")
                {
                    SqlCommand cmd = new SqlCommand(String.Format("Select * from {0}", "disco"), conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        comboBox1.Items.Add(dr["nombre"].ToString());
                    }
                }
                else
                {
                    variable_global.cmd = conexion.getConexxion(variable_global.server);
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Form1 f1 = new Form1();
            this.Hide();
            f1.Show();
        }
    }
}
