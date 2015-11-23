<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Chip-disposal.aspx.cs" Inherits="Default3" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <!-- Stuff Goes Here 
    - This page should have a form on it for producers to fill out and save their chip disposal requests.
    - Redirect to either the producer dashboard with a success message, or back to wherever they came from with said message
-->

    <form runat="server" id="frm_chip_disposal">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" DataSourceID="SqlDataSource1"></asp:DetailsView>
    </form>
</asp:Content>
