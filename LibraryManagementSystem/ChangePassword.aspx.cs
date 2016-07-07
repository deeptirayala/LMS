using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.SetFocus(txtOldPwd);
            if(!IsPostBack)
            {
                try
                {
                    Label fn = Page.Master.FindControl("lblUserName") as Label;
                    if (Session["name"] != null)
                    {
                        fn.Text = Session["name"].ToString();
                    }

                }
                catch (Exception ex)
                {
                    lblMessage.Text = ex.Message;
                }

            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtConfirm.Text = "";
            txtNewPwd.Text = "";
            txtOldPwd.Text = "";
            lblMessage.Text = "";
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                int id = 0;
                using (deeptiEntities db = new deeptiEntities())
                {
                    if(Session["id"]!=null)
                    {
                        id = Convert.ToInt32(Session["id"].ToString());
                    }
                    var query = (from r in db.Registrations where r.Id == id select r.Password).FirstOrDefault();
                    if(query!=null)
                    {
                        if(txtOldPwd.Text==query)
                        {
                            var q = (from u in db.Registrations where u.Id == id select u).SingleOrDefault();
                            if(q!=null)
                            {
                                q.Password = txtNewPwd.Text;
                                db.SaveChanges();
                                lblMessage.Text = "Password changed successfully! ";
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}