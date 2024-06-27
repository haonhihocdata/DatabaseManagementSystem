
namespace QuanLyNhanSu
{
    partial class FormChangePassword
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormChangePassword));
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtOldPassword = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.lblRequiredReNewPassword = new System.Windows.Forms.Label();
            this.txtReNewPassword = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.labelRequiredNewPassword = new System.Windows.Forms.Label();
            this.labelRequiredOldPassword = new System.Windows.Forms.Label();
            this.btnchangePassword = new System.Windows.Forms.Button();
            this.txtNewPassword = new System.Windows.Forms.TextBox();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox1.Controls.Add(this.txtOldPassword);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.lblRequiredReNewPassword);
            this.groupBox1.Controls.Add(this.txtReNewPassword);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.labelRequiredNewPassword);
            this.groupBox1.Controls.Add(this.labelRequiredOldPassword);
            this.groupBox1.Controls.Add(this.btnchangePassword);
            this.groupBox1.Controls.Add(this.txtNewPassword);
            this.groupBox1.Location = new System.Drawing.Point(293, 150);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox1.Size = new System.Drawing.Size(491, 327);
            this.groupBox1.TabIndex = 38;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Đổi mật khẩu";
            // 
            // txtOldPassword
            // 
            this.txtOldPassword.BackColor = System.Drawing.Color.White;
            this.txtOldPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtOldPassword.ForeColor = System.Drawing.SystemColors.InfoText;
            this.txtOldPassword.Location = new System.Drawing.Point(140, 54);
            this.txtOldPassword.Margin = new System.Windows.Forms.Padding(2);
            this.txtOldPassword.Name = "txtOldPassword";
            this.txtOldPassword.PasswordChar = '*';
            this.txtOldPassword.Size = new System.Drawing.Size(300, 28);
            this.txtOldPassword.TabIndex = 37;
            this.txtOldPassword.UseSystemPasswordChar = true;
            this.txtOldPassword.TextChanged += new System.EventHandler(this.txtOldPassword_TextChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(37, 189);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(58, 13);
            this.label3.TabIndex = 36;
            this.label3.Text = "Nhập lại:";
            // 
            // lblRequiredReNewPassword
            // 
            this.lblRequiredReNewPassword.AutoSize = true;
            this.lblRequiredReNewPassword.ForeColor = System.Drawing.Color.Red;
            this.lblRequiredReNewPassword.Location = new System.Drawing.Point(138, 225);
            this.lblRequiredReNewPassword.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblRequiredReNewPassword.Name = "lblRequiredReNewPassword";
            this.lblRequiredReNewPassword.Size = new System.Drawing.Size(176, 13);
            this.lblRequiredReNewPassword.TabIndex = 35;
            this.lblRequiredReNewPassword.Text = "Mật khẩu nhập lại không chính xác";
            this.lblRequiredReNewPassword.Visible = false;
            // 
            // txtReNewPassword
            // 
            this.txtReNewPassword.BackColor = System.Drawing.Color.White;
            this.txtReNewPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtReNewPassword.ForeColor = System.Drawing.SystemColors.InfoText;
            this.txtReNewPassword.Location = new System.Drawing.Point(139, 189);
            this.txtReNewPassword.Margin = new System.Windows.Forms.Padding(2);
            this.txtReNewPassword.Name = "txtReNewPassword";
            this.txtReNewPassword.PasswordChar = '*';
            this.txtReNewPassword.Size = new System.Drawing.Size(300, 28);
            this.txtReNewPassword.TabIndex = 34;
            this.txtReNewPassword.UseSystemPasswordChar = true;
            this.txtReNewPassword.TextChanged += new System.EventHandler(this.txtReNewPassword_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(37, 127);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(87, 13);
            this.label2.TabIndex = 33;
            this.label2.Text = "Mật khẩu mới:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(37, 54);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(82, 13);
            this.label1.TabIndex = 32;
            this.label1.Text = "Mật khẩu cũ:";
            // 
            // labelRequiredNewPassword
            // 
            this.labelRequiredNewPassword.AutoSize = true;
            this.labelRequiredNewPassword.ForeColor = System.Drawing.Color.Red;
            this.labelRequiredNewPassword.Location = new System.Drawing.Point(138, 162);
            this.labelRequiredNewPassword.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelRequiredNewPassword.Name = "labelRequiredNewPassword";
            this.labelRequiredNewPassword.Size = new System.Drawing.Size(175, 13);
            this.labelRequiredNewPassword.TabIndex = 31;
            this.labelRequiredNewPassword.Text = "Mật khẩu mới không được để trống";
            this.labelRequiredNewPassword.Visible = false;
            // 
            // labelRequiredOldPassword
            // 
            this.labelRequiredOldPassword.AutoSize = true;
            this.labelRequiredOldPassword.ForeColor = System.Drawing.Color.Red;
            this.labelRequiredOldPassword.Location = new System.Drawing.Point(138, 90);
            this.labelRequiredOldPassword.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelRequiredOldPassword.Name = "labelRequiredOldPassword";
            this.labelRequiredOldPassword.Size = new System.Drawing.Size(171, 13);
            this.labelRequiredOldPassword.TabIndex = 30;
            this.labelRequiredOldPassword.Text = "Mật khẩu cũ không được để trống";
            this.labelRequiredOldPassword.Visible = false;
            // 
            // btnchangePassword
            // 
            this.btnchangePassword.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(107)))), ((int)(((byte)(76)))), ((int)(((byte)(60)))));
            this.btnchangePassword.FlatAppearance.BorderSize = 0;
            this.btnchangePassword.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnchangePassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnchangePassword.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.btnchangePassword.Location = new System.Drawing.Point(139, 257);
            this.btnchangePassword.Margin = new System.Windows.Forms.Padding(2);
            this.btnchangePassword.Name = "btnchangePassword";
            this.btnchangePassword.Size = new System.Drawing.Size(299, 33);
            this.btnchangePassword.TabIndex = 29;
            this.btnchangePassword.Text = "Đổi mật khẩu";
            this.btnchangePassword.UseVisualStyleBackColor = false;
            this.btnchangePassword.Click += new System.EventHandler(this.btnchangePassword_Click);
            // 
            // txtNewPassword
            // 
            this.txtNewPassword.BackColor = System.Drawing.Color.White;
            this.txtNewPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNewPassword.ForeColor = System.Drawing.SystemColors.InfoText;
            this.txtNewPassword.Location = new System.Drawing.Point(139, 127);
            this.txtNewPassword.Margin = new System.Windows.Forms.Padding(2);
            this.txtNewPassword.Name = "txtNewPassword";
            this.txtNewPassword.PasswordChar = '*';
            this.txtNewPassword.Size = new System.Drawing.Size(300, 28);
            this.txtNewPassword.TabIndex = 28;
            this.txtNewPassword.UseSystemPasswordChar = true;
            this.txtNewPassword.TextChanged += new System.EventHandler(this.txtNewPassword_TextChanged);
            // 
            // FormChangePassword
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(243)))), ((int)(((byte)(211)))));
            this.ClientSize = new System.Drawing.Size(1040, 628);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "FormChangePassword";
            this.Text = "Đổi mật khẩu";
            this.Load += new System.EventHandler(this.FrmContract_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtOldPassword;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label lblRequiredReNewPassword;
        private System.Windows.Forms.TextBox txtReNewPassword;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label labelRequiredNewPassword;
        private System.Windows.Forms.Label labelRequiredOldPassword;
        private System.Windows.Forms.Button btnchangePassword;
        private System.Windows.Forms.TextBox txtNewPassword;
    }
}