<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Default9.aspx.cs" Inherits="Default9" %>


<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
<html>   
<head>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
    </form>
</body>
</html>


    </asp:Content>