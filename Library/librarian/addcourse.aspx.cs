using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Library.librarian
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        
        protected void addcourse_Click(object sender, EventArgs e)
        {
            
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string str_C_Id = txtcourseid.Text;
            string str_C_name = txtcoursename.Text;
            string str_active = txtisactive.Text;
            string str_created = Session["Login_name"].ToString();
            SqlCommand cmd = new SqlCommand("select * from Course_master where C_ID='" + str_C_Id + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Please enter Unique Department Id')</script>");

            }
            else
            {
                SqlCommand cmnd = new SqlCommand("insert into Course_master(C_ID,C_NAME,IsActive,CREATED_BY,CREATED_DATE)" +
                " values('" + str_C_Id + "','" + str_C_name + "','" + str_active + "','" + str_created + "',GETDATE())", conn);
                int rowsAffected = cmnd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    lblMsg.Text = "Added Successfully!";
                    lblMsg.ForeColor = Color.Green;
                    txtcourseid.Text = "";
                    txtcoursename.Text = "";
                }
                else
                {
                    lblMsg.Text = "Unable to Add Book. There is some error!";
                    lblMsg.ForeColor = Color.Red;
                }
            }
            conn.Close();
        }
    }
}