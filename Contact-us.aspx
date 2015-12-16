<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Contact-us.aspx.cs" Inherits="Contact_us" %>


<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <h1>Contact Us</h1>
        <br />
        <p>
        We would love to hear from you.  For any questions or feedback, please fill out the the form below
        </p>
            <asp:Label ID="lblName" runat="server" Text="Your Name" /><br />
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="lblEmail" runat="server" Text="Email" /><br />
            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="lblMessage" runat="server" Text="Message" /><br />
            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox><br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Send" />
    </div>
</asp:Content>