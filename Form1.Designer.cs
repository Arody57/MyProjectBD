
namespace MVP_BD_PRFinal
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtBuscar = new System.Windows.Forms.TextBox();
            this.lblName = new System.Windows.Forms.Label();
            this.btnIcon = new FontAwesome.Sharp.IconButton();
            this.gridProcess = new System.Windows.Forms.DataGridView();
            this.btnEditar = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.gridProcess)).BeginInit();
            this.SuspendLayout();
            // 
            // txtBuscar
            // 
            this.txtBuscar.Font = new System.Drawing.Font("Verdana", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtBuscar.Location = new System.Drawing.Point(198, 148);
            this.txtBuscar.Name = "txtBuscar";
            this.txtBuscar.Size = new System.Drawing.Size(612, 23);
            this.txtBuscar.TabIndex = 0;
            // 
            // lblName
            // 
            this.lblName.AutoSize = true;
            this.lblName.Font = new System.Drawing.Font("Verdana", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblName.Location = new System.Drawing.Point(382, 94);
            this.lblName.Name = "lblName";
            this.lblName.Size = new System.Drawing.Size(251, 25);
            this.lblName.TabIndex = 2;
            this.lblName.Text = "Buscar disco o cancion";
            // 
            // btnIcon
            // 
            this.btnIcon.IconChar = FontAwesome.Sharp.IconChar.Sistrix;
            this.btnIcon.IconColor = System.Drawing.Color.Black;
            this.btnIcon.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btnIcon.IconSize = 20;
            this.btnIcon.Location = new System.Drawing.Point(759, 146);
            this.btnIcon.Name = "btnIcon";
            this.btnIcon.Size = new System.Drawing.Size(51, 27);
            this.btnIcon.TabIndex = 3;
            this.btnIcon.UseVisualStyleBackColor = true;
            this.btnIcon.Click += new System.EventHandler(this.btnIcon_Click);
            // 
            // gridProcess
            // 
            this.gridProcess.AllowUserToAddRows = false;
            this.gridProcess.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridProcess.Location = new System.Drawing.Point(202, 222);
            this.gridProcess.Name = "gridProcess";
            this.gridProcess.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.gridProcess.Size = new System.Drawing.Size(608, 294);
            this.gridProcess.TabIndex = 20;
            // 
            // btnEditar
            // 
            this.btnEditar.Location = new System.Drawing.Point(424, 534);
            this.btnEditar.Name = "btnEditar";
            this.btnEditar.Size = new System.Drawing.Size(75, 23);
            this.btnEditar.TabIndex = 21;
            this.btnEditar.Text = "Agregar Cancion";
            this.btnEditar.UseVisualStyleBackColor = true;
            this.btnEditar.Click += new System.EventHandler(this.btnEditar_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(518, 534);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 23;
            this.button2.Text = "Ver mas";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1088, 654);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.btnEditar);
            this.Controls.Add(this.gridProcess);
            this.Controls.Add(this.btnIcon);
            this.Controls.Add(this.lblName);
            this.Controls.Add(this.txtBuscar);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.gridProcess)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtBuscar;
        private System.Windows.Forms.Label lblName;
        private FontAwesome.Sharp.IconButton btnIcon;
        private System.Windows.Forms.DataGridView gridProcess;
        private System.Windows.Forms.Button btnEditar;
        private System.Windows.Forms.Button button2;
    }
}

