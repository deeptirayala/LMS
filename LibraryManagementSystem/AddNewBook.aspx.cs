using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class AddNewBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.SetFocus(txtBookTitle);
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

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            // using command temporarily creates a context that accesses our database
            using (deeptiEntities db = new deeptiEntities())
            {


                Book objBook = new Book
                {
                    AuthorName = txtAuthorName.Text,
                    BookTitle = txtBookTitle.Text,
                    Category = txtCategory.Text,
                    Copies = Convert.ToInt32(txtCopies.Text)
                };

                db.Books.Add(objBook);
                db.SaveChanges();
                var query = from b in db.Books where b.BookTitle == txtBookTitle.Text & b.AuthorName == txtAuthorName.Text select b.Id;
                var c = query.SingleOrDefault();
                if (c != 0)
                {
                    for (int i = 0; i < Convert.ToInt32(txtCopies.Text); i++)
                    {
                        Copy objCopy = new Copy
                        {
                            BookId = c,
                            Status="available"

                        };
                        db.Copies.Add(objCopy);
                    }
                }
               

                db.SaveChanges();

                lblMessage.Text = " Book added successfully !";
            }
            }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtAuthorName.Text = "";
            txtBookTitle.Text = "";
            txtCategory.Text = "";
            txtCopies.Text = "";
            lblMessage.Text = "";


        }    }

        
    }
