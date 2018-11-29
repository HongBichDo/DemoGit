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
    public partial class Home : System.Web.UI.Page
    {

        cls_connectDB cls_con = new cls_connectDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                try
                {
                    cls_con.connect_DB(); // mowr CSDL
                    Response.Write("ket noi thanh cong");

                    string st_sql = " select count(Masv) from tbl_sinhvien";
                    // khai bao su dung doi tuong sqlCommand
                    SqlCommand sqlcm = new SqlCommand();
                    sqlcm.Connection = cls_con.sql_con;
                    sqlcm.CommandType = CommandType.Text;
                    sqlcm.CommandText = st_sql;

                    // su dung phuong thuc der ay gia tri

                    int soSV = (int)sqlcm.ExecuteScalar();
                    lbl_SumSv.Text = soSV.ToString();

                    // thong ke so do an
                    st_sql = "select count(Masv) from tbl_doan";
                    sqlcm = new SqlCommand(st_sql, cls_con.sql_con);
                    int soDA = (int)sqlcm.ExecuteScalar();
                    lbl_SumDA.Text = soDA.ToString();
                    //select count(Magv) from tbl_giangvien

                    // thong ke so GV
                    st_sql = "select count(Magv) from tbl_giangvien";
                    sqlcm = new SqlCommand(st_sql, cls_con.sql_con);
                    int soGV = (int)sqlcm.ExecuteScalar();
                    lbl_SumGV.Text = soGV.ToString();

                    // thong ke so GV
                    st_sql = "select count(Macn) from tbl_chuyennganh";
                    sqlcm = new SqlCommand(st_sql, cls_con.sql_con);
                    int soCN = (int)sqlcm.ExecuteScalar();
                    lbl_sumCN.Text = soCN.ToString();

                    // diem < 7
                    st_sql = "select count(Masv) from tbl_doan where Diem <= 7";
                    sqlcm = new SqlCommand(st_sql, cls_con.sql_con);
                    int diem7 = (int)sqlcm.ExecuteScalar();
                    Label1.Text = diem7.ToString();

                    // diem  7 -8
                    st_sql = "select count(Masv) from tbl_doan where Diem between 7 and 8";
                    sqlcm = new SqlCommand(st_sql, cls_con.sql_con);
                    int diem8 = (int)sqlcm.ExecuteScalar();
                    Label2.Text = diem8.ToString();

                    // diem  8 - 9
                    st_sql = "select count(Masv) from tbl_doan where Diem between 8 and 9";
                    sqlcm = new SqlCommand(st_sql, cls_con.sql_con);
                    int diem9 = (int)sqlcm.ExecuteScalar();
                    Label3.Text = diem9.ToString();

                    // diem  9 - 10
                    st_sql = "select count(Masv) from tbl_doan where Diem between 9 and 10";
                    sqlcm = new SqlCommand(st_sql, cls_con.sql_con);
                    int diem10 = (int)sqlcm.ExecuteScalar();
                    Label4.Text = diem10.ToString();

                    // hiển thị danh sách sinh viên


                }
                catch (Exception ex)
                {
                    Response.Write("Loi:" + ex);
                }

                finally
                {
                    cls_con.Close_DB();
                }
            }
        }
    }
}