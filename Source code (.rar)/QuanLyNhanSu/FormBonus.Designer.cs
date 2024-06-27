
namespace QuanLyNhanSu
{
    partial class FormBonus
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormBonus));
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.GridBonus = new System.Windows.Forms.DataGridView();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.NameSalary = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SalaryValueCl = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lblrequiredValueBonus = new System.Windows.Forms.Label();
            this.txtBonusValue = new System.Windows.Forms.TextBox();
            this.txtName = new System.Windows.Forms.TextBox();
            this.labelRequiredName = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnDelete = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.BtnSave = new System.Windows.Forms.Button();
            this.BtnCreate = new System.Windows.Forms.Button();
            this.groupBox3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridBonus)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox3.AutoSize = true;
            this.groupBox3.Controls.Add(this.GridBonus);
            this.groupBox3.Controls.Add(this.groupBox1);
            this.groupBox3.Location = new System.Drawing.Point(15, 105);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox3.Size = new System.Drawing.Size(1100, 390);
            this.groupBox3.TabIndex = 26;
            this.groupBox3.TabStop = false;
            // 
            // GridBonus
            // 
            this.GridBonus.AllowUserToAddRows = false;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.GridBonus.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.GridBonus.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.GridBonus.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridBonus.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.GridBonus.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridBonus.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Id,
            this.NameSalary,
            this.SalaryValueCl});
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.GridBonus.DefaultCellStyle = dataGridViewCellStyle5;
            this.GridBonus.EnableHeadersVisualStyles = false;
            this.GridBonus.Location = new System.Drawing.Point(494, 64);
            this.GridBonus.Margin = new System.Windows.Forms.Padding(2);
            this.GridBonus.Name = "GridBonus";
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridBonus.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.GridBonus.RowHeadersVisible = false;
            this.GridBonus.RowHeadersWidth = 51;
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.GridBonus.RowsDefaultCellStyle = dataGridViewCellStyle7;
            this.GridBonus.RowTemplate.Height = 24;
            this.GridBonus.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.GridBonus.Size = new System.Drawing.Size(588, 295);
            this.GridBonus.TabIndex = 15;
            this.GridBonus.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridBonus_CellContentClick);
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
            this.NameSalary.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.Fill;
            this.NameSalary.DataPropertyName = "Name";
            this.NameSalary.HeaderText = "Tên mức thưởng";
            this.NameSalary.MinimumWidth = 6;
            this.NameSalary.Name = "NameSalary";
            this.NameSalary.ReadOnly = true;
            // 
            // SalaryValueCl
            // 
            this.SalaryValueCl.DataPropertyName = "ValueBonus";
            dataGridViewCellStyle4.Format = "C0";
            dataGridViewCellStyle4.NullValue = "null";
            this.SalaryValueCl.DefaultCellStyle = dataGridViewCellStyle4;
            this.SalaryValueCl.HeaderText = "Mức thưởng";
            this.SalaryValueCl.MinimumWidth = 6;
            this.SalaryValueCl.Name = "SalaryValueCl";
            this.SalaryValueCl.ReadOnly = true;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lblrequiredValueBonus);
            this.groupBox1.Controls.Add(this.txtBonusValue);
            this.groupBox1.Controls.Add(this.txtName);
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
            // lblrequiredValueBonus
            // 
            this.lblrequiredValueBonus.AutoSize = true;
            this.lblrequiredValueBonus.ForeColor = System.Drawing.Color.Red;
            this.lblrequiredValueBonus.Location = new System.Drawing.Point(172, 110);
            this.lblrequiredValueBonus.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblrequiredValueBonus.Name = "lblrequiredValueBonus";
            this.lblrequiredValueBonus.Size = new System.Drawing.Size(285, 13);
            this.lblrequiredValueBonus.TabIndex = 31;
            this.lblrequiredValueBonus.Text = "Mức thưởng không được để trống và phải đúng định dạng";
            this.lblrequiredValueBonus.Visible = false;
            // 
            // txtBonusValue
            // 
            this.txtBonusValue.Location = new System.Drawing.Point(175, 87);
            this.txtBonusValue.Margin = new System.Windows.Forms.Padding(2);
            this.txtBonusValue.Name = "txtBonusValue";
            this.txtBonusValue.Size = new System.Drawing.Size(270, 20);
            this.txtBonusValue.TabIndex = 30;
            this.txtBonusValue.TextChanged += new System.EventHandler(this.txtBonusValue_TextChanged);
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
            // labelRequiredName
            // 
            this.labelRequiredName.AutoSize = true;
            this.labelRequiredName.ForeColor = System.Drawing.Color.Red;
            this.labelRequiredName.Location = new System.Drawing.Point(172, 68);
            this.labelRequiredName.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelRequiredName.Name = "labelRequiredName";
            this.labelRequiredName.Size = new System.Drawing.Size(189, 13);
            this.labelRequiredName.TabIndex = 24;
            this.labelRequiredName.Text = "Tên mức thưởng không được để trống";
            this.labelRequiredName.Visible = false;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(32, 87);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(67, 13);
            this.label2.TabIndex = 12;
            this.label2.Text = "Mức thưởng:";
            // 
            // btnDelete
            // 
            this.btnDelete.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDelete.Image = global::QuanLyNhanSu.Properties.Resources.delete;
            this.btnDelete.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDelete.Location = new System.Drawing.Point(220, 183);
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
            this.label1.Size = new System.Drawing.Size(88, 13);
            this.label1.TabIndex = 11;
            this.label1.Text = "Tên mức thưởng:";
            // 
            // BtnSave
            // 
            this.BtnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSave.Image = global::QuanLyNhanSu.Properties.Resources.save;
            this.BtnSave.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.BtnSave.Location = new System.Drawing.Point(334, 183);
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
            this.BtnCreate.Location = new System.Drawing.Point(34, 183);
            this.BtnCreate.Margin = new System.Windows.Forms.Padding(2);
            this.BtnCreate.Name = "BtnCreate";
            this.BtnCreate.Size = new System.Drawing.Size(110, 32);
            this.BtnCreate.TabIndex = 8;
            this.BtnCreate.Text = "Tạo mới";
            this.BtnCreate.UseVisualStyleBackColor = true;
            this.BtnCreate.Visible = false;
            this.BtnCreate.Click += new System.EventHandler(this.BtnCreate_Click);
            // 
            // FormBonus
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(243)))), ((int)(((byte)(211)))));
            this.ClientSize = new System.Drawing.Size(1155, 640);
            this.Controls.Add(this.groupBox3);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "FormBonus";
            this.Text = "Quản lý mức thưởng";
            this.Load += new System.EventHandler(this.FrmBonus_Load);
            this.groupBox3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.GridBonus)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.DataGridView GridBonus;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lblrequiredValueBonus;
        private System.Windows.Forms.TextBox txtBonusValue;
        private System.Windows.Forms.TextBox txtName;
        private System.Windows.Forms.Label labelRequiredName;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button BtnSave;
        private System.Windows.Forms.Button BtnCreate;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn NameSalary;
        private System.Windows.Forms.DataGridViewTextBoxColumn SalaryValueCl;
    }
}