using Microsoft.Office.Interop.Excel;
using OfficeOpenXml;
using OfficeOpenXml.Style;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using app = Microsoft.Office.Interop.Excel.Application;
using Application = System.Windows.Forms.Application;
using DataTable = System.Data.DataTable;

namespace QuanLyNhanSu
{
    public class Utilities
    {
        

        public static void ExporttoExcel(DataGridView data, string DirrectoryPath)
        {
            app obj = new app();
            obj.Application.Workbooks.Add(Type.Missing);
            obj.Columns.ColumnWidth = 25;
            for (int k = 1; k < data.Columns.Count + 1; k++)
            {
                obj.Cells[1, k] = data.Columns[k - 1].HeaderText;
            }
            for (int i = 0; i < data.Rows.Count; i++)
            {
                for (int j = 0; j < data.Columns.Count; j++)
                {
                    if (data.Rows[i].Cells[j].Value != null)
                    {
                        obj.Cells[i + 2, j + 1] = data.Rows[i].Cells[j].Value.ToString();
                    }
                }
            }
            obj.ActiveWorkbook.SaveCopyAs(DirrectoryPath);
            obj.ActiveWorkbook.Saved = true;
        }


        public static bool ReportCalculationSalary(PaginationEmployeeCaculationSalaryRequest request,string DirectoryPath)
        {

            var data = CalculationSalaryEmployee(request);
            if (!data.Any())
            {
                return false;
            }

            string appPath = Path.GetDirectoryName(Application.ExecutablePath);
            string dbPath = appPath + "\\FileTemp\\temp_bang_luong.xlsx";


            string Paths = Path.Combine(appPath, dbPath);

            //string Paths = Path.Combine(Series.MapPath("~/FileTemp"), "temp_tong_hop_ha_tang_internet.xlsx");
            var fileExcelTemp = System.IO.Path.GetFullPath(Paths);

            FileInfo fileTemp = new FileInfo(fileExcelTemp);
            if (!fileTemp.Exists)
            {
                //đưa ra thông báo không có temp
                throw new Exception("Mẫu file báo cáo không tồn tại");
            }
            //file excel output
            //var fileExcelOutput = $"tong_hop_ha_tang_internet_{DateTime.Now.ToString("yyyyMMddHHmmss")}.xlsx";
            //Code export to excel
            using (ExcelPackage package = new ExcelPackage(fileTemp))
            {
                ExcelWorksheet worksheet = package.Workbook.Worksheets["Sheet1"];

                DateTime _today = DateTime.Now;
                worksheet.Cells["E4"].Value = "                           TPHCM, ngày " + _today.Day + " tháng " + _today.Month + " năm " + _today.Year + "";
                worksheet.Cells["E8"].Value = "                     Kỳ báo cáo lương : Từ " + request.StartDate.ToString("dd/MM/yyyy") + " Tới " + request.EndDate.ToString("dd/MM/yyyy");

                var modelCells = worksheet.Cells["A14"];
                var modelRows = 13 + data.Count - 1; 
                string modelRange = "A13:M" + modelRows.ToString();
                var modelTable = worksheet.Cells[modelRange];

                // Assign borders
                modelTable.Style.Border.Top.Style = ExcelBorderStyle.Thin;
                modelTable.Style.Border.Left.Style = ExcelBorderStyle.Thin;
                modelTable.Style.Border.Right.Style = ExcelBorderStyle.Thin;
                modelTable.Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
                //Bắt đầu chạy từ dòng thứ 13
                var i = 13;
                var index = 1;
                foreach (var item in data)
                {
                    worksheet.Cells["A" + i].Value = index;
                    worksheet.Cells["B" + i].Value = item.IdEmployee;
                    worksheet.Cells["C" + i].Value = item.FullName;
                    worksheet.Cells["D" + i].Value = item.DepartmentName;
                    worksheet.Cells["E" + i].Value = string.Format("{0:N0}", item.SalaryValue) + " VNĐ";
                    worksheet.Cells["F" + i].Value = string.Format("{0:N0}", item.AllowanceValue) + " VNĐ";
                    worksheet.Cells["G" + i].Value = item.TotalWork;
                    worksheet.Cells["H" + i].Value = string.Format("{0:N0}", item.TotalSalaryBase) + " VNĐ";
                    worksheet.Cells["I" + i].Value = string.Format("{0:N0}", item.InsuranceSociety) + " VNĐ";
                    worksheet.Cells["J" + i].Value = string.Format("{0:N0}", item.BonusValue) + " VNĐ";
                    worksheet.Cells["K" + i].Value = string.Format("{0:N0}", item.PenaltyValue) + " VNĐ";
                    worksheet.Cells["L" + i].Value = string.Format("{0:N0}", item.AdvanceValue) + " VNĐ";
                    worksheet.Cells["M" + i].Value = string.Format("{0:N0}", item.RealSalary) + " VNĐ";
                    i++;
                    index++;
                }
                Stream stream = File.Create(DirectoryPath);
                package.SaveAs(stream);
                stream.Close();
                return true;
            }
        }


        public static bool ReportSalaryProfilesEmployee(EmployeeDetailSalary model, string DirectoryPath,DateTime StartDate , DateTime EndDate,double RealSalary,double TotalAdvanced,double TotalBonus,double TotalPenalty)
        {
            string appPath = Path.GetDirectoryName(Application.ExecutablePath);
            string dbPath = appPath + "\\FileTemp\\temp_bang_luong_chi_tiet.xlsx";


            string Paths = Path.Combine(appPath, dbPath);

            
            var fileExcelTemp = System.IO.Path.GetFullPath(Paths);

            FileInfo fileTemp = new FileInfo(fileExcelTemp);
            if (!fileTemp.Exists)
            {
                throw new Exception("Mẫu file báo cáo không tồn tại");
            }

            //Code export to excel
            using (ExcelPackage package = new ExcelPackage(fileTemp))
            {
                ExcelWorksheet worksheet = package.Workbook.Worksheets["Sheet1"];

                DateTime _today = DateTime.Now;
                worksheet.Cells["E3"].Value = "                                  TPHCM, ngày " + _today.Day + " tháng " + _today.Month + " năm " + _today.Year + "";
                worksheet.Cells["E8"].Value = "Báo cáo Từ " + StartDate.ToString("dd/MM/yyyy") + " Tới " + EndDate.ToString("dd/MM/yyyy");
                worksheet.Cells["E11"].Value ="Lương thực nhận : "+ string.Format("{0:N0}", RealSalary) + " VNĐ";

                worksheet.Cells["A14"].Value = 1;
                worksheet.Cells["B14"].Value = model.Id;
                worksheet.Cells["C14"].Value = model.FullName;
                worksheet.Cells["D14"].Value = model.DepartmentName;
                worksheet.Cells["E14"].Value = string.Format("{0:N0}", model.InsuranceSociety) + " VNĐ";
                worksheet.Cells["F14"].Value = string.Format("{0:N0}", model.Allowance) + " VNĐ";

                worksheet.Cells["I14"].Value = 1;
                worksheet.Cells["J14"].Value = string.Format("{0:N0}", model.SalaryValue) + " VNĐ";
                worksheet.Cells["K14"].Value = model.DateWorks.Count;
                worksheet.Cells["L14"].Value = string.Format("{0:N0}", (model.SalaryValue* model.DateWorks.Count)) + " VNĐ";

                var modelRowsBonus = 18 + model.Bonus.Count;
                string modelRangeBonus = "A18:C" + modelRowsBonus.ToString();
                var modelTableBonus = worksheet.Cells[modelRangeBonus];

                
                modelTableBonus.Style.Border.Top.Style = ExcelBorderStyle.Thin;
                modelTableBonus.Style.Border.Left.Style = ExcelBorderStyle.Thin;
                modelTableBonus.Style.Border.Right.Style = ExcelBorderStyle.Thin;
                modelTableBonus.Style.Border.Bottom.Style = ExcelBorderStyle.Thin;
                
                var i = 18;
                var indexBonus = 1;
                foreach (var item in model.Bonus)
                {
                    worksheet.Cells["A" + i].Value = indexBonus;
                    worksheet.Cells["B" + i].Value = item.DateBonus.ToString("dd/MM/yyyy");
                    worksheet.Cells["C" + i].Value = string.Format("{0:N0}", item.ValueBonus) + " VNĐ";
                    i++;
                    indexBonus++;
                }

                worksheet.Cells["A" + i].Value = indexBonus;
                worksheet.Cells["B" + i].Value = "Tổng";
                worksheet.Cells["C" + i].Value = string.Format("{0:N0}", TotalBonus) + " VNĐ";

                var modelRowsPenalty = 18 + model.Penaltys.Count;
                string modelRangePenalty = "E18:G" + modelRowsPenalty.ToString();
                var modelTablePenalty = worksheet.Cells[modelRangePenalty];


                modelTablePenalty.Style.Border.Top.Style = ExcelBorderStyle.Thin;
                modelTablePenalty.Style.Border.Left.Style = ExcelBorderStyle.Thin;
                modelTablePenalty.Style.Border.Right.Style = ExcelBorderStyle.Thin;
                modelTablePenalty.Style.Border.Bottom.Style = ExcelBorderStyle.Thin;

                var iP = 18;
                var indexPenalty = 1;
                foreach (var item in model.Penaltys)
                {
                    worksheet.Cells["E" + iP].Value = indexPenalty;
                    worksheet.Cells["F" + iP].Value = item.DatePenalty.ToString("dd/MM/yyyy");
                    worksheet.Cells["G" + iP].Value = string.Format("{0:N0}", item.ValuePenalty) + " VNĐ";
                    iP++;
                    indexPenalty++;
                }

                worksheet.Cells["E" + iP].Value = indexPenalty;
                worksheet.Cells["F" + iP].Value = "Tổng";
                worksheet.Cells["G" + iP].Value = string.Format("{0:N0}", TotalPenalty) + " VNĐ";

                var modelRowsAdvanced = 18 + model.SalaryAdvances.Count;
                string modelRangeAdvanced = "J18:L" + modelRowsAdvanced.ToString();
                var modelTableAdvanced = worksheet.Cells[modelRangeAdvanced];


                modelTableAdvanced.Style.Border.Top.Style = ExcelBorderStyle.Thin;
                modelTableAdvanced.Style.Border.Left.Style = ExcelBorderStyle.Thin;
                modelTableAdvanced.Style.Border.Right.Style = ExcelBorderStyle.Thin;
                modelTableAdvanced.Style.Border.Bottom.Style = ExcelBorderStyle.Thin;

                var iAv = 18;
                var indexAdvanced = 1;
                foreach (var item in model.SalaryAdvances)
                {
                    worksheet.Cells["J" + iAv].Value = indexAdvanced;
                    worksheet.Cells["K" + iAv].Value = item.DateAdvance.ToString("dd/MM/yyyy");
                    worksheet.Cells["L" + iAv].Value = string.Format("{0:N0}", item.ValueAdvance) + " VNĐ";
                    iAv++;
                    indexAdvanced++;
                }

                worksheet.Cells["J" + iAv].Value = indexAdvanced;
                worksheet.Cells["K" + iAv].Value = "Tổng";
                worksheet.Cells["L" + iAv].Value = string.Format("{0:N0}", TotalAdvanced) + " VNĐ";

                Stream stream = File.Create(DirectoryPath);
                package.SaveAs(stream);
                stream.Close();
                return true;
            }
        }



        public static string GetLocationForExcel()
        {
            try
            {
                SaveFileDialog dlg = new SaveFileDialog();
                dlg.Title = "Select Location";
                dlg.Filter = "Excel Worksheets|*.xlsx";
                if (dlg.ShowDialog() == DialogResult.OK)
                {
                    return dlg.FileName.ToString();
                }
                else
                {
                    return null;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
                return null;
            }
        }

        //Get Image
        public static void ImageLocation(ref string ImageLocation, ref PictureBox picture)
        {
            OpenFileDialog dlg = new OpenFileDialog();
            dlg.Filter = "JPG Files (*.jpg)|*.jpg|GIF Files (*.gif)|*.gif|All Files (*.*)|*.*";
            dlg.Title = "Select Student Picture";
            if (dlg.ShowDialog() == DialogResult.OK)
            {
                ImageLocation = dlg.FileName.ToString();
                picture.ImageLocation = ImageLocation;
            }
        }

        //get byte image insert or update
        public static Byte[] ByteForImage(string imageLocation)
        {
            if (string.IsNullOrEmpty(imageLocation))
            {
                return null;
            }
            else
            {
                FileStream fs = new System.IO.FileStream(imageLocation, System.IO.FileMode.Open, System.IO.FileAccess.Read);
                BinaryReader br = new BinaryReader(fs);
                return br.ReadBytes((int)fs.Length);
            }
        }


        //get image from database
        public static void SetImage(byte[] image, ref PictureBox picture)
        {
            byte[] img = image;
            if (img == null || img.Length == 1)
                picture.Image = null;
            else
            {
                MemoryStream ms = new MemoryStream(img);
                picture.Image = Image.FromStream(ms);
            }
        }

        public static PropertiesPagination Pagination<T>(List<T> data, PaginationRequest request) where T : class, new()
        {
            if (data == null || data.Count == 0)
            {
                return new PropertiesPagination
                {
                    PageIndex = 0,
                    TotalPage = 0
                };
            }
            else
            {
                long Total = 0;
                //get value from input data
                foreach (var paramData in data)
                {
                    foreach (PropertyInfo prop in paramData.GetType().GetProperties())
                    {
                        if (prop.Name == "Total")
                        {
                            var total = prop.GetValue(paramData, null);
                            Total = (long)total;
                            break;
                        }
                    }
                }
                //paging
                var paging = Convert.ToDouble(Total / request.pageSize);
                paging = (Total % request.pageSize == 0 ? paging : paging + 1);

                paging = Math.Round(paging, MidpointRounding.AwayFromZero);
                return new PropertiesPagination
                {
                    PageIndex = request.pageIndex,
                    TotalPage = paging
                };
            }
        }
        public static DataTable AllDepartments()
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM Departments";
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            return tb;
        }


        public static List<DateWork> DateWorkByEmployee(int EmployeeId,DateTime StartDate,DateTime EndDate)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetDateWorkByEmployee";
                cmd.Parameters.Add(new SqlParameter("@Id", EmployeeId));
                cmd.Parameters.Add(new SqlParameter("@StartDate", StartDate));
                cmd.Parameters.Add(new SqlParameter("@EndDate", EndDate));
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            List<DateWork> ResultList = new List<DateWork>();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                DateWork item = new DateWork();
                item.Id = (int)tb.Rows[i]["Id"];
                item.DateWorking = (DateTime)tb.Rows[i]["DateWorking"];
                ResultList.Add(item);
            }
            return ResultList;
        }

        public static List<Bonus> ListBonusByEmployee(int EmployeeId, DateTime StartDate, DateTime EndDate)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetBonusByEmployee";
                cmd.Parameters.Add(new SqlParameter("@Id", EmployeeId));
                cmd.Parameters.Add(new SqlParameter("@StartDate", StartDate));
                cmd.Parameters.Add(new SqlParameter("@EndDate", EndDate));
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            List<Bonus> ResultList = new List<Bonus>();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                Bonus item = new Bonus();
                item.Id = (int)tb.Rows[i]["Id"];
                item.NameBonus = tb.Rows[i]["NameBonus"].ToString();
                item.ValueBonus = (double)tb.Rows[i]["ValueBonus"];
                item.DateBonus = (DateTime)tb.Rows[i]["DateBonus"];
                ResultList.Add(item);
            }
            return ResultList;
        }

        public static List<SalaryAdvance> ListAdvanceByEmployee(int EmployeeId, DateTime StartDate, DateTime EndDate)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetAdvanceByEmployee";
                cmd.Parameters.Add(new SqlParameter("@Id", EmployeeId));
                cmd.Parameters.Add(new SqlParameter("@StartDate", StartDate));
                cmd.Parameters.Add(new SqlParameter("@EndDate", EndDate));
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            List<SalaryAdvance> ResultList = new List<SalaryAdvance>();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                SalaryAdvance item = new SalaryAdvance();
                item.Id = (int)tb.Rows[i]["Id"];
                item.DateAdvance = (DateTime)tb.Rows[i]["DateAdvance"];
                item.ValueAdvance = (double)tb.Rows[i]["ValueAdvance"];
                ResultList.Add(item);
            }
            return ResultList;
        }

        public static List<Penalty> ListPenaltyByEmployee(int EmployeeId, DateTime StartDate, DateTime EndDate)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetPenaltyByEmployee";
                cmd.Parameters.Add(new SqlParameter("@Id", EmployeeId));
                cmd.Parameters.Add(new SqlParameter("@StartDate", StartDate));
                cmd.Parameters.Add(new SqlParameter("@EndDate", EndDate));
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            List<Penalty> ResultList = new List<Penalty>();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                Penalty item = new Penalty();
                item.Id = (int)tb.Rows[i]["Id"];
                item.NamePenalty = tb.Rows[i]["NamePenalty"].ToString();
                item.ValuePenalty = (double)tb.Rows[i]["ValuePenalty"];
                item.DatePenalty = (DateTime)tb.Rows[i]["DatePenalty"];
                ResultList.Add(item);
            }
            return ResultList;
        }

        public static DataTable AllSalaryBase(int? DepartmentId)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * From SalaryBases(@DepartmentId)";
                if (DepartmentId == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", DepartmentId));
                }
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            return tb;
        }

        public static int GetIdDepartmentBySalaryId(int SalaryId)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "IdDepartmentBySalaryId";
                cmd.Parameters.Add(new SqlParameter("@Id", SalaryId));
                var result = (int)cmd.ExecuteScalar();
                con.Close();
                return result;
            }
        }

        public static double GetCurrentSalary(int EmployeeId)
        {
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT [dbo].[GetCurrentSalaryByEmployee](@Id)";
                cmd.Parameters.Add(new SqlParameter("@Id", EmployeeId));
                var result = (double)cmd.ExecuteScalar();
                con.Close();
                return result;
            }
        }

        public static DataTable GetEmployeeById(int SalaryId)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EmployeeGetById";
                cmd.Parameters.Add(new SqlParameter("@Id", SalaryId));
                var result = cmd.ExecuteReader();
                tb.Load(result);
                con.Close();
                return tb;
            }
        }

        public static DataTable GetEmployeeBonusById(int Id)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EmployeeBonusGetById";
                cmd.Parameters.Add(new SqlParameter("@Id", Id));
                var result = cmd.ExecuteReader();
                tb.Load(result);
                con.Close();
                return tb;
            }
        }

        public static DataTable GetSalaryAdvanceById(int Id)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "SalaryAdvanceGetById";
                cmd.Parameters.Add(new SqlParameter("@Id", Id));
                var result = cmd.ExecuteReader();
                tb.Load(result);
                con.Close();
                return tb;
            }
        }

        public static DataTable GetEmployeePenaltyById(int Id)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EmployeePenaltyGetById";
                cmd.Parameters.Add(new SqlParameter("@Id", Id));
                var result = cmd.ExecuteReader();
                tb.Load(result);
                con.Close();
                return tb;
            }
        }

        public static List<EmployeeViewModel> Employees(PaginationEmployeeRequest request)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from Employees(	@pageIndex,@pageSize,@DepartmentId,@NameSearch,	@IsWorking)";
                cmd.Parameters.Add(new SqlParameter("@pageIndex", request.pageIndex));
                cmd.Parameters.Add(new SqlParameter("@pageSize", request.pageSize));
                if (request.NameSearch == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", request.NameSearch));
                }
                
                if (request.DepartmentId == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", request.DepartmentId));
                }
                if (request.IsWorking == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@IsWorking", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@IsWorking", request.IsWorking));
                }
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            List<EmployeeViewModel> ResultList = new List<EmployeeViewModel>();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                EmployeeViewModel item = new EmployeeViewModel();
                item.Id = Convert.ToInt32(tb.Rows[i]["Id"]);
                item.FullName = tb.Rows[i]["FullName"].ToString();
                item.Gender = tb.Rows[i]["Gender"].ToString();
                item.Phone = tb.Rows[i]["Phone"].ToString();
                item.DayOfBirth = (DateTime)tb.Rows[i]["DayOfBirth"];
                item.Total = (int)tb.Rows[i]["Total"];
                ResultList.Add(item);
            }
            return ResultList;
        }



        public static List<EmployeeCalculationSalaryVm> CalculationSalaryEmployee(PaginationEmployeeCaculationSalaryRequest request)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from [dbo].[CalculationSalaryEmployee]  (@pageIndex ,@pageSize , @DepartmentId , @StartDate ,@EndDate, @NameSearch) ";
                cmd.Parameters.Add(new SqlParameter("@pageIndex", request.pageIndex));
                cmd.Parameters.Add(new SqlParameter("@pageSize", request.pageSize));
                if (request.DepartmentId == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", request.DepartmentId));
                }
                if (request.NameSearch == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", request.NameSearch));
                }
                cmd.Parameters.Add(new SqlParameter("@StartDate", request.StartDate));
                cmd.Parameters.Add(new SqlParameter("@EndDate", request.EndDate));
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            List<EmployeeCalculationSalaryVm> ResultList = new List<EmployeeCalculationSalaryVm>();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                EmployeeCalculationSalaryVm item = new EmployeeCalculationSalaryVm();
                item.IdEmployee = Convert.ToInt32(tb.Rows[i]["IdEmployee"]);
                item.FullName = tb.Rows[i]["FullName"].ToString();
                item.DepartmentName = tb.Rows[i]["DepartmentName"].ToString();
                item.SalaryValue = (double)tb.Rows[i]["SalaryValue"];
                item.AllowanceValue = (double)tb.Rows[i]["AllowanceValue"];
                item.TotalWork = (int)tb.Rows[i]["TotalWork"];
                item.TotalSalaryBase = (double)tb.Rows[i]["TotalSalaryBase"];
                item.InsuranceSociety = (double)tb.Rows[i]["InsuranceSociety"];
                item.BonusValue = (double)tb.Rows[i]["BonusValue"];
                item.PenaltyValue = (double)tb.Rows[i]["PenaltyValue"];
                item.AdvanceValue = (double)tb.Rows[i]["AdvanceValue"];
                item.RealSalary = (double)tb.Rows[i]["RealSalary"];
                item.Total = (int)tb.Rows[i]["Total"];
                ResultList.Add(item);
            }
            return ResultList;
        }

        public static DataTable CollectionToDataTableDefaultSelect<T>(List<T> data)
        {
            PropertyDescriptorCollection props = TypeDescriptor.GetProperties(typeof(T));
            DataTable table = new DataTable();
            for (int i = 0; i < props.Count; i++)
            {
                PropertyDescriptor prop = props[i];
                table.Columns.Add(prop.Name, Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType);
            }
            object[] values = new object[props.Count];
            foreach (T item in data)
            {
                for (int i = 0; i < values.Length; i++)
                {
                    values[i] = props[i].GetValue(item);
                }
                table.Rows.Add(values);
            }
            return table;
        }

        public static List<NodeViewModel> BuildDropDownlist(List<DepartmentVm> input, int departmentId, int value)
        {
            var root = new List<NodeViewModel>();
            foreach (var department in input.Where(x => x.ParentId == null || x.Id == departmentId).OrderBy(x => x.Name))
            {
                var node = new NodeViewModel()
                {
                    Id = department.Id,
                    Name = department.Name
                };
                root.Add(node);
                var existing = input.Count(x => x.ParentId == department.Id) > 0;
                if (existing)
                {
                    root = BuildDepartmentChildren(root, input, department.Id, "-- ", value);
                }
            }
            return root;
        }
        private static List<NodeViewModel> BuildDepartmentChildren(List<NodeViewModel> root, List<DepartmentVm> input, int departmentId, string prefix, int value)
        {
            foreach (var department in input.Where(x => x.ParentId == departmentId).OrderBy(x => x.Name))
            {
                var node = new NodeViewModel()
                {
                    Id = department.Id,
                    Name = $"{prefix}{department.Name}"
                };
                root.Add(node);
                var existing = input.Count(x => x.ParentId == department.Id) > 0;
                if (existing)
                {
                    root = BuildDepartmentChildren(root, input, department.Id, $"{prefix.Trim()}-- ", value);
                }
            }
            return root;
        }

        public static List<DepartmentVm> Departments()
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM Departments";
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            List<DepartmentVm> ResultList = new List<DepartmentVm>();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                DepartmentVm item = new DepartmentVm();
                item.Id = Convert.ToInt32(tb.Rows[i]["Id"]);
                item.Name = tb.Rows[i]["Name"].ToString();
                if (tb.Rows[i]["ParentId"] != DBNull.Value) {
                    item.ParentId = (int)tb.Rows[i]["ParentId"];
                }
                else
                {
                    item.ParentId = null;
                }
                ResultList.Add(item);
            }
            return ResultList;
        }



        public static List<EmployeeBonusViewModel> EmployeeBonusAll(PaginationEmployeeBonusRequest request)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM EmployeeBonusAll (	@pageIndex ,  @pageSize ,  @DepartmentId ,   @NameSearch ,	@DateBonus )";
                cmd.Parameters.Add(new SqlParameter("@pageIndex", request.pageIndex));
                cmd.Parameters.Add(new SqlParameter("@pageSize", request.pageSize));
                if (request.NameSearch == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", request.NameSearch));
                }

                if (request.DepartmentId == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", request.DepartmentId));
                }

                if (request.DateBonus == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@DateBonus", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@DateBonus", request.DateBonus));
                }

                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            List<EmployeeBonusViewModel> ResultList = new List<EmployeeBonusViewModel>();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                EmployeeBonusViewModel item = new EmployeeBonusViewModel();
                item.Id = Convert.ToInt32(tb.Rows[i]["Id"]);
                item.EmployeeId = Convert.ToInt32(tb.Rows[i]["EmployeeId"]);
                item.FullName = tb.Rows[i]["FullName"].ToString();
                item.DepartmentName = tb.Rows[i]["DepartmentName"].ToString();
                item.DateBonus = (DateTime)tb.Rows[i]["DateBonus"];
                item.BonusName = tb.Rows[i]["BonusName"].ToString();
                item.ValueBonus = (double)tb.Rows[i]["ValueBonus"];
                item.Total = (int)tb.Rows[i]["Total"];
                ResultList.Add(item);
            }
            return ResultList;
        }



        public static List<EmployeeAdvanceSalaryViewModel> SalaryAdvanceAll(PaginationSalaryAdvanceRequest request)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "SELECT * FROM SalaryAdvanceAll (@pageIndex ,@pageSize , @DepartmentId ,  @NameSearch,@DateAdvance)";
                cmd.Parameters.Add(new SqlParameter("@pageIndex", request.pageIndex));
                cmd.Parameters.Add(new SqlParameter("@pageSize", request.pageSize));
                if (request.NameSearch == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", request.NameSearch));
                }

                if (request.DepartmentId == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", request.DepartmentId));
                }

                if (request.DateAdvance == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@DateAdvance", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@DateAdvance", request.DateAdvance));
                }

                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            List<EmployeeAdvanceSalaryViewModel> ResultList = new List<EmployeeAdvanceSalaryViewModel>();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                EmployeeAdvanceSalaryViewModel item = new EmployeeAdvanceSalaryViewModel();
                item.Id = Convert.ToInt32(tb.Rows[i]["Id"]);
                item.EmployeeId = Convert.ToInt32(tb.Rows[i]["EmployeeId"]);
                item.FullName = tb.Rows[i]["FullName"].ToString();
                item.DepartmentName = tb.Rows[i]["DepartmentName"].ToString();
                item.DateAdvance = (DateTime)tb.Rows[i]["DateAdvance"];
                item.ValueAdvance = (double)tb.Rows[i]["ValueAdvance"];
                item.Total = (int)tb.Rows[i]["Total"];
                ResultList.Add(item);
            }
            return ResultList;
        }


        public static List<EmployeePenaltyViewModel> EmployeePenaltyAll(PaginationEmployeePenaltyRequest request)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from EmployeePenaltyAll(@pageIndex, @pageSize ,  @DepartmentId ,  @NameSearch ,	@DatePenalty)";
                cmd.Parameters.Add(new SqlParameter("@pageIndex", request.pageIndex));
                cmd.Parameters.Add(new SqlParameter("@pageSize", request.pageSize));
                if (request.NameSearch == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", request.NameSearch));
                }

                if (request.DepartmentId == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", request.DepartmentId));
                }

                if (request.DatePenalty == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@DatePenalty", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@DatePenalty", request.DatePenalty));
                }

                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            List<EmployeePenaltyViewModel> ResultList = new List<EmployeePenaltyViewModel>();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                EmployeePenaltyViewModel item = new EmployeePenaltyViewModel();
                item.Id = Convert.ToInt32(tb.Rows[i]["Id"]);
                item.EmployeeId = Convert.ToInt32(tb.Rows[i]["EmployeeId"]);
                item.FullName = tb.Rows[i]["FullName"].ToString();
                item.DepartmentName = tb.Rows[i]["DepartmentName"].ToString();
                item.DatePenalty = (DateTime)tb.Rows[i]["DatePenalty"];
                item.PenaltyName = tb.Rows[i]["PenaltyName"].ToString();
                item.ValuePenalty = (double)tb.Rows[i]["ValuePenalty"];
                item.Total = (int)tb.Rows[i]["Total"];
                ResultList.Add(item);
            }
            return ResultList;
        }



        public static List<CheckWorkingVm> CheckWorking(CheckWorkingRequest request)
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetEmployeeForCheckWorking";
                cmd.Parameters.Add(new SqlParameter("@DateCheckWorking", request.DateCheckWorking));
                if (request.NameSearch == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@NameSearch", request.NameSearch));
                }

                if (request.DepartmentId == null)
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", DBNull.Value));
                }
                else
                {
                    cmd.Parameters.Add(new SqlParameter("@DepartmentId", request.DepartmentId));
                }
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            List<CheckWorkingVm> ResultList = new List<CheckWorkingVm>();
            for (int i = 0; i < tb.Rows.Count; i++)
            {
                CheckWorkingVm item = new CheckWorkingVm();
                item.Id = Convert.ToInt32(tb.Rows[i]["Id"]);
                item.FullName = tb.Rows[i]["FullName"].ToString();
                item.DepartmentName = tb.Rows[i]["DepartmentName"].ToString();
                item.CurrentDate = (DateTime)tb.Rows[i]["CurrentDate"];
                item.CheckWorking = (bool)tb.Rows[i]["CheckWorking"];
                ResultList.Add(item);
            }
            return ResultList;
        }


        public static DataTable AllBonus()
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            { 
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from BonusAll";
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            return tb;
        }



        public static DataTable AllPenalty()
        {
            var tb = new DataTable();
            using (SqlConnection con = new SqlConnection(Connection.GetString(Connection.IsManager)))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "select * from PenaltyAll";
                SqlDataAdapter Adapter = new SqlDataAdapter(cmd);
                Adapter.Fill(tb);
                con.Close();
            }
            return tb;
        }
    }
}
