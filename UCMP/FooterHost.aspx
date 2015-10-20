<%@ Page Language="C#" MasterPageFile="~/UCMP/MasterPage.master" AutoEventWireup="true" CodeFile="FooterHost.aspx.cs" Inherits="UCMP_FooterHost" %>
<%@ Register TagPrefix="uc1" TagName="Footer" Src ="Footer.ascx" %>


<asp:Content runat="server" ID="master" ContentPlaceHolderID="cphHead">
    <link rel="stylesheet" href="~/Styles/style.css" type="text/css">
    <title>Footer Host</title>
</asp:Content>

    <asp:Content runat="server" ID="main" ContentPlaceHolderID="cphMain">
    <div>
        <br />
        <h1>A Page With a Footer</h1><hr />
        Static Page with Text<br /><br />
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="true">
            <asp:ListItem>Short Time</asp:ListItem>
            <asp:ListItem>Long Date</asp:ListItem>
        </asp:RadioButtonList><br />
        <uc1:Footer ID="Footer1" runat="server" />
    </div>
</asp:Content>