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
    }
}