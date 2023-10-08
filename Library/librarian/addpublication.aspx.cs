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
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addpublication_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string str_P_Id = txtpid.Text;
            string str_P_name = txtpname.Text;
            string str_P_date = txtpdate.Text;
            string str_active = txtisactive.Text;
            string str_created = Session["Login_name"].ToString();
            SqlCommand cmd = new SqlCommand("select * from Pub_Master where P_ID='" + str_P_Id + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Please enter Unique Department Id')</script>");

            }
            else
            {
                SqlCommand cmnd = new SqlCommand("insert into Pub_Master(P_ID,PUB_NAME,PUB_DATE,IsActive,CREATED_BY,CREATED_DATE) " +
                "values('" + str_P_Id + "','" + str_P_name + "','" + str_P_date + "','" + str_active + "','" + str_created + "',GETDATE())", conn);
                int rowsAffected = cmnd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    lblMsg.Text = "Added Successfully!";
                    lblMsg.ForeColor = Color.Green;
                    txtpid.Text = "";
                    txtpname.Text = "";
                    txtpdate.Text = "";
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