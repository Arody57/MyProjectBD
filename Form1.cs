using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MVP_BD_PRFinal.Conexion;
using MVP_BD_PRFinal.Clases;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

namespace MVP_BD_PRFinal
{
    public partial class Form1 : Form
    {
        public List<string> resultList;
        private bool Editar = false;
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
        }

        //public static List<cancion_pieza_musical> nombre_cancion(string value)
        //{
        //    List<cancion_pieza_musical> Lists = new List<cancion_pieza_musical>();

            //    using (SqlConnection conn = variable_global.cmd)
            //    {
            //        //SqlCommand cmd = new SqlCommand(string), con);
            //        string query = "SELECT cm.nombre, cm.fecha_lanzamiento, iai.nombre_artistico as interprete, d.nombre as album, 1 AS  isInterprete " +
            //            " FROM cancion_pieza_musical cm " +
            //            " INNER JOIN disco d on cm.id_disco = d.id_disco " +
            //            " INNER JOIN interprete_autor_instrumentalista iai on d.id_interprete = iai.id_artista " +
            //            " WHERE  cm.nombre LIKE ('%@nombre%') " +
            //            " union all " +
            //            " SELECT cm.nombre, cm.fecha_lanzamiento, iai.nombre as interprete, d.nombre as album, 0 AS  isInterprete " +
            //            " FROM cancion_pieza_musical cm " +
            //            " INNER JOIN disco d on cm.id_disco = d.id_disco " +
            //            " INNER JOIN grupo_musical iai on d.id_interprete = iai.id_grupo " +
            //            " WHERE cm.nombre LIKE   ('%@nombre%')";

            //        SqlCommand cmd = new SqlCommand(query, conn);
            //        cmd.Parameters.AddWithValue("@nombre", value);

            //        SqlDataReader read = cmd.ExecuteReader();

            //        while (read.Read())
            //        {
            //            cancion_pieza_musical pSong = new cancion_pieza_musical();
            //            //pSong.idTrack = Convert.ToString(read.GetInt32(0));
            //            pSong.nombre_cacion = read.GetString(0);
            //            pSong.fecha_lanzamiento = Convert.ToString(read.GetDateTime(1));
            //            pSong.autor = read.GetString(2);
            //            pSong.Disco = read.GetString(3);
            //            //pSong.id_disco = (!read.IsDBNull(1)) ? read.GetString(1) : "";
            //            //pSong.letra = (!read.IsDBNull(2)) ? read.GetString(2) : "";
            //            //pSong.fecha_lanzamiento = Convert.ToString(read.GetDateTime(3));
            //            //pSong.nombre = read.GetString(4);
            //            //pSong.pieza_independiente = Convert.ToString(read.GetByte(5));
            //            Lists.Add(pSong);
            //        }

            //        return Lists;
            //    //}

        //    DataTable

        //}

        private void btnIcon_Click(object sender, EventArgs e)
        {
            if (txtBuscar.Text != " ")
            {
                string name =txtBuscar.Text;
                //List<cancion_pieza_musical> List_busqueda = nombre_cancion(name);
                //gridProcess.DataSource = List_busqueda;
                DataTable dt = new DataTable();
                string Sp_Query = "sp_select_init";
                using (SqlConnection conn = variable_global.cmd)
                {
                    if (variable_global.cmd.State.ToString() == "Open")
                    {
                    SqlDataAdapter da = new SqlDataAdapter(Sp_Query, conn);
                        gridProcess.DataSource = "";
                    da.SelectCommand.CommandType = CommandType.StoredProcedure;
                    da.SelectCommand.Parameters.Add("@nombre", SqlDbType.VarChar).Value = name;
                    da.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            gridProcess.DataSource = dt;
                        }
                    }
                    else
                    {
                        variable_global.cmd = conexion.getConexxion(variable_global.server);

                    }
                }
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {

            agregar_cancion f1 = new agregar_cancion();
            this.Hide();
            f1.Show();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (gridProcess.SelectedRows.Count > 0)
            {
                string value = gridProcess.CurrentRow.Cells["interprete"].Value.ToString();

            ver_canciones f1 = new ver_canciones();
            this.Hide();
                f1.load_artist(value);
            f1.Show();
            }
        }
    }
}
