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
    public partial class WebForm8 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            if (!IsPostBack)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select D_ID,D_NAME from Department_master", conn);
                SqlDataReader dr = cmd.ExecuteReader();



                departmentid.DataSource = dr;
                departmentid.Items.Clear();
                departmentid.DataTextField = "D_NAME";
                departmentid.DataValueField = "D_ID";


                departmentid.DataBind();
                departmentid.Items.Insert(0, "--please select course--");
                conn.Close();
            }
        }

        protected void departmentid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void addbranch_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string str_B_Id = txtbranchid.Text;
            string str_D_Id = departmentid.Text;
            string str_B_name = txtbranchname.Text;
            string str_active = txtisactive.Text;
            string str_created = Session["Login_name"].ToString();
            SqlCommand cmd = new SqlCommand("select * from branch_master where Branch_ID='" + str_B_Id + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Please enter Unique Department Id')</script>");

            }
            else
            {
                SqlCommand cmnd = new SqlCommand("insert into branch_master(Branch_ID,D_ID,Branch_NAME,IsActive,CREATED_BY,CREATED_DATE) " +
                "values('" + str_B_Id + "','" + str_D_Id + "','" + str_B_name + "',' " + str_active + "',' " + str_created + "',GETDATE())", conn);
                int rowsAffected = cmnd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    lblMsg.Text = "Department Added Successfully!";
                    lblMsg.ForeColor = Color.Green;
                    txtbranchid.Text = "";
                    txtbranchname.Text = "";
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