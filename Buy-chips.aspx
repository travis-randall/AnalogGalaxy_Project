<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Buy-chips.aspx.cs" Inherits="Default4" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
<!-- A customer will come here looking to buy chips, so list producers looking to dispose of chips -->
    <div>
        <h2>Buy Chips</h2>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ChipDrop %>"
            SelectCommand="SELECT cd.disposal_id, c.producer_id, c.name, c.city, c.state, q.description AS qty, cd.date_available
                            FROM ChipDisposal AS cd
                            JOIN Producer AS c ON (c.producer_id = cd.producer_id)
                            JOIN ChipQty AS q ON (cd.qty_id = q.qty_id)">
        </asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="disposal_id,producer_id" DataSourceID="SqlDataSource1">
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF; color: #333333;">
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
                        <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF">
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
                <tr style="background-color: #E0FFFF; color: #333333;">
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
                        <asp:Label ID="date_availableLabel" runat="server" Text='<%# Eval("date_available", "{0:d}") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF; color: #284775;">
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
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
        </asp:ListView>
    </div>
</asp:Content>
