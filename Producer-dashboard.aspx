<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Producer-dashboard.aspx.cs" Inherits="Producer_dashboard" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">

    


    <form id="form1" runat="server">
        <div align="center">
        <asp:Button ID="Button1" runat="server" Text="Chip Request Form" OnClick="Button1_Click" />
    </div>
        <h2>Active Chip Request</h2>
        <asp:TextBox ID="TextBox1" runat="server" Height="130px" ReadOnly="True" TextMode="MultiLine" Width="900px" Wrap="False"></asp:TextBox>
        <br />
        <br />
        <h2>Expired Chip Request</h2>
        <asp:TextBox ID="TextBox2" runat="server" Height="130px" ReadOnly="True" TextMode="MultiLine" Width="900px" Wrap="False"></asp:TextBox>
     </form>



</asp:Content>