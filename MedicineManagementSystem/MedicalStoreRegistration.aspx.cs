using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace MedicineManagementSystem
{
    public partial class MedicalStoreRegistration : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LinkButton1_Click1(object sender, EventArgs e)
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
                SqlCommand cmd = new SqlCommand("SELECT * from MedicalStoreInfo where M_uid='" + TextBox8.Text.Trim() + "';", con);
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
                SqlCommand cmd = new SqlCommand("INSERT INTO MedicalStoreInfo(S_name,S_cn,S_mail,S_state,S_city,S_pc,S_fa,S_uid,S_pw,ac_stat) values (@S_name,@S_cn,@S_mail,@S_state,@S_city,@S_pc,@S_fa,@S_uid,@S_pw,@ac_stat)", con);
                cmd.Parameters.AddWithValue("@S_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@S_cn", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@S_mail", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@S_state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@S_city", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@S_pc", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@S_fa", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@S_uid", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@S_pw", TextBox9.Text.Trim());
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