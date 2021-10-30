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
    public partial class info_artista : Form
    {
        public info_artista()
        {
            InitializeComponent();
        }

        private void lblCanciones_Click(object sender, EventArgs e)
        {

        }

        private void btnInsert_Click(object sender, EventArgs e)
        {
            Insert_artist f1 = new Insert_artist();
            this.Hide();
            f1.Show();
        }

        private void info_artista_Load(object sender, EventArgs e)
        {
            preLoadForm();
        }
        public void preLoadForm()
        {
            using (SqlConnection conn = variable_global.cmd)
            {
                if (variable_global.cmd.State.ToString() == "Open")
                {
                    SqlCommand cmd = new SqlCommand(String.Format("select Concat(primer_nombre ,' ',segundo_nombre , ' ', apellido_paterno,' ', apellido_materno) as nombre_completo, nombre_artistico, fecha_nacimiento, pais_origen, fecha_inicio_carrera, fotografia, autor, interprete, instrumentalista as nombre from interprete_autor_instrumentalista where id_artista = \'{0}\'", variable_global.id_artist), conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        textBox1.Text = dr["nombre_completo"].ToString();
                        textBox2.Text = dr["nombre_artistico"].ToString();
                        textBox3.Text = dr["fecha_nacimiento"].ToString();
                        textBox4.Text = dr["pais_origen"].ToString();
                        textBox5.Text = dr["fecha_inicio_carrera"].ToString();
                        textBox5.Text = dr["fecha_inicio_carrera"].ToString();

                    }
                }
                else
                {
                    variable_global.cmd = conexion.getConexxion(variable_global.server);
                    preLoadForm();
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
                    SqlCommand cmd = new SqlCommand(String.Format("Select ins.nombre from {0} INNER JOIN instrumento ins ON it.id_instrumento = it.id_instrumento where it.id_artista =\'{1}\'", "instrumento_artista it", variable_global.id_artist), conn);
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

        private void comboBox2_DropDown(object sender, EventArgs e)
        {
            comboBox2.Items.Clear();

            using (SqlConnection conn = conexion.getConexxion(variable_global.server))
            {
                if (variable_global.cmd.State.ToString() == "Open")
                {
                    SqlCommand cmd = new SqlCommand(String.Format("Select ins.nombre from {0} INNER JOIN tipo_voz ins on ins.id_voz = it.id_voz where it.id_artista = \'{1}\'", "tipo_voz_artista it", variable_global.id_artist), conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        comboBox2.Items.Add(dr["nombre"].ToString());
                    }
                }
                else
                {
                    variable_global.cmd = conexion.getConexxion(variable_global.server);
                }
            }
        }

        private void comboBox3_DropDown(object sender, EventArgs e)
        {
            comboBox3.Items.Clear();

            using (SqlConnection conn = conexion.getConexxion(variable_global.server))
            {
                if (variable_global.cmd.State.ToString() == "Open")
                {
                    SqlCommand cmd = new SqlCommand(String.Format("Select ins.nombre from {0} INNER JOIN genero ins on ins.id_genero = it.id_genero where it.id_artista = \'{1}\'", "genero_artista it", variable_global.id_artist), conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        comboBox3.Items.Add(dr["nombre"].ToString());
                    }
                }
                else
                {
                    variable_global.cmd = conexion.getConexxion(variable_global.server);
                }
            }
        }

        private void comboBox4_DropDown(object sender, EventArgs e)
        {
            comboBox3.Items.Clear();

            using (SqlConnection conn = conexion.getConexxion(variable_global.server))
            {
                if (variable_global.cmd.State.ToString() == "Open")
                {
                    SqlCommand cmd = new SqlCommand(String.Format("Select ins.nombre from {0} INNER JOIN grupo_musical ins on ins.id_grupo= it.id_grupo_musical where it.id_miembro =\'{1}\'", "miembro_grupo_musical it", variable_global.id_artist), conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        comboBox3.Items.Add(dr["nombre"].ToString());
                    }
                }
                else
                {
                    variable_global.cmd = conexion.getConexxion(variable_global.server);
                }
            }
        }

        private void iconBtn_Click(object sender, EventArgs e)
        {
            Form1 f1 = new Form1();
            this.Hide();
            f1.Show();
        }
    }
}
