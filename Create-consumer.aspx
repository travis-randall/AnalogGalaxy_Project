<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Create-consumer.aspx.cs" Inherits="Default7" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">

     <h2>Enter Additional Information</h2>
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
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" ReadOnly="true" Text="Phone Number"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" ReadOnly="true" Text="Street"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" ReadOnly="true" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="State"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Zip"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
            </table>
    <asp:Button ID="Button1" runat="server" Text="Save" />
</asp:Content>