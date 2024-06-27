using System;
using System.Collections.Generic;

namespace QuanLyNhanSu
{
    public class EmployeeDetailSalary
    {
        public int Id { get; set; }
        public string FullName { get; set; }
        public string DepartmentName { get; set; }
        public string Gender { get; set; }
        public DateTime DayOfBirth { get; set; }
        public double InsuranceSociety { get; set; }
        public double SalaryValue { get; set; }
        public double Allowance { get; set; }
        public byte[] Avatar { get; set; }
        public List<Bonus> Bonus {get;set;}
        public List<Penalty> Penaltys { get; set; }
        public List<SalaryAdvance> SalaryAdvances { get; set; }
        public List<DateWork> DateWorks { get; set; }
    }

    public class Bonus
    {
        public int Id { get; set; }
        public string NameBonus { get; set; }
        public double ValueBonus { get; set; }  
        public DateTime DateBonus { get; set; }
    }

    public class Penalty
    {
        public int Id { get; set; }
        public string NamePenalty { get; set; }
        public double ValuePenalty { get; set; }
        public DateTime DatePenalty { get; set; }
    }

    public class SalaryAdvance
    {
        public int Id { get; set; }
        public double ValueAdvance { get; set; }
        public DateTime DateAdvance { get; set; }
    }

    public class DateWork
    {
        public int Id { get; set; }
        public DateTime DateWorking { get; set; }
    }
}
