using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyNhanSu
{
    public delegate void SendLogin(string FullNameValue, int EmployeeId);
    public partial class FormMain : Form
    {
        private Button currentButton;
        private Random random;
        private int tempIndex;
        private Form activeForm;
        private int Id;
        public FormMain()
        {
            InitializeComponent();
            this.IsMdiContainer = true;
            random = new Random();
            btnCloseChildForm.Visible = false;
        }

        private void SetCurentEmployee(string FullNameValue, int EmployeeId) //get values receive form frmlogin
        {
            string prefix = "Xin chào bạn : " + FullNameValue + "  ";
            linkEmployeeLogin.Text = prefix + "Đăng xuất";
            linkEmployeeLogin.LinkArea = new LinkArea(prefix.Length, linkEmployeeLogin.Text.Length - prefix.Length);
            linkEmployeeLogin.Visible = true;
            BtnLogin.Visible = false;
            btnCloseChildForm.Visible = false;
            Login();
            lblTitle.Text = "Trang chủ";
            Id = EmployeeId;
        }

        private void Logout()
        {
            ModuleBonus.Visible = false;
            ModuleEmployeePenalty.Visible = false;
            ModuleBonusEmployee.Visible = false;
            ModulePenalty.Visible = false;
            ModuleSalary.Visible = false;
            ModuleWork.Visible = false;
            ModuleDepartment.Visible = false;
            ModuleContract.Visible = false;
            ModuleCalculationSalary.Visible = false;
            ModuleSalaryAdvance.Visible = false;
            ModuleEmployee.Visible = false;
            BtnLogin.Visible = true;
        }

        private void OpenChildForm(Form childForm, object btnSender)
        {

            if (activeForm != null)
            {
                activeForm.Close();
            }
            ActivateButton(btnSender);
            //DisnableButton();
            btnCloseChildForm.Visible = true;
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.MdiParent = this;
            childForm.Dock = DockStyle.Fill;
            this.panelDesktopPane.Controls.Add(childForm);
            this.panelDesktopPane.Tag = childForm;
            childForm.Show();
            lblTitle.Text = childForm.Text;


        }

        private void btnCloseChildForm_Click(object sender, EventArgs e)
        {
            if (activeForm != null)
            {
                activeForm.Close();
            }
            Reset();
        }

        private void Reset()
        {
            DisnableButton();
            lblTitle.Text = "Trang chủ";
            /*
            panelTitleBar.BackColor = Color.FromArgb(0, 150, 136);
            panelLogo.BackColor = Color.FromArgb(39, 39, 58);
            */
            currentButton = null;
            btnCloseChildForm.Visible = false;
        }


        private Color SelectThemeColor()
        {
            int index = random.Next(ThemeColor.ColorList.Count);
            while (tempIndex == index)
            {
                index = random.Next(ThemeColor.ColorList.Count);
            }

            string color = ThemeColor.ColorList[index];
            return ColorTranslator.FromHtml(color);
        }

        private void DisnableButton()
        {
            foreach (Control previousBtn in panelMenu.Controls)
            {
                if (previousBtn.GetType() == typeof(Button))
                {
                    previousBtn.BackColor = Color.FromArgb(123, 162, 108);
                    previousBtn.ForeColor = Color.FromArgb(255, 255, 255);
                }
            }
        }

        private void OpenChildFormLogin(Form childForm, object btnSender)
        {

            if (activeForm != null)
            {
                activeForm.Close();
            }
            //ActivateButton(btnSender);
            DisnableButton();
            btnCloseChildForm.Visible = true;
            activeForm = childForm;
            childForm.TopLevel = false;
            childForm.MdiParent = this;
            childForm.Dock = DockStyle.Fill;
            this.panelDesktopPane.Controls.Add(childForm);
            this.panelDesktopPane.Tag = childForm;
            childForm.Show();
            lblTitle.Text = childForm.Text;
        }



        private void ActivateButton(object btnSender)
        {
            if (btnSender != null)
            {
                if (currentButton != (Button)btnSender)
                {
                    DisnableButton();
                    Color color = SelectThemeColor();
                    currentButton = (Button)btnSender;
                    currentButton.BackColor = color;
                    currentButton.ForeColor = Color.White;
                    currentButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 8, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
                    btnCloseChildForm.Visible = true;
                }
            }
        }

        private void Login()
        {
            ModuleContract.Visible = true;
            ModuleBonus.Visible = true;
            ModuleEmployeePenalty.Visible = true;
            ModuleBonusEmployee.Visible = true;
            ModulePenalty.Visible = true;
            ModuleSalary.Visible = true;
            ModuleWork.Visible = true;
            ModuleDepartment.Visible = true;
            ModuleCalculationSalary.Visible = true;
            ModuleSalaryAdvance.Visible = true;
            ModuleEmployee.Visible = true;
            BtnLogin.Visible = false;
            if (!Connection.IsManager)
            {
                ModuleWork.Visible = false;
                ModuleCalculationSalary.Visible = false;
                ModuleSalaryAdvance.Visible = false;
            }
        }

        private void ModuleEmployee_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FormEmployee(), sender);
        }

        private void ModuleDepartment_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FormDepartment(), sender);
        }

        private void ModuleBonus_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FormBonus(), sender);
        }

        private void ModulePenalty_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FormPenalty(), sender);
        }

        private void ModuleContract_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FormChangePassword(Id), sender);
        }

        private void ModuleSalary_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FormSalaryBase(), sender);
        }

        private void ModuleWork_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FormManagerWorking(), sender);
        }
        

        private void ModuleBonusEmployee_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FormEmployeeBonus(), sender);
        }

        //phạt
        private void ModuleBonusPenalty_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FormEmployeePenalty(), sender);
        }

        private void ModuleCalculationSalary_Click(object sender, EventArgs e)
        {
            OpenChildForm(new FormCaculationSalary(), sender);
        }

        private void btnCloseChildForm_Click_1(object sender, EventArgs e)
        {
            if (activeForm != null)
            {
                activeForm.Close();
            }
            
            Reset();
        }

        private void BtnLogin_Click(object sender, EventArgs e)
        {
            OpenChildFormLogin(new FormLogin(SetCurentEmployee), sender);
            btnCloseChildForm.Hide();
            BtnLogin.Hide();
        }

        private void FrmMain_Load(object sender, EventArgs e)
        {

        }

        private void linkEmployeeLogin_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            linkEmployeeLogin.Visible = false;
            BtnLogin.Visible = true;
            Logout();
            if (activeForm != null)
            {
                activeForm.Close();
            }
            linkEmployeeLogin.Links.Clear();
            Reset();
        }

        private void ModuleSalaryAdvance_Click(object sender, EventArgs e)
        {
            OpenChildFormLogin(new FormSalaryAdvance(), sender);
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void ModuleBonusUser_Click(object sender, EventArgs e)
        {

        }

        private void ModuleUser_Click(object sender, EventArgs e)
        {

        }
    }
}
