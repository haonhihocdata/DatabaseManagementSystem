using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyNhanSu
{
    public partial class FormEmployeeSalaryDetail : Form
    {
        private EmployeeDetailSalary model = new EmployeeDetailSalary();
        private int Id;
        private static byte[] ByteAvatar;
        private DateTime StartDate;
        private DateTime EndDate;
        private double RealSalary;
        private double TotalBonusP;
        private double TotalPenaltyP;
        private double TotalAdvancedP;
        public FormEmployeeSalaryDetail(int id, DateTime startDate,DateTime endDate)
        {
            InitializeComponent();
            Id = id;
            model.Id = Id;
            StartDate = startDate;
            EndDate = endDate;
        }

        private void CalculationPenaltyAndBonusAndAdvancesAndTotal(double SalaryWorkDay,double Allowance,double InsuranceSociety)
        {
            double TotalBonus = 0.00;
            double TotalPenalty = 0.00;
            double TotalAdvanced = 0.00;

            if (model.Bonus.Count != 0)
            {
                foreach(var item in model.Bonus)
                {
                    TotalBonus = TotalBonus + item.ValueBonus;
                }
            }
            TotalBonusP = TotalBonus;

            if (model.Penaltys.Count != 0)
            {
                foreach (var item in model.Penaltys)
                {
                    TotalPenalty = TotalPenalty + item.ValuePenalty;
                }
            }
            TotalPenaltyP = TotalPenalty;

            if (model.SalaryAdvances.Count != 0)
            {
                foreach (var item in model.SalaryAdvances)
                {
                    TotalAdvanced = TotalAdvanced + item.ValueAdvance;
                }
            }

            TotalAdvancedP = TotalAdvanced;

            lblTotalBonus.Text = "Tổng nhận : "+ string.Format("{0:N0}", TotalBonus) + " VNĐ";
            lblTotalPenalty.Text = "Tổng trừ : " + string.Format("{0:N0}", TotalPenalty) + " VNĐ";
            lblTotalSalaryAdvance.Text = "Tổng trừ : " + string.Format("{0:N0}", TotalAdvanced) + " VNĐ";


            var TotalReturn = SalaryWorkDay + Allowance - InsuranceSociety + TotalBonus - TotalPenalty - TotalAdvanced;
            lblFinalTotal.Text = "Thực nhận : "+ string.Format("{0:N0}", TotalReturn) + " VNĐ";
            RealSalary = TotalReturn;
        }

        private void FrmEmployeeSalaryDetail_Load(object sender, EventArgs e)
        {

            CalendarWork.MinDate = StartDate;
            CalendarWork.MaxDate = EndDate;
            //lấy ra danh sách ngày làm việc
            model.DateWorks = Utilities.DateWorkByEmployee(Id, StartDate, EndDate);

            lblTotalDayWork.Text = "Tổng ngày công : " + model.DateWorks.Count;

            CalendarWork.BoldedDates = model.DateWorks.Select(c => c.DateWorking).ToArray();
            //CalendarWork.SelectionStart = StartDate;
            //CalendarWork.SelectionEnd = EndDate;
            //lấy ra danh sách THƯỞNG
            model.Bonus = Utilities.ListBonusByEmployee(Id, StartDate, EndDate);
            //lấy ra danh sách PHẠT
            model.Penaltys = Utilities.ListPenaltyByEmployee(Id, StartDate, EndDate);
            //lấy ra danh sách ỨNG LƯƠNG
            model.SalaryAdvances = Utilities.ListAdvanceByEmployee(Id, StartDate, EndDate);

            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetBaseEmployee";
                cmd.Parameters.Add(new SqlParameter("@Id", Id));
                var result = cmd.ExecuteReader();
                tb.Load(result);
                con.Close();
            }

            if (tb.Rows.Count != 0)
            {
                GridEmployeeBonus.DataSource = model.Bonus.Select(c=> new { NameBonus=c.NameBonus, ValueBonus=c.ValueBonus,DateBonus=c.DateBonus }).ToList();
                DrgidPenalty.DataSource = model.Penaltys.Select(c => new { NamePenalty = c.NamePenalty, ValuePenalty = c.ValuePenalty, DatePenalty = c.DatePenalty }).ToList();
                DgridAdvanced.DataSource = model.SalaryAdvances.Select(c => new { DateAdvance = c.DateAdvance, ValueAdvance = c.ValueAdvance}).ToList();
                foreach (DataRow data in tb.Rows)
                {
                    model.FullName = data["FullName"].ToString();
                    model.DepartmentName = data["DepartmentName"].ToString();
                    model.Gender = data["Gender"].ToString();
                    model.DayOfBirth = (DateTime)data["DayOfBirth"];
                    model.InsuranceSociety = (double)data["InsuranceSociety"];
                    model.SalaryValue = (double)data["SalaryValue"];
                    model.Allowance = (double)data["Allowance"];

                    if (data["Avatar"] != null && data["Avatar"] != System.DBNull.Value)
                    {
                        Utilities.SetImage((byte[])data["Avatar"], ref Avatar);
                        ByteAvatar = (byte[])data["Avatar"];
                        model.Avatar = (byte[])data["Avatar"];
                    }
                    else
                    {
                        Avatar.Image = null;
                        ByteAvatar = null;
                        model.Avatar = null;
                    }
                    lblIdEmployee.Text = "Mã nhân viên : " + model.Id;
                    lblFullName.Text = "Họ và Tên : " + model.FullName;
                    lblDayOfBirth.Text = "Ngày sinh : " + model.DayOfBirth.ToString("dd/M/yyyy", CultureInfo.InvariantCulture);
                    lblGender.Text = "Giới tính : " + model.Gender.ToString();
                    lblDepartmentName.Text = "Đơn vị,phòng ban : " + model.DepartmentName;
                    lblInsuranceSociety.Text = "Bảo hiểm : " + string.Format("{0:N0}", model.InsuranceSociety) + " VNĐ";
                    lblSalaryBase.Text = "Lương cơ bản : " + string.Format("{0:N0}", model.SalaryValue) + " VNĐ , Phụ cấp : "+ string.Format("{0:N0}", model.Allowance) + " VNĐ";

                    lblTotalDayWorkSalary.Text = "Tổng nhận : "+ string.Format("{0:N0}", model.SalaryValue) + " x " + model.DateWorks.Count +" = " + string.Format("{0:N0}", (model.SalaryValue*model.DateWorks.Count)) + " VNĐ";
                    CalculationPenaltyAndBonusAndAdvancesAndTotal((model.SalaryValue * model.DateWorks.Count), model.Allowance, model.InsuranceSociety);
                }
            }
            else
            {
                MessageBox.Show("Failed Get Salary");
                this.Close();
            }
        }

        private void CalendarWork_DateChanged(object sender, DateRangeEventArgs e)
        {

        }

        private void btnExportExcel_Click(object sender, EventArgs e)
        {
            string LocationExcel = Utilities.GetLocationForExcel();
            if(string.IsNullOrEmpty(LocationExcel))
            {
                return;
            }
            var result = Utilities.ReportSalaryProfilesEmployee(model, LocationExcel,StartDate,EndDate, RealSalary, TotalAdvancedP,TotalBonusP,TotalPenaltyP);
            if (result == true)
            {
                MessageBox.Show("Export Successed");
            }
            else
            {
                MessageBox.Show("Failed to export report");
            }
        }
    }
}
