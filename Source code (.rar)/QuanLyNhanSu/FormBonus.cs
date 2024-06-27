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
    public partial class FormBonus : Form
    {
        private static int? BonusId = null;
        public FormBonus()
        {
            InitializeComponent();
            if (!Connection.IsManager)
            {
                groupBox1.Visible = false;
            }
        }

        private bool ValidateBonus()
        {
            if (txtName.Text.Length == 0 || txtBonusValue.Text.Length == 0)
            {
                if (txtName.Text.Length == 0)
                {
                    labelRequiredName.Visible = true;
                }
                else
                {
                    labelRequiredName.Visible = false;
                }
                if (txtBonusValue.Text.Length == 0)
                {
                    lblrequiredValueBonus.Visible = true;
                }
                else
                {
                    try
                    {
                        var checkvalue = double.Parse(txtBonusValue.Text);
                        lblrequiredValueBonus.Visible = false;
                    }
                    catch (Exception ex)
                    {
                        lblrequiredValueBonus.Visible = true;
                    }
                }
                return false;
            }
            else
            {
                
                labelRequiredName.Visible = false;
                try
                {
                    var checkvalue = double.Parse(txtBonusValue.Text);
                    lblrequiredValueBonus.Visible = false;
                }
                catch (Exception ex)
                {
                    lblrequiredValueBonus.Visible = true;
                    return false;
                }

                return true;
            }
        }

        private void GetDataBonus()
        {
            GridBonus.DataSource = Utilities.AllBonus();
        }

        private void FrmBonus_Load(object sender, EventArgs e)
        {
            GetDataBonus();
        }

        private void CreateModel()
        {
            BonusId = null;
            txtName.Text = null;
            txtBonusValue.Text = null;
            BtnCreate.Visible = false;
            btnDelete.Visible = false;
        }
        private void BtnCreate_Click(object sender, EventArgs e)
        {
            CreateModel();
            BtnCreate.Visible = false;
            btnDelete.Visible = false;
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (BonusId == null)
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
                        cmd.CommandText = "BonusDelete";
                        cmd.Parameters.Add(new SqlParameter("@Id", BonusId));
                        var x = cmd.ExecuteNonQuery();
                        if (x == 1)
                        {
                            MessageBox.Show("Delete Success");
                        }
                        else
                        {
                            MessageBox.Show("Tồn tại Employee đang sử dụng với mức bonus này");
                        }
                        con.Close();
                    }
                    CreateModel();
                    GetDataBonus();
                }
            }
        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            if (ValidateBonus() == false)
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
                    cmd.CommandText = "BonusSave";
                    if (BonusId == null)
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", DBNull.Value));
                    }
                    else
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", BonusId));
                    }
                    cmd.Parameters.Add(new SqlParameter("@Name", txtName.Text));
                    cmd.Parameters.Add(new SqlParameter("@ValueBonus", double.Parse(txtBonusValue.Text)));
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
                GetDataBonus();
                CreateModel();
                BtnCreate.Visible = false;
                btnDelete.Visible = false;
            }
        }

        private void GridBonus_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            var Entity = GridBonus.CurrentRow.Cells["Id"].Value.ToString();

            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "BonusGetById";
                cmd.Parameters.Add(new SqlParameter("@Id", Entity));
                var result = cmd.ExecuteReader();
                tb.Load(result);
                con.Close();
            }

            if (tb.Rows.Count != 0)
            {
                foreach (DataRow data in tb.Rows)
                {
                    BonusId = (int)data["Id"];
                    txtName.Text = data["Name"].ToString();
                    txtBonusValue.Text = data["ValueBonus"].ToString();
                }
                BtnCreate.Visible = true;
                btnDelete.Visible = true;
            }
            else
            {
                MessageBox.Show("Failed Get Bonus");
            }
        }

        private void txtName_TextChanged(object sender, EventArgs e)
        {
            ValidateBonus();
        }

        private void txtBonusValue_TextChanged(object sender, EventArgs e)
        {
            ValidateBonus();
        }
    }
}
