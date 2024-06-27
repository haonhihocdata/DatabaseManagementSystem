
namespace QuanLyNhanSu
{
    partial class FormDepartment
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
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.treeDepartment = new System.Windows.Forms.TreeView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label18 = new System.Windows.Forms.Label();
            this.cbboxDepartmentParent = new System.Windows.Forms.ComboBox();
            this.txtDescription = new System.Windows.Forms.TextBox();
            this.txtName = new System.Windows.Forms.TextBox();
            this.labelRequiredName = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnDelete = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.BtnSave = new System.Windows.Forms.Button();
            this.BtnCreate = new System.Windows.Forms.Button();
            this.groupBox3.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox3.AutoSize = true;
            this.groupBox3.Controls.Add(this.treeDepartment);
            this.groupBox3.Controls.Add(this.groupBox1);
            this.groupBox3.Location = new System.Drawing.Point(34, 60);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox3.Size = new System.Drawing.Size(1100, 390);
            this.groupBox3.TabIndex = 24;
            this.groupBox3.TabStop = false;
            this.groupBox3.Enter += new System.EventHandler(this.groupBox3_Enter);
            // 
            // treeDepartment
            // 
            this.treeDepartment.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.treeDepartment.Location = new System.Drawing.Point(26, 62);
            this.treeDepartment.Margin = new System.Windows.Forms.Padding(2);
            this.treeDepartment.Name = "treeDepartment";
            this.treeDepartment.Size = new System.Drawing.Size(417, 279);
            this.treeDepartment.TabIndex = 15;
            this.treeDepartment.AfterSelect += new System.Windows.Forms.TreeViewEventHandler(this.treeDepartment_AfterSelect);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label18);
            this.groupBox1.Controls.Add(this.cbboxDepartmentParent);
            this.groupBox1.Controls.Add(this.txtDescription);
            this.groupBox1.Controls.Add(this.txtName);
            this.groupBox1.Controls.Add(this.labelRequiredName);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.btnDelete);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.BtnSave);
            this.groupBox1.Controls.Add(this.BtnCreate);
            this.groupBox1.Location = new System.Drawing.Point(524, 62);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox1.Size = new System.Drawing.Size(525, 278);
            this.groupBox1.TabIndex = 14;
            this.groupBox1.TabStop = false;
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(72, 158);
            this.label18.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(83, 13);
            this.label18.TabIndex = 113;
            this.label18.Text = "Phòng ban cha:";
            // 
            // cbboxDepartmentParent
            // 
            this.cbboxDepartmentParent.FormattingEnabled = true;
            this.cbboxDepartmentParent.Location = new System.Drawing.Point(214, 155);
            this.cbboxDepartmentParent.Margin = new System.Windows.Forms.Padding(2);
            this.cbboxDepartmentParent.Name = "cbboxDepartmentParent";
            this.cbboxDepartmentParent.Size = new System.Drawing.Size(240, 21);
            this.cbboxDepartmentParent.TabIndex = 112;
            // 
            // txtDescription
            // 
            this.txtDescription.Location = new System.Drawing.Point(214, 80);
            this.txtDescription.Margin = new System.Windows.Forms.Padding(2);
            this.txtDescription.Multiline = true;
            this.txtDescription.Name = "txtDescription";
            this.txtDescription.Size = new System.Drawing.Size(240, 62);
            this.txtDescription.TabIndex = 28;
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(214, 40);
            this.txtName.Margin = new System.Windows.Forms.Padding(2);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(240, 20);
            this.txtName.TabIndex = 27;
            this.txtName.TextChanged += new System.EventHandler(this.txtName_TextChanged);
            // 
            // labelRequiredName
            // 
            this.labelRequiredName.AutoSize = true;
            this.labelRequiredName.ForeColor = System.Drawing.Color.Red;
            this.labelRequiredName.Location = new System.Drawing.Point(212, 64);
            this.labelRequiredName.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelRequiredName.Name = "labelRequiredName";
            this.labelRequiredName.Size = new System.Drawing.Size(217, 13);
            this.labelRequiredName.TabIndex = 24;
            this.labelRequiredName.Text = "Tên đơn vị,phòng ban không được để trống";
            this.labelRequiredName.Visible = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(71, 83);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(37, 13);
            this.label2.TabIndex = 12;
            this.label2.Text = "Mô tả:";
            // 
            // btnDelete
            // 
            this.btnDelete.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDelete.Image = global::QuanLyNhanSu.Properties.Resources.delete;
            this.btnDelete.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDelete.Location = new System.Drawing.Point(330, 230);
            this.btnDelete.Margin = new System.Windows.Forms.Padding(2);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(60, 32);
            this.btnDelete.TabIndex = 9;
            this.btnDelete.Text = "Xóa";
            this.btnDelete.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnDelete.UseVisualStyleBackColor = true;
            this.btnDelete.Visible = false;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(71, 42);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(83, 13);
            this.label1.TabIndex = 11;
            this.label1.Text = "Tên phòng ban:";
            // 
            // BtnSave
            // 
            this.BtnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSave.Image = global::QuanLyNhanSu.Properties.Resources.save;
            this.BtnSave.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.BtnSave.Location = new System.Drawing.Point(394, 230);
            this.BtnSave.Margin = new System.Windows.Forms.Padding(2);
            this.BtnSave.Name = "BtnSave";
            this.BtnSave.Size = new System.Drawing.Size(60, 32);
            this.BtnSave.TabIndex = 10;
            this.BtnSave.Text = "Lưu";
            this.BtnSave.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.BtnSave.UseVisualStyleBackColor = true;
            this.BtnSave.Click += new System.EventHandler(this.BtnSave_Click);
            // 
            // BtnCreate
            // 
            this.BtnCreate.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnCreate.Image = global::QuanLyNhanSu.Properties.Resources.create;
            this.BtnCreate.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.BtnCreate.Location = new System.Drawing.Point(74, 230);
            this.BtnCreate.Margin = new System.Windows.Forms.Padding(2);
            this.BtnCreate.Name = "BtnCreate";
            this.BtnCreate.Size = new System.Drawing.Size(110, 32);
            this.BtnCreate.TabIndex = 8;
            this.BtnCreate.Text = "Tạo mới";
            this.BtnCreate.UseVisualStyleBackColor = true;
            this.BtnCreate.Visible = false;
            this.BtnCreate.Click += new System.EventHandler(this.BtnCreate_Click);
            // 
            // FormDepartment
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(243)))), ((int)(((byte)(211)))));
            this.ClientSize = new System.Drawing.Size(1174, 517);
            this.Controls.Add(this.groupBox3);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "FormDepartment";
            this.Text = "Quản lý đơn vị,phòng ban";
            this.Load += new System.EventHandler(this.FrmDepartment_Load);
            this.groupBox3.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtDescription;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.Label labelRequiredName;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button BtnSave;
        private System.Windows.Forms.Button BtnCreate;
        private System.Windows.Forms.TreeView treeDepartment;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.ComboBox cbboxDepartmentParent;
    }
}