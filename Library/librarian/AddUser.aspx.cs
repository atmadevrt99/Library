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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            if (!IsPostBack)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select USER_TYPE_ID, USER_TYPE from user_type_master", conn);
                SqlDataReader dr = cmd.ExecuteReader();



                usertypeid.DataSource = dr;
                usertypeid.Items.Clear();
                usertypeid.DataTextField = "USER_TYPE";
                usertypeid.DataValueField = "USER_TYPE_ID";



                usertypeid.DataBind();
                usertypeid.Items.Insert(0, "--please select course--");
                conn.Close();
            }
        }

        protected void adduser_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string str_U_Id = txtuserid.Text;
            string str_U_name = txtusername.Text;
            string str_U_PWD = txtuserpwd.Text;
            string str_U_TYPE = usertypeid.Text;
            string str_active = txtisactive.Text;
            string str_created = Session["Login_name"].ToString(); 
            SqlCommand cmd = new SqlCommand("select * from user_master where USER_ID='" + str_U_Id + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Please enter Unique Id')</script>");

            }
            else
            {
                SqlCommand cmnd = new SqlCommand("insert into user_master(USER_ID,USER_NAME,USER_PWD,USER_TYPE_ID,IsActive,CREATED_BY,CREATED_DATE) " +
                    "values('" + str_U_Id + "','" + str_U_name + "','" + str_U_PWD + "','" + str_U_TYPE + "','" + str_active + "','" + str_created + "',GETDATE())", conn);
                int rowsAffected = cmnd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    lblMsg.Text = "Added Successfully!";
                    lblMsg.ForeColor = Color.Green;
                    txtusername.Text = "";
                    txtuserpwd.Text = "";
                }
                else
                {
                    Response.Write("<script>alert('Please enter valid details')</script>");
                    lblMsg.Text = "Unable to Add. There is some error!";
                    lblMsg.ForeColor = Color.Red;
                }
            }
            conn.Close();
        }
    }
}