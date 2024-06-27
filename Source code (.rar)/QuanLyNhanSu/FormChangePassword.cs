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
    public partial class FormChangePassword : Form
    {
        private static int EmployeeId;
        public FormChangePassword(int Id)
        {
            InitializeComponent();
            EmployeeId = Id;
        }

        private bool ValidateForm()
        {
            if (txtNewPassword.Text.Length == 0 || txtOldPassword.Text.Length == 0 || txtReNewPassword.Text.Length == 0 || txtReNewPassword.Text != txtNewPassword.Text)
            {
                if (txtOldPassword.Text.Length == 0)
                {
                    labelRequiredOldPassword.Visible = true;
                }
                else
                {
                    labelRequiredOldPassword.Visible = false;
                }

                if (txtNewPassword.Text.Length == 0)
                {
                    labelRequiredNewPassword.Visible = true;
                }
                else
                {
                    labelRequiredNewPassword.Visible = false;
                }

                if (txtReNewPassword.Text != txtNewPassword.Text)
                {
                    lblRequiredReNewPassword.Visible = true;
                }
                else
                {
                    lblRequiredReNewPassword.Visible = false;
                }
                return false;
            }
            lblRequiredReNewPassword.Visible = false;
            labelRequiredNewPassword.Visible = false;
            labelRequiredOldPassword.Visible = false;
            return true;
        }

        private void createModel()
        {
            txtNewPassword.Text = null;
            txtReNewPassword.Text = null;
            txtOldPassword.Text = null;
        }

        private void FrmContract_Load(object sender, EventArgs e)
        {

        }

        private void txtOldPassword_TextChanged(object sender, EventArgs e)
        {
            ValidateForm();
        }

        private void txtNewPassword_TextChanged(object sender, EventArgs e)
        {
            ValidateForm();
        }

        private void txtReNewPassword_TextChanged(object sender, EventArgs e)
        {
            ValidateForm();
        }
        private string GetMD5(string txt)
        {
            string str = "";
            Byte[] buffer = System.Text.Encoding.UTF8.GetBytes(txt);
            System.Security.Cryptography.MD5CryptoServiceProvider md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
            buffer = md5.ComputeHash(buffer);
            foreach (Byte b in buffer)
            {
                str += b.ToString("X2");
            }
            return str;
        }

        private void btnchangePassword_Click(object sender, EventArgs e)
        {
            if (ValidateForm() == false)
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
                    cmd.CommandText = "ChangePassword";
                    cmd.Parameters.Add(new SqlParameter("@Id", EmployeeId));
                    cmd.Parameters.Add(new SqlParameter("@OldPassword", GetMD5(txtOldPassword.Text)));
                    cmd.Parameters.Add(new SqlParameter("@NewPassword", GetMD5(txtNewPassword.Text)));
                    var result = (int)cmd.ExecuteScalar();
                    con.Close();

                    if (result == -1)
                    {
                        MessageBox.Show("Mật khẩu cũ không đúng");
                    }
                    else
                    {
                        MessageBox.Show("Đổi mật khẩu thành công");
                        createModel();
                    }
                }
            }
        }
    }
}
