using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace TH5_MasterPage_DB.All_Class
{
    public class cls_connectDB
    {
        public SqlConnection sql_con;
        public String st_con = WebConfigurationManager.ConnectionStrings["Connect_DATN"].ToString();

        public void connect_DB()
        {
            if (sql_con == null)
                sql_con = new SqlConnection(st_con);
            if (sql_con.State == ConnectionState.Closed)
                sql_con.Open();
        }

        public void Close_DB()
        {
            if(sql_con != null)
            {
                sql_con.Close();
                sql_con.Dispose();
            }
        }
    }
}