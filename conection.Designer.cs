
namespace MVP_BD_PRFinal
{
    partial class conection
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
            this.button1 = new System.Windows.Forms.Button();
            this.txtServer = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(267, 218);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(107, 28);
            this.button1.TabIndex = 0;
            this.button1.Text = "Conectar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // txtServer
            // 
            this.txtServer.Location = new System.Drawing.Point(178, 154);
            this.txtServer.Multiline = true;
            this.txtServer.Name = "txtServer";
            this.txtServer.Size = new System.Drawing.Size(317, 27);
            this.txtServer.TabIndex = 1;
            this.txtServer.Text = "LAPTOP-2MJTC8R1\\SQLEXPRESS";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(80, 157);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(70, 13);
            this.label1.TabIndex = 3;
            this.label1.Text = "Server name:";
            // 
            // conection
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(614, 373);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtServer);
            this.Controls.Add(this.button1);
            this.Name = "conection";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "conection";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TextBox txtServer;
        private System.Windows.Forms.Label label1;
    }
}