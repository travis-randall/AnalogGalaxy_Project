<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Chip-request.aspx.cs" Inherits="Chip_request" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <h2>Chip Request Form</h2>
    </div>
    <div>
       <table>
           <tr>
               <td>
                   <asp:Label ID="lblResults" runat="server"></asp:Label>
               </td>
           </tr>
           <tr>
               <td><asp:Label ID="lblChipQuantity" runat="server" Text="Label">Quantity of Chips</asp:Label></td>
           </tr>
           <tr>
               <td>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ChipDrop %>' SelectCommand="SELECT [qty_id], [description] FROM [ChipQty]"></asp:SqlDataSource>
                   <asp:DropDownList ID="ddlChipQuantity" runat="server" DataSourceID="SqlDataSource1" DataTextField="description" DataValueField="qty_id"></asp:DropDownList>
               </td>
           </tr>
           <tr>
               <td><asp:Label ID="lblDateAvailable" runat="server">Date Available</asp:Label></td>
               <td><asp:Label ID="lblDateExpire" runat="server">Date Expire</asp:Label></td>
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
    </div>
</asp:Content>
