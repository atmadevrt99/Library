using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.librarian
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void adduser_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string str_U_Id = txtusertypeid.Text;
            string str_U_name = txtusertype.Text;
            string str_name = txtusername.Text;
            string str_active = txtisactive.Text;
            string str_created = Session["Login_name"].ToString(); 
            SqlCommand cmd = new SqlCommand("select * from user_type_master where USER_TYPE_ID='" + str_U_Id + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Please enter Unique Book Id')</script>");

            }
            else
            {
                SqlCommand cmnd = new SqlCommand("insert into user_type_master(USER_TYPE_ID,USER_TYPE_ID,USER_TYPE_NAME,IsActive,CREATED_BY,CREATED_DATE) " +
                    "values('" + str_U_Id + "','" + str_U_name + "','" + str_name + "','" + str_active + "','" + str_created + "',GETDATE())", conn);
                int rowsAffected = cmnd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    lblMsg.Text = "Added Successfully!";
                    lblMsg.ForeColor = Color.Green;
                    txtusertypeid.Text = "";
                    txtusertype.Text = "";
                    txtusername.Text = "";
                }
                else
                {
                    lblMsg.Text = "Unable to Add. There is some error!";
                    lblMsg.ForeColor = Color.Red;
                }
            }
            conn.Close();
        }
    }
}