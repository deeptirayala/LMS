﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lbtnSignOut_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("Login.aspx", true);
        }
    }
}