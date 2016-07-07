using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class EditDelUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Label fn = Page.Master.FindControl("lblUserName") as Label;
                if (Session["name"] != null)
                {
                    fn.Text = Session["name"].ToString();
                }
            }
        }
    }
}