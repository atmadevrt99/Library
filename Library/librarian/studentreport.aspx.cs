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
    public partial class WebForm12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string query = "SELECT u.[USER_ID], u.[USER_NAME],u.[USER_PWD],s.[Branch_ID],s.[Mobile],s.[Address],s.[City],s.[Pincode],s.[DOB],s.[Gender],s.[Email] FROM [college_db].[dbo].[user_master] u LEFT JOIN [college_db].[dbo].[Student_Mster] s ON u.[USER_ID] = s.[USER_ID] WHERE u.[USER_TYPE_ID] = 2";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader reader = cmd.ExecuteReader();

            gvViewDetails.DataSource = reader;
            gvViewDetails.DataBind();
            conn.Close();
        }
    }
}