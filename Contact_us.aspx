<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Contact_us.aspx.cs" Inherits="Contact_us" %>


<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <h1>Contact Us</h1>
        <br />
        <p>
        We would love to hear from you.  For any questions or feedback, please fill out the the form below
        </p>
        <form runat="server" id="form">
            <asp:Label ID="lblName" runat="server" Text="Your Name" /><br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="lblEmail" runat="server" Text="Email" /><br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="lblMessage" runat="server" Text="Message" /><br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox><br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Send" />
        </form>
    </div>
</asp:Content>