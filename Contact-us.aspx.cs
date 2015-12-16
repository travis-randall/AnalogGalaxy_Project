using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact_us : System.Web.UI.Page {

    private string connectionString = WebConfigurationManager.ConnectionStrings["ChipDrop"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        {

            if (txtName.Text == "" || txtEmail.Text == "" || TextBox1.Text == "")
            {
                lblResults.Text = "Please Fill in All Feilds";
                return;
            }

            string insertSQL;
            insertSQL = "INSERT INTO ContactUs(";
            insertSQL += "name, email, message) ";
            insertSQL += "VALUES (";
            insertSQL += "@name, @email, @message)";

            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);

            // Add the parameters.
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@message", TextBox1.Text);

            // Try to open the database and execute the update.
            int added = 0;
            try
            {
                con.Open();
                added = cmd.ExecuteNonQuery();
                lblResults.Text = added.ToString() + " record Inserted.";
            }
            catch (Exception err)
            {
                lblResults.Text = "Error inserting record.";
                lblResults.Text += err.Message;
            }
            finally
            {
                con.Close();
                Response.Redirect("Default.aspx");
            }
        }
    }
}