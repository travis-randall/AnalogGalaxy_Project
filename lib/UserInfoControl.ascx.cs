using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class lib_UserInfoControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            TextBox1.Text = Profile.FirstName;
            TextBox2.Text = Profile.LastName;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Profile.FirstName = TextBox1.Text;
        Profile.LastName = TextBox2.Text;
    }
}