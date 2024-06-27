
namespace QuanLyNhanSu
{
    partial class FormSalaryBase
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle1 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle2 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormSalaryBase));
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.cbboxDepartmentFilter = new System.Windows.Forms.ComboBox();
            this.label4 = new System.Windows.Forms.Label();
            this.GridSalaryBase = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lblRequiredAllow = new System.Windows.Forms.Label();
            this.txtAllowance = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.lblrequiredValueSalary = new System.Windows.Forms.Label();
            this.txtSalaryValue = new System.Windows.Forms.TextBox();
            this.cbboxDepartment = new System.Windows.Forms.ComboBox();
            this.txtName = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.labelRequiredName = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnDelete = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.BtnSave = new System.Windows.Forms.Button();
            this.BtnCreate = new System.Windows.Forms.Button();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NameSalary = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SalaryValueCl = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.AllowanceCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DepartmentNameCl = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridSalaryBase)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox3.AutoSize = true;
            this.groupBox3.Controls.Add(this.cbboxDepartmentFilter);
            this.groupBox3.Controls.Add(this.label4);
            this.groupBox3.Controls.Add(this.GridSalaryBase);
            this.groupBox3.Controls.Add(this.groupBox1);
            this.groupBox3.Location = new System.Drawing.Point(22, 95);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox3.Size = new System.Drawing.Size(1100, 390);
            this.groupBox3.TabIndex = 25;
            this.groupBox3.TabStop = false;
            // 
            // cbboxDepartmentFilter
            // 
            this.cbboxDepartmentFilter.FormattingEnabled = true;
            this.cbboxDepartmentFilter.Location = new System.Drawing.Point(724, 31);
            this.cbboxDepartmentFilter.Margin = new System.Windows.Forms.Padding(2);
            this.cbboxDepartmentFilter.Name = "cbboxDepartmentFilter";
            this.cbboxDepartmentFilter.Size = new System.Drawing.Size(270, 21);
            this.cbboxDepartmentFilter.TabIndex = 33;
            this.cbboxDepartmentFilter.SelectedIndexChanged += new System.EventHandler(this.cbboxDepartmentFilter_SelectedIndexChanged);
            this.cbboxDepartmentFilter.SelectedValueChanged += new System.EventHandler(this.cbboxDepartmentFilter_SelectedValueChanged);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(582, 33);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(62, 13);
            this.label4.TabIndex = 32;
            this.label4.Text = "Phòng ban:";
            // 
            // GridSalaryBase
            // 
            this.GridSalaryBase.AllowUserToAddRows = false;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.GridSalaryBase.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.GridSalaryBase.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.GridSalaryBase.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridSalaryBase.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.GridSalaryBase.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridSalaryBase.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Id,
            this.NameSalary,
            this.SalaryValueCl,
            this.AllowanceCL,
            this.DepartmentNameCl});
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.GridSalaryBase.DefaultCellStyle = dataGridViewCellStyle6;
            this.GridSalaryBase.EnableHeadersVisualStyles = false;
            this.GridSalaryBase.Location = new System.Drawing.Point(494, 64);
            this.GridSalaryBase.Margin = new System.Windows.Forms.Padding(2);
            this.GridSalaryBase.Name = "GridSalaryBase";
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle7.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle7.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle7.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle7.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridSalaryBase.RowHeadersDefaultCellStyle = dataGridViewCellStyle7;
            this.GridSalaryBase.RowHeadersVisible = false;
            this.GridSalaryBase.RowHeadersWidth = 51;
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.GridSalaryBase.RowsDefaultCellStyle = dataGridViewCellStyle8;
            this.GridSalaryBase.RowTemplate.Height = 24;
            this.GridSalaryBase.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.GridSalaryBase.Size = new System.Drawing.Size(588, 295);
            this.GridSalaryBase.TabIndex = 15;
            this.GridSalaryBase.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridSalaryBase_CellContentClick);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lblRequiredAllow);
            this.groupBox1.Controls.Add(this.txtAllowance);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.lblrequiredValueSalary);
            this.groupBox1.Controls.Add(this.txtSalaryValue);
            this.groupBox1.Controls.Add(this.cbboxDepartment);
            this.groupBox1.Controls.Add(this.txtName);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.labelRequiredName);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.btnDelete);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.BtnSave);
            this.groupBox1.Controls.Add(this.BtnCreate);
            this.groupBox1.Location = new System.Drawing.Point(16, 56);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox1.Size = new System.Drawing.Size(462, 278);
            this.groupBox1.TabIndex = 14;
            this.groupBox1.TabStop = false;
            // 
            // lblRequiredAllow
            // 
            this.lblRequiredAllow.AutoSize = true;
            this.lblRequiredAllow.ForeColor = System.Drawing.Color.Red;
            this.lblRequiredAllow.Location = new System.Drawing.Point(172, 150);
            this.lblRequiredAllow.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblRequiredAllow.Name = "lblRequiredAllow";
            this.lblRequiredAllow.Size = new System.Drawing.Size(282, 13);
            this.lblRequiredAllow.TabIndex = 34;
            this.lblRequiredAllow.Text = "Phụ cấp không được để trống và phải đúng định dạng số";
            this.lblRequiredAllow.Visible = false;
            // 
            // txtAllowance
            // 
            this.txtAllowance.Location = new System.Drawing.Point(175, 127);
            this.txtAllowance.Margin = new System.Windows.Forms.Padding(2);
            this.txtAllowance.Name = "txtAllowance";
            this.txtAllowance.Size = new System.Drawing.Size(270, 20);
            this.txtAllowance.TabIndex = 33;
            this.txtAllowance.TextChanged += new System.EventHandler(this.txtAllowance_TextChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(32, 127);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(50, 13);
            this.label6.TabIndex = 32;
            this.label6.Text = "Phụ cấp:";
            // 
            // lblrequiredValueSalary
            // 
            this.lblrequiredValueSalary.AutoSize = true;
            this.lblrequiredValueSalary.ForeColor = System.Drawing.Color.Red;
            this.lblrequiredValueSalary.Location = new System.Drawing.Point(172, 110);
            this.lblrequiredValueSalary.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblrequiredValueSalary.Name = "lblrequiredValueSalary";
            this.lblrequiredValueSalary.Size = new System.Drawing.Size(292, 13);
            this.lblrequiredValueSalary.TabIndex = 31;
            this.lblrequiredValueSalary.Text = "Mức lương không được để trống và phải đúng định dạng số";
            this.lblrequiredValueSalary.Visible = false;
            // 
            // txtSalaryValue
            // 
            this.txtSalaryValue.Location = new System.Drawing.Point(175, 87);
            this.txtSalaryValue.Margin = new System.Windows.Forms.Padding(2);
            this.txtSalaryValue.Name = "txtSalaryValue";
            this.txtSalaryValue.Size = new System.Drawing.Size(270, 20);
            this.txtSalaryValue.TabIndex = 30;
            this.txtSalaryValue.TextChanged += new System.EventHandler(this.txtSalaryValue_TextChanged);
            // 
            // cbboxDepartment
            // 
            this.cbboxDepartment.FormattingEnabled = true;
            this.cbboxDepartment.Location = new System.Drawing.Point(175, 172);
            this.cbboxDepartment.Margin = new System.Windows.Forms.Padding(2);
            this.cbboxDepartment.Name = "cbboxDepartment";
            this.cbboxDepartment.Size = new System.Drawing.Size(270, 21);
            this.cbboxDepartment.TabIndex = 29;
            // 
            // txtName
            // 
            this.txtName.Location = new System.Drawing.Point(175, 44);
            this.txtName.Margin = new System.Windows.Forms.Padding(2);
            this.txtName.Name = "txtName";
            this.txtName.Size = new System.Drawing.Size(270, 20);
            this.txtName.TabIndex = 27;
            this.txtName.TextChanged += new System.EventHandler(this.txtName_TextChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(32, 175);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(62, 13);
            this.label5.TabIndex = 25;
            this.label5.Text = "Phòng ban:";
            // 
            // labelRequiredName
            // 
            this.labelRequiredName.AutoSize = true;
            this.labelRequiredName.ForeColor = System.Drawing.Color.Red;
            this.labelRequiredName.Location = new System.Drawing.Point(172, 68);
            this.labelRequiredName.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelRequiredName.Name = "labelRequiredName";
            this.labelRequiredName.Size = new System.Drawing.Size(182, 13);
            this.labelRequiredName.TabIndex = 24;
            this.labelRequiredName.Text = "Tên mức lương không được để trống";
            this.labelRequiredName.Visible = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(32, 87);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(60, 13);
            this.label2.TabIndex = 12;
            this.label2.Text = "Mức lương:";
            // 
            // btnDelete
            // 
            this.btnDelete.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDelete.Image = global::QuanLyNhanSu.Properties.Resources.delete;
            this.btnDelete.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDelete.Location = new System.Drawing.Point(220, 216);
            this.btnDelete.Margin = new System.Windows.Forms.Padding(2);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(110, 32);
            this.btnDelete.TabIndex = 9;
            this.btnDelete.Text = "Xóa";
            this.btnDelete.UseVisualStyleBackColor = true;
            this.btnDelete.Visible = false;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(32, 46);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(81, 13);
            this.label1.TabIndex = 11;
            this.label1.Text = "Tên mức lương:";
            // 
            // BtnSave
            // 
            this.BtnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSave.Image = global::QuanLyNhanSu.Properties.Resources.save;
            this.BtnSave.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.BtnSave.Location = new System.Drawing.Point(334, 216);
            this.BtnSave.Margin = new System.Windows.Forms.Padding(2);
            this.BtnSave.Name = "BtnSave";
            this.BtnSave.Size = new System.Drawing.Size(110, 32);
            this.BtnSave.TabIndex = 10;
            this.BtnSave.Text = "Lưu";
            this.BtnSave.UseVisualStyleBackColor = true;
            this.BtnSave.Click += new System.EventHandler(this.BtnSave_Click);
            // 
            // BtnCreate
            // 
            this.BtnCreate.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnCreate.Image = global::QuanLyNhanSu.Properties.Resources.create;
            this.BtnCreate.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.BtnCreate.Location = new System.Drawing.Point(34, 216);
            this.BtnCreate.Margin = new System.Windows.Forms.Padding(2);
            this.BtnCreate.Name = "BtnCreate";
            this.BtnCreate.Size = new System.Drawing.Size(110, 32);
            this.BtnCreate.TabIndex = 8;
            this.BtnCreate.Text = "Tạo mới";
            this.BtnCreate.UseVisualStyleBackColor = true;
            this.BtnCreate.Visible = false;
            this.BtnCreate.Click += new System.EventHandler(this.BtnCreate_Click);
            // 
            // Id
            // 
            this.Id.DataPropertyName = "Id";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Id.DefaultCellStyle = dataGridViewCellStyle3;
            this.Id.FillWeight = 30F;
            this.Id.HeaderText = "Id";
            this.Id.MinimumWidth = 6;
            this.Id.Name = "Id";
            this.Id.ReadOnly = true;
            // 
            // NameSalary
            // 
            this.NameSalary.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.NameSalary.DataPropertyName = "Name";
            this.NameSalary.HeaderText = "Tên mức lương";
            this.NameSalary.MinimumWidth = 6;
            this.NameSalary.Name = "NameSalary";
            this.NameSalary.ReadOnly = true;
            this.NameSalary.Width = 95;
            // 
            // SalaryValueCl
            // 
            this.SalaryValueCl.DataPropertyName = "SalaryValue";
            dataGridViewCellStyle4.Format = "C0";
            dataGridViewCellStyle4.NullValue = "null";
            this.SalaryValueCl.DefaultCellStyle = dataGridViewCellStyle4;
            this.SalaryValueCl.HeaderText = "Mức lương";
            this.SalaryValueCl.MinimumWidth = 6;
            this.SalaryValueCl.Name = "SalaryValueCl";
            this.SalaryValueCl.ReadOnly = true;
            // 
            // AllowanceCL
            // 
            this.AllowanceCL.DataPropertyName = "Allowance";
            dataGridViewCellStyle5.Format = "C0";
            dataGridViewCellStyle5.NullValue = null;
            this.AllowanceCL.DefaultCellStyle = dataGridViewCellStyle5;
            this.AllowanceCL.HeaderText = "Phụ cấp";
            this.AllowanceCL.MinimumWidth = 6;
            this.AllowanceCL.Name = "AllowanceCL";
            this.AllowanceCL.ReadOnly = true;
            // 
            // DepartmentNameCl
            // 
            this.DepartmentNameCl.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.DepartmentNameCl.DataPropertyName = "DepartmentName";
            this.DepartmentNameCl.HeaderText = "Phòng ban";
            this.DepartmentNameCl.MinimumWidth = 6;
            this.DepartmentNameCl.Name = "DepartmentNameCl";
            this.DepartmentNameCl.Width = 78;
            // 
            // FormSalaryBase
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(243)))), ((int)(((byte)(211)))));
            this.ClientSize = new System.Drawing.Size(1154, 605);
            this.Controls.Add(this.groupBox3);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "FormSalaryBase";
            this.Text = "Quản lý mức lương cơ bản";
            this.Load += new System.EventHandler(this.FrmSalaryBase_Load);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridSalaryBase)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.DataGridView GridSalaryBase;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label labelRequiredName;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button BtnSave;
        private System.Windows.Forms.Button BtnCreate;
        private System.Windows.Forms.ComboBox cbboxDepartment;
        private System.Windows.Forms.TextBox txtSalaryValue;
        private System.Windows.Forms.Label lblrequiredValueSalary;
        private System.Windows.Forms.ComboBox cbboxDepartmentFilter;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label lblRequiredAllow;
        private System.Windows.Forms.TextBox txtAllowance;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn NameSalary;
        private System.Windows.Forms.DataGridViewTextBoxColumn SalaryValueCl;
        private System.Windows.Forms.DataGridViewTextBoxColumn AllowanceCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn DepartmentNameCl;
    }
}