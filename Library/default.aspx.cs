using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login_id"] == null)
            {

            }
            else {
                if (Session["UserType"].ToString() == "Admin")
                {
                    Response.Redirect("~\\librarian\\Home.aspx");
                }
                else if (Session["UserType"].ToString() == "User")
                {
                    Response.Redirect("~\\Student\\Home.aspx");
                }
            }
        }

        protected void lnkbtnLogin_Click(object sender, EventArgs e)
        {
            if (rdolibrary.Checked == true)
            {
                string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                string str_userId = txtuname.Text;
                string str_pwd = txtupass.Text;
                SqlCommand cmd = new SqlCommand("select * from admin_master where ADMIN_NAME='" + str_userId + "' and ADMIN_PWD='" + str_pwd + "'", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["Login_id"] = dt.Rows[0][1].ToString();
                    Session["Login_name"] = dt.Rows[0][2].ToString();
                    Session["UserType"] = "Admin";
                    Response.Redirect("~\\librarian\\Home.aspx");

                }
                else
                {
                    Response.Write("<script>alert('Please enter valid Username and Password')</script>");
                }
            }
            else if (rdosudent.Checked == true) 
            {
                string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                string str_userId = txtuname.Text;
                string str_pwd = txtupass.Text;
                SqlCommand cmd = new SqlCommand("select * from user_master where USER_ID='" + str_userId + "' and USER_PWD='" + str_pwd + "'", conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["Login_id"] = dt.Rows[0][1].ToString();
                    Session["Login_name"] = dt.Rows[0][2].ToString();
                    Session["UserType"] = "User";
                    SqlCommand cmnd = new SqlCommand("select * from Student_Mster where USER_ID='" + str_userId + "' ", conn);
                    SqlDataAdapter daa = new SqlDataAdapter(cmnd);
                    DataTable dtt = new DataTable();
                    daa.Fill(dtt);
                    if (dtt.Rows.Count > 0)
                    {
                        Response.Write("<script>alert('Please Fill this Form First')</script>");
                        Response.Redirect("~\\Student\\Home.aspx");
                    }
                    else
                    {
                        Response.Redirect("~\\Student\\editaccount.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Please enter valid Username and Password')</script>");
                }
            }
            
        }
    }
}