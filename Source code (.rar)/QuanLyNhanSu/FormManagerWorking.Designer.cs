
namespace QuanLyNhanSu
{
    partial class FormManagerWorking
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormManagerWorking));
            this.label18 = new System.Windows.Forms.Label();
            this.cbboxDepartmentFilter = new System.Windows.Forms.ComboBox();
            this.GridEmployeeCheckWork = new System.Windows.Forms.DataGridView();
            this.DateCheckWorking = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.btnLoad = new System.Windows.Forms.Button();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.btnCheckAll = new System.Windows.Forms.Button();
            this.BtnSave = new System.Windows.Forms.Button();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.FullName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DepartmentNameCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.CurrentDateCheck = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.GridEmployeeCheckWork)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(65, 23);
            this.label18.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(62, 13);
            this.label18.TabIndex = 111;
            this.label18.Text = "Phòng ban:";
            // 
            // cbboxDepartmentFilter
            // 
            this.cbboxDepartmentFilter.FormattingEnabled = true;
            this.cbboxDepartmentFilter.Location = new System.Drawing.Point(142, 20);
            this.cbboxDepartmentFilter.Margin = new System.Windows.Forms.Padding(2);
            this.cbboxDepartmentFilter.Name = "cbboxDepartmentFilter";
            this.cbboxDepartmentFilter.Size = new System.Drawing.Size(391, 21);
            this.cbboxDepartmentFilter.TabIndex = 110;
            // 
            // GridEmployeeCheckWork
            // 
            this.GridEmployeeCheckWork.AllowUserToAddRows = false;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.GridEmployeeCheckWork.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.GridEmployeeCheckWork.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.GridEmployeeCheckWork.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridEmployeeCheckWork.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.GridEmployeeCheckWork.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridEmployeeCheckWork.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Id,
            this.FullName,
            this.DepartmentNameCL,
            this.CurrentDateCheck});
            dataGridViewCellStyle5.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle5.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle5.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle5.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle5.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle5.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle5.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.GridEmployeeCheckWork.DefaultCellStyle = dataGridViewCellStyle5;
            this.GridEmployeeCheckWork.EnableHeadersVisualStyles = false;
            this.GridEmployeeCheckWork.Location = new System.Drawing.Point(26, 165);
            this.GridEmployeeCheckWork.Margin = new System.Windows.Forms.Padding(2);
            this.GridEmployeeCheckWork.Name = "GridEmployeeCheckWork";
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridEmployeeCheckWork.RowHeadersDefaultCellStyle = dataGridViewCellStyle6;
            this.GridEmployeeCheckWork.RowHeadersVisible = false;
            this.GridEmployeeCheckWork.RowHeadersWidth = 51;
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.GridEmployeeCheckWork.RowsDefaultCellStyle = dataGridViewCellStyle7;
            this.GridEmployeeCheckWork.RowTemplate.Height = 24;
            this.GridEmployeeCheckWork.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.GridEmployeeCheckWork.Size = new System.Drawing.Size(837, 427);
            this.GridEmployeeCheckWork.TabIndex = 109;
            // 
            // DateCheckWorking
            // 
            this.DateCheckWorking.CustomFormat = "dd-MM-yyyy";
            this.DateCheckWorking.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.DateCheckWorking.Location = new System.Drawing.Point(142, 89);
            this.DateCheckWorking.Margin = new System.Windows.Forms.Padding(2);
            this.DateCheckWorking.Name = "DateCheckWorking";
            this.DateCheckWorking.Size = new System.Drawing.Size(175, 20);
            this.DateCheckWorking.TabIndex = 112;
            this.DateCheckWorking.Value = new System.DateTime(2021, 6, 8, 0, 0, 0, 0);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(36, 89);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(91, 13);
            this.label1.TabIndex = 113;
            this.label1.Text = "Ngày chấm công:";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtSearch);
            this.groupBox1.Controls.Add(this.label17);
            this.groupBox1.Controls.Add(this.btnLoad);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.DateCheckWorking);
            this.groupBox1.Controls.Add(this.label18);
            this.groupBox1.Controls.Add(this.cbboxDepartmentFilter);
            this.groupBox1.Location = new System.Drawing.Point(26, 30);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox1.Size = new System.Drawing.Size(562, 130);
            this.groupBox1.TabIndex = 115;
            this.groupBox1.TabStop = false;
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(142, 54);
            this.txtSearch.Margin = new System.Windows.Forms.Padding(2);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(391, 20);
            this.txtSearch.TabIndex = 115;
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(70, 56);
            this.label17.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(57, 13);
            this.label17.TabIndex = 117;
            this.label17.Text = "Họ và tên:";
            // 
            // btnLoad
            // 
            this.btnLoad.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnLoad.Image = global::QuanLyNhanSu.Properties.Resources.search;
            this.btnLoad.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnLoad.Location = new System.Drawing.Point(328, 87);
            this.btnLoad.Margin = new System.Windows.Forms.Padding(2);
            this.btnLoad.Name = "btnLoad";
            this.btnLoad.Size = new System.Drawing.Size(204, 24);
            this.btnLoad.TabIndex = 114;
            this.btnLoad.Text = "Cập nhật";
            this.btnLoad.UseVisualStyleBackColor = true;
            this.btnLoad.Click += new System.EventHandler(this.btnLoad_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox2.Controls.Add(this.button1);
            this.groupBox2.Controls.Add(this.btnCheckAll);
            this.groupBox2.Controls.Add(this.BtnSave);
            this.groupBox2.Controls.Add(this.groupBox1);
            this.groupBox2.Controls.Add(this.GridEmployeeCheckWork);
            this.groupBox2.Location = new System.Drawing.Point(63, 21);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox2.Size = new System.Drawing.Size(887, 624);
            this.groupBox2.TabIndex = 117;
            this.groupBox2.TabStop = false;
            // 
            // button1
            // 
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button1.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.button1.Location = new System.Drawing.Point(605, 86);
            this.button1.Margin = new System.Windows.Forms.Padding(2);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(127, 32);
            this.button1.TabIndex = 118;
            this.button1.Text = "Nghỉ hết";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // btnCheckAll
            // 
            this.btnCheckAll.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCheckAll.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCheckAll.Location = new System.Drawing.Point(605, 128);
            this.btnCheckAll.Margin = new System.Windows.Forms.Padding(2);
            this.btnCheckAll.Name = "btnCheckAll";
            this.btnCheckAll.Size = new System.Drawing.Size(127, 32);
            this.btnCheckAll.TabIndex = 117;
            this.btnCheckAll.Text = "Đi làm hết";
            this.btnCheckAll.UseVisualStyleBackColor = true;
            this.btnCheckAll.Click += new System.EventHandler(this.btnCheckAll_Click);
            // 
            // BtnSave
            // 
            this.BtnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSave.Image = global::QuanLyNhanSu.Properties.Resources.save;
            this.BtnSave.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.BtnSave.Location = new System.Drawing.Point(736, 128);
            this.BtnSave.Margin = new System.Windows.Forms.Padding(2);
            this.BtnSave.Name = "BtnSave";
            this.BtnSave.Size = new System.Drawing.Size(127, 32);
            this.BtnSave.TabIndex = 116;
            this.BtnSave.Text = "Lưu";
            this.BtnSave.UseVisualStyleBackColor = true;
            this.BtnSave.Click += new System.EventHandler(this.BtnSave_Click);
            // 
            // Id
            // 
            this.Id.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Id.DataPropertyName = "Id";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Id.DefaultCellStyle = dataGridViewCellStyle3;
            this.Id.FillWeight = 30F;
            this.Id.HeaderText = "Id";
            this.Id.MinimumWidth = 6;
            this.Id.Name = "Id";
            this.Id.ReadOnly = true;
            this.Id.Width = 41;
            // 
            // FullName
            // 
            this.FullName.DataPropertyName = "FullName";
            this.FullName.HeaderText = "Họ và tên";
            this.FullName.MinimumWidth = 6;
            this.FullName.Name = "FullName";
            this.FullName.ReadOnly = true;
            // 
            // DepartmentNameCL
            // 
            this.DepartmentNameCL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.DepartmentNameCL.DataPropertyName = "DepartmentName";
            this.DepartmentNameCL.HeaderText = "Phòng ban";
            this.DepartmentNameCL.MinimumWidth = 6;
            this.DepartmentNameCL.Name = "DepartmentNameCL";
            this.DepartmentNameCL.ReadOnly = true;
            this.DepartmentNameCL.Width = 84;
            // 
            // CurrentDateCheck
            // 
            this.CurrentDateCheck.DataPropertyName = "CurrentDate";
            dataGridViewCellStyle4.Format = "dd/MM/yyyy";
            this.CurrentDateCheck.DefaultCellStyle = dataGridViewCellStyle4;
            this.CurrentDateCheck.HeaderText = "Ngày làm việc";
            this.CurrentDateCheck.MinimumWidth = 6;
            this.CurrentDateCheck.Name = "CurrentDateCheck";
            this.CurrentDateCheck.ReadOnly = true;
            // 
            // FormManagerWorking
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(243)))), ((int)(((byte)(211)))));
            this.ClientSize = new System.Drawing.Size(1017, 640);
            this.Controls.Add(this.groupBox2);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "FormManagerWorking";
            this.Text = "Quản lý chấm công";
            this.Load += new System.EventHandler(this.FrmManagerWorking_Load);
            ((System.ComponentModel.ISupportInitialize)(this.GridEmployeeCheckWork)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.ComboBox cbboxDepartmentFilter;
        private System.Windows.Forms.DataGridView GridEmployeeCheckWork;
        private System.Windows.Forms.DateTimePicker DateCheckWorking;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnLoad;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button BtnSave;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btnCheckAll;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn FullName;
        private System.Windows.Forms.DataGridViewTextBoxColumn DepartmentNameCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn CurrentDateCheck;
    }
}