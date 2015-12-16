<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Create-consumer.aspx.cs" Inherits="Default7" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">

     <h2>Enter Additional Information</h2>
    <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" ReadOnly="false" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" ReadOnly="false" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" ReadOnly="false" Text="Phone Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" ReadOnly="false" Text="Street"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" ReadOnly="false"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>
                    </td>
                    <td><asp:DropDownList ID="DropDownListState" runat="server">
	    <asp:ListItem Value="AL">Alabama</asp:ListItem>
	    <asp:ListItem Value="AK">Alaska</asp:ListItem>
	    <asp:ListItem Value="AZ">Arizona</asp:ListItem>
	    <asp:ListItem Value="AR">Arkansas</asp:ListItem>
	    <asp:ListItem Value="CA">California</asp:ListItem>
	    <asp:ListItem Value="CO">Colorado</asp:ListItem>
	    <asp:ListItem Value="CT">Connecticut</asp:ListItem>
	    <asp:ListItem Value="DC">District of Columbia</asp:ListItem>
	    <asp:ListItem Value="DE">Delaware</asp:ListItem>
	    <asp:ListItem Value="FL">Florida</asp:ListItem>
	    <asp:ListItem Value="GA">Georgia</asp:ListItem>
	    <asp:ListItem Value="HI">Hawaii</asp:ListItem>
	    <asp:ListItem Value="ID">Idaho</asp:ListItem>
	    <asp:ListItem Value="IL">Illinois</asp:ListItem>
	    <asp:ListItem Value="IN">Indiana</asp:ListItem>
	    <asp:ListItem Value="IA">Iowa</asp:ListItem>
	    <asp:ListItem Value="KS">Kansas</asp:ListItem>
	    <asp:ListItem Value="KY">Kentucky</asp:ListItem>
	    <asp:ListItem Value="LA">Louisiana</asp:ListItem>
	    <asp:ListItem Value="ME">Maine</asp:ListItem>
	    <asp:ListItem Value="MD">Maryland</asp:ListItem>
	    <asp:ListItem Value="MA">Massachusetts</asp:ListItem>
	    <asp:ListItem Value="MI">Michigan</asp:ListItem>
	    <asp:ListItem Value="MN">Minnesota</asp:ListItem>
	    <asp:ListItem Value="MS">Mississippi</asp:ListItem>
	    <asp:ListItem Value="MO">Missouri</asp:ListItem>
	    <asp:ListItem Value="MT">Montana</asp:ListItem>
	    <asp:ListItem Value="NE">Nebraska</asp:ListItem>
	    <asp:ListItem Value="NV">Nevada</asp:ListItem>
	    <asp:ListItem Value="NH">New Hampshire</asp:ListItem>
	    <asp:ListItem Value="NJ">New Jersey</asp:ListItem>
	    <asp:ListItem Value="NM">New Mexico</asp:ListItem>
	    <asp:ListItem Value="NY">New York</asp:ListItem>
	    <asp:ListItem Value="NC">North Carolina</asp:ListItem>
	    <asp:ListItem Value="ND">North Dakota</asp:ListItem>
	    <asp:ListItem Value="OH">Ohio</asp:ListItem>
	    <asp:ListItem Value="OK">Oklahoma</asp:ListItem>
	    <asp:ListItem Value="OR">Oregon</asp:ListItem>
	    <asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
	    <asp:ListItem Value="RI">Rhode Island</asp:ListItem>
	    <asp:ListItem Value="SC">South Carolina</asp:ListItem>
	    <asp:ListItem Value="SD">South Dakota</asp:ListItem>
	    <asp:ListItem Value="TN">Tennessee</asp:ListItem>
	    <asp:ListItem Value="TX">Texas</asp:ListItem>
	    <asp:ListItem Value="UT">Utah</asp:ListItem>
	    <asp:ListItem Value="VT">Vermont</asp:ListItem>
	    <asp:ListItem Value="VA">Virginia</asp:ListItem>
	    <asp:ListItem Value="WA">Washington</asp:ListItem>
	    <asp:ListItem Value="WV">West Virginia</asp:ListItem>
	    <asp:ListItem Value="WI">Wisconsin</asp:ListItem>
	    <asp:ListItem Value="WY">Wyoming</asp:ListItem>
        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Zip"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" ReadOnly="false"></asp:TextBox>
                    </td>
                </tr>
            </table>
    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
    <asp:Label ID="lblResults" runat="server" Text=""></asp:Label>
</asp:Content>