using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Chip_request : System.Web.UI.Page {
    private string connectionString = WebConfigurationManager.ConnectionStrings["ChipDrop"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void Button1_Click(object sender, EventArgs e) {
        string insertSQL;
        insertSQL = "INSERT INTO ChipRequest (" +
                    "customer_id,qty_id,date_available,date_expire" +
                    ") VALUES (" +
                    "@customer_id, @qty_id, @date_available, @date_expire"+
                    ")";

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(insertSQL, con);

        cmd.Parameters.AddWithValue("@customer_id", 91);
        cmd.Parameters.AddWithValue("@qty_id", ddlChipQuantity.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@date_available", cldDateAvailable.SelectedDate);
        cmd.Parameters.AddWithValue("@date_expire", cldDateExpire.SelectedDate);

        // Try to open the database and execute the update.
        int added = 0;
        try {
            con.Open();
            added = cmd.ExecuteNonQuery();
        }
        catch (Exception err) {
            lblResults.Text = "Error inserting record.";
            lblResults.Text += err.Message;
        }
        finally {
            con.Close();
        }

        // If the insert succeeded, refresh the author list.
        if (added > 0) {
            Response.Redirect("Customer-dashboard.aspx");
        }
    }
}