using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class ListOfBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                lblMessage.Text = "";
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
            // using command temporarily creates a context that accesses our database

            using (deeptiEntities db = new deeptiEntities())
            {

               

                // use LINQ against Books table to have Entity Framework do a SQL query 

                var query= from Book in db.Books
                           select Book;
                List<Book> booklist = query.ToList();
                gvBooks.DataSource = booklist;
                gvBooks.DataBind();
            }
                
        }

        protected void gvBooks_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "Delete")
                {
                    using (deeptiEntities db1 = new deeptiEntities())
                    {
                        //int ncopies = 0;
                        int id = Convert.ToInt32(e.CommandArgument);
                        //var no = (from k in db1.Books where k.Id == id select k.Copies).SingleOrDefault();
                        //ncopies = Convert.ToInt32(no);
                        var copy = from c in db1.Copies where c.BookId == id select c;
                       // List<Copy> cp = copy.ToList();
                        foreach(var cp in copy)
                        {
                            db1.Copies.Remove(cp);
                        }
                       
                        var book = (from b in db1.Books where b.Id == id select b).SingleOrDefault();
                        db1.Books.Remove(book);
                        
                       
                        db1.SaveChanges();
                        BindGrid();
                        lblMessage.Text = "Record deleted !";

                    }
                }

            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
        }

        protected void gvBooks_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }

        protected void gvBooks_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvBooks.EditIndex = e.NewEditIndex;
            BindGrid();
        }

        protected void gvBooks_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
               int copy=0;
                GridViewRow row = gvBooks.Rows[e.RowIndex];
                int id = Convert.ToInt32(gvBooks.DataKeys[e.RowIndex].Values[0]);
                string bTitle = (row.FindControl("txtBookTitle") as TextBox).Text;
                string category = (row.FindControl("txtCategory") as TextBox).Text;
                string authName = (row.FindControl("txtAuthName") as TextBox).Text;
                string copies = (row.FindControl("txtCopies") as TextBox).Text;
                copy = Convert.ToInt32(copies);

                using (deeptiEntities db = new deeptiEntities())
                {
                    Book bk = (from b in db.Books
                               where b.Id == id
                               select b).SingleOrDefault();
                    bk.BookTitle = bTitle;
                    bk.Category = category;
                    bk.AuthorName = authName;
                    bk.Copies = copy;
                    db.SaveChanges();
                }
                gvBooks.EditIndex = -1;
                this.BindGrid();



                //Label BId = (Label)gvBooks.Rows[e.RowIndex].FindControl("lblId");
                // id = Convert.ToInt32(BId);
                //TextBox BTitle = (TextBox)gvBooks.Rows[e.RowIndex].FindControl("txtBookTitle");
                //TextBox Category = (TextBox)gvBooks.Rows[e.RowIndex].FindControl("txtCategory");
                //TextBox AuthName = (TextBox)gvBooks.Rows[e.RowIndex].FindControl("txtAuthName");
                //TextBox Copies = (TextBox)gvBooks.Rows[e.RowIndex].FindControl("txtCopies");
                //copy = Convert.ToInt32(Copies.Text);
                //using (deeptiEntities db = new deeptiEntities())
                //{
                //    var bookQuery = (from b in db.Books where b.Id == id select b).SingleOrDefault();
                //    if(bookQuery!=null)
                //    {
                //        bookQuery.BookTitle = BTitle.Text;
                //        bookQuery.Category = Category.Text;
                //        bookQuery.AuthorName = AuthName.Text;
                //        bookQuery.Copies = copy ;
                //        db.SaveChanges();
                //        gvBooks.EditIndex = -1;
                //        BindGrid();
                //        lblMessage.Text = "Record updated!";
                //    }
                //}
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
           
        }

        protected void gvBooks_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvBooks.EditIndex = -1;
            BindGrid();
        }
    }
}