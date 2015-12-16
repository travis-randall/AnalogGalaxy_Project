<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Producer-dashboard.aspx.cs" Inherits="Producer_dashboard" %>

<%@ Register Src="~/lib/UserInfoControl.ascx" TagPrefix="uc1" TagName="UserInfoControl" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">
    <uc1:userinfocontrol id="UserInfoControl" runat="server"></uc1:userinfocontrol>
        <div id="content">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Chip Disposal Form</asp:LinkButton>
        </div>
        <h2>Active Chip Request</h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ChipDrop %>' DeleteCommand="DELETE FROM [ChipDisposal] WHERE [disposal_id] = @disposal_id" InsertCommand="INSERT INTO [ChipDisposal] ([disposal_id], [producer_id], [qty_id], [date_available], [date_expire], [price]) VALUES (@disposal_id, @producer_id, @qty_id, @date_available, @date_expire, @price)" SelectCommand="SELECT cd.disposal_id, cd.producer_id, cd.qty_id, cq.description, cd.date_available, cd.date_expire, cd.price
FROM ChipDisposal AS cd
JOIN ChipQty AS cq ON (cd.qty_id = cq.qty_id)
WHERE cd.date_available < CURRENT_TIMESTAMP AND cd.date_expire > CURRENT_TIMESTAMP"
        UpdateCommand="UPDATE [ChipDisposal] SET [producer_id] = @producer_id, [qty_id] = @qty_id, [date_available] = @date_available, [date_expire] = @date_expire, [price] = @price WHERE [disposal_id] = @disposal_id">
        <DeleteParameters>
            <asp:Parameter Name="disposal_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="disposal_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="producer_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="qty_id" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_available"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_expire"></asp:Parameter>
            <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="producer_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="qty_id" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_available"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_expire"></asp:Parameter>
            <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="disposal_id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="disposal_id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="disposal_id" HeaderText="disposal_id" ReadOnly="True" SortExpression="disposal_id" Visible="False" />
            <asp:BoundField DataField="producer_id" HeaderText="producer_id" SortExpression="producer_id" Visible="False" ReadOnly="True" />
            <asp:BoundField DataField="qty_id" HeaderText="qty_id" SortExpression="qty_id" Visible="False" />
            <asp:BoundField DataField="description" HeaderText="Quantity" SortExpression="description" />
            <asp:BoundField DataField="date_available" HeaderText="Date Available" SortExpression="date_available" />
            <asp:BoundField DataField="date_expire" HeaderText="Date Expire" SortExpression="date_expire" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price"></asp:BoundField>
        </Columns>
    </asp:GridView>
        <br />
        <h2>Expired Chip Request</h2>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ChipDrop %>' DeleteCommand="DELETE FROM [ChipDisposal] WHERE [disposal_id] = @disposal_id" InsertCommand="INSERT INTO [ChipDisposal] ([disposal_id], [producer_id], [qty_id], [date_available], [date_expire], [price]) VALUES (@disposal_id, @producer_id, @qty_id, @date_available, @date_expire, @price)" SelectCommand="SELECT cd.disposal_id, cd.producer_id, cd.qty_id, cq.description, cd.date_available, cd.date_expire, cd.price
FROM ChipDisposal AS cd
JOIN ChipQty AS cq ON (cd.qty_id = cq.qty_id)
WHERE cd.date_expire < CURRENT_TIMESTAMP" UpdateCommand="UPDATE [ChipDisposal] SET [producer_id] = @producer_id, [qty_id] = @qty_id, [date_available] = @date_available, [date_expire] = @date_expire, [price] = @price WHERE [disposal_id] = @disposal_id">
        <DeleteParameters>
            <asp:Parameter Name="disposal_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="disposal_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="producer_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="qty_id" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_available"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_expire"></asp:Parameter>
            <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="producer_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="qty_id" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_available"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_expire"></asp:Parameter>
            <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="disposal_id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="disposal_id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="disposal_id" HeaderText="disposal_id" ReadOnly="True" SortExpression="disposal_id" Visible="False"></asp:BoundField>
            <asp:BoundField DataField="producer_id" HeaderText="producer_id" SortExpression="producer_id" Visible="False" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="qty_id" HeaderText="qty_id" SortExpression="qty_id" Visible="False"></asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="Quantity" SortExpression="description" />
            <asp:BoundField DataField="date_available" HeaderText="Date Available" SortExpression="date_available"></asp:BoundField>
            <asp:BoundField DataField="date_expire" HeaderText="Date Expire" SortExpression="date_expire"></asp:BoundField>
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price"></asp:BoundField>
        </Columns>
    </asp:GridView>
</asp:Content>