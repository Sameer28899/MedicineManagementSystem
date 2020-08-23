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
    public partial class Userlogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Value == "User")
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("select * from MemberInfo where M_uid='" + TextBox1.Text.Trim() + "' AND M_pw='" + TextBox2.Text.Trim() + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Response.Write("<script>alert('Login Successful');</script>");
                            Session["username"] = dr.GetValue(8).ToString();
                            Session["fullname"] = dr.GetValue(0).ToString();
                            Session["S1"] = "user";
                            Session["status"] = dr.GetValue(10).ToString();
                        }
                        Response.Redirect("UserDashboard.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Login credentials');</script>");
                    }

                }
                catch (Exception ex)
                {

                }
            }

            else if (DropDownList1.SelectedItem.Value == "Medical Store")
            {
                try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();

                    }
                    SqlCommand cmd = new SqlCommand("select * from MedicalStoreInfo where S_uid='" + TextBox1.Text.Trim() + "' AND S_pw='" + TextBox2.Text.Trim() + "'", con);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            Response.Write("<script>alert('Login Successful');</script>");
                            Session["username"] = dr.GetValue(7).ToString();
                            Session["fullname"] = dr.GetValue(0).ToString();
                            Session["S1"] = "store";
                            Session["status"] = dr.GetValue(9).ToString();
                        }
                        Response.Redirect("MedicalStoreDashboard.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid Login credentials');</script>");
                    }

                }
                catch (Exception ex)
                {

                }
            }
            else
            {
                Response.Write("<script>alert('Please Select Valid Account Type');</script>");
            }
            
        }
    }
}

