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
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            if (!IsPostBack)
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select P_ID, PUB_NAME from Pub_Master", conn);
                SqlDataReader dr = cmd.ExecuteReader();



                publicationid.DataSource = dr;
                publicationid.Items.Clear();
                publicationid.DataTextField = "PUB_NAME";
                publicationid.DataValueField = "P_ID";


                publicationid.DataBind();
                publicationid.Items.Insert(0, "--please select--");
                conn.Close();
            }
        }

        protected void publicationid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void addbook_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string str_B_Id = txtbookid.Text;
            string str_B_name = txtbookname.Text;
            string str_B_A = txtauthor.Text;
            string str_pub = publicationid.Text;
            string str_book_Q = txttotalbook.Text;
            string str_active = txtisactive.Text;
            string str_created = Session["Login_name"].ToString();
            SqlCommand cmd = new SqlCommand("select * from Book_DETAILS where BOOK_ID='" + str_B_Id + "'", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Please enter Unique Book Id')</script>");

            }
            else
            {
                SqlCommand cmnd = new SqlCommand("insert into Book_DETAILS(BOOK_ID,BookName,AUTH_NAME,P_ID,TOTAL_BOOK,IsActive,CREATED_BY,CREATED_DATE) " +
                    "values('" + str_B_Id + "','" + str_B_name + "','" + str_B_A + "','" + str_pub + "','" + str_book_Q + "','" + str_active + "','" + str_created + "',GETDATE())", conn);
                int rowsAffected = cmnd.ExecuteNonQuery();
                if (rowsAffected > 0)
                {
                    lblMsg.Text = "Added Successfully!";
                    lblMsg.ForeColor = Color.Green;
                    txtbookname.Text = "";
                    txtbookid.Text = "";
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