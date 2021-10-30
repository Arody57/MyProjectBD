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
    public partial class ver_canciones : Form
    {
        public ver_canciones()
        {
            InitializeComponent();
        }

        private void ver_canciones_Load(object sender, EventArgs e)
        {
                
        }
        public void load_artist(string name_artist)
        {
            DataTable dt = new DataTable();
            variable_global.nameArtist = name_artist;
            string sqQuery = "sp_select_ver_detalle";
            using (SqlConnection conn = variable_global.cmd)
            {
                if (variable_global.cmd.State.ToString() == "Open")
                {
                    SqlDataAdapter da = new SqlDataAdapter(sqQuery, conn);
                    gridSong.DataSource = "";
                    da.SelectCommand.CommandType = CommandType.StoredProcedure;
                    da.SelectCommand.Parameters.Add("@interprete", SqlDbType.VarChar).Value = name_artist;
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        gridSong.DataSource = dt;
                        gridSong.Columns[0].Visible = false;
                    }
                }
                else
                {
                    variable_global.cmd = conexion.getConexxion(variable_global.server);
                    load_artist(name_artist);
                }
            }
        }

        private void iconBtn_Click(object sender, EventArgs e)
        {
            Form1 f1 = new Form1();
            this.Hide();
            f1.Show();
        }

        private void btnArtist_Click(object sender, EventArgs e)
        {
            variable_global.id_artist = gridSong.CurrentRow.Cells["id_artista"].Value.ToString();
            info_artista f1 = new info_artista();
            this.Hide();
            f1.Show();
        }

        private void btnEdit_Click(object sender, EventArgs e)
        {
           inter.Text =  gridSong.CurrentRow.Cells["interprete"].Value.ToString();
           nombreSong.Text = gridSong.CurrentRow.Cells["nombre"].Value.ToString();
           Anio.Text = gridSong.CurrentRow.Cells["fecha_lanzamiento"].Value.ToString();
           Duracion.Text = gridSong.CurrentRow.Cells["duracion_disco"].Value.ToString();
           numero.Text = gridSong.CurrentRow.Cells["numero_cancion"].Value.ToString();
           cmbDisco.Text = gridSong.CurrentRow.Cells["discografica"].Value.ToString();
           letra.Text = gridSong.CurrentRow.Cells["letra"].Value.ToString();
            button1.Enabled = true;
        }

        private void cmbDisco_DropDown(object sender, EventArgs e)
        {
            using (SqlConnection conn = conexion.getConexxion(variable_global.server))
            {
                cmbDisco.Items.Clear();
                if (variable_global.cmd.State.ToString() == "Open")
                {
                    SqlCommand cmd = new SqlCommand(String.Format("Select * from dbo.casa_discografica"), conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        cmbDisco.Items.Add(dr["nombre"].ToString());
                    }
                }
                else
                {
                    variable_global.cmd = conexion.getConexxion(variable_global.server);
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
