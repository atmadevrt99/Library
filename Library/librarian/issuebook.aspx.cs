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
    public partial class WebForm9 : System.Web.UI.Page
    {
        

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            using (SqlConnection conn = new SqlConnection(connStr))
            {
                conn.Open();
                string str_U_Id = search.Text;
                issue_user_id.Text = str_U_Id;

                string userQuery = "SELECT u.[USER_ID], u.[USER_NAME], s.[Branch_ID], s.[Mobile] FROM [college_db].[dbo].[user_master] u LEFT JOIN [college_db].[dbo].[Student_Mster] s ON u.[USER_ID] = s.[USER_ID] WHERE u.[USER_ID] = '" + str_U_Id + "'";

                
                string issuedBooksQuery = "SELECT i.[BOOK_ID], b.[BookName], i.[USER_ID], i.[ISSUE_DATE], i.[RETURN_DATE], i.[PENALTY_AMOUNT] FROM Issue_Details i LEFT JOIN Book_DETAILS b ON i.[BOOK_ID] = b.[BOOK_ID] LEFT JOIN user_master u ON i.[USER_ID] = u.[USER_ID] WHERE i.[USER_ID] = '" + str_U_Id + "'";

                using (SqlCommand cmd = new SqlCommand(userQuery, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        gvViewDetailsU.DataSource = reader;
                        gvViewDetailsU.DataBind();
                    }
                }

                using (SqlCommand cmd1 = new SqlCommand(issuedBooksQuery, conn))
                {
                    using (SqlDataReader reader1 = cmd1.ExecuteReader())
                    {
                        GridViewIssued.DataSource = reader1;
                        GridViewIssued.DataBind();

                        int issuedBookCount = GridViewIssued.Rows.Count;
                        if (issuedBookCount > 3)
                        {
                            issuedBooksLabel.Text = "You have issued more than 3 books. Please return some books before issuing more.";
                        }
                        else
                        {
                            issuedBooksLabel.Text = string.Empty;
                        }
                    }
                }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);

            if (!IsPostBack)
            {
                conn.Open();
                
                SqlCommand bookCmd = new SqlCommand("SELECT BOOK_ID, BookName FROM Book_DETAILS", conn); 
                SqlDataReader bookReader = bookCmd.ExecuteReader();

                bookid.DataSource = bookReader; 
                bookid.DataTextField = "BookName";
                bookid.DataValueField = "BOOK_ID";
                bookid.DataBind();
                bookid.Items.Insert(0, new ListItem("--Please Select Book--", ""));
                bookReader.Close();
                conn.Close();
            }
        }


        
        protected void issuebook_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["globalconnectionstring"].ConnectionString;
            SqlConnection conn = new SqlConnection(connStr);
            conn.Open();
            string str_User_Id = search.Text;
            string str_B_Id = bookid.Text;
            string str_R_date = txtreturndate.Text;
            string str_created = Session["Login_name"].ToString();
            SqlCommand cmnd = new SqlCommand("insert into Issue_Details(BOOK_ID,USER_ID,ISSUE_DATE,RETURN_DATE,CREATED_BY,CREATED_DATE) " +
                    "values('" + str_B_Id + "','" + str_User_Id + "',GETDATE(),'" + str_R_date + "','" + str_created + "',GETDATE())", conn);
            int rowsAffected = cmnd.ExecuteNonQuery();
            if (rowsAffected > 0)
            {
                lblMsg.Text = "Issued Successfully!";
                lblMsg.ForeColor = Color.Green;
            }
            else
            {

                lblMsg.Text = "Unable to Issue. There is some error!";
                lblMsg.ForeColor = Color.Red;
            }
            string issuedBooksQuery = "SELECT i.[I_ID],i.[BOOK_ID], b.[BookName], i.[USER_ID], i.[ISSUE_DATE], i.[RETURN_DATE], i.[PENALTY_AMOUNT] FROM Issue_Details i LEFT JOIN Book_DETAILS b ON i.[BOOK_ID] = b.[BOOK_ID] LEFT JOIN user_master u ON i.[USER_ID] = u.[USER_ID] WHERE i.[USER_ID] = '" + str_User_Id + "'";

            using (SqlCommand cmd = new SqlCommand(issuedBooksQuery, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    GridViewIssued.DataSource = reader;
                    GridViewIssued.DataBind();
                }
            }
            conn.Close();
        }
    }
}