<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Chip-request.aspx.cs" Inherits="Chip_request" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">


    <div>
        <h2>Chip Request Form</h2>
           

    </div>
    <div>
        <p>&nbsp;</p>
       
        To request wood chips, fill out the form below and you will be put on a waiting list for wood chips to be sent out to you         
       <br />
       <br />        
       <br />
       <table>
           <tr>
               <td>
                   <asp:Label ID="lblEmail" runat="server" Text="Label">Email</asp:Label>
               </td>
           </tr>
           <tr>
               <td><asp:Label ID="lblChipQuantity" runat="server" Text="Label">Quantity of Chips</asp:Label></td>
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
               <td><asp:Button ID="Button1" runat="server" Text="Submit" /></td>
           </tr>
        </table>
    </div>


</asp:Content>
