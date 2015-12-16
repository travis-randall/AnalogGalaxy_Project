<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UserInfoControl.ascx.cs" Inherits="lib_UserInfoControl" %>

<h1>Welcome <asp:LoginName ID="LoginName1" runat="server" /></h1>
<a href="Default.aspx">Home</a><br />
<a href="Chip-Request.aspx">Chip Request Form</a><br /><br />


<table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" ReadOnly="true" Text="First Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" ReadOnly="true" Text="Last Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                </tr>
    </table>


<h2>Change Your Password</h2>
<asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#F7F6F3" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em">
    <CancelButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775"></CancelButtonStyle>

    <ChangePasswordButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775"></ChangePasswordButtonStyle>

    <ContinueButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderWidth="1px" BorderStyle="Solid" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775"></ContinueButtonStyle>

    <InstructionTextStyle Font-Italic="True" ForeColor="Black"></InstructionTextStyle>

    <PasswordHintStyle Font-Italic="True" ForeColor="#888888"></PasswordHintStyle>

    <TextBoxStyle Font-Size="0.8em"></TextBoxStyle>

    <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White"></TitleTextStyle>
</asp:ChangePassword>
