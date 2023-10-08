using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.librarian
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string query = "SELECT u.[USER_ID], u.[USER_NAME],u.[USER_PWD],f.[Branch_ID],f.[Mobile],f.[Address],f.[City],f.[Pincode],f.[DOB],f.[Gender],f.[Email] FROM user_master u LEFT JOIN Faculty_Mster f ON u.[USER_ID] = f.[USER_ID] WHERE u.[USER_TYPE_ID] = 3";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader reader = cmd.ExecuteReader();

            gvViewDetails.DataSource = reader;
            gvViewDetails.DataBind();
            conn.Close();
        }
    }
}