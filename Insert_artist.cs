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
    public partial class Insert_artist : Form
    {
        public Insert_artist()
        {
            InitializeComponent();
        }

        private void Insert_artist_Load(object sender, EventArgs e)
        {

        }

        private void check2_CheckStateChanged(object sender, EventArgs e)
        {
            check2.Checked = check2.Checked ? groupMusic.Visible = true : groupMusic.Visible = false;
            groupMusic.Visible = String.IsNullOrEmpty(group_musical.Text) ? false : true;
            group_musical.Enabled = !check2.Checked;
        }

        private void comboBox5_SelectionChangeCommitted(object sender, EventArgs e)
        {
            groupMusic.Visible = true;
            check2.Enabled = false;
        }

        private void label18_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(group_musical.Text))
            {
                check2.Enabled = true;
                check2.Checked = false;
                groupMusic.Visible = false;
                group_musical.Text = "";
            }
        }

        private void label19_Click(object sender, EventArgs e)
        {
            groupAutor.Visible = false;
            check1.Checked = false;
        }

        private void check1_CheckStateChanged(object sender, EventArgs e)
        {
            check1.Checked = check1.Checked ? groupAutor.Visible = true : groupAutor.Visible = false;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            variable_global.solitario = String.IsNullOrEmpty(group_musical.Text) ? true : false;
            string Primero, segundo, FPrimero, SSegundo, NArtist, fechaN, Pais, fechaInit, grupoMusical, listGen, listInstrumentos, listsVoz, listPrem, listTipoAutora,  vigenciaGrupo, listM, img;
            bool checkAutor, checkInterprete, checkInstrumentalista;
            Primero = txtFirst.Text;
            segundo = txtSecond.Text;
            FPrimero = txtFLast.Text;
            SSegundo = txtSLast.Text;
            NArtist = txtNArtist.Text;
            fechaN = fechaNac.Text;
            Pais = txtPais.Text;
            fechaInit = dateInit.Value.Date.ToShortDateString();
            grupoMusical = group_musical.SelectedItem.ToString();
            checkAutor = check1.Checked;
            checkInterprete = check2.Checked;
            checkInstrumentalista = chek3.Checked;
            listGen = listGeneros.Items.ToString();
            listInstrumentos = instrumentos_autor.Items.ToString();
            listsVoz = listVoz.Items.ToString();
            listPrem = listPremios.Items.ToString();
            listTipoAutora = listTipoAutor.Items.ToString();
            vigenciaGrupo = txtVigenciaGrupo.Text;
            listM = listMiembros.Items.ToString();


        }

        public void llenarItems(ComboBox cmb, string tipoC)
        {
            try
            {
                cmb.Items.Clear();

                using (SqlConnection conn = conexion.getConexxion(variable_global.server))
                {
                    if (variable_global.cmd.State.ToString() == "Open")
                    {
                        SqlCommand cmd = new SqlCommand(String.Format("Select * from {0}", tipoC), conn);
                        SqlDataReader dr = cmd.ExecuteReader();
                        while (dr.Read())
                        {
                            cmb.Items.Add(dr["nombre"].ToString());
                        }
                    }
                    else
                    {
                        variable_global.cmd = conexion.getConexxion(variable_global.server);
                        llenarItems(cmb, tipoC);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show("No se lleno el combobox" + ex.ToString());
            }
        }

        private void cmbGeneros_DropDown(object sender, EventArgs e)
        {
            llenarItems(cmbGeneros, "dbo.genero");
        }

        private void cmbTipoVoz_DropDown(object sender, EventArgs e)
        {
            llenarItems(cmbTipoVoz, "dbo.tipo_voz");
        }

        private void cmbInstrumentos_DropDown(object sender, EventArgs e)
        {
            llenarItems(cmbInstrumentos, "dbo.instrumento");
        }

        private void cmbPremios_DropDown(object sender, EventArgs e)
        {
            llenarItems(cmbPremios, "dbo.premio");
        }

        private void cmbTipoAutor_DropDown(object sender, EventArgs e)
        {
            llenarItems(cmbTipoAutor, "dbo.clasificacion_autor");
        }

        private void group_musical_DropDown(object sender, EventArgs e)
        {
            llenarItems(group_musical, "dbo.grupo_musical");
        }

        private void cmbGeneros_SelectionChangeCommitted(object sender, EventArgs e)
        {
            listGeneros.Items.Add(cmbGeneros.SelectedItem.ToString());
        }

        private void cmbInstrumentos_SelectionChangeCommitted(object sender, EventArgs e)
        {
            instrumentos_autor.Items.Add(cmbInstrumentos.SelectedItem.ToString());
        }

        private void cmbTipoVoz_SelectionChangeCommitted(object sender, EventArgs e)
        {
            listVoz.Items.Add(cmbTipoVoz.SelectedItem.ToString());
        }

        private void cmbPremios_SelectionChangeCommitted(object sender, EventArgs e)
        {
            listPremios.Items.Add(cmbPremios.SelectedItem.ToString());
        }

        private void cmbTipoAutor_SelectionChangeCommitted(object sender, EventArgs e)
        {
            listTipoAutor.Items.Add(cmbTipoAutor.SelectedItem.ToString());
        }

        private void btnReg_Click(object sender, EventArgs e)
        {
            Form1 f1 = new Form1();
            this.Hide();
            f1.Show();
        }
    }
}

