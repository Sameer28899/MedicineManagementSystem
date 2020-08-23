using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineManagementSystem
{
    public partial class UserYourMedicine : System.Web.UI.Page
    {
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


    }
}