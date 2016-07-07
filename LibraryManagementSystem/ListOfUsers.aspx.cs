using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace LibraryManagementSystem
{
    public partial class ViewDeleteUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    BindGrid();
                    Label fn = Page.Master.FindControl("lblUserName") as Label;
                    if (Session["name"] != null)
                    {
                        fn.Text = Session["name"].ToString();
                    }
                }
                catch(Exception ex)
                {
                    lblMessage.Text = ex.Message;
                }
                
            }
        }
        private void BindGrid()
        {
            try
            {
                using (deeptiEntities db = new deeptiEntities())
                {
                    var query = from reg in db.Registrations
                                select reg;
                    List<Registration> memberlist = query.ToList();
                    gvUsers.DataSource = memberlist;
                    gvUsers.DataBind();

                }
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
           
        }

       

        protected void gvUsers_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "Delete")
                {
                    using (deeptiEntities db1 = new deeptiEntities())
                    {
                        int id = Convert.ToInt32(e.CommandArgument);
                        var user = (from u in db1.Registrations where u.Id == id select u).FirstOrDefault();
                        db1.Registrations.Remove(user);
                        db1.SaveChanges();
                        BindGrid();

                    }
                }
              
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }

        }

        protected void gvUsers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void gvUsers_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                gvUsers.PageIndex = e.NewPageIndex;
                BindGrid();
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
    }
}