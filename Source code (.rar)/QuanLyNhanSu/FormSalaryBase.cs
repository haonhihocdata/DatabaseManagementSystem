using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyNhanSu
{
    public partial class FormSalaryBase : Form
    {
        private static int? SalaryId = null;
        public FormSalaryBase()
        {
            InitializeComponent();
            if (!Connection.IsManager)
            {
                groupBox1.Visible = false;
            }                                                                                                                                                      
        }

        private bool ValidateSalaryBase()
        {
            if (txtName.Text.Length == 0 || txtSalaryValue.Text.Length == 0 || txtAllowance.Text.Length == 0)
            {
                if (txtName.Text.Length == 0)
                {
                    labelRequiredName.Visible = true;
                }
                else
                {
                    labelRequiredName.Visible = false;
                }
                if(txtSalaryValue.Text.Length == 0)
                {
                    lblrequiredValueSalary.Visible = true;
                }
                else
                {
                    try
                    {
                        var checkvalue = double.Parse(txtSalaryValue.Text);
                        lblrequiredValueSalary.Visible = false;
                    }
                    catch (Exception ex)
                    {
                        lblrequiredValueSalary.Visible = true;
                    }
                }
                if (txtAllowance.Text.Length == 0)
                {
                    lblRequiredAllow.Visible = true;
                }
                else
                {
                    try
                    {
                        var checkvalue = double.Parse(txtAllowance.Text);
                        lblRequiredAllow.Visible = false;
                    }
                    catch (Exception ex)
                    {
                        lblRequiredAllow.Visible = true;
                    }
                }
                return false;
            }
            else
            {
                labelRequiredName.Visible = false;
                try
                {
                    var checkvalue = double.Parse(txtSalaryValue.Text);
                    lblrequiredValueSalary.Visible = false;
                }
                catch (Exception ex)
                {
                    lblrequiredValueSalary.Visible = true;
                    return false;
                }
                try
                {
                    var checkvalue = double.Parse(txtAllowance.Text);
                    lblRequiredAllow.Visible = false;
                }
                catch (Exception ex)
                {
                    lblRequiredAllow.Visible = true;
                    return false;
                }
                return true;
            }
        }

        private void GetDataSalary()
        {
            if (cbboxDepartmentFilter.SelectedValue == System.DBNull.Value || cbboxDepartmentFilter.SelectedValue == null || cbboxDepartmentFilter.SelectedValue.ToString() == "System.Data.DataRowView")
            {
                GridSalaryBase.DataSource = Utilities.AllSalaryBase(null);
            }
            else
            {
                GridSalaryBase.DataSource = Utilities.AllSalaryBase(int.Parse(cbboxDepartmentFilter.SelectedValue.ToString()));
            }

        }

        private void FrmSalaryBase_Load(object sender, EventArgs e)
        {
            var departments = Utilities.Departments();

            var dropdown = Utilities.BuildDropDownlist(departments, 0, 0);

            //var departmentsFilter = Extendsion.AllDepartments();
            var departmentsForm = dropdown;

            cbboxDepartment.DataSource = departmentsForm;
            cbboxDepartment.DisplayMember = "Name";
            cbboxDepartment.ValueMember = "Id";

            var departmentsFilter = Utilities.CollectionToDataTableDefaultSelect<NodeViewModel>(dropdown);
            DataRow DefaultSelectFilter = departmentsFilter.NewRow();
            DefaultSelectFilter[0] = DBNull.Value;
            DefaultSelectFilter[1] = "== Tất cả đơn vị,phòng ban ==";

            departmentsFilter.Rows.InsertAt(DefaultSelectFilter, 0);


            cbboxDepartmentFilter.DataSource = departmentsFilter;
            cbboxDepartmentFilter.DisplayMember = "Name";
            cbboxDepartmentFilter.ValueMember = "Id";

            GetDataSalary();
        }

        private void txtName_TextChanged(object sender, EventArgs e)
        {
            ValidateSalaryBase();
        }

        private void txtSalaryValue_TextChanged(object sender, EventArgs e)
        {
            ValidateSalaryBase();
        }

        private void cbboxDepartmentFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
        private void CreateModel()
        {
            SalaryId = null;
            txtName.Text = null;
            txtSalaryValue.Text = null;
            txtAllowance.Text = null;
            BtnCreate.Visible = false;
            btnDelete.Visible = false;
        }

        private void BtnCreate_Click(object sender, EventArgs e)
        {
            CreateModel();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {

            if (SalaryId == null)
            {
                MessageBox.Show("Không có đối tượng cần xóa");
            }
            else
            {
                DialogResult Notification;
                Notification = MessageBox.Show("Delete", "Bạn thực sự muốn xóa?", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
                if (Notification == DialogResult.OK)
                {
                    using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "SalaryDelete";
                        cmd.Parameters.Add(new SqlParameter("@Id", SalaryId));
                        var x = cmd.ExecuteNonQuery();
                        if (x == 1)
                        {
                            MessageBox.Show("Delete Success");
                        }
                        else
                        {
                            MessageBox.Show("Tồn tại nhân viên đang sử dụng mức lương này");
                        }
                        con.Close();
                    }
                    CreateModel();
                    GetDataSalary();
                }
                
            }
        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            if (ValidateSalaryBase() == false)
            {
                return;
            }
            else
            {
                using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "SalarySave";
                    if (SalaryId == null)
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", DBNull.Value));
                    }
                    else
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", SalaryId));
                    }
                    cmd.Parameters.Add(new SqlParameter("@Name", txtName.Text));
                    cmd.Parameters.Add(new SqlParameter("@SalaryValue",  double.Parse(txtSalaryValue.Text)));
                    cmd.Parameters.Add(new SqlParameter("@Allowance", double.Parse(txtAllowance.Text)));
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", (int)cbboxDepartment.SelectedValue));
                    var x = cmd.ExecuteNonQuery();
                    if (x == 1)
                    {
                        MessageBox.Show("Saved Success");
                    }
                    else
                    {
                        MessageBox.Show("Saved Failed");
                    }
                    con.Close();
                }
                GetDataSalary();
                CreateModel();
                BtnCreate.Visible = false;
                btnDelete.Visible = false;
            }
        }

        private void GridSalaryBase_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            var Entity = GridSalaryBase.CurrentRow.Cells["Id"].Value.ToString();

            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SalaryGetById";
                cmd.Parameters.Add(new SqlParameter("@Id", Entity));
                var result = cmd.ExecuteReader();
                tb.Load(result);
                con.Close();
            }

            if (tb.Rows.Count != 0)
            {
                foreach (DataRow data in tb.Rows)
                {
                    SalaryId = (int)data["Id"];
                    txtName.Text = data["Name"].ToString();
                    txtSalaryValue.Text = data["SalaryValue"].ToString();
                    txtAllowance.Text = data["Allowance"].ToString();
                    cbboxDepartment.Text = data["DepartmentName"].ToString();
                }
                BtnCreate.Visible = true;
                btnDelete.Visible = true;
            }
            else
            {
                MessageBox.Show("Failed Get Salary");
            }
        }

        private void cbboxDepartmentFilter_SelectedValueChanged(object sender, EventArgs e)
        {
            var t = cbboxDepartmentFilter.SelectedValue.ToString();
            if (t == "System.Data.DataRowView")
            {
                return;
            }
            GetDataSalary();
        }

        private void txtAllowance_TextChanged(object sender, EventArgs e)
        {
            ValidateSalaryBase();
        }
    }
}
