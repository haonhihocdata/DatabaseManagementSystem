using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyNhanSu
{
    public partial class FormManagerWorking : Form
    {
        public FormManagerWorking()
        {
            InitializeComponent();
        }

        private void FrmManagerWorking_Load(object sender, EventArgs e)
        {
            var departments = Utilities.Departments();

            var dropdown = Utilities.BuildDropDownlist(departments, 0, 0);

            var departmentsFilter = Utilities.CollectionToDataTableDefaultSelect<NodeViewModel>(dropdown);
            DataRow DefaultSelectFilter = departmentsFilter.NewRow();
            DefaultSelectFilter[0] = DBNull.Value;
            DefaultSelectFilter[1] = "== Tất cả đơn vị,phòng ban ==";

            departmentsFilter.Rows.InsertAt(DefaultSelectFilter, 0);


            cbboxDepartmentFilter.DataSource = departmentsFilter;
            cbboxDepartmentFilter.DisplayMember = "Name";
            cbboxDepartmentFilter.ValueMember = "Id";

            DataGridViewCheckBoxColumn checkWorking = new DataGridViewCheckBoxColumn();
            GridEmployeeCheckWork.Columns.Add(checkWorking);
            checkWorking.HeaderText = "Làm việc";
            checkWorking.Name = "CheckWorking";
            checkWorking.DataPropertyName = "CheckWorking";
            checkWorking.ReadOnly = false;
        }

        private void btnLoad_Click(object sender, EventArgs e)
        {
            var request = new CheckWorkingRequest();
            if (cbboxDepartmentFilter.SelectedValue == System.DBNull.Value || cbboxDepartmentFilter.SelectedValue == null || cbboxDepartmentFilter.SelectedValue.ToString() == "System.Data.DataRowView")
            {
                request.DepartmentId = null;
            }
            else
            {
                request.DepartmentId = (int)cbboxDepartmentFilter.SelectedValue;
            }
            //var dateCk = .ToString("dd/MM/yyyy");
            request.DateCheckWorking = DateCheckWorking.Value;
            request.NameSearch = txtSearch.Text.Length == 0 ? null : txtSearch.Text.Trim();

            var result = Utilities.CheckWorking(request);
            //Fill Data Return to DataGrid , Remove Column Total
            GridEmployeeCheckWork.DataSource = result.Select(c => new CheckWorkingVm {
                Id = c.Id,
                FullName = c.FullName,
                DepartmentName = c.DepartmentName,
                CurrentDate = c.CurrentDate,
                CheckWorking = c.CheckWorking
            }).ToList();


        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            if(GridEmployeeCheckWork.Rows.Count == 0)
            {
                MessageBox.Show("Not thing ...");
            }
            else
            {
                for(int i=0;i<GridEmployeeCheckWork.Rows.Count;i++)
                {
                    var request = new CheckWorkingRequestSave()
                    {
                        Id = (int)GridEmployeeCheckWork.Rows[i].Cells["Id"].Value,
                        DateWork = (DateTime)GridEmployeeCheckWork.Rows[i].Cells["CurrentDateCheck"].Value,
                        SalaryCurrent = Utilities.GetCurrentSalary((int)GridEmployeeCheckWork.Rows[i].Cells["Id"].Value),
                        IsWorking = (bool)GridEmployeeCheckWork.Rows[i].Cells["CheckWorking"].Value
                    };

                    using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SaveWorkingDay";
                        cmd.Parameters.Add(new SqlParameter("@Id", request.Id));
                        cmd.Parameters.Add(new SqlParameter("@DateWork", request.DateWork));
                        cmd.Parameters.Add(new SqlParameter("@SalaryCurrent", request.SalaryCurrent));
                        cmd.Parameters.Add(new SqlParameter("@IsWorking", request.IsWorking));
                        var x = cmd.ExecuteNonQuery();
                        if (x == 0)
                        {
                            MessageBox.Show("Saved Failed where Employee id : "+ request.Id);
                            break;
                        }
                        con.Close();
                    }
                    if(i+1 == GridEmployeeCheckWork.Rows.Count)
                    {
                        MessageBox.Show("Success !");
                    }
                }
            }
        }

        private void btnCheckAll_Click(object sender, EventArgs e)
        {
            if (GridEmployeeCheckWork.Rows.Count == 0)
            {
                MessageBox.Show("Not thing ...");
            }
            else
            {
                for (int i = 0; i < GridEmployeeCheckWork.Rows.Count; i++)
                {
                    GridEmployeeCheckWork.Rows[i].Cells["CheckWorking"].Value = true;
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (GridEmployeeCheckWork.Rows.Count == 0)
            {
                MessageBox.Show("Not thing ...");
            }
            else
            {
                for (int i = 0; i < GridEmployeeCheckWork.Rows.Count; i++)
                {
                    GridEmployeeCheckWork.Rows[i].Cells["CheckWorking"].Value = false;
                }
            }
        }
    }
}
