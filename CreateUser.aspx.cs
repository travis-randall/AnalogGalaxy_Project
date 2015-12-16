using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateUser : System.Web.UI.Page
{ 
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
    {

        string selectedValue = rbl1.SelectedValue;

        if (selectedValue == "Producer")
        {
            Response.Redirect("Create-producer.aspx");
        }
        else if (selectedValue == "Consumer")
        {
            Response.Redirect("Create-consumer.aspx");
        }
    }
}