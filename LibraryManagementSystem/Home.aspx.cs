using System;
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
                if (Request.Cookies["Role"] != null)
                {
                    role = Request.Cookies["Role"].Value;

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
                   
                if(Request.Cookies["UserName"]!=null)
                {
                    fn.Text = Request.Cookies["UserName"].Value;
                }
            }
                
                
            }
        }

       
    }
