using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class RequestBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.SetFocus(txtBookId);
            if(!Page.IsPostBack)
            {
                try
                {
                    Label fn = Page.Master.FindControl("lblUserName") as Label;
                    // txtIssueDate.Text = DateTime.Now.ToString();
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

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (deeptiEntities db = new deeptiEntities())
                {

                    int bookId = Convert.ToInt32(txtBookId.Text);
                
                        var copy = from p in db.Copies where p.BookId == bookId select p;
                        var cid = from c in db.Copies where c.BookId == bookId select c.Id;
                        var s = copy.FirstOrDefault();
                        if (s != null)
                        {
                            s.Status = "Unavailable";
                        
                        }
                   
                    var trans = new Transaction();
                        
                            trans.BookId = bookId;
                            if (Session["id"] != null)
                                trans.MemberId = Convert.ToInt32(Session["id"].ToString());
                    trans.CopyId = Convert.ToInt32(cid.First());
                            trans.IssueDate = Convert.ToDateTime(DateTime.Now.Date);
                            DateTime due = trans.IssueDate.AddDays(21);
                            trans.DueDate = due;
                    // adding the transactoin to db collection
                    db.Transactions.Add(trans);
                    // telling the db to save the changes 
                    db.SaveChanges();
                            lblMessage.Text = "Book has been issued  and due date is " + due.ToString("d");
                        

                    }
            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }
            }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtBookId.Text = "";
            txtBookId.Text = "";
            txtCategory.Text = "";
            lblMessage.Text = "";
        }
    }
}