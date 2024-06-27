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
    public partial class FormDepartment : Form
    {
        private int? DepartmentId = null;
        public FormDepartment()
        {
            InitializeComponent();
            if (!Connection.IsManager)
            {
                groupBox1.Visible = false;
            }
        }

        private void FrmDepartment_Load(object sender, EventArgs e)
        {
            //GridDepartment.DataSource = Extendsion.AllDepartments();
            var departments = Utilities.Departments();

            var dropdown = Utilities.BuildDropDownlist(departments, 0, 0);

            var departmentsFilter = Utilities.CollectionToDataTableDefaultSelect<NodeViewModel>(dropdown);
            DataRow DefaultSelectFilter = departmentsFilter.NewRow();
            DefaultSelectFilter[0] = DBNull.Value;
            DefaultSelectFilter[1] = "== Chọn đơn vị,phòng ban cha==";

            departmentsFilter.Rows.InsertAt(DefaultSelectFilter, 0);


            cbboxDepartmentParent.DataSource = departmentsFilter;
            cbboxDepartmentParent.DisplayMember = "Name";
            cbboxDepartmentParent.ValueMember = "Id";

            //TreeNode root = null;
           
            //PopulateTree(ref root, departments);
            //treeDepartment.Nodes.Add(root);
            BindTree(departments,null);
            treeDepartment.ExpandAll();
        }

        private bool ValidateDepartment()
        {
            if (txtName.Text.Length == 0)
            {
                labelRequiredName.Visible = true;
                return false;
            }
            else
            {
                labelRequiredName.Visible = false;
                return true;
            }
        }

        private void BindTree(List<DepartmentVm> departments, TreeNode parentNode)
        {
            var nodes = departments.Where(x => parentNode == null ? x.ParentId == null : x.ParentId == int.Parse(parentNode.Tag.ToString()));
            foreach (var node in nodes)
            {
                TreeNode newNode = new TreeNode() {
                    Text = node.Name,
                    Tag = node.Id,
                };
                if (parentNode == null)
                {
                    treeDepartment.Nodes.Add(newNode);
                }
                else
                {

                    parentNode.Nodes.Add(newNode);
                }
                BindTree(departments, newNode);
            }
        }

        //public void PopulateTree(ref TreeNode root, List<DepartmentVm> departments)
        //{
        //    if (root == null)
        //    {
        //        root = new TreeNode();
        //        root.Text = "Departments";
        //        root.Tag = null;
        //        // get all departments in the list with parent is null
        //        var details = departments.Where(t => t.ParentId == null);
        //        foreach (var detail in details)
        //        {
        //            var child = new TreeNode()
        //            {
        //                Text = detail.Name,
        //                Tag = detail.Id,
        //            };
        //            PopulateTree(ref child, departments);
        //            root.Nodes.Add(child);
        //        }
        //    }
        //    else
        //    {
        //        var id = (int)root.Tag;
        //        var details = departments.Where(t => t.ParentId == id);
        //        foreach (var detail in details)
        //        {
        //            var child = new TreeNode()
        //            {
        //                Text = detail.Name,
        //                Tag = detail.Id,
        //            };
        //            PopulateTree(ref child, departments);
        //            root.Nodes.Add(child);
        //        }
        //    }
        //}

        private void txtName_TextChanged(object sender, EventArgs e)
        {
            if (txtName.Text.Length == 0)
            {
                labelRequiredName.Visible = true;
            }
            else
            {
                labelRequiredName.Visible = false;
            }
        }

        private void BtnSave_Click(object sender, EventArgs e)
        {
            if (ValidateDepartment() == false)
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
                    cmd.CommandText = "DepartmentSave";
                    if(DepartmentId == null)
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", DBNull.Value));
                    }
                    else
                    {
                        cmd.Parameters.Add(new SqlParameter("@Id", DepartmentId));
                    }
                    cmd.Parameters.Add(new SqlParameter("@Name", txtName.Text));
                    cmd.Parameters.Add(new SqlParameter("@Description", txtDescription.Text));
                    if(cbboxDepartmentParent.SelectedValue == DBNull.Value)
                    {
                        cmd.Parameters.Add(new SqlParameter("@ParentId", DBNull.Value));
                    }
                    else
                    {
                        cmd.Parameters.Add(new SqlParameter("@ParentId", (int)cbboxDepartmentParent.SelectedValue));
                    }

                    if(cbboxDepartmentParent.SelectedValue != null && DepartmentId != null && (int)cbboxDepartmentParent.SelectedValue == DepartmentId)
                    {
                        MessageBox.Show("Save Failed. Cannot set the parent department is self");
                        return;
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
                treeDepartment.Nodes.Clear();
                FrmDepartment_Load(sender, e);
                CreateModel();
                BtnCreate.Visible = false;
                btnDelete.Visible = false;
            }
        }

        private void CreateModel()
        {
            DepartmentId = null;
            txtName.Text = null;
            txtDescription.Text = null;
            BtnCreate.Visible = false;
            btnDelete.Visible = false;
        }

        private void BtnCreate_Click(object sender, EventArgs e)
        {
            CreateModel();
        }

        private void btnDelete_Click(object sender, EventArgs e)
        {

            if (DepartmentId == null)
            {
                MessageBox.Show("Không có đối tượng cần xóa");
            }
            else
            {
                DialogResult Notification;
                Notification = MessageBox.Show("Bạn thực sự muốn xóa.Điều này sẽ xóa toàn bộ phòng ban con và các nhân viên trong phòng ban", "Bạn thực sự muốn xóa?", MessageBoxButtons.OKCancel, MessageBoxIcon.Question);
                if (Notification == DialogResult.OK)
                {
                    using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand();
                        cmd.Connection = con;
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.CommandText = "DepartmentDelete";
                        cmd.Parameters.Add(new SqlParameter("@Id", DepartmentId));
                        var x = cmd.ExecuteNonQuery();
                        if (x >= 1)
                        {
                            MessageBox.Show("Delete Success");
                        }
                        else
                        {
                            MessageBox.Show("Delete Failed");
                        }
                        con.Close();
                    }
                    treeDepartment.Nodes.Clear();
                    FrmDepartment_Load(sender, e);
                    CreateModel();
                    BtnCreate.Visible = false;
                    btnDelete.Visible = false;
                }
                
            }
        }

        private void GridDepartment_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            
        }

        private void treeDepartment_AfterSelect(object sender, TreeViewEventArgs e)
        {
            var selectedNode = treeDepartment.SelectedNode;

            var Entity = (int)selectedNode.Tag;

            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DepartmentGetById";
                cmd.Parameters.Add(new SqlParameter("@Id", Entity));
                var result = cmd.ExecuteReader();
                tb.Load(result);
                con.Close();
            }

            if (tb.Rows.Count != 0)
            {
                foreach (DataRow data in tb.Rows)
                {
                    DepartmentId = (int)data["Id"];
                    txtName.Text = data["Name"].ToString();
                    txtDescription.Text = data["Description"].ToString();
                    if(data["ParentId"] == DBNull.Value)
                    {
                        cbboxDepartmentParent.SelectedValue = DBNull.Value;
                    }
                    else
                    {
                        cbboxDepartmentParent.SelectedValue = (int)data["ParentId"];
                    }
                    
                }
                BtnCreate.Visible = true;
                btnDelete.Visible = true;
            }
            else
            {
                MessageBox.Show("Failed Get Department");
            }
        }

        private void groupBox3_Enter(object sender, EventArgs e)
        {

        }
    }
}
