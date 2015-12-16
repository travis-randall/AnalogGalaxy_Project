<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">

    <div>
        <asp:Login ID="Login1" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" BorderStyle="Solid" BorderWidth="1px" CreateUserText="Create Account" CreateUserUrl="~/CreateUser.aspx" Font-Names="Verdana" Font-Size="10pt">
            <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
        </asp:Login>


    </div>

</asp:Content>