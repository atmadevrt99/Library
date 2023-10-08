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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string str_U_Id = Session["Login_id"].ToString();
            string query = "select USER_ID,USER_NAME,USER_PWD,USER_TYPE_ID from user_master where USER_ID='" + str_U_Id + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader reader = cmd.ExecuteReader();

            gvViewDetails.DataSource = reader;
            gvViewDetails.DataBind();
            conn.Close();
        }
    }
}