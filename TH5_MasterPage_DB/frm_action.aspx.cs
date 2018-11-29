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
    public partial class frm_action : System.Web.UI.Page
    {
        cls_connectDB cls_con = new cls_connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    cls_con.connect_DB();
                    string st_id = Request.QueryString["id"].ToString();
                    txt_Masv.Text = st_id;

                    string st_sql = "select Masv , Tensv, Ngaysinh ,  case when Gioitinh = 1 then N'Nữ' when Gioitinh = 0 then N'Nam' else N'Không có dữ liệu' end,Khoa , Tencn , Email, Dienthoai , Diachi  from tbl_sinhvien, tbl_chuyennganh where tbl_sinhvien.Chuyennganh = tbl_chuyennganh.Macn and Masv = @key ";
                    SqlCommand sqlcm = new SqlCommand(st_sql, cls_con.sql_con);

                    SqlParameter sqlpa = new SqlParameter();
                    sqlpa.Value = st_id;
                    sqlpa.ParameterName = "@key";
                    sqlcm.Parameters.Add(sqlpa);
                    SqlDataReader re = sqlcm.ExecuteReader();
                    re.Read();
                    txt_Ten.Text = re[1].ToString();
                    txt_NS.Text = re[2].ToString();
                    if (re[3].ToString() == "0") rbt_Nam.Checked = true;
                    else rbt_Nu.Checked = true;
                    txt_Khoa.Text = re[4].ToString();
                    txt_CN.Text = re[5].ToString();
                    txt_Email.Text = re[6].ToString();
                    txt_SDT.Text = re[7].ToString();
                    txt_Diachi.Text = re[8].ToString();


                    re.Close();

                } catch (Exception ex)
                {
                    Response.Write("Lỗi:" + ex);
                }
                finally
                {
                    cls_con.Close_DB();
                }
            }
        }
    }
}