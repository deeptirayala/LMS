using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class UserBookInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                try
                {
                    bindGrid();
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
        private void bindGrid()

        {
            try
            {
                using (deeptiEntities db = new deeptiEntities())
                {
                    int id = 0;
                    if (Session["id"] != null)
                    {
                         id = Convert.ToInt32(Session["id"]);
                    }
                        
                    var query= (from t in db.Transactions
                                join b in db.Books on t.BookId equals b.Id where t.MemberId==id
                                select new { t.BookId, b.BookTitle, b.Category, b.AuthorName, t.MemberId, t.CopyId, t.IssueDate, t.DueDate, t.ReturnDate, t.Fine }).ToList()  ;
                    gvBooks.DataSource = query;
                    gvBooks.DataBind();
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }

        }

        protected void gvBooks_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvBooks.PageIndex = e.NewPageIndex;
            bindGrid();
        }
    }
}