using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class SearchBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.SetFocus(txtBookId);

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
            txtAuthorName.Text = "";
            txtBookId.Text = "";
            txtBookTitle.Text = "";
            txtCategory.Text = "";
            lblMessage.Text = "";
            gvBooks.DataSource = null;
            gvBooks.DataBind();
        }

        protected void txtSearch_Click(object sender, EventArgs e)
        {
            bindGrid();
        }

        protected void gvBooks_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            try
            {
                gvBooks.PageIndex = e.NewPageIndex;
                bindGrid();
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }
        private void bindGrid()
        {
            try
            {
                using (deeptiEntities db = new deeptiEntities())
                {
                    if (txtAuthorName.Text == "" && txtBookId.Text == "" && txtBookTitle.Text == "" && txtCategory.Text == "")
                    {
                        var q = from b in db.Books select b;
                        List<Book> bookList = q.ToList();
                        gvBooks.DataSource = bookList;
                        gvBooks.DataBind();
                    }
                    else
                    {
                        int id = 0;
                        if (txtBookId.Text == "")
                            id = 0;
                        else
                            id = Convert.ToInt32(txtBookId.Text);
                        var search = (from b in db.Books
                                      where b.AuthorName == txtAuthorName.Text || b.BookTitle == txtBookTitle.Text || b.Category == txtCategory.Text || b.Id == id
                                      select b).ToList();
                        gvBooks.DataSource = search;
                        gvBooks.DataBind();

                        //IQueryable<Book> books = db.Books;
                        //if(!string.IsNullOrEmpty(txtAuthorName.Text))
                        //{
                        //    books = books.where(b => b.AuthorName.Contains(txtAuthorName.Text));
                        //}
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