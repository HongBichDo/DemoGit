using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using TH5_MasterPage_DB.All_Class;
namespace TH5_MasterPage_DB
{
    public partial class frm_admin_chuyennganh : System.Web.UI.Page
    {
        cls_connectDB cls_con = new cls_connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    cls_con.connect_DB();
                   // string st_sql = "select * from tbl_chuyennganh";

                    load_chuyennganh();



                } catch(Exception ex)
                {
                    Response.Write("Lỗi:" + ex);
                } finally
                {
                    cls_con.Close_DB();
                }
            }
        }

        private void load_chuyennganh()
        {
            string st_sql = "select * from tbl_chuyennganh";
            SqlCommand sqlcm = new SqlCommand(st_sql, cls_con.sql_con);
            SqlDataReader re = sqlcm.ExecuteReader();
            string st_kq = "";
            while (re.Read())
            {
                st_kq = st_kq + "<tr><td>" + re[0].ToString() + "</td><td>" + re[1].ToString() + "</td><td>" + re[2].ToString() + "</td></tr>";
            }
            re.Close();
            lit_cn.Text = st_kq;
        }

    }
}