<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Contact_us.aspx.cs" Inherits="Contact_us" %>


<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <div align="center">
        <h1 align="center">Contact Us</h1>
        <br />
        <p>
        We would love to hear from you.  For any questions or feedback, please fill out the the form below
        <p>
               
            <br />
            Your Name<br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br />
            Email<br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br />
            Message<br />
            </asp:Label><asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox><br />
            </p>
            <asp:Button ID="Button1" runat="server" Text="Send" />
            </p>

    </div>
</asp:Content>