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
    public partial class FormSalaryAdvance : Form
    {
        private static int? IdSalaryAdvance = null;
        private static int pageIndex;
        private static double Total_Page;
        private static int pageSize;
        public FormSalaryAdvance()
        {
            InitializeComponent();
            pageIndex = 1;
            pageSize = 13;
            Total_Page = 0;
        }

        private void CreateModel()
        {
            IdSalaryAdvance = null;
            txtIdEmployee.Text = null;
            cbboxFullName.DataSource = null;
            txtValueAdvance.Text = null;
            BtnCreate.Visible = false;
            btnDelete.Visible = false;
            txtReasion.Text = null;
            cbboxFullName.Enabled = true;
        }


        private void PaginationSalaryAdvance()
        {
            var request = new PaginationSalaryAdvanceRequest();
            request.pageIndex = pageIndex;
            request.pageSize = pageSize;
            if (cbboxDepartmentFilter.SelectedValue == System.DBNull.Value || cbboxDepartmentFilter.SelectedValue == null || cbboxDepartmentFilter.SelectedValue.ToString() == "System.Data.DataRowView")
            {
                request.DepartmentId = null;
            }
            else
            {
                request.DepartmentId = (int)cbboxDepartmentFilter.SelectedValue;
            }
            if (RadioAllDay.Checked == true)
            {
                request.DateAdvance = null;
            }
            else
            {
                request.DateAdvance = DayFilter.Value;
            }
            request.NameSearch = txtSearch.Text.Length == 0 ? null : txtSearch.Text.Trim();



            var result = Utilities.SalaryAdvanceAll(request);
            //Fill Data Return to DataGrid , Remove Column Total
            GridEmployeeBonus.DataSource = result.Select(c => new {
                Id = c.Id,
                EmployeeId = c.EmployeeId,
                FullName = c.FullName,
                DepartmentName = c.DepartmentName,
                DateAdvance = c.DateAdvance,
                ValueAdvance = c.ValueAdvance,
            }).ToList();

            //Get pagination result (Current page & Total page)
            var pagination = Utilities.Pagination<EmployeeAdvanceSalaryViewModel>(result, request);

            //Set globals Total page
            Total_Page = pagination.TotalPage;

            //Set Display pagination UI
            LblPageIndex.Text = pageIndex + " / " + Total_Page;

            //if else ..
            if (pageIndex == 1) // you are stay top page
            {
                btnBackpage.Enabled = false;
                btnBeginPage.Enabled = false;
            }
            else
            {
                btnBackpage.Enabled = true;
                btnBeginPage.Enabled = true;
            }

            if (pageIndex == Total_Page) // you are stay last page
            {
                BtnNextPage.Enabled = false;
                BtnEndPage.Enabled = false;
            }
            else
            {
                BtnNextPage.Enabled = true;
                BtnEndPage.Enabled = true;
            }

            if (Total_Page == 0 && pageIndex > 0)
            {
                if (pageIndex == 1)
                {
                    return;
                }
                else
                {
                    pageIndex--;
                    PaginationSalaryAdvance();
                }
            }
        }


        private bool ValidateAdvanceSalary()
        {
            if (txtIdEmployee.Text.Length == 0 || cbboxFullName.DataSource == null || txtValueAdvance.Text.Length == 0)
            {
                if (txtIdEmployee.Text.Length == 0 || cbboxFullName.DataSource == null)
                {
                    labelRequiredName.Visible = true;
                }
                else
                {
                    labelRequiredName.Visible = false;
                }
                if(txtValueAdvance.Text.Length == 0)
                {
                    lblrequiredValueAdvance.Visible = true;
                }
                else
                {
                    try
                    {
                        var t = double.Parse(txtValueAdvance.Text);
                        lblrequiredValueAdvance.Visible = false;
                    }
                    catch(Exception ex)
                    {
                        lblrequiredValueAdvance.Visible = true;
                    }
                }
                return false;
            }
            else
            {
                try
                {
                    var t = double.Parse(txtValueAdvance.Text);
                    lblrequiredValueAdvance.Visible = false;
                }
                catch (Exception ex)
                {
                    lblrequiredValueAdvance.Visible = true;
                    return false;
                }
                labelRequiredName.Visible = false;
                return true;
            }
        }

        private void FrmSalaryAdvance_Load(object sender, EventArgs e)
        {
            RadioAllDay.Checked = true;
            DayFilter.Enabled = false;

            var departments = Utilities.Departments();

            var dropdown = Utilities.BuildDropDownlist(departments, 0, 0);
            var departmentsForm = dropdown;

            cbboxDepartmentForm.DataSource = departmentsForm;
            cbboxDepartmentForm.DisplayMember = "Name";
            cbboxDepartmentForm.ValueMember = "Id";


            var departmentsFilter = Utilities.CollectionToDataTableDefaultSelect<NodeViewModel>(dropdown);
            DataRow DefaultSelectFilter = departmentsFilter.NewRow();
            DefaultSelectFilter[0] = DBNull.Value;
            DefaultSelectFilter[1] = "== Tất cả đơn vị,phòng ban ==";

            departmentsFilter.Rows.InsertAt(DefaultSelectFilter, 0);

            cbboxDepartmentFilter.DataSource = departmentsFilter;
            cbboxDepartmentFilter.DisplayMember = "Name";
            cbboxDepartmentFilter.ValueMember = "Id";

            
            PaginationSalaryAdvance();
            CreateModel();
        }

        private void BtnCreate_Click(object sender, EventArgs e)
        {
            CreateModel();
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            PaginationSalaryAdvance();
        }

        private void RadioAllDay_CheckedChanged(object sender, EventArgs e)
        {
            DayFilter.Enabled = false;
            PaginationSalaryAdvance();
        }

        private void radioDay_CheckedChanged(object sender, EventArgs e)
        {
            DayFilter.Enabled = true;
            PaginationSalaryAdvance();
        }

        private void cbboxDepartmentFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            PaginationSalaryAdvance();
        }

        private void btnBeginPage_Click(object sender, EventArgs e)
        {
            if (Total_Page == 0)
            {
                return;
            };
            if (pageIndex == 1)
            {
                MessageBox.Show("Bạn đang ở trang đầu tiên");
            }
            else
            {
                pageIndex = 1;
                PaginationSalaryAdvance();
            }
        }

        private void btnBackpage_Click(object sender, EventArgs e)
        {
            if (Total_Page == 0)
            {
                return;
            };
            if (pageIndex == 1)
            {
                MessageBox.Show("Bạn đang ở trang đầu tiên");
            }
            else
            {
                pageIndex--;
                PaginationSalaryAdvance();
            }
        }

        private void BtnNextPage_Click(object sender, EventArgs e)
        {
            if (Total_Page == 0)
            {
                return;
            };
            if (pageIndex == Total_Page)
            {
                MessageBox.Show("Bạn đang ở trang cuối cùng");
            }
            else
            {
                pageIndex++;
                PaginationSalaryAdvance();
            }
        }

        private void BtnEndPage_Click(object sender, EventArgs e)
        {
            if (Total_Page == 0)
            {
                return;
            };
            if (pageIndex == Total_Page)
            {
                MessageBox.Show("Bạn đang ở trang cuối cùng");
            }
            else
            {
                pageIndex = (int)Total_Page;
                PaginationSalaryAdvance();
            }
        }

        private void cbboxDepartmentForm_SelectedIndexChanged(object sender, EventArgs e)
        {
            var t = cbboxDepartmentForm.SelectedValue.ToString();
            if (t == "System.Data.DataRowView" || t== "QuanLyNhanSu.NodeViewModel")
            {
                return;
            }
            var request = new PaginationEmployeeRequest()
            {
                pageIndex = 1,
                pageSize = 0,
                DepartmentId = int.Parse(t),
                NameSearch = null
            };
            var EmployeeByDepartment = Utilities.Employees(request);
            if (EmployeeByDepartment.Count == 0)
            {
                cbboxFullName.DataSource = null;
            }
            else
            {
                cbboxFullName.DataSource = EmployeeByDepartment;
                cbboxFullName.DisplayMember = "FullName";
                cbboxFullName.ValueMember = "Id";
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {

            if (IdSalaryAdvance == null)
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
                        cmd.CommandText = "SalaryAdvanceDelete";
                        cmd.Parameters.Add(new SqlParameter("@Id", IdSalaryAdvance));
                        var x = cmd.ExecuteNonQuery();
                        if (x == 1)
                        {
                            MessageBox.Show("Delete Success");
                        }
                        else
                        {
                            MessageBox.Show("Delete Failed");
                        }
                        con.Close();
                    }
                    CreateModel();
                    PaginationSalaryAdvance();
                }

            }
        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            if (ValidateAdvanceSalary() == false)
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
                    cmd.CommandText = "SalaryAdvanceSave";
                    if (IdSalaryAdvance == null)
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", DBNull.Value));
                    }
                    else
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", IdSalaryAdvance));
                    }
                    cmd.Parameters.Add(new SqlParameter("@IdEmployee", int.Parse(txtIdEmployee.Text)));
                    cmd.Parameters.Add(new SqlParameter("@ValueAdvance", double.Parse(txtValueAdvance.Text)));
                    cmd.Parameters.Add(new SqlParameter("@DateAdvance", DateBonus.Value));
                    cmd.Parameters.Add(new SqlParameter("@Reasion", txtReasion.Text));
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
                PaginationSalaryAdvance();
                CreateModel();
                BtnCreate.Visible = false;
                btnDelete.Visible = false;
            }
        }

        private void GridEmployeeBonus_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            var Entity = GridEmployeeBonus.CurrentRow.Cells["IdCL"].Value.ToString();

            var result = Utilities.GetSalaryAdvanceById(int.Parse(Entity));

            if (result.Rows.Count != 0)
            {
                cbboxDepartmentForm_SelectedIndexChanged(sender, e);
                foreach (DataRow data in result.Rows)
                {
                    IdSalaryAdvance = (int)data["Id"];
                    txtIdEmployee.Text = data["EmployeeId"].ToString();
                    cbboxDepartmentForm.SelectedValue = (int)data["DepartmentId"];
                    cbboxFullName.SelectedValue = (int)data["EmployeeId"];
                    txtValueAdvance.Text = data["ValueAdvance"].ToString();
                    txtReasion.Text = data["Reasion"].ToString();
                    DateBonus.Value = (DateTime)data["DateAdvance"];
                }
                cbboxFullName.Enabled = false;
                BtnCreate.Visible = true;
                btnDelete.Visible = true;
            }
            else
            {
                MessageBox.Show("Get Employee Failed");
            }
        }

        private void cbboxFullName_SelectedValueChanged(object sender, EventArgs e)
        {
            if (cbboxFullName.DataSource != null && cbboxFullName.SelectedValue != null)
            {
                var t = cbboxFullName.SelectedValue.ToString();
                if (t == "System.Data.DataRowView" || t == "QuanLyNhanSu.EmployeeViewModel")
                {
                    return;
                }
                txtIdEmployee.Text = t;
                ValidateAdvanceSalary();
            }
        }

        private void txtValueAdvance_TextChanged(object sender, EventArgs e)
        {
            ValidateAdvanceSalary();
        }

        private void txtValueAdvance_TextChanged_1(object sender, EventArgs e)
        {
            ValidateAdvanceSalary();
        }

        private void DayFilter_ValueChanged(object sender, EventArgs e)
        {
            PaginationSalaryAdvance();
        }
    }
}
