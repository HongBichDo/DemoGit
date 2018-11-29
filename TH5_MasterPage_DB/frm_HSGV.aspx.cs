using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using TH5_MasterPage_DB.All_Class;
namespace TH5_MasterPage_DB
{
    public partial class frm_HSGV : System.Web.UI.Page
    {
        cls_connectDB cls_con = new cls_connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    cls_con.connect_DB();
                    string st_sql = "select Magv, Tengv, Namsinh,case when Gioitinh = 1 then N'Nữ' when Gioitinh = 0 then N'Nam' end, Hocvi, Email, Dienthoai, Diachi from tbl_giangvien order by Magv asc";
                    SqlCommand sqlcm = new SqlCommand(st_sql, cls_con.sql_con);
                    SqlDataReader re = sqlcm.ExecuteReader();

                    byte i = 0;
                    string st_kq = "";
                    while (re.Read())
                    {
                        i++;
                        st_kq = st_kq + "<tr><td>" + i + "</td><td>"
                            + re[0].ToString() + "</td><td>"
                            + re[1].ToString() + "</td><td>"
                            + re[2].ToString() + "</td><td>"
                            + re[3].ToString() + "</td><td>"
                            + re[4].ToString() + "</td><td>"
                            + re[5].ToString() + "</td><td>"
                            + re[6].ToString() + "</td><td>"
                            + re[7].ToString() + "</td></tr>";
                    }
                    re.Close();
                    lit_kq.Text = st_kq;

                }
                catch (Exception ex)
                {
                    Response.Write("loi" + ex);
                }
                finally
                {
                    cls_con.Close_DB();
                }
            }
        }
    }
}