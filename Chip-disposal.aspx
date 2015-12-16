<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Chip-disposal.aspx.cs" Inherits="Default3" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <!-- Stuff Goes Here 
    - This page should have a form on it for producers to fill out and save their chip disposal requests.
    - Redirect to either the producer dashboard with a success message, or back to wherever they came from with said message
-->

        <h2>Chip Disposal Form</h2><br />
        To request a chip drop-ff, fill out the form below and you will<br />
         be assigned a chip drop.<br /><br />
      
        <table>
           <tr><td><asp:Label ID="lblResults" runat="server"></asp:Label></td></tr>
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
               <td><asp:Label ID="lblDateAvailable" runat="server"></asp:Label></td>
               <td><asp:Label ID="lblDateExpire" runat="server"></asp:Label></td>
           </tr>
           <tr>
               <td>
                   <asp:Calendar ID="cldDateAvailable" runat="server"></asp:Calendar>
               </td>
               <td>
                   <asp:Calendar ID="cldDateExpire" runat="server"></asp:Calendar>
               </td>
           </tr>
           <tr>
               <td><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" /></td>
           </tr>

        </table> 


</asp:Content>
