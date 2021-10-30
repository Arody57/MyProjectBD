
namespace MVP_BD_PRFinal
{
    partial class ver_canciones
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.gridSong = new System.Windows.Forms.DataGridView();
            this.lblCancion = new System.Windows.Forms.Label();
            this.letra = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.iconBtn = new FontAwesome.Sharp.IconButton();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.Duracion = new System.Windows.Forms.TextBox();
            this.Anio = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.inter = new System.Windows.Forms.TextBox();
            this.btnArtist = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.numero = new System.Windows.Forms.TextBox();
            this.btnEdit = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.nombreSong = new System.Windows.Forms.TextBox();
            this.lblName = new System.Windows.Forms.Label();
            this.cmbDisco = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.gridSong)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // gridSong
            // 
            this.gridSong.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridSong.Location = new System.Drawing.Point(151, 76);
            this.gridSong.Name = "gridSong";
            this.gridSong.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridSong.Size = new System.Drawing.Size(611, 269);
            this.gridSong.TabIndex = 0;
            // 
            // lblCancion
            // 
            this.lblCancion.AutoSize = true;
            this.lblCancion.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblCancion.Location = new System.Drawing.Point(377, 32);
            this.lblCancion.Name = "lblCancion";
            this.lblCancion.Size = new System.Drawing.Size(148, 18);
            this.lblCancion.TabIndex = 1;
            this.lblCancion.Text = "Lista de canciones ";
            // 
            // letra
            // 
            this.letra.Location = new System.Drawing.Point(736, 390);
            this.letra.Multiline = true;
            this.letra.Name = "letra";
            this.letra.ScrollBars = System.Windows.Forms.ScrollBars.Vertical;
            this.letra.Size = new System.Drawing.Size(410, 298);
            this.letra.TabIndex = 2;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(913, 361);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(46, 18);
            this.label1.TabIndex = 3;
            this.label1.Text = "Letra";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(821, 87);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(297, 258);
            this.pictureBox1.TabIndex = 4;
            this.pictureBox1.TabStop = false;
            // 
            // iconBtn
            // 
            this.iconBtn.IconChar = FontAwesome.Sharp.IconChar.CaretLeft;
            this.iconBtn.IconColor = System.Drawing.Color.Black;
            this.iconBtn.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.iconBtn.Location = new System.Drawing.Point(12, 722);
            this.iconBtn.Name = "iconBtn";
            this.iconBtn.Size = new System.Drawing.Size(61, 40);
            this.iconBtn.TabIndex = 16;
            this.iconBtn.UseVisualStyleBackColor = true;
            this.iconBtn.Click += new System.EventHandler(this.iconBtn_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(148, 564);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(123, 18);
            this.label3.TabIndex = 25;
            this.label3.Text = "Duracion disco:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(148, 509);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(144, 18);
            this.label2.TabIndex = 24;
            this.label2.Text = "Casa discografica:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(148, 437);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(153, 18);
            this.label5.TabIndex = 23;
            this.label5.Text = "Año de produccion:";
            // 
            // Duracion
            // 
            this.Duracion.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Duracion.Location = new System.Drawing.Point(151, 585);
            this.Duracion.Name = "Duracion";
            this.Duracion.Size = new System.Drawing.Size(213, 26);
            this.Duracion.TabIndex = 20;
            // 
            // Anio
            // 
            this.Anio.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Anio.Location = new System.Drawing.Point(151, 463);
            this.Anio.Name = "Anio";
            this.Anio.Size = new System.Drawing.Size(213, 26);
            this.Anio.TabIndex = 18;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(148, 626);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(82, 18);
            this.label4.TabIndex = 27;
            this.label4.Text = "Interprete";
            // 
            // inter
            // 
            this.inter.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.inter.Location = new System.Drawing.Point(151, 647);
            this.inter.Name = "inter";
            this.inter.Size = new System.Drawing.Size(213, 26);
            this.inter.TabIndex = 26;
            // 
            // btnArtist
            // 
            this.btnArtist.Location = new System.Drawing.Point(1049, 722);
            this.btnArtist.Name = "btnArtist";
            this.btnArtist.Size = new System.Drawing.Size(97, 40);
            this.btnArtist.TabIndex = 28;
            this.btnArtist.Text = "Ver Interprete";
            this.btnArtist.UseVisualStyleBackColor = true;
            this.btnArtist.Click += new System.EventHandler(this.btnArtist_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(422, 376);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(129, 18);
            this.label6.TabIndex = 30;
            this.label6.Text = "Numero cancion";
            // 
            // numero
            // 
            this.numero.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.numero.Location = new System.Drawing.Point(425, 401);
            this.numero.Name = "numero";
            this.numero.Size = new System.Drawing.Size(213, 26);
            this.numero.TabIndex = 29;
            // 
            // btnEdit
            // 
            this.btnEdit.Location = new System.Drawing.Point(412, 701);
            this.btnEdit.Name = "btnEdit";
            this.btnEdit.Size = new System.Drawing.Size(113, 31);
            this.btnEdit.TabIndex = 31;
            this.btnEdit.Text = "Editar";
            this.btnEdit.UseVisualStyleBackColor = true;
            this.btnEdit.Click += new System.EventHandler(this.btnEdit_Click);
            // 
            // button1
            // 
            this.button1.Enabled = false;
            this.button1.Location = new System.Drawing.Point(571, 701);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(113, 31);
            this.button1.TabIndex = 32;
            this.button1.Text = "Guardar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // nombreSong
            // 
            this.nombreSong.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.nombreSong.Location = new System.Drawing.Point(151, 401);
            this.nombreSong.Name = "nombreSong";
            this.nombreSong.Size = new System.Drawing.Size(213, 26);
            this.nombreSong.TabIndex = 17;
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Font = new System.Drawing.Font("Verdana", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblName.Location = new System.Drawing.Point(148, 376);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(129, 18);
            this.lblName.TabIndex = 22;
            this.lblName.Text = "Nombre cancion";
            // 
            // cmbDisco
            // 
            this.cmbDisco.FormattingEnabled = true;
            this.cmbDisco.Location = new System.Drawing.Point(151, 530);
            this.cmbDisco.Name = "cmbDisco";
            this.cmbDisco.Size = new System.Drawing.Size(213, 21);
            this.cmbDisco.TabIndex = 33;
            this.cmbDisco.DropDown += new System.EventHandler(this.cmbDisco_DropDown);
            // 
            // ver_canciones
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(1185, 774);
            this.Controls.Add(this.cmbDisco);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnEdit);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.numero);
            this.Controls.Add(this.btnArtist);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.inter);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.lblName);
            this.Controls.Add(this.Duracion);
            this.Controls.Add(this.Anio);
            this.Controls.Add(this.nombreSong);
            this.Controls.Add(this.iconBtn);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.letra);
            this.Controls.Add(this.lblCancion);
            this.Controls.Add(this.gridSong);
            this.Name = "ver_canciones";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "ver_canciones";
            this.Load += new System.EventHandler(this.ver_canciones_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridSong)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView gridSong;
        private System.Windows.Forms.Label lblCancion;
        private System.Windows.Forms.TextBox letra;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.PictureBox pictureBox1;
        private FontAwesome.Sharp.IconButton iconBtn;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox Duracion;
        private System.Windows.Forms.TextBox Anio;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox inter;
        private System.Windows.Forms.Button btnArtist;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox numero;
        private System.Windows.Forms.Button btnEdit;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox nombreSong;
        private System.Windows.Forms.Label lblName;
        private System.Windows.Forms.ComboBox cmbDisco;
    }
}