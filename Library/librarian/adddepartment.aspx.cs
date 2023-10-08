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
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            if (!IsPostBack)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select C_ID, C_NAME from Course_master", conn);
                SqlDataReader dr = cmd.ExecuteReader();



                courseid.DataSource = dr;
                courseid.Items.Clear();
                courseid.DataTextField = "C_NAME";
                courseid.DataValueField = "C_ID";


                courseid.DataBind();
                courseid.Items.Insert(0, "--please select course--");
                conn.Close();
            }


            
        }

        protected void courseid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void adddepartmenr_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string str_D_Id = txtdepartmentid.Text;
            string str_D_name = txtdepartmentname.Text;
            string str_C_Id = courseid.Text;
            string str_active = txtisactive.Text;
            string str_created = Session["Login_name"].ToString();
            SqlCommand cmd = new SqlCommand("select * from Department_master where D_ID='" + str_D_Id + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Please enter Unique Department Id')</script>");

            }
            else
            {                
                SqlCommand cmnd = new SqlCommand("insert into Department_master(D_ID,D_NAME,C_ID,IsActive,CREATED_BY,CREATED_DATE) " +
                    "values('" + str_D_Id + "','" + str_D_name + "','" + str_C_Id + "','" + str_active + "','" + str_created + "',GETDATE())", conn);
                int rowsAffected = cmnd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    lblMsg.Text = "Department Added Successfully!";
                    lblMsg.ForeColor = Color.Green;
                    txtdepartmentid.Text = "";
                    txtdepartmentname.Text = "";
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