using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.Student
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                string query = "select BOOK_ID,BookName,AUTH_NAME from Book_DETAILS";
                SqlCommand cmd = new SqlCommand(query, conn);
                SqlDataReader reader = cmd.ExecuteReader();

                GridView1.DataSource = reader;
                GridView1.DataBind();
                conn.Close();
            }
        }
    }
}