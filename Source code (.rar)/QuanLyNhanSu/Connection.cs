using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QuanLyNhanSu
{
    public static class Connection
    {
        public static Boolean IsManager;
        private const string ManagerConnection = "Data Source=AdamWilling;Initial Catalog=QuanLyNhanSu;User ID=Manager;Password=123456";
        private const string EmployeeConnection = "Data Source=AdamWilling;Initial Catalog=QuanLyNhanSu;Persist Security Info=True;User ID=Employee;Password=123456";
        public static string GetString(Boolean IsManager)
        {            
            if (IsManager == true)
            {
                return ManagerConnection;
            }
            return EmployeeConnection;
        }
    }
}
