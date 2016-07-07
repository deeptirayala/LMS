using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class BookTransactions : System.Web.UI.Page
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
                catch (Exception ex)
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
                    var trans = (from t in db.Transactions
                                 join b in db.Books on t.BookId equals b.Id
                                 select new { t.BookId, b.BookTitle, b.Category, b.AuthorName, t.MemberId, t.CopyId, t.IssueDate, t.DueDate, t.ReturnDate, t.Fine }).ToList();
                    gvTransactions.DataSource = trans;
                    gvTransactions.DataBind();
                }
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }

        protected void gvTransactions_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvTransactions.PageIndex = e.NewPageIndex;
            BindGrid();
        }
    }
    }
