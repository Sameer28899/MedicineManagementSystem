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
    public partial class UserSignUp : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {

                Response.Write("<script>alert('Member Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                signUpNewMember();
            }  
        }

        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from MemberInfo where M_uid='" + TextBox8.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void signUpNewMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO MemberInfo(M_name,M_dob,M_cn,M_mail,M_state,M_city,M_pc,M_fa,M_uid,M_pw,ac_stat) values (@M_name,@M_dob,@M_cn,@M_mail,@M_state,@M_city,@M_pc,@M_fa,@M_uid,@M_pw,@ac_stat)", con);
                cmd.Parameters.AddWithValue("@M_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@M_dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@M_cn", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@M_mail", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@M_state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@M_city", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@M_pc", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@M_fa", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@M_uid", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@M_pw", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@ac_stat", "Pending");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successful. Go to Member Login to Login');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}

