﻿using System;
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
            Label fn = Page.Master.FindControl("lblUserName") as Label;
            if (Session["name"] != null)
            {
                fn.Text = Session["name"].ToString();
            }
        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            // using command temporarily creates a context that accesses our database
            using (deeptiEntities db = new deeptiEntities())
            {

               
                Book objBook = new Book {
                    AuthorName = txtAuthorName.Text,
                    BookTitle = txtBookTitle.Text,
                    Category = txtCategory.Text
                };
                
                db.Books.Add(objBook);
                db.SaveChanges();

                lblMessage.Text = " Book added successfully !";
            }
               
        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            // using command temporarily creates a context that accesses our database
            using (deeptiEntities db = new deeptiEntities())
            {

               
                Book objBook = new Book {
                    AuthorName = txtAuthorName.Text,
                    BookTitle = txtBookTitle.Text,
                    Category = txtCategory.Text
                };
                
                db.Books.Add(objBook);
                db.SaveChanges();

                lblMessage.Text = " Book added successfully !";
            }
               
        }
    }
}