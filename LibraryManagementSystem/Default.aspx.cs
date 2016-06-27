﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string role;
            if (!Page.IsCrossPagePostBack)
            {

                Label fn = Page.Master.FindControl("lblUserName") as Label;
                if (Session["role"] != null)
                {
                    role = Session["role"].ToString();

                    if (role == "Admin" || role == "Staff")
                    {
                        AdminPanel.Visible = true;
                        UserPanel.Visible = false;
                    }
                    else
                    {
                        UserPanel.Visible = true;

                        AdminPanel.Visible = false;
                    }
                }
                   
                if(Session["name"]!=null)
                {
                    fn.Text = Session["name"].ToString();
                }
            }
                
                
            }
        }

       
    }
