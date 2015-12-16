using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default8 : System.Web.UI.Page {

    private string connectionString = WebConfigurationManager.ConnectionStrings["chip_drop"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Profile.FirstName = TextBox1.Text;
        Profile.PhoneNumber = TextBox2.Text;
        Profile.Address.Street = TextBox3.Text;
        Profile.Address.City = TextBox4.Text;
        Profile.Address.State = TextBox5.Text;
        Profile.Address.Zip = TextBox6.Text;
    }

    protected void cmdInsert_Click(object sender, EventArgs e)
    {

        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" )
        {
            lblResults.Text = "Records require an ID, first name, and last name.";
            return;
        }

        // Define ADO.NET objects
        string insertSQL;
        insertSQL = "INSERT INTO Producer(";
        insertSQL += "name, phone, address, ";
        insertSQL += "city, state, zip) ";
        insertSQL += "VALUES (";
        insertSQL += "@name, @phone, @address, ";
        insertSQL += "@city, @state, @zip)";

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(insertSQL, con);

        // Add the parameters.
        cmd.Parameters.AddWithValue("@name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@phone", TextBox2.Text);
        cmd.Parameters.AddWithValue("@address", TextBox3.Text);
        cmd.Parameters.AddWithValue("@city", TextBox4.Text);
        cmd.Parameters.AddWithValue("@state", TextBox5.Text);
        cmd.Parameters.AddWithValue("@zip", TextBox6.Text);

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
        }
    }
}