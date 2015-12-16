﻿<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Chip-disposal.aspx.cs" Inherits="Default3" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <!-- Stuff Goes Here 
    - This page should have a form on it for producers to fill out and save their chip disposal requests.
    - Redirect to either the producer dashboard with a success message, or back to wherever they came from with said message
-->

        <h2>Chip Disposal Form</h2><br />
        To request a chip drop-ff, fill out the form below and you will<br />
         be assigned a chip drop.<br /><br />
      
        <table>
           <tr>
               <td>
                   <asp:Label ID="lblCompanyName" runat="server" Text="Label">Company Name</asp:Label>
               </td>
           </tr>
           <tr>
               <td><asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblCompanyAddr" runat="server" Text="Label">Company Address</asp:Label>
               </td>
           </tr>
           <tr>
               <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblCity" runat="server" Text="Label">City</asp:Label>
               </td>
               <td>
                   <asp:Label ID="lblState" runat="server" Text="Label">State</asp:Label>
               </td>
           </tr>
           <tr>
               <td><asp:TextBox ID="txtCity" runat="server"></asp:TextBox></td>
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
                   <asp:Label ID="lblZip" runat="server" Text="Label">Zip Code</asp:Label></td>
           </tr>
           <tr>
               <td><asp:TextBox ID="txtZip" runat="server"></asp:TextBox></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblCompanyRep" runat="server" Text="Label">Company Representative</asp:Label></td>
               <td>
                   <asp:Label ID="lblContactPhone" runat="server" Text="Label">Contact Number</asp:Label></td>
           </tr>
           <tr>
               <td><asp:TextBox ID="txtCompanyRep" runat="server"></asp:TextBox></td>
               <td><asp:TextBox ID="txtContactPhone" runat="server"></asp:TextBox></td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="lblChipQuantity" runat="server" Text="Label">Quantity of Chips</asp:Label></td>
           </tr>
           <tr>
               <td>
                   <asp:DropDownList ID="ddlChipQuantity" runat="server">
	    <asp:ListItem Value="Small">Small</asp:ListItem>
	    <asp:ListItem Value="Medium">Medium</asp:ListItem>
	    <asp:ListItem Value="Large">Large</asp:ListItem>
                       </asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td><asp:Button ID="Button1" runat="server" Text="Submit" /></td>
           </tr>

        </table> 


</asp:Content>
