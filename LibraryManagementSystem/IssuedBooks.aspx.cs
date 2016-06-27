using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class IssuedBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label fn = Page.Master.FindControl("lblUserName") as Label;
            if (Request.Cookies["UserName"] != null)
            {
                fn.Text = Request.Cookies["UserName"].Value;
            }
        }
    }
}