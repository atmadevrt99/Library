using System.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Configuration;
using System.Data;

namespace Library.Student
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string str_userId = Session["Login_id"].ToString();
            SqlCommand cmnd = new SqlCommand("select * from Student_Mster where USER_ID='" + str_userId + "' ", conn);
            SqlDataAdapter daa = new SqlDataAdapter(cmnd);
            DataTable dtt = new DataTable();
            daa.Fill(dtt);
            if (dtt.Rows.Count > 0)
            {
                Response.Redirect("~\\Student\\Home.aspx");
                
            }
            else
            {
                lblUserLogin.Text = Session["Login_name"].ToString();
                if (!IsPostBack)
                {
                    SqlCommand bookCmd = new SqlCommand("SELECT Branch_ID, Branch_name FROM branch_master", conn);
                    SqlDataReader bookReader = bookCmd.ExecuteReader();

                    branchid.DataSource = bookReader;
                    branchid.DataTextField = "Branch_name";
                    branchid.DataValueField = "Branch_ID";
                    branchid.DataBind();
                    branchid.Items.Insert(0, "--please select Branch --");
                    bookReader.Close();


                }
            }
            
        }

        protected void adduser_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string str_U_Id = Session["Login_id"].ToString();
            string str_branchid = branchid.Text;
            string str_mob = txtmbno.Text;
            string str_add = txtaddress.Text;
            string str_city = txtcity.Text;
            string str_pin = txtpincode.Text;
            string str_dob = txtdob.Text;
            string str_gender = selectgender.Text;
            string str_email = txtemail.Text;
            string str_created = Session["Login_name"].ToString();
            SqlCommand cmnd = new SqlCommand("insert into Student_Mster([USER_ID],[Branch_ID],[Mobile],[Address],[City],[Pincode],[DOB],[Gender],[Email],[CREATED_BY],[CREATED_DATE]) " +
                    "values('" + str_U_Id + "','" + str_branchid + "','" + str_mob + "','" + str_add + "','" + str_city + "','" + str_pin + "','" + str_dob + "','" + str_gender + "','" + str_email + "','" + str_created + "',GETDATE())", conn);
            int rowsAffected = cmnd.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                lblMsg.Text = "Added Successfully!";
                lblMsg.ForeColor = Color.Green;
                txtmbno.Text = "";
                txtaddress.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Please enter valid details')</script>");
                lblMsg.Text = "Unable to Add. There is some error!";
                lblMsg.ForeColor = Color.Red;
            }
            conn.Close();
        }
    }
}