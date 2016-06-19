using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LibraryManagementSystem
{
    public partial class Registration1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            // using command temporarily creates a context that accesses our database
            // creating an object of the object context "deeptiEntities"
            using (deeptiEntities db = new deeptiEntities())
            {
                //creating an object of the Registration class

                Registration objreg = new Registration();

                // set values to the db columns

                objreg.FirstName = txtFirstName.Text;
                objreg.LastName = txtLastName.Text;
                objreg.UserName = txtUserName.Text;
                objreg.Password = txtPassword.Text;
                objreg.MobileNo = txtMobileNo.Text;
                objreg.RegisteredDate = DateTime.Now;
                objreg.Role = ddlRole.SelectedItem.Text;

                // add registration object to the registrations collection in the object context  

                db.Registrations.Add(objreg);

                //call savechanges method to insert the record into table

                db.SaveChanges();
                lblMessage.Text = " You have registered successfully!";
            }

               


        }
    }
}