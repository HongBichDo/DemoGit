using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TH5_MasterPage_DB
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string st_name, st_pass;
            st_name = txt_Name.Text.Trim();
            st_pass = txt_Pass.Text.Trim();
            if (st_name == "admin" && st_pass == "1234")
            {
                Response.Redirect("Home.aspx?tendangnhap=" + st_name);
            }
        }

      
    }
}