using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineManagementSystem
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if(TextBox1.Text.Trim()=="Admin" && TextBox2.Text.Trim()=="Admin123")
            {
                Session["role"] = "admin";
                Response.Redirect("AdminDashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password!!!')</script>");
            }
        }
    }
}