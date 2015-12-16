<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Customer-dashboard.aspx.cs" Inherits="Default6" %>


<%@ Register Src="~/lib/UserInfoControl.ascx" TagPrefix="uc1" TagName="UserInfoControl" %>


<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">

    <uc1:UserInfoControl runat="server" ID="UserInfoControl" />

        <div id="content">
            <asp:Button ID="Button1" runat="server" Text="Chip Request Form" OnClick="Button1_Click" />
        </div>
        <h2>Active Chip Request</h2>
        <asp:TextBox ID="TextBox1" runat="server" Height="130px" ReadOnly="True" TextMode="MultiLine" Width="900px" Wrap="False"></asp:TextBox>
        <br />
        <br />
        <h2>Expired Chip Request</h2>
        <asp:TextBox ID="TextBox2" runat="server" Height="130px" ReadOnly="True" TextMode="MultiLine" Width="900px" Wrap="False"></asp:TextBox>

</asp:Content>
