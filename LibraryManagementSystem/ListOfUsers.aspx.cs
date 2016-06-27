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
                BindGrid();
                Label fn = Page.Master.FindControl("lblUserName") as Label;
                if (Session["name"] != null)
                {
                    fn.Text = Session["name"].ToString();
                }
            }
        }
        private void BindGrid()
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
    }
}