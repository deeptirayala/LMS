using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class ReturnOfBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.SetFocus(txtBookId);
            try
            {
                if (!Page.IsPostBack)
                {
                    Label fn = Page.Master.FindControl("lblUserName") as Label;
                    if (Session["name"] != null)
                    {
                        fn.Text = Session["name"].ToString();
                    }
                }

            }
            catch(Exception ex)
            {
                lblMessage.Text = ex.Message;
            }


        }

        protected void txtSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                using (deeptiEntities db = new deeptiEntities())
                {
                    int memberId = 0;
                    int bookId = Convert.ToInt32(txtBookId.Text);
                    if (Session["id"] != null)
                     memberId= Convert.ToInt32(Session["id"].ToString());
                   
                    var query=(from q in db.Transactions where q.BookId==bookId && q.MemberId==memberId select q).FirstOrDefault();
                    if(query!=null)
                    {
                        query.ReturnDate = (Convert.ToDateTime(txtReturnDate.Text)).Date;
                        var iDate = (from i in db.Transactions where i.BookId == bookId && i.MemberId == memberId select i.IssueDate).First();
                        if (iDate != null)
                            txtIssuedDate.Text = iDate.Date.ToString("yyyy-MM-dd");
                        var DDate = (from d in db.Transactions where d.BookId == bookId && d.MemberId == memberId select d.DueDate).First();
                        if (DDate != null)
                            txtDueDate.Text = DDate.Date.ToString("yyyy-MM-dd");
                        int days = (Convert.ToDateTime(txtDueDate.Text) - Convert.ToDateTime(txtReturnDate.Text)).Days;
                        if ( days < 0  )
                        {
                            query.Fine = days / 2;
                            txtFine.Text = (days / 2).ToString();
                        }
                        else if(days==0 || days>0)
                        {
                            
                            query.Fine = 0;
                            txtFine.Text = "0";
                        }
                        var copy= (from c in db.Transactions where c.BookId == bookId && c.MemberId == memberId select c.CopyId).First();
                        if (copy != 0)
                        {
                            var cp = (from k in db.Copies where k.Id == copy select k).SingleOrDefault();

                            if (cp != null)
                            {
                                cp.Status = "available";

                            }
                                

                            
                        }
                        db.SaveChanges(); 
                         
                        lblMessage.Text = "Book returned successfully . Please check your  details!";
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text = ex.Message;
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtBookId.Text = "";
            txtBookTitle.Text= "";
            txtDueDate.Text = "";
            txtFine.Text = "";
            txtIssuedDate.Text = "";
            txtReturnDate.Text = "";
            lblMessage.Text = "";
        }
    }
}