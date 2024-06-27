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
    public partial class FormEmployee : Form
    {
        private static int? IdEmployee = null;
        private static int pageIndex;
        private static double Total_Page;
        private static int pageSize;
        private static string ImageLocation;
        private static byte[] ByteAvatar;
        public FormEmployee()
        {
            InitializeComponent();
            pageIndex = 1;
            pageSize = 13;
            Total_Page = 0;
            if (!Connection.IsManager)
            {
                groupBox1.Visible = false;
            }
        }

        private void FrmEmployee_Load(object sender, EventArgs e)
        {
            cbboxGender.Text = "Nam";

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
            radioAll.Checked = true;
            CreateModel();
            PaginationEmployee();
        }

        private bool ValidateEmployee()
        {
            if (txtName.Text.Length == 0 || cbboxSalary.DataSource == null || txtInsuranceSociety.Text.Length == 0)
            {
                if (txtName.Text.Length == 0)
                {
                    labelRequiredName.Visible = true;
                }
                else
                {
                    labelRequiredName.Visible = false;
                }
                if (txtInsuranceSociety.Text.Length == 0)
                {
                    lblRequiredInsuranceSociety.Visible = true;
                }
                else
                {
                    try
                    {
                        var check = double.Parse(txtInsuranceSociety.Text);
                        lblRequiredInsuranceSociety.Visible = false;
                    }
                    catch (Exception ex)
                    {
                        lblRequiredInsuranceSociety.Visible = true;
                    }
                }
                if (cbboxSalary.DataSource == null)
                {
                    lblreuiqredsalary.Visible = true;
                }
                else
                {
                    lblreuiqredsalary.Visible = false;
                }
                return false;
            }
            else
            {
                try
                {
                    var check = double.Parse(txtInsuranceSociety.Text);
                    lblRequiredInsuranceSociety.Visible = false;
                }
                catch(Exception ex)
                {
                    lblRequiredInsuranceSociety.Visible = true;
                    return false;
                }
                labelRequiredName.Visible = false;
                lblreuiqredsalary.Visible = false;
                return true;
            }
        }

        private void CreateModel()
        {
            IdEmployee = null;
            txtName.Text = null;
            txtIdCard.Text = null;
            txtEmail.Text = null;
            txtAddress.Text = null;
            BtnCreate.Visible = false;
            checkWorking.Checked = false;
            btnDelete.Visible = false;
            txtInsuranceSociety.Text = null;
            ImageLocation = null;
            Avatar.Image = null;
            ByteAvatar = null;
            txtPhone.Text = null;
        }

        private void BtnCreate_Click(object sender, EventArgs e)
        {
            CreateModel();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                Utilities.ImageLocation(ref ImageLocation, ref Avatar);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void PaginationEmployee()
        {
            var request = new PaginationEmployeeRequest();
            request.pageIndex = pageIndex;
            request.pageSize = pageSize;
            if (cbboxDepartmentFilter.SelectedValue == System.DBNull.Value || cbboxDepartmentFilter.SelectedValue == null || cbboxDepartmentFilter.SelectedValue.ToString()== "System.Data.DataRowView")
            {
                request.DepartmentId = null;
            }
            else
            {
                request.DepartmentId = (int)cbboxDepartmentFilter.SelectedValue;
            }
            if (radioAll.Checked == true)
            {
                request.IsWorking = null;
            }
            else if (radioWorking.Checked == true)
            {
                request.IsWorking = true;
            }
            else
            {
                request.IsWorking = false;
            }
            request.NameSearch = txtSearch.Text.Length == 0 ? null : txtSearch.Text.Trim();



            var result = Utilities.Employees(request);
            //Fill Data Return to DataGrid , Remove Column Total
            GridEmployee.DataSource = result.Select(c => new {
                Id = c.Id,
                FullName = c.FullName,
                Gender = c.Gender,
                Phone = c.Phone,
                DayOfBirth = c.DayOfBirth
            }).ToList();

            //Get pagination result (Current page & Total page)
            var pagination = Utilities.Pagination<EmployeeViewModel>(result, request);

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
                    PaginationEmployee();
                }
            }
        }

        private void cbboxDepartmentFilter_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            PaginationEmployee();
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
                PaginationEmployee();
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
                PaginationEmployee();
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
                PaginationEmployee();
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
                PaginationEmployee();
            }
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (IdEmployee == null)
            {
                MessageBox.Show("Không xác định được giảng viên cần xóa");
                return;
            }
            else
            {
                DialogResult thongbao;
                thongbao = MessageBox.Show("Xóa nhân viên này", "Delete ?", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
                if (thongbao == DialogResult.OK)
                {
                    using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "EmployeeDelete";
                        cmd.Parameters.Add(new SqlParameter("@Id", IdEmployee));
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
                    PaginationEmployee();
                }
            }
        }

        private void cbboxDepartmentForm_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void cbboxSalary_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbboxSalary.DataSource != null)
            {
                var t = cbboxSalary.SelectedValue.ToString();
                if (t == "System.Data.DataRowView")
                {
                    return;
                }
                var IdDepartment = Utilities.GetIdDepartmentBySalaryId(int.Parse(t));
                cbboxDepartmentForm.SelectedValue = IdDepartment;
            }
        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            if (ValidateEmployee() == false)
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
                    cmd.CommandText = "EmployeeSave";
                    if (IdEmployee == null)
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", DBNull.Value));
                    }
                    else
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", IdEmployee));
                    }
                    cmd.Parameters.Add(new SqlParameter("@FullName", txtName.Text));
                    cmd.Parameters.Add(new SqlParameter("@Gender", cbboxGender.Text));
                    cmd.Parameters.Add(new SqlParameter("@IdCard",txtIdCard.Text));
                    cmd.Parameters.Add(new SqlParameter("@Email", txtEmail.Text));
                    cmd.Parameters.Add(new SqlParameter("@Address", txtAddress.Text));
                    cmd.Parameters.Add(new SqlParameter("@Phone", txtPhone.Text));
                    cmd.Parameters.Add(new SqlParameter("@DayOfBirth", dateTimeDayofBirth.Value));
                    cmd.Parameters.Add(new SqlParameter("@SalaryId", (int)cbboxSalary.SelectedValue));
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", (int)cbboxDepartmentForm.SelectedValue));
                    cmd.Parameters.Add(new SqlParameter("@InsuranceSociety", double.Parse(txtInsuranceSociety.Text)));
                    cmd.Parameters.Add(new SqlParameter("@IsWorking", checkWorking.Checked));
                    var avatar = ImageLocation == null ? ByteAvatar : Utilities.ByteForImage(ImageLocation);
                    if(avatar == null)
                    {
                        cmd.Parameters.Add(new SqlParameter("@Avatar", DBNull.Value)).SqlDbType = SqlDbType.Image;
                    }
                    else
                    {
                        cmd.Parameters.Add(new SqlParameter("Avatar", avatar));
                    }
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
                PaginationEmployee();
                CreateModel();
                BtnCreate.Visible = false;
                btnDelete.Visible = false;
            }
        }

        private void txtName_TextChanged(object sender, EventArgs e)
        {
            ValidateEmployee();
        }

        private void GridEmployee_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            var Entity = GridEmployee.CurrentRow.Cells["Id"].Value.ToString();

            var result = Utilities.GetEmployeeById(int.Parse(Entity));

            if (result.Rows.Count != 0)
            {
                cbboxDepartmentForm_SelectedIndexChanged(sender, e);
                foreach (DataRow data in result.Rows)
                {
                    IdEmployee = (int)data["Id"];
                    txtName.Text = data["FullName"].ToString();
                    txtAddress.Text = data["Address"].ToString();
                    txtEmail.Text = data["Email"].ToString();
                    txtIdCard.Text = data["IdCard"].ToString();
                    cbboxGender.Text = data["Gender"].ToString();
                    dateTimeDayofBirth.Value = (DateTime)data["DayOfBirth"];
                    cbboxDepartmentForm.SelectedValue = (int)data["DepartmentId"];
                    cbboxSalary.SelectedValue = (int)data["SalaryId"];
                    checkWorking.Checked = data["IsWorking"] == DBNull.Value ? false : (bool)data["IsWorking"];
                    txtInsuranceSociety.Text = data["InsuranceSociety"].ToString();
                    txtPhone.Text = data["Phone"].ToString();
                    if (data["Avatar"] != null && data["Avatar"] != System.DBNull.Value)
                    {
                        Utilities.SetImage((byte[])data["Avatar"], ref Avatar);
                        ByteAvatar = (byte[])data["Avatar"];
                    }
                    else
                    {
                        Avatar.Image = null;
                        ByteAvatar = null;
                    }
                }
                BtnCreate.Visible = true;
                btnDelete.Visible = true;
            }
            else
            {
                MessageBox.Show("Get Employee Failed");
            }
        }

        private void cbboxDepartmentForm_SelectedValueChanged(object sender, EventArgs e)
        {
            var t = cbboxDepartmentForm.SelectedValue.ToString();
            if (t == "System.Data.DataRowView" || t == "QuanLyNhanSu.NodeViewModel")
            {
                return;
            }
            var SalaryByDepartment = Utilities.AllSalaryBase((int)cbboxDepartmentForm.SelectedValue);
            if (SalaryByDepartment.Rows.Count == 0)
            {
                cbboxSalary.DataSource = null;
            }
            else
            {

                cbboxSalary.DataSource = SalaryByDepartment;
                cbboxSalary.DisplayMember = "Name";
                cbboxSalary.ValueMember = "Id";
                ValidateEmployee();
            }
        }

        private void cbboxDepartmentFilter_SelectedValueChanged(object sender, EventArgs e)
        {
            var t = cbboxDepartmentFilter.SelectedValue.ToString();
            if (t == "System.Data.DataRowView")
            {
                return;
            }
            pageIndex = 1;
            PaginationEmployee();
        }

        private void radioAll_CheckedChanged(object sender, EventArgs e)
        {
            PaginationEmployee();
        }

        private void radioWorking_CheckedChanged(object sender, EventArgs e)
        {
            PaginationEmployee();
        }

        private void radioNotWork_CheckedChanged(object sender, EventArgs e)
        {
            PaginationEmployee();
        }

        private void txtInsuranceSociety_TextChanged(object sender, EventArgs e)
        {
            ValidateEmployee();
        }

        private void label10_Click(object sender, EventArgs e)
        {

        }

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }

        private void dateTimeDayofBirth_ValueChanged(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }
    }
}
