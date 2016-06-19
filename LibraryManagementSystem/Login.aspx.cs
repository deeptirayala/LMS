using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.Security;
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
            using (deeptiEntities db = new deeptiEntities())
            {


                var rolequery = (from u in db.Registrations
                                 where u.UserName == txtUserName.Text && u.Password == txtPassword.Text
                                 select u.Role).FirstOrDefault();
                if (rolequery != null)
                {

                    if (cbRemember.Checked)
                    {
                        Response.Cookies["UserName"].Value = txtUserName.Text;
                        Response.Cookies["Password"].Value = txtPassword.Text;
                        Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(15);
                    }
                    else
                    {
                        Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["Password"].Expires = DateTime.Now.AddDays(-1);

                    }
                    Response.Cookies["Role"].Value = rolequery.ToString();
                    FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, cbRemember.Checked);
                }

                else

                    lblMessage.Text = "Invalid Credentials";

            }

        }
        }
    }
