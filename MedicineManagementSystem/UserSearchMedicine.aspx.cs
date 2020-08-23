using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineManagementSystem
{
    public partial class UserSearchMedicine : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            getuserstatus();
            try
            {
                if (Session["S1"].Equals(" "))
                {
                    LinkButton6.Text = " ";
                }
                else if (Session["S1"].Equals("user"))
                {
                    LinkButton6.Text = "Welcome," + Session["fullname"].ToString();
                    Label1.Text = Session["status"].ToString();
                }
            }
            catch (Exception E)
            {
                Response.Write("<script>alert('" + E.Message + "');</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserEditProfile.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserSearchMedicine.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserYourMedicine.aspx");
        }

        void getuserstatus()
        {
            Label1.Text = Session["status"].ToString();

            if (Session["status"].ToString().Trim() == "Active")
            {
                Label1.Attributes.Add("class", "badge badge-pill badge-success");
            }
            else if (Session["status"].ToString().Trim() == "Pending")
            {
                Label1.Attributes.Add("class", "badge badge-pill badge-warning");
            }
            else if (Session["status"].ToString().Trim() == "Deactive")
            {
                Label1.Attributes.Add("class", "badge badge-pill badge-danger");
            }
            else
            {
                Label1.Attributes.Add("class", "badge badge-pill badge-info");
            }
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from StoreMedicineInfo where med_name='" + TextBox1.Text.Trim() + "'", con);
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}