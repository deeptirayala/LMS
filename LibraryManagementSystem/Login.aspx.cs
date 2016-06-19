using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Master.FindControl("pn1").Visible = false;
            Master.FindControl("pn2").Visible = false;

        }
       
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //System.Web.Security.FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
        }
    }
}