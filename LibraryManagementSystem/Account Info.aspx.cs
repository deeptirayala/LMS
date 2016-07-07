using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class Account_Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    
                    Label fn = Page.Master.FindControl("lblUserName") as Label;
                    if (Session["name"] != null)
                    {
                        fn.Text = Session["name"].ToString();
                    }
                    using (deeptiEntities db = new deeptiEntities())
                    {
                        int memberId = 0;
                        if (Session["id"] != null)
                             memberId = Convert.ToInt32(Session["id"].ToString());
                        var query = (from u in db.Registrations
                                    where u.Id==memberId
                                    select new
                                    {
                                        u.Id,
                                        u.FirstName,
                                        u.LastName,
                                        u.UserName,
                                        u.MobileNo,
                                        u.RegisteredDate

                                    }).FirstOrDefault();
                        if(query!=null)
                        {
                            Id.Text = query.Id.ToString();
                            FirstName.Text = query.FirstName;
                            LastName.Text = query.LastName;
                            UserName.Text = query.UserName;
                            MobileNo.Text = query.MobileNo;
                            RegDate.Text = query.RegisteredDate.ToString("yyyy-MM-dd hh:mm:ss.fff");
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
}