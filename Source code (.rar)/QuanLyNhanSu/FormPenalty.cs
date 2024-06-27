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
    public partial class FormPenalty : Form
    {
        private static int? IdPenalty = null;
        public FormPenalty()
        {
            InitializeComponent();
            if (!Connection.IsManager)
            {
                groupBox1.Visible = false;
            }
        }

        private void GetDataPenalty()
        {
            GridPenalty.DataSource = Utilities.AllPenalty();
        }

        private void FrmPenalty_Load(object sender, EventArgs e)
        {
            GetDataPenalty();
        }

        private void CreateModel()
        {
            IdPenalty = null;
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

            if (IdPenalty == null)
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
                        cmd.CommandText = "PenaltyDelete";
                        cmd.Parameters.Add(new SqlParameter("@Id", IdPenalty));
                        var x = cmd.ExecuteNonQuery();
                        if (x == 1)
                        {
                            MessageBox.Show("Delete Success");
                        }
                        else
                        {
                            MessageBox.Show("Tồn tại Employee đang sử dụng với mức phạt này");
                        }
                        con.Close();
                    }
                    CreateModel();
                    GetDataPenalty();
                }
                
            }
        }

        private bool ValidatePenalty()
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

        private void BtnSave_Click(object sender, EventArgs e)
        {
            if (ValidatePenalty() == false)
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
                    cmd.CommandText = "PenaltySave";
                    if (IdPenalty == null)
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", DBNull.Value));
                    }
                    else
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", IdPenalty));
                    }
                    cmd.Parameters.Add(new SqlParameter("@Name", txtName.Text));
                    cmd.Parameters.Add(new SqlParameter("@ValuePenalty", double.Parse(txtBonusValue.Text)));
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
                GetDataPenalty();
                CreateModel();
                BtnCreate.Visible = false;
                btnDelete.Visible = false;
            }
        }

        private void txtName_TextChanged(object sender, EventArgs e)
        {
            ValidatePenalty();
        }

        private void txtBonusValue_TextChanged(object sender, EventArgs e)
        {
            ValidatePenalty();
        }

        private void GridPenalty_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            var Entity = GridPenalty.CurrentRow.Cells["Id"].Value.ToString();

            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PenaltyGetById";
                cmd.Parameters.Add(new SqlParameter("@Id", Entity));
                var result = cmd.ExecuteReader();
                tb.Load(result);
                con.Close();
            }

            if (tb.Rows.Count != 0)
            {
                foreach (DataRow data in tb.Rows)
                {
                    IdPenalty = (int)data["Id"];
                    txtName.Text = data["Name"].ToString();
                    txtBonusValue.Text = data["ValuePenalty"].ToString();
                }
                BtnCreate.Visible = true;
                btnDelete.Visible = true;
            }
            else
            {
                MessageBox.Show("Failed Get Bonus");
            }
        }
    }
}
