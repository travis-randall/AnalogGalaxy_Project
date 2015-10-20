using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UCMP_FooterHost : System.Web.UI.Page {
    protected void Page_Load(object sender, EventArgs e) {
        if (RadioButtonList1.SelectedValue == "Long Date") {
            Footer1.Format = UCMP_Footer.FooterFormat.LongDate;
        } else if (RadioButtonList1.SelectedValue == "Short Time") {
            Footer1.Format = UCMP_Footer.FooterFormat.ShortTime;
        }
    }
}