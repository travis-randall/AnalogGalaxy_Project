<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Sell-chips.aspx.cs" Inherits="Default5" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <!--
        This page lists the producer market, which is where producers will go to find consumers.
            aka list people looking to buy chips, so this listing is 
        @author anhany
    -->
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChipDrop %>" SelectCommand="SELECT cr.request_id, c.customer_id, c.name, c.city, c.state, cr.qty, cr.date_available
FROM ChipRequest AS cr
JOIN Customer AS c ON (c.customer_id = cr.customer_id)
;"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="request_id,customer_id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="ListView1_SelectedIndexChanged">
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">Name</th>
                                    <th runat="server">City</th>
                                    <th runat="server">State</th>
                                    <th runat="server">Quantity</th>
                                    <th runat="server">Date Available</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty", "{0:f}") %>' />
                    </td>
                    <td>
                        <asp:Label ID="date_availableLabel" runat="server" Text='<%# Eval("date_available", "{0:d}") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty", "{0:f}") %>' />
                    </td>
                    <td>
                        <asp:Label ID="date_availableLabel" runat="server" Text='<%# Eval("date_available", "{0:d}") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Label ID="request_idLabel" runat="server" Text='<%# Eval("request_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="customer_idLabel" runat="server" Text='<%# Eval("customer_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="stateLabel" runat="server" Text='<%# Eval("state") %>' />
                    </td>
                    <td>
                        <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
                    </td>
                    <td>
                        <asp:Label ID="date_availableLabel" runat="server" Text='<%# Eval("date_available") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
<%--          <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="request_idLabel1" runat="server" Text='<%# Eval("request_id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="customer_idLabel1" runat="server" Text='<%# Eval("customer_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="qtyTextBox" runat="server" Text='<%# Bind("qty") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="date_availableTextBox" runat="server" Text='<%# Bind("date_available") %>' />
                    </td>
                </tr>
            </EditItemTemplate>--%>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
<%--            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="request_idTextBox" runat="server" Text='<%# Bind("request_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="customer_idTextBox" runat="server" Text='<%# Bind("customer_id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="stateTextBox" runat="server" Text='<%# Bind("state") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="qtyTextBox" runat="server" Text='<%# Bind("qty") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="date_availableTextBox" runat="server" Text='<%# Bind("date_available") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>--%>
        </asp:ListView>
    </div>
    

</asp:Content>










