using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace LibraryManagementSystem
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Page.SetFocus(txtEmail);
            if (!IsPostBack)
            {
                try
                {
                    if (!Page.IsPostBack)
                    {
                        Master.FindControl("pn1").Visible = false;
                        Master.FindControl("pn2").Visible = false;
                    }

                }
                catch (Exception ex)
                {
                    lblMessage.Text = ex.Message;
                }

            }
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                using (deeptiEntities db = new deeptiEntities())
                {
                    string username, password;
                    
                    
                    var uname = (from u in db.Registrations
                                where u.Email == txtEmail.Text
                                select u.UserName).SingleOrDefault();
                    if (uname != null)
                    {
                        var pwd = (from u in db.Registrations
                                   where u.Email == txtEmail.Text
                                   select u.Password).SingleOrDefault();
                        if(pwd!=null)
                        {
                            username = uname.ToString();
                            password = pwd.ToString();
                            MailMessage mail = new MailMessage();
                            mail.From = new MailAddress("deeps.careers33@gmail.com");
                            mail.To.Add(txtEmail.Text.Trim());
                            mail.Subject = "Password Recovery";
                            mail.Body = String.Format("Hi {0}, <br /> <br /> Your Password is {1}. <br/><br/> Thank You,<br/>Admin.",username,password);
                            mail.IsBodyHtml = true;
                            SmtpClient smtp = new SmtpClient("smtp.gmail.com",587);
                           // smtp.Host = "smtp.gmail.com";
                            smtp.EnableSsl = true;
                            NetworkCredential nwcred = new NetworkCredential();
                            nwcred.UserName = "deeps.careers33@gmail.com";
                            nwcred.Password = "desp4job";
                            smtp.UseDefaultCredentials = true;
                            smtp.Credentials = nwcred;
                            //smtp.Port = 465;
                            smtp.Send(mail);
                            lblMessage.ForeColor = Color.BlueViolet;
                            lblMessage.Text = "Password has been sent to your email address!";
                        }

                      
                    }
                    else
                    {
                        lblMessage.ForeColor = Color.Red;
                        lblMessage.Text = "This Email Address does not match our records!";
                    }
                       
                   
                }
            }
            catch(Exception ex)
            {
                
                lblMessage.Text = ex.Message;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "";
            lblMessage.Text = "";
        }
    }
}