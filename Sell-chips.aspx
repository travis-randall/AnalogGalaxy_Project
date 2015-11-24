<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Sell-chips.aspx.cs" Inherits="Default5" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <!-- Producers will come here looking for customers to buy their chips, so list customer chip requests here. -->
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ChipDrop %>" SelectCommand="SELECT cr.request_id, c.name, c.city, c.phone, q.description AS qty, cr.date_available FROM ChipRequest AS cr INNER JOIN Customer AS c ON cr.customer_id = c.customer_id INNER JOIN ChipQty AS q ON cr.qty_id = q.qty_id"></asp:SqlDataSource>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="request_id" DataSourceID="SqlDataSource1">
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server">Name</th>
                                    <th runat="server">City</th>
                                    <th runat="server">Phone</th>
                                    <th runat="server">Quantity</th>
                                    <th runat="server">Date Available</th>
                                </tr>
                                <tr runat="server" id="itemPlaceholder">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
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
                <tr style="background-color: #DCDCDC; color: #000000;">
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
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
                <tr style="background-color: #FFF8DC;">
                    <td>
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td>
                        <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
                    </td>
                    <td>
                        <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                    </td>
                    <td>
                        <asp:Label ID="qtyLabel" runat="server" Text='<%# Eval("qty") %>' />
                    </td>
                    <td>
                        <asp:Label ID="date_availableLabel" runat="server" Text='<%# Eval("date_available", "{0:d}") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
        </asp:ListView>
    </div>
    

</asp:Content>










