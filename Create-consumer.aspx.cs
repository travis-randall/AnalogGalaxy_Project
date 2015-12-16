using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default7 : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Profile.FirstName = TextBox1.Text;
        Profile.LastName = TextBox2.Text;
        Profile.Address.Street = TextBox4.Text;
        Profile.Address.City = TextBox5.Text;
        Profile.Address.State = TextBox6.Text;
        Profile.Address.Zip = TextBox7.Text;
    }
}