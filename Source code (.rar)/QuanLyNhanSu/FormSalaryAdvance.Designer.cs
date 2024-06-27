
namespace QuanLyNhanSu
{
    partial class FormSalaryAdvance
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormSalaryAdvance));
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.DayFilter = new System.Windows.Forms.DateTimePicker();
            this.label6 = new System.Windows.Forms.Label();
            this.radioDay = new System.Windows.Forms.RadioButton();
            this.RadioAllDay = new System.Windows.Forms.RadioButton();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.txtReasion = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.lblrequiredValueAdvance = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtValueAdvance = new System.Windows.Forms.TextBox();
            this.cbboxFullName = new System.Windows.Forms.ComboBox();
            this.labelRequiredName = new System.Windows.Forms.Label();
            this.btnDelete = new System.Windows.Forms.Button();
            this.BtnSave = new System.Windows.Forms.Button();
            this.BtnCreate = new System.Windows.Forms.Button();
            this.label16 = new System.Windows.Forms.Label();
            this.DateBonus = new System.Windows.Forms.DateTimePicker();
            this.txtIdEmployee = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.cbboxDepartmentForm = new System.Windows.Forms.ComboBox();
            this.GridEmployeeBonus = new System.Windows.Forms.DataGridView();
            this.txtSearch = new System.Windows.Forms.TextBox();
            this.label18 = new System.Windows.Forms.Label();
            this.cbboxDepartmentFilter = new System.Windows.Forms.ComboBox();
            this.btnSearch = new System.Windows.Forms.Button();
            this.label17 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.LblPageIndex = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.BtnEndPage = new System.Windows.Forms.Button();
            this.BtnNextPage = new System.Windows.Forms.Button();
            this.btnBackpage = new System.Windows.Forms.Button();
            this.btnBeginPage = new System.Windows.Forms.Button();
            this.IdCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.EmployeeId = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.FullNameCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DepartmentNameCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.DateAdvanceCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.ValueAdvanceCL = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.groupBox3.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridEmployeeBonus)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox3
            // 
            this.groupBox3.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.groupBox3.Controls.Add(this.DayFilter);
            this.groupBox3.Controls.Add(this.label6);
            this.groupBox3.Controls.Add(this.radioDay);
            this.groupBox3.Controls.Add(this.RadioAllDay);
            this.groupBox3.Controls.Add(this.groupBox1);
            this.groupBox3.Controls.Add(this.GridEmployeeBonus);
            this.groupBox3.Controls.Add(this.txtSearch);
            this.groupBox3.Controls.Add(this.label18);
            this.groupBox3.Controls.Add(this.cbboxDepartmentFilter);
            this.groupBox3.Controls.Add(this.btnSearch);
            this.groupBox3.Controls.Add(this.label17);
            this.groupBox3.Controls.Add(this.groupBox2);
            this.groupBox3.Location = new System.Drawing.Point(27, 29);
            this.groupBox3.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox3.Size = new System.Drawing.Size(1016, 535);
            this.groupBox3.TabIndex = 134;
            this.groupBox3.TabStop = false;
            // 
            // DayFilter
            // 
            this.DayFilter.CustomFormat = "dd-MM-yyyy";
            this.DayFilter.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.DayFilter.Location = new System.Drawing.Point(453, 52);
            this.DayFilter.Margin = new System.Windows.Forms.Padding(2);
            this.DayFilter.Name = "DayFilter";
            this.DayFilter.Size = new System.Drawing.Size(157, 20);
            this.DayFilter.TabIndex = 133;
            this.DayFilter.ValueChanged += new System.EventHandler(this.DayFilter_ValueChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(83, 53);
            this.label6.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(35, 13);
            this.label6.TabIndex = 135;
            this.label6.Text = "Ngày:";
            // 
            // radioDay
            // 
            this.radioDay.AutoSize = true;
            this.radioDay.Location = new System.Drawing.Point(342, 52);
            this.radioDay.Margin = new System.Windows.Forms.Padding(2);
            this.radioDay.Name = "radioDay";
            this.radioDay.Size = new System.Drawing.Size(96, 17);
            this.radioDay.TabIndex = 134;
            this.radioDay.TabStop = true;
            this.radioDay.Text = "Xem theo ngày";
            this.radioDay.UseVisualStyleBackColor = true;
            this.radioDay.CheckedChanged += new System.EventHandler(this.radioDay_CheckedChanged);
            // 
            // RadioAllDay
            // 
            this.RadioAllDay.AutoSize = true;
            this.RadioAllDay.Location = new System.Drawing.Point(140, 51);
            this.RadioAllDay.Margin = new System.Windows.Forms.Padding(2);
            this.RadioAllDay.Name = "RadioAllDay";
            this.RadioAllDay.Size = new System.Drawing.Size(76, 17);
            this.RadioAllDay.TabIndex = 133;
            this.RadioAllDay.TabStop = true;
            this.RadioAllDay.Text = "Xem tất cả";
            this.RadioAllDay.UseVisualStyleBackColor = true;
            this.RadioAllDay.CheckedChanged += new System.EventHandler(this.RadioAllDay_CheckedChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.txtReasion);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.lblrequiredValueAdvance);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.txtValueAdvance);
            this.groupBox1.Controls.Add(this.cbboxFullName);
            this.groupBox1.Controls.Add(this.labelRequiredName);
            this.groupBox1.Controls.Add(this.btnDelete);
            this.groupBox1.Controls.Add(this.BtnSave);
            this.groupBox1.Controls.Add(this.BtnCreate);
            this.groupBox1.Controls.Add(this.label16);
            this.groupBox1.Controls.Add(this.DateBonus);
            this.groupBox1.Controls.Add(this.txtIdEmployee);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.cbboxDepartmentForm);
            this.groupBox1.Location = new System.Drawing.Point(614, 101);
            this.groupBox1.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox1.Size = new System.Drawing.Size(398, 413);
            this.groupBox1.TabIndex = 132;
            this.groupBox1.TabStop = false;
            // 
            // txtReasion
            // 
            this.txtReasion.Location = new System.Drawing.Point(123, 233);
            this.txtReasion.Margin = new System.Windows.Forms.Padding(2);
            this.txtReasion.Multiline = true;
            this.txtReasion.Name = "txtReasion";
            this.txtReasion.Size = new System.Drawing.Size(261, 47);
            this.txtReasion.TabIndex = 137;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(21, 236);
            this.label7.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(57, 13);
            this.label7.TabIndex = 136;
            this.label7.Text = "Lý do ứng:";
            // 
            // lblrequiredValueAdvance
            // 
            this.lblrequiredValueAdvance.AutoSize = true;
            this.lblrequiredValueAdvance.ForeColor = System.Drawing.Color.Red;
            this.lblrequiredValueAdvance.Location = new System.Drawing.Point(121, 206);
            this.lblrequiredValueAdvance.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.lblrequiredValueAdvance.Name = "lblrequiredValueAdvance";
            this.lblrequiredValueAdvance.Size = new System.Drawing.Size(279, 13);
            this.lblrequiredValueAdvance.TabIndex = 135;
            this.lblrequiredValueAdvance.Text = "Lương ứng không được để trống và phải đúng định dạng";
            this.lblrequiredValueAdvance.Visible = false;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(19, 188);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(59, 13);
            this.label5.TabIndex = 134;
            this.label5.Text = "Ứng lương:";
            // 
            // txtValueAdvance
            // 
            this.txtValueAdvance.Location = new System.Drawing.Point(122, 186);
            this.txtValueAdvance.Margin = new System.Windows.Forms.Padding(2);
            this.txtValueAdvance.Name = "txtValueAdvance";
            this.txtValueAdvance.Size = new System.Drawing.Size(262, 20);
            this.txtValueAdvance.TabIndex = 133;
            this.txtValueAdvance.TextChanged += new System.EventHandler(this.txtValueAdvance_TextChanged_1);
            // 
            // cbboxFullName
            // 
            this.cbboxFullName.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.cbboxFullName.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.ListItems;
            this.cbboxFullName.FormattingEnabled = true;
            this.cbboxFullName.Location = new System.Drawing.Point(122, 117);
            this.cbboxFullName.Margin = new System.Windows.Forms.Padding(2);
            this.cbboxFullName.Name = "cbboxFullName";
            this.cbboxFullName.Size = new System.Drawing.Size(262, 21);
            this.cbboxFullName.TabIndex = 132;
            this.cbboxFullName.SelectedValueChanged += new System.EventHandler(this.cbboxFullName_SelectedValueChanged);
            // 
            // labelRequiredName
            // 
            this.labelRequiredName.AutoSize = true;
            this.labelRequiredName.ForeColor = System.Drawing.Color.Red;
            this.labelRequiredName.Location = new System.Drawing.Point(120, 139);
            this.labelRequiredName.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.labelRequiredName.Name = "labelRequiredName";
            this.labelRequiredName.Size = new System.Drawing.Size(180, 13);
            this.labelRequiredName.TabIndex = 130;
            this.labelRequiredName.Text = "Tên nhân viên không được để trống";
            this.labelRequiredName.Visible = false;
            // 
            // btnDelete
            // 
            this.btnDelete.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnDelete.Image = global::QuanLyNhanSu.Properties.Resources.delete;
            this.btnDelete.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnDelete.Location = new System.Drawing.Point(250, 345);
            this.btnDelete.Margin = new System.Windows.Forms.Padding(2);
            this.btnDelete.Name = "btnDelete";
            this.btnDelete.Size = new System.Drawing.Size(65, 32);
            this.btnDelete.TabIndex = 128;
            this.btnDelete.Text = "Xóa";
            this.btnDelete.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnDelete.UseVisualStyleBackColor = true;
            this.btnDelete.Visible = false;
            this.btnDelete.Click += new System.EventHandler(this.btnDelete_Click);
            // 
            // BtnSave
            // 
            this.BtnSave.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnSave.Image = global::QuanLyNhanSu.Properties.Resources.save;
            this.BtnSave.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.BtnSave.Location = new System.Drawing.Point(319, 345);
            this.BtnSave.Margin = new System.Windows.Forms.Padding(2);
            this.BtnSave.Name = "BtnSave";
            this.BtnSave.Size = new System.Drawing.Size(65, 32);
            this.BtnSave.TabIndex = 129;
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
            this.BtnCreate.Location = new System.Drawing.Point(21, 345);
            this.BtnCreate.Margin = new System.Windows.Forms.Padding(2);
            this.BtnCreate.Name = "BtnCreate";
            this.BtnCreate.Size = new System.Drawing.Size(84, 32);
            this.BtnCreate.TabIndex = 127;
            this.BtnCreate.Text = "Tạo mới";
            this.BtnCreate.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.BtnCreate.UseVisualStyleBackColor = true;
            this.BtnCreate.Visible = false;
            this.BtnCreate.Click += new System.EventHandler(this.BtnCreate_Click);
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Location = new System.Drawing.Point(19, 300);
            this.label16.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(56, 13);
            this.label16.TabIndex = 126;
            this.label16.Text = "Ngày ứng:";
            // 
            // DateBonus
            // 
            this.DateBonus.CustomFormat = "dd-MM-yyyy";
            this.DateBonus.Format = System.Windows.Forms.DateTimePickerFormat.Custom;
            this.DateBonus.Location = new System.Drawing.Point(122, 300);
            this.DateBonus.Margin = new System.Windows.Forms.Padding(2);
            this.DateBonus.Name = "DateBonus";
            this.DateBonus.Size = new System.Drawing.Size(262, 20);
            this.DateBonus.TabIndex = 125;
            // 
            // txtIdEmployee
            // 
            this.txtIdEmployee.Enabled = false;
            this.txtIdEmployee.Location = new System.Drawing.Point(122, 154);
            this.txtIdEmployee.Margin = new System.Windows.Forms.Padding(2);
            this.txtIdEmployee.Name = "txtIdEmployee";
            this.txtIdEmployee.ReadOnly = true;
            this.txtIdEmployee.Size = new System.Drawing.Size(262, 20);
            this.txtIdEmployee.TabIndex = 122;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(19, 154);
            this.label3.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(75, 13);
            this.label3.TabIndex = 121;
            this.label3.Text = "Mã nhân viên:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(19, 121);
            this.label2.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(57, 13);
            this.label2.TabIndex = 120;
            this.label2.Text = "Họ và tên:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(19, 82);
            this.label1.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(62, 13);
            this.label1.TabIndex = 118;
            this.label1.Text = "Phòng ban:";
            // 
            // cbboxDepartmentForm
            // 
            this.cbboxDepartmentForm.FormattingEnabled = true;
            this.cbboxDepartmentForm.Location = new System.Drawing.Point(122, 80);
            this.cbboxDepartmentForm.Margin = new System.Windows.Forms.Padding(2);
            this.cbboxDepartmentForm.Name = "cbboxDepartmentForm";
            this.cbboxDepartmentForm.Size = new System.Drawing.Size(262, 21);
            this.cbboxDepartmentForm.TabIndex = 117;
            this.cbboxDepartmentForm.SelectedIndexChanged += new System.EventHandler(this.cbboxDepartmentForm_SelectedIndexChanged);
            // 
            // GridEmployeeBonus
            // 
            this.GridEmployeeBonus.AllowUserToAddRows = false;
            dataGridViewCellStyle1.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.GridEmployeeBonus.AlternatingRowsDefaultCellStyle = dataGridViewCellStyle1;
            this.GridEmployeeBonus.BackgroundColor = System.Drawing.SystemColors.ButtonHighlight;
            dataGridViewCellStyle2.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle2.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle2.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle2.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle2.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle2.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle2.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridEmployeeBonus.ColumnHeadersDefaultCellStyle = dataGridViewCellStyle2;
            this.GridEmployeeBonus.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.GridEmployeeBonus.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.IdCL,
            this.EmployeeId,
            this.FullNameCL,
            this.DepartmentNameCL,
            this.DateAdvanceCL,
            this.ValueAdvanceCL});
            dataGridViewCellStyle6.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle6.BackColor = System.Drawing.SystemColors.Window;
            dataGridViewCellStyle6.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle6.ForeColor = System.Drawing.SystemColors.ControlText;
            dataGridViewCellStyle6.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle6.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle6.WrapMode = System.Windows.Forms.DataGridViewTriState.False;
            this.GridEmployeeBonus.DefaultCellStyle = dataGridViewCellStyle6;
            this.GridEmployeeBonus.EnableHeadersVisualStyles = false;
            this.GridEmployeeBonus.Location = new System.Drawing.Point(22, 106);
            this.GridEmployeeBonus.Margin = new System.Windows.Forms.Padding(2);
            this.GridEmployeeBonus.Name = "GridEmployeeBonus";
            dataGridViewCellStyle7.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            dataGridViewCellStyle7.BackColor = System.Drawing.SystemColors.Control;
            dataGridViewCellStyle7.Font = new System.Drawing.Font("Microsoft Sans Serif", 7.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            dataGridViewCellStyle7.ForeColor = System.Drawing.SystemColors.WindowText;
            dataGridViewCellStyle7.SelectionBackColor = System.Drawing.SystemColors.Highlight;
            dataGridViewCellStyle7.SelectionForeColor = System.Drawing.SystemColors.HighlightText;
            dataGridViewCellStyle7.WrapMode = System.Windows.Forms.DataGridViewTriState.True;
            this.GridEmployeeBonus.RowHeadersDefaultCellStyle = dataGridViewCellStyle7;
            this.GridEmployeeBonus.RowHeadersVisible = false;
            this.GridEmployeeBonus.RowHeadersWidth = 51;
            dataGridViewCellStyle8.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.GridEmployeeBonus.RowsDefaultCellStyle = dataGridViewCellStyle8;
            this.GridEmployeeBonus.RowTemplate.Height = 24;
            this.GridEmployeeBonus.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.CellSelect;
            this.GridEmployeeBonus.Size = new System.Drawing.Size(587, 351);
            this.GridEmployeeBonus.TabIndex = 116;
            this.GridEmployeeBonus.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.GridEmployeeBonus_CellContentClick);
            // 
            // txtSearch
            // 
            this.txtSearch.Location = new System.Drawing.Point(140, 80);
            this.txtSearch.Margin = new System.Windows.Forms.Padding(2);
            this.txtSearch.Name = "txtSearch";
            this.txtSearch.Size = new System.Drawing.Size(296, 20);
            this.txtSearch.TabIndex = 109;
            // 
            // label18
            // 
            this.label18.AutoSize = true;
            this.label18.Location = new System.Drawing.Point(56, 24);
            this.label18.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label18.Name = "label18";
            this.label18.Size = new System.Drawing.Size(62, 13);
            this.label18.TabIndex = 115;
            this.label18.Text = "Phòng ban:";
            // 
            // cbboxDepartmentFilter
            // 
            this.cbboxDepartmentFilter.FormattingEnabled = true;
            this.cbboxDepartmentFilter.Location = new System.Drawing.Point(140, 21);
            this.cbboxDepartmentFilter.Margin = new System.Windows.Forms.Padding(2);
            this.cbboxDepartmentFilter.Name = "cbboxDepartmentFilter";
            this.cbboxDepartmentFilter.Size = new System.Drawing.Size(470, 21);
            this.cbboxDepartmentFilter.TabIndex = 114;
            this.cbboxDepartmentFilter.SelectedIndexChanged += new System.EventHandler(this.cbboxDepartmentFilter_SelectedIndexChanged);
            // 
            // btnSearch
            // 
            this.btnSearch.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnSearch.Image = global::QuanLyNhanSu.Properties.Resources.search;
            this.btnSearch.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnSearch.Location = new System.Drawing.Point(453, 77);
            this.btnSearch.Margin = new System.Windows.Forms.Padding(2);
            this.btnSearch.Name = "btnSearch";
            this.btnSearch.Size = new System.Drawing.Size(156, 24);
            this.btnSearch.TabIndex = 112;
            this.btnSearch.Text = "Tìm kiếm";
            this.btnSearch.UseVisualStyleBackColor = true;
            this.btnSearch.Click += new System.EventHandler(this.btnSearch_Click);
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Location = new System.Drawing.Point(61, 83);
            this.label17.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(57, 13);
            this.label17.TabIndex = 113;
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
            this.groupBox2.Location = new System.Drawing.Point(22, 462);
            this.groupBox2.Margin = new System.Windows.Forms.Padding(2);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Padding = new System.Windows.Forms.Padding(2);
            this.groupBox2.Size = new System.Drawing.Size(587, 51);
            this.groupBox2.TabIndex = 111;
            this.groupBox2.TabStop = false;
            // 
            // LblPageIndex
            // 
            this.LblPageIndex.AutoSize = true;
            this.LblPageIndex.Location = new System.Drawing.Point(290, 23);
            this.LblPageIndex.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.LblPageIndex.Name = "LblPageIndex";
            this.LblPageIndex.Size = new System.Drawing.Size(0, 13);
            this.LblPageIndex.TabIndex = 21;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(245, 23);
            this.label4.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(41, 13);
            this.label4.TabIndex = 20;
            this.label4.Text = "Trang :";
            // 
            // BtnEndPage
            // 
            this.BtnEndPage.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.BtnEndPage.Location = new System.Drawing.Point(482, 17);
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
            this.BtnNextPage.Location = new System.Drawing.Point(362, 17);
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
            this.btnBackpage.Location = new System.Drawing.Point(127, 17);
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
            this.btnBeginPage.Location = new System.Drawing.Point(8, 17);
            this.btnBeginPage.Margin = new System.Windows.Forms.Padding(2);
            this.btnBeginPage.Name = "btnBeginPage";
            this.btnBeginPage.Size = new System.Drawing.Size(98, 25);
            this.btnBeginPage.TabIndex = 16;
            this.btnBeginPage.Text = "Trang đầu";
            this.btnBeginPage.UseVisualStyleBackColor = true;
            this.btnBeginPage.Click += new System.EventHandler(this.btnBeginPage_Click);
            // 
            // IdCL
            // 
            this.IdCL.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.IdCL.DataPropertyName = "Id";
            dataGridViewCellStyle3.Alignment = System.Windows.Forms.DataGridViewContentAlignment.MiddleCenter;
            this.IdCL.DefaultCellStyle = dataGridViewCellStyle3;
            this.IdCL.FillWeight = 30F;
            this.IdCL.HeaderText = "Id";
            this.IdCL.MinimumWidth = 6;
            this.IdCL.Name = "IdCL";
            this.IdCL.ReadOnly = true;
            this.IdCL.Width = 41;
            // 
            // EmployeeId
            // 
            this.EmployeeId.AutoSizeMode = System.Windows.Forms.DataGridViewAutoSizeColumnMode.DisplayedCells;
            this.EmployeeId.DataPropertyName = "EmployeeId";
            this.EmployeeId.HeaderText = "MNV";
            this.EmployeeId.MinimumWidth = 6;
            this.EmployeeId.Name = "EmployeeId";
            this.EmployeeId.ReadOnly = true;
            this.EmployeeId.Width = 56;
            // 
            // FullNameCL
            // 
            this.FullNameCL.DataPropertyName = "FullName";
            this.FullNameCL.HeaderText = "Họ và tên";
            this.FullNameCL.MinimumWidth = 6;
            this.FullNameCL.Name = "FullNameCL";
            this.FullNameCL.ReadOnly = true;
            this.FullNameCL.Width = 138;
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
            // DateAdvanceCL
            // 
            this.DateAdvanceCL.DataPropertyName = "DateAdvance";
            dataGridViewCellStyle4.Format = "dd/MM/yyyy";
            this.DateAdvanceCL.DefaultCellStyle = dataGridViewCellStyle4;
            this.DateAdvanceCL.HeaderText = "Ngày ứng";
            this.DateAdvanceCL.MinimumWidth = 6;
            this.DateAdvanceCL.Name = "DateAdvanceCL";
            this.DateAdvanceCL.ReadOnly = true;
            this.DateAdvanceCL.Width = 125;
            // 
            // ValueAdvanceCL
            // 
            this.ValueAdvanceCL.DataPropertyName = "ValueAdvance";
            dataGridViewCellStyle5.Format = "C0";
            dataGridViewCellStyle5.NullValue = null;
            this.ValueAdvanceCL.DefaultCellStyle = dataGridViewCellStyle5;
            this.ValueAdvanceCL.HeaderText = "Tiền ứng";
            this.ValueAdvanceCL.MinimumWidth = 6;
            this.ValueAdvanceCL.Name = "ValueAdvanceCL";
            this.ValueAdvanceCL.ReadOnly = true;
            this.ValueAdvanceCL.Width = 138;
            // 
            // FormSalaryAdvance
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(220)))), ((int)(((byte)(243)))), ((int)(((byte)(211)))));
            this.ClientSize = new System.Drawing.Size(1090, 604);
            this.Controls.Add(this.groupBox3);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Margin = new System.Windows.Forms.Padding(2);
            this.Name = "FormSalaryAdvance";
            this.Text = "Quản lý ứng lương";
            this.Load += new System.EventHandler(this.FrmSalaryAdvance_Load);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.GridEmployeeBonus)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.DateTimePicker DayFilter;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.RadioButton radioDay;
        private System.Windows.Forms.RadioButton RadioAllDay;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cbboxFullName;
        private System.Windows.Forms.Label labelRequiredName;
        private System.Windows.Forms.Button btnDelete;
        private System.Windows.Forms.Button BtnSave;
        private System.Windows.Forms.Button BtnCreate;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.DateTimePicker DateBonus;
        private System.Windows.Forms.TextBox txtIdEmployee;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbboxDepartmentForm;
        private System.Windows.Forms.DataGridView GridEmployeeBonus;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.Label label18;
        private System.Windows.Forms.ComboBox cbboxDepartmentFilter;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label LblPageIndex;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button BtnEndPage;
        private System.Windows.Forms.Button BtnNextPage;
        private System.Windows.Forms.Button btnBackpage;
        private System.Windows.Forms.Button btnBeginPage;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtValueAdvance;
        private System.Windows.Forms.Label lblrequiredValueAdvance;
        private System.Windows.Forms.TextBox txtReasion;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.DataGridViewTextBoxColumn IdCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn EmployeeId;
        private System.Windows.Forms.DataGridViewTextBoxColumn FullNameCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn DepartmentNameCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn DateAdvanceCL;
        private System.Windows.Forms.DataGridViewTextBoxColumn ValueAdvanceCL;
    }
}