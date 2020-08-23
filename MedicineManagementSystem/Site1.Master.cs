using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MedicineManagementSystem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    if (string.IsNullOrEmpty((string)Session["S1"]))
                    {
                        LinkButton.Visible = false;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton4.Visible = true;
                        LinkButton5.Visible = true;
                        LinkButton6.Visible = false;

                    }
                    else if (Session["S1"].Equals("about"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = false;
                        LinkButton2.Visible = true;
                        LinkButton4.Visible = true;
                        LinkButton5.Visible = true;
                        LinkButton6.Visible = false;
                    }
                    else if (Session["S1"].Equals("Home"))
                    {
                        LinkButton.Visible = false;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton4.Visible = true;
                        LinkButton5.Visible = true;
                        LinkButton6.Visible = false;
                    }
                    else if (Session["S1"].Equals("Contact"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = false;
                        LinkButton4.Visible = true;
                        LinkButton5.Visible = true;
                        LinkButton6.Visible = false;
                    }
                    else if (Session["S1"].Equals("Login"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton4.Visible = true;
                        LinkButton5.Visible = false;
                        LinkButton6.Visible = false;
                    }
                    else if (Session["S1"].Equals("Sign Up"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton4.Visible = false;
                        LinkButton5.Visible = true;
                        LinkButton6.Visible = false;
                    }
                    else if (Session["S1"].Equals("admin"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton4.Visible = false;
                        LinkButton5.Visible = false;
                        LinkButton6.Visible = true;
                    }
                    else if (Session["S1"].Equals("search"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton4.Visible = true;
                        LinkButton5.Visible = true;
                        LinkButton6.Visible = false;
                    }
                    else if (Session["S1"].Equals("user"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton4.Visible = false;
                        LinkButton5.Visible = false;
                        LinkButton6.Visible = true;
                    }
                    else if (Session["S1"].Equals("store"))
                    {
                        LinkButton.Visible = true;
                        LinkButton1.Visible = true;
                        LinkButton2.Visible = true;
                        LinkButton4.Visible = false;
                        LinkButton5.Visible = false;
                        LinkButton6.Visible = true;
                    }
                }
                catch (Exception E)
                {
                    Response.Write("<script>alert('"+ E.Message +"')</script>");
                }
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["S1"] = "about";
            Response.Redirect("aboutus.aspx");
        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            Session["S1"] = "Home";
            Response.Redirect("Homepage.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["S1"] = "Contact";
            Response.Redirect("contact.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["S1"] = "Login";
            Response.Redirect("Memberlogin.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["S1"] = "Sign Up";
            Response.Redirect("MemberRegistration.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["S1"] = "admin";
            Response.Redirect("Adminlogin.aspx");
        }

        protected void LinkButton6_Click1(object sender, EventArgs e)
        {
            Session["S1"] = "";
            Response.Redirect("Homepage.aspx");
        }
    }
}