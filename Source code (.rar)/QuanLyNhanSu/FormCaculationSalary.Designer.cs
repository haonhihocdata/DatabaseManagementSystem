
namespace QuanLyNhanSu
{
    partial class FormCaculationSalary
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
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle12 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle13 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle14 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle3 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle4 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle5 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle6 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle7 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle8 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle9 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle10 = new System.Windows.Forms.DataGridViewCellStyle();
            System.Windows.Forms.DataGridViewCellStyle dataGridViewCellStyle11 = new System.Windows.Forms.DataGridViewCellStyle();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormCaculationSalary));
            this.GridCaculationSalary = new System.Windows.Forms.DataGridView();
            this.Id = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.FullNameCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DepartmentName = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.SalaryValueCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.AllowanceValueCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TotalWorkCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.TotalSalaryBaseCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.InsuranceSociety = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.BonusValueCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.PenaltyValueCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.AdvanceValueCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.RealSalaryCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label18 = new System.Windows.Forms.Label();
            this.cbboxDepartmentFilter = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.btnExportExcel = new System.Windows.Forms.Button();
            this.lblLocation = new System.Windows.Forms.Label();
            this.btnSelectLocation = new System.Windows.Forms.Button();
            this.EndDate = new System.Windows.Forms.DateTimePicker();
            this.StartDate = new System.Windows.Forms.DateTimePicker();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.label17 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.LblPageIndex = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.BtnEndPage = new System.Windows.Forms.Button();
            this.BtnNextPage = new System.Windows.Forms.Button();
            this.btnBackpage = new System.Windows.Forms.Button();
            this.btnBeginPage = new System.Windows.Forms.Button();
            this.btnCalculation = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.GridCaculationSalary)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // GridCaculationSalary
            // 
            this.GridCaculationSalary.AllowUserToAddRows = false;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.GridCaculationSalary.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.GridCaculationSalary.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.GridCaculationSalary.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridCaculationSalary.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.GridCaculationSalary.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridCaculationSalary.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Id,
            this.FullNameCL,
            this.DepartmentName,
            this.SalaryValueCL,
            this.AllowanceValueCL,
            this.TotalWorkCL,
            this.TotalSalaryBaseCL,
            this.InsuranceSociety,
            this.BonusValueCL,
            this.PenaltyValueCL,
            this.AdvanceValueCL,
            this.RealSalaryCL});
            dataGridViewCellStyle12.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle12.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle12.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle12.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle12.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle12.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle12.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.GridCaculationSalary.DefaultCellStyle = dataGridViewCellStyle12;
            this.GridCaculationSalary.EnableHeadersVisualStyles = false;
            this.GridCaculationSalary.Location = new System.Drawing.Point(31, 149);
            this.GridCaculationSalary.Margin = new System.Windows.Forms.Padding(2);
            this.GridCaculationSalary.Name = "GridCaculationSalary";
            dataGridViewCellStyle13.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle13.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle13.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle13.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle13.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle13.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle13.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridCaculationSalary.RowHeadersDefaultCellStyle = dataGridViewCellStyle13;
            this.GridCaculationSalary.RowHeadersVisible = false;
            this.GridCaculationSalary.RowHeadersWidth = 51;
            dataGridViewCellStyle14.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.GridCaculationSalary.RowsDefaultCellStyle = dataGridViewCellStyle14;
            this.GridCaculationSalary.RowTemplate.Height = 24;
            this.GridCaculationSalary.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.GridCaculationSalary.Size = new System.Drawing.Size(948, 369);
            this.GridCaculationSalary.TabIndex = 16;
            this.GridCaculationSalary.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridCaculationSalary_CellContentClick);
            // 
            // Id
            // 
            this.Id.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.Id.DataPropertyName = "IdEmployee";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.Id.DefaultCellStyle = dataGridViewCellStyle3;
            this.Id.FillWeight = 30F;
            this.Id.HeaderText = "Mã nhân viên";
            this.Id.MinimumWidth = 6;
            this.Id.Name = "Id";
            this.Id.ReadOnly = true;
            this.Id.Width = 89;
            // 
            // FullNameCL
            // 
            this.FullNameCL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.FullNameCL.DataPropertyName = "FullName";
            this.FullNameCL.HeaderText = "Tên nhân viên";
            this.FullNameCL.MinimumWidth = 6;
            this.FullNameCL.Name = "FullNameCL";
            this.FullNameCL.ReadOnly = true;
            this.FullNameCL.Width = 93;
            // 
            // DepartmentName
            // 
            this.DepartmentName.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.DepartmentName.DataPropertyName = "DepartmentName";
            this.DepartmentName.HeaderText = "Phòng ban";
            this.DepartmentName.MinimumWidth = 6;
            this.DepartmentName.Name = "DepartmentName";
            this.DepartmentName.ReadOnly = true;
            this.DepartmentName.Width = 78;
            // 
            // SalaryValueCL
            // 
            this.SalaryValueCL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.SalaryValueCL.DataPropertyName = "SalaryValue";
            dataGridViewCellStyle4.Format = "C0";
            dataGridViewCellStyle4.NullValue = null;
            this.SalaryValueCL.DefaultCellStyle = dataGridViewCellStyle4;
            this.SalaryValueCL.HeaderText = "Lương chính";
            this.SalaryValueCL.MinimumWidth = 6;
            this.SalaryValueCL.Name = "SalaryValueCL";
            this.SalaryValueCL.ReadOnly = true;
            this.SalaryValueCL.Width = 86;
            // 
            // AllowanceValueCL
            // 
            this.AllowanceValueCL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.AllowanceValueCL.DataPropertyName = "AllowanceValue";
            dataGridViewCellStyle5.Format = "C0";
            dataGridViewCellStyle5.NullValue = null;
            this.AllowanceValueCL.DefaultCellStyle = dataGridViewCellStyle5;
            this.AllowanceValueCL.HeaderText = "Phụ cấp";
            this.AllowanceValueCL.MinimumWidth = 6;
            this.AllowanceValueCL.Name = "AllowanceValueCL";
            this.AllowanceValueCL.ReadOnly = true;
            this.AllowanceValueCL.Width = 51;
            // 
            // TotalWorkCL
            // 
            this.TotalWorkCL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.TotalWorkCL.DataPropertyName = "TotalWork";
            this.TotalWorkCL.HeaderText = "Số ngày công";
            this.TotalWorkCL.MinimumWidth = 6;
            this.TotalWorkCL.Name = "TotalWorkCL";
            this.TotalWorkCL.ReadOnly = true;
            this.TotalWorkCL.Width = 90;
            // 
            // TotalSalaryBaseCL
            // 
            this.TotalSalaryBaseCL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.TotalSalaryBaseCL.DataPropertyName = "TotalSalaryBase";
            dataGridViewCellStyle6.Format = "C0";
            dataGridViewCellStyle6.NullValue = null;
            this.TotalSalaryBaseCL.DefaultCellStyle = dataGridViewCellStyle6;
            this.TotalSalaryBaseCL.HeaderText = "Tổng lương thực tế";
            this.TotalSalaryBaseCL.MinimumWidth = 6;
            this.TotalSalaryBaseCL.Name = "TotalSalaryBaseCL";
            this.TotalSalaryBaseCL.ReadOnly = true;
            this.TotalSalaryBaseCL.Width = 101;
            // 
            // InsuranceSociety
            // 
            this.InsuranceSociety.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.InsuranceSociety.DataPropertyName = "InsuranceSociety";
            dataGridViewCellStyle7.Format = "C0";
            dataGridViewCellStyle7.NullValue = null;
            this.InsuranceSociety.DefaultCellStyle = dataGridViewCellStyle7;
            this.InsuranceSociety.HeaderText = "Bảo hiểm";
            this.InsuranceSociety.MinimumWidth = 6;
            this.InsuranceSociety.Name = "InsuranceSociety";
            this.InsuranceSociety.ReadOnly = true;
            this.InsuranceSociety.Width = 70;
            // 
            // BonusValueCL
            // 
            this.BonusValueCL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.BonusValueCL.DataPropertyName = "BonusValue";
            dataGridViewCellStyle8.Format = "C0";
            dataGridViewCellStyle8.NullValue = null;
            this.BonusValueCL.DefaultCellStyle = dataGridViewCellStyle8;
            this.BonusValueCL.HeaderText = "Tiền thưởng";
            this.BonusValueCL.MinimumWidth = 6;
            this.BonusValueCL.Name = "BonusValueCL";
            this.BonusValueCL.ReadOnly = true;
            this.BonusValueCL.Width = 82;
            // 
            // PenaltyValueCL
            // 
            this.PenaltyValueCL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.PenaltyValueCL.DataPropertyName = "PenaltyValue";
            dataGridViewCellStyle9.Format = "C0";
            dataGridViewCellStyle9.NullValue = "null";
            this.PenaltyValueCL.DefaultCellStyle = dataGridViewCellStyle9;
            this.PenaltyValueCL.HeaderText = "Tiền phạt";
            this.PenaltyValueCL.MinimumWidth = 6;
            this.PenaltyValueCL.Name = "PenaltyValueCL";
            this.PenaltyValueCL.ReadOnly = true;
            this.PenaltyValueCL.Width = 71;
            // 
            // AdvanceValueCL
            // 
            this.AdvanceValueCL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.AdvanceValueCL.DataPropertyName = "AdvanceValue";
            dataGridViewCellStyle10.Format = "C0";
            dataGridViewCellStyle10.NullValue = null;
            this.AdvanceValueCL.DefaultCellStyle = dataGridViewCellStyle10;
            this.AdvanceValueCL.HeaderText = "Tạm ứng";
            this.AdvanceValueCL.MinimumWidth = 6;
            this.AdvanceValueCL.Name = "AdvanceValueCL";
            this.AdvanceValueCL.ReadOnly = true;
            this.AdvanceValueCL.Width = 69;
            // 
            // RealSalaryCL
            // 
            this.RealSalaryCL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.RealSalaryCL.DataPropertyName = "RealSalary";
            dataGridViewCellStyle11.Format = "C0";
            dataGridViewCellStyle11.NullValue = null;
            this.RealSalaryCL.DefaultCellStyle = dataGridViewCellStyle11;
            this.RealSalaryCL.HeaderText = "Thực nhận";
            this.RealSalaryCL.MinimumWidth = 6;
            this.RealSalaryCL.Name = "RealSalaryCL";
            this.RealSalaryCL.ReadOnly = true;
            this.RealSalaryCL.Width = 78;
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(34, 35);
            this.label18.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(62, 13);
            this.label18.TabIndex = 117;
            this.label18.Text = "Phòng ban:";
            // 
            // cbboxDepartmentFilter
            // 
            this.cbboxDepartmentFilter.FormattingEnabled = true;
            this.cbboxDepartmentFilter.Location = new System.Drawing.Point(154, 32);
            this.cbboxDepartmentFilter.Margin = new System.Windows.Forms.Padding(2);
            this.cbboxDepartmentFilter.Name = "cbboxDepartmentFilter";
            this.cbboxDepartmentFilter.Size = new System.Drawing.Size(524, 21);
            this.cbboxDepartmentFilter.TabIndex = 116;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(34, 76);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 13);
            this.label1.TabIndex = 118;
            this.label1.Text = "Từ ngày:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(298, 75);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(51, 13);
            this.label2.TabIndex = 121;
            this.label2.Text = "Tới ngày:";
            // 
            // groupBox1
            // 
            this.groupBox1.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox1.Controls.Add(this.groupBox3);
            this.groupBox1.Controls.Add(this.EndDate);
            this.groupBox1.Controls.Add(this.StartDate);
            this.groupBox1.Controls.Add(this.txtSearch);
            this.groupBox1.Controls.Add(this.label17);
            this.groupBox1.Controls.Add(this.groupBox2);
            this.groupBox1.Controls.Add(this.btnCalculation);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.label18);
            this.groupBox1.Controls.Add(this.cbboxDepartmentFilter);
            this.groupBox1.Controls.Add(this.GridCaculationSalary);
            this.groupBox1.Location = new System.Drawing.Point(23, 26);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox1.Size = new System.Drawing.Size(1011, 593);
            this.groupBox1.TabIndex = 123;
            this.groupBox1.TabStop = false;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.btnExportExcel);
            this.groupBox3.Controls.Add(this.lblLocation);
            this.groupBox3.Controls.Add(this.btnSelectLocation);
            this.groupBox3.Location = new System.Drawing.Point(684, 17);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox3.Size = new System.Drawing.Size(295, 116);
            this.groupBox3.TabIndex = 146;
            this.groupBox3.TabStop = false;
            // 
            // btnExportExcel
            // 
            this.btnExportExcel.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnExportExcel.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnExportExcel.Image = global::QuanLyNhanSu.Properties.Resources.export;
            this.btnExportExcel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnExportExcel.Location = new System.Drawing.Point(62, 80);
            this.btnExportExcel.Margin = new System.Windows.Forms.Padding(2);
            this.btnExportExcel.Name = "btnExportExcel";
            this.btnExportExcel.Size = new System.Drawing.Size(188, 26);
            this.btnExportExcel.TabIndex = 144;
            this.btnExportExcel.Text = "Xuất báo cáo";
            this.btnExportExcel.UseVisualStyleBackColor = true;
            this.btnExportExcel.Click += new System.EventHandler(this.btnExportExcel_Click);
            // 
            // lblLocation
            // 
            this.lblLocation.AutoSize = true;
            this.lblLocation.ForeColor = System.Drawing.SystemColors.Desktop;
            this.lblLocation.Location = new System.Drawing.Point(32, 50);
            this.lblLocation.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblLocation.Name = "lblLocation";
            this.lblLocation.Size = new System.Drawing.Size(19, 13);
            this.lblLocation.TabIndex = 145;
            this.lblLocation.Text = "=>";
            // 
            // btnSelectLocation
            // 
            this.btnSelectLocation.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSelectLocation.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnSelectLocation.Image = global::QuanLyNhanSu.Properties.Resources.link;
            this.btnSelectLocation.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSelectLocation.Location = new System.Drawing.Point(62, 11);
            this.btnSelectLocation.Margin = new System.Windows.Forms.Padding(2);
            this.btnSelectLocation.Name = "btnSelectLocation";
            this.btnSelectLocation.Size = new System.Drawing.Size(188, 25);
            this.btnSelectLocation.TabIndex = 144;
            this.btnSelectLocation.Text = "Chọn đường dẫn";
            this.btnSelectLocation.UseVisualStyleBackColor = true;
            this.btnSelectLocation.Click += new System.EventHandler(this.btnSelectLocation_Click);
            // 
            // EndDate
            // 
            this.EndDate.CustomFormat = "dd-MM-yyyy";
            this.EndDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.EndDate.Location = new System.Drawing.Point(358, 71);
            this.EndDate.Margin = new System.Windows.Forms.Padding(2);
            this.EndDate.Name = "EndDate";
            this.EndDate.Size = new System.Drawing.Size(152, 20);
            this.EndDate.TabIndex = 127;
            this.EndDate.Value = new System.DateTime(2021, 6, 8, 0, 0, 0, 0);
            // 
            // StartDate
            // 
            this.StartDate.CustomFormat = "dd-MM-yyyy";
            this.StartDate.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.StartDate.Location = new System.Drawing.Point(154, 72);
            this.StartDate.Margin = new System.Windows.Forms.Padding(2);
            this.StartDate.Name = "StartDate";
            this.StartDate.Size = new System.Drawing.Size(140, 20);
            this.StartDate.TabIndex = 126;
            this.StartDate.Value = new System.DateTime(2021, 6, 8, 0, 0, 0, 0);
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(154, 108);
            this.txtSearch.Margin = new System.Windows.Forms.Padding(2);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(356, 20);
            this.txtSearch.TabIndex = 124;
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(34, 110);
            this.label17.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(57, 13);
            this.label17.TabIndex = 125;
            this.label17.Text = "Họ và tên:";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.LblPageIndex);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.BtnEndPage);
            this.groupBox2.Controls.Add(this.BtnNextPage);
            this.groupBox2.Controls.Add(this.btnBackpage);
            this.groupBox2.Controls.Add(this.btnBeginPage);
            this.groupBox2.Location = new System.Drawing.Point(194, 522);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox2.Size = new System.Drawing.Size(666, 51);
            this.groupBox2.TabIndex = 123;
            this.groupBox2.TabStop = false;
            // 
            // LblPageIndex
            // 
            this.LblPageIndex.AutoSize = true;
            this.LblPageIndex.Location = new System.Drawing.Point(327, 23);
            this.LblPageIndex.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.LblPageIndex.Name = "LblPageIndex";
            this.LblPageIndex.Size = new System.Drawing.Size(0, 13);
            this.LblPageIndex.TabIndex = 21;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(282, 23);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(41, 13);
            this.label4.TabIndex = 20;
            this.label4.Text = "Trang :";
            // 
            // BtnEndPage
            // 
            this.BtnEndPage.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnEndPage.Location = new System.Drawing.Point(530, 17);
            this.BtnEndPage.Margin = new System.Windows.Forms.Padding(2);
            this.BtnEndPage.Name = "BtnEndPage";
            this.BtnEndPage.Size = new System.Drawing.Size(94, 25);
            this.BtnEndPage.TabIndex = 19;
            this.BtnEndPage.Text = "Trang cuối";
            this.BtnEndPage.UseVisualStyleBackColor = true;
            this.BtnEndPage.Click += new System.EventHandler(this.BtnEndPage_Click);
            // 
            // BtnNextPage
            // 
            this.BtnNextPage.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnNextPage.Location = new System.Drawing.Point(410, 17);
            this.BtnNextPage.Margin = new System.Windows.Forms.Padding(2);
            this.BtnNextPage.Name = "BtnNextPage";
            this.BtnNextPage.Size = new System.Drawing.Size(98, 25);
            this.BtnNextPage.TabIndex = 18;
            this.BtnNextPage.Text = "Trang sau";
            this.BtnNextPage.UseVisualStyleBackColor = true;
            this.BtnNextPage.Click += new System.EventHandler(this.BtnNextPage_Click);
            // 
            // btnBackpage
            // 
            this.btnBackpage.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBackpage.Location = new System.Drawing.Point(164, 17);
            this.btnBackpage.Margin = new System.Windows.Forms.Padding(2);
            this.btnBackpage.Name = "btnBackpage";
            this.btnBackpage.Size = new System.Drawing.Size(94, 25);
            this.btnBackpage.TabIndex = 17;
            this.btnBackpage.Text = "Trang trước";
            this.btnBackpage.UseVisualStyleBackColor = true;
            this.btnBackpage.Click += new System.EventHandler(this.btnBackpage_Click);
            // 
            // btnBeginPage
            // 
            this.btnBeginPage.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnBeginPage.Location = new System.Drawing.Point(44, 17);
            this.btnBeginPage.Margin = new System.Windows.Forms.Padding(2);
            this.btnBeginPage.Name = "btnBeginPage";
            this.btnBeginPage.Size = new System.Drawing.Size(98, 25);
            this.btnBeginPage.TabIndex = 16;
            this.btnBeginPage.Text = "Trang đầu";
            this.btnBeginPage.UseVisualStyleBackColor = true;
            this.btnBeginPage.Click += new System.EventHandler(this.btnBeginPage_Click);
            // 
            // btnCalculation
            // 
            this.btnCalculation.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCalculation.Image = global::QuanLyNhanSu.Properties.Resources.money1;
            this.btnCalculation.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnCalculation.Location = new System.Drawing.Point(514, 102);
            this.btnCalculation.Margin = new System.Windows.Forms.Padding(2);
            this.btnCalculation.Name = "btnCalculation";
            this.btnCalculation.Size = new System.Drawing.Size(163, 24);
            this.btnCalculation.TabIndex = 122;
            this.btnCalculation.Text = "Tính lương";
            this.btnCalculation.UseVisualStyleBackColor = true;
            this.btnCalculation.Click += new System.EventHandler(this.btnCalculation_Click);
            // 
            // FormCaculationSalary
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(243)))), ((int)(((byte)(211)))));
            this.ClientSize = new System.Drawing.Size(1055, 640);
            this.Controls.Add(this.groupBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "FormCaculationSalary";
            this.Text = "Quản lý tính lương";
            this.Load += new System.EventHandler(this.FrmCaculationSalary_Load);
            ((System.ComponentModel.ISupportInitialize)(this.GridCaculationSalary)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView GridCaculationSalary;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.ComboBox cbboxDepartmentFilter;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnCalculation;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label LblPageIndex;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button BtnEndPage;
        private System.Windows.Forms.Button BtnNextPage;
        private System.Windows.Forms.Button btnBackpage;
        private System.Windows.Forms.Button btnBeginPage;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.DataGridViewTextBoxColumn Id;
        private System.Windows.Forms.DataGridViewTextBoxColumn FullNameCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn DepartmentName;
        private System.Windows.Forms.DataGridViewTextBoxColumn SalaryValueCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn AllowanceValueCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn TotalWorkCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn TotalSalaryBaseCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn InsuranceSociety;
        private System.Windows.Forms.DataGridViewTextBoxColumn BonusValueCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn PenaltyValueCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn AdvanceValueCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn RealSalaryCL;
        private System.Windows.Forms.DateTimePicker EndDate;
        private System.Windows.Forms.DateTimePicker StartDate;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Button btnExportExcel;
        private System.Windows.Forms.Button btnSelectLocation;
        private System.Windows.Forms.Label lblLocation;
    }
}