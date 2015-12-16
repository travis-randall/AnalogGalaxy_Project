using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default7 : System.Web.UI.Page {

    private string connectionString = WebConfigurationManager.ConnectionStrings["ChipDrop"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e) {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["FirstName"] = TextBox1.Text;
        Session["LastName"] = TextBox2.Text;
        Session["PhoneNumber"] = TextBox3.Text;
        Session["Street"] = TextBox4.Text;
        Session["City"] = TextBox5.Text;
        Session["State"] = DropDownListState.Text;
        Session["Zip"] = TextBox6.Text;

        //Profile.FirstName = TextBox1.Text;
        //Profile.PhoneNumber = TextBox2.Text;
        //Profile.Address.Street = TextBox3.Text;
        //Profile.Address.City = TextBox4.Text;
        //Profile.Address.State = DropDownListState.Text;
        //Profile.Address.Zip = TextBox6.Text;

        if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || DropDownListState.Text == "" || TextBox6.Text == "")
        {
            lblResults.Text = "Records require an ID, first name, and last name.";
            return;
        }

        // Define ADO.NET objects
        string insertSQL;
        insertSQL = "INSERT INTO Customer(";
        insertSQL += "first_name, last_name, phone, address, ";
        insertSQL += "city, state, zip) ";
        insertSQL += "VALUES (";
        insertSQL += "@first_name, @last_name, @phone, @address, ";
        insertSQL += "@city, @state, @zip)";

        SqlConnection con = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand(insertSQL, con);

        // Add the parameters.
        cmd.Parameters.AddWithValue("@first_name", TextBox1.Text);
        cmd.Parameters.AddWithValue("@last_name", TextBox2.Text);
        cmd.Parameters.AddWithValue("@phone", TextBox3.Text);
        cmd.Parameters.AddWithValue("@address", TextBox4.Text);
        cmd.Parameters.AddWithValue("@city", TextBox5.Text);
        cmd.Parameters.AddWithValue("@state", DropDownListState.Text);
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
            Response.Redirect("Default.aspx");
        }
    }
}