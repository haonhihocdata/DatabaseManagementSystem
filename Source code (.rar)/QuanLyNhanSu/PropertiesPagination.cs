using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyNhanSu
{
    public class PropertiesPagination
    {
        public int PageIndex { get; set; }
        public double TotalPage { get; set; }
    }

    public class PaginationRequest
    {
        public int pageIndex { get; set; }
        public int pageSize { get; set; }
    }

    public class ChangePasswordRequest
    {
        public int Id { get; set; }
        public string OldPassword { get; set; }
        public string NewPassword { get; set; }
    }
    public class PaginationEmployeeCaculationSalaryRequest : PaginationRequest
    {
        public string NameSearch { get; set; }
        public int? DepartmentId { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
    }

    public class PaginationEmployeeRequest : PaginationRequest
    {
        public int? DepartmentId { get; set; }
        public string NameSearch { get; set; }
        public bool? IsWorking { get; set; }
    }

    public class PaginationEmployeeBonusRequest : PaginationEmployeeRequest {
        public DateTime? DateBonus { get; set; }
    }

    public class PaginationSalaryAdvanceRequest : PaginationEmployeeRequest
    {
        public DateTime? DateAdvance { get; set; }
    }

    public class PaginationEmployeePenaltyRequest : PaginationEmployeeRequest
    {
        public DateTime? DatePenalty { get; set; }
    }

    public class CheckWorkingRequest
    {
        public int? DepartmentId { get; set; }
        public DateTime DateCheckWorking { get; set; }
        public string NameSearch { get; set; }
    }

    public class EmployeeViewModel
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string Gender { get; set; }
        public string Phone { get; set; }
        public DateTime DayOfBirth { get; set; }
        public long Total { get; set; }
    }

    public class DepartmentVm
    {
        public int Id { get; set; }
        public string Name { get; set; }
        public int? ParentId { get; set; }
        public string Description { get; set; }
        public bool IsUnit { get; set; }
    }

    public class NodeViewModel
    {
        public int? Id { get; set; }
        public string Name { get; set; }
    }

    public class EmployeeCalculationSalaryVm
    {
        public int IdEmployee { get; set; }
        public string FullName { get; set; }
        public string DepartmentName { get; set; }
        public double SalaryValue { get; set; }
        public double AllowanceValue { get; set; }
        public int TotalWork { get; set; }
        public double TotalSalaryBase { get; set; }
        public double InsuranceSociety { get; set; }
        public double BonusValue { get; set; }
        public double PenaltyValue { get; set; }
        public double AdvanceValue { get; set; }
        public double RealSalary { get; set; }
        public long Total { get; set; }
    }

    public class EmployeeBonusViewModel
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public string FullName { get; set; }
        public string DepartmentName { get; set; }
        public DateTime DateBonus { get; set; }
        public string BonusName { get; set; }
        public double ValueBonus { get; set; }
        public long Total { get; set; }
    }


    public class EmployeeAdvanceSalaryViewModel
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public string FullName { get; set; }
        public string DepartmentName { get; set; }
        public DateTime DateAdvance { get; set; }
        public double ValueAdvance { get; set; }
        public long Total { get; set; }
    }

    public class EmployeePenaltyViewModel
    {
        public int Id { get; set; }
        public int EmployeeId { get; set; }
        public string FullName { get; set; }
        public string DepartmentName { get; set; }
        public DateTime DatePenalty{ get; set; }
        public string PenaltyName { get; set; }
        public double ValuePenalty { get; set; }
        public long Total { get; set; }
    }

    public class CheckWorkingVm
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string DepartmentName { get; set; }
        public DateTime CurrentDate { get; set; }
        public bool CheckWorking { get; set; }
    }

    public class CheckWorkingRequestSave
    {
        public int Id { get; set; }
        public double SalaryCurrent { get; set; }
        public DateTime DateWork { get; set; }
        public bool IsWorking { get; set; }
    }
}
