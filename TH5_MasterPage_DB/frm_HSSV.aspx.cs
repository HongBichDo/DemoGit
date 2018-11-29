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
    public partial class frm_HSSV : System.Web.UI.Page
    {
        cls_connectDB cls_con = new cls_connectDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    cls_con.connect_DB();
                    string st_sql = " select Masv , Tensv, Ngaysinh ,  case when Gioitinh = 1 then N'Nữ' when Gioitinh = 0 then N'Nam' else N'Không có dữ liệu' end,Khoa , Tencn , Email, Dienthoai , Diachi  from tbl_sinhvien, tbl_chuyennganh where tbl_sinhvien.Chuyennganh = tbl_chuyennganh.Macn order by Masv asc";
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
                            + re[7].ToString() + "</td><td>"
                            +re[8].ToString() + "</td> <td><a href= 'frm_action.aspx?id=" + re[0].ToString() + "'> View </td></tr>";
                    }
                    re.Close();
                    lit_Kq.Text = st_kq;

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

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            try
            {
                cls_con.connect_DB();
                string st_key = txt_Key.Text.Trim().ToLower();
                string st_sql = "select Masv , Tensv, Ngaysinh ,  case when Gioitinh = 1 then N'Nữ' when Gioitinh = 0 then N'Nam' else N'Không có dữ liệu' end,Khoa , Tencn , Email, Dienthoai , Diachi  from tbl_sinhvien, tbl_chuyennganh where tbl_sinhvien.Chuyennganh = tbl_chuyennganh.Macn and Masv like '%'  +@key+  '%' or LOWER (Tensv) like N'%'  +@key+  '%' order by Masv";
                SqlCommand sqlcm = new SqlCommand(st_sql, cls_con.sql_con);

                SqlParameter sqlpa = new SqlParameter();
                sqlpa.Value = st_key;
                sqlpa.ParameterName = "@key";
                sqlcm.Parameters.Add(sqlpa);

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
                        + re[7].ToString() + "</td><td>"
                       
                        + re[8].ToString() + "</td> <td><a href= 'frm_action.aspx?id="+ re[0].ToString() + "'> View </td></tr>";
                }
                re.Close();
                lit_Kq.Text = st_kq;

                if (i == 0)
                {
                    lbl_Search.Text = "Không tìm thấy";
                }
                else
                {
                    lbl_Search.Text = "thông tin cần tìm kiếm !" + i + "bản ghi phù hợp ";
                }


            }
            catch (Exception ex)
            {
                Response.Write("Lối:" + ex);
            }
            finally
            {
                cls_con.Close_DB();
            }
        }
    }
}