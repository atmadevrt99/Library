using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library.Student
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Login_id"] != null)
            {
                
                lblUserLogin.Text = "Welcome &nbsp" + Session["Login_name"].ToString();
            }
            else
            {
                Response.Redirect("~//default.aspx");
            }
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["Login_id"] = null;

            Session["Login_name"] = null;
            Session["UserType"] = null;
            Response.Redirect("~//default.aspx");
        }
    }
}