<%@ Page Language="C#" MasterPageFile="~/lib/MasterPage.master" AutoEventWireup="true" CodeFile="Customer-dashboard.aspx.cs" Inherits="Default6" %>

<%@ Register Src="~/lib/UserInfoControl.ascx" TagPrefix="uc1" TagName="UserInfoControl" %>

<asp:Content ID="MainContent" runat="server" ContentPlaceHolderID="MainContent">

    <uc1:UserInfoControl runat="server" ID="UserInfoControl" />

        <div id="content">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Chip Request Form</asp:LinkButton>
        </div>
        <h2>Active Chip Request</h2>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:ChipDrop %>' DeleteCommand="DELETE FROM [ChipRequest] WHERE [request_id] = @request_id" InsertCommand="INSERT INTO [ChipRequest] ([request_id], [customer_id], [qty_id], [date_available], [date_expire]) VALUES (@request_id, @customer_id, @qty_id, @date_available, @date_expire)" SelectCommand="SELECT cr.request_id, cr.customer_id, cr.qty_id, cq.description, cr.date_available, cr.date_expire FROM ChipRequest AS cr JOIN ChipQty AS cq ON (cr.qty_id = cq.qty_id)" UpdateCommand="UPDATE [ChipRequest] SET [customer_id] = @customer_id, [qty_id] = @qty_id, [date_available] = @date_available, [date_expire] = @date_expire WHERE [request_id] = @request_id">
        <DeleteParameters>
            <asp:Parameter Name="request_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="request_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="customer_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="qty_id" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_available"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_expire"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="customer_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="qty_id" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_available"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_expire"></asp:Parameter>
            <asp:Parameter Name="request_id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="request_id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="request_id" HeaderText="request_id" ReadOnly="True" SortExpression="request_id" Visible="False" />
            <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" Visible="False" />
            <asp:BoundField DataField="qty_id" HeaderText="qty_id" SortExpression="qty_id" Visible="False" />
            <asp:BoundField DataField="description" HeaderText="Quantity" SortExpression="description" />
            <asp:BoundField DataField="date_available" HeaderText="Date Available" SortExpression="date_available" />
            <asp:BoundField DataField="date_expire" HeaderText="Date Expire" SortExpression="date_expire" />
        </Columns>
    </asp:GridView>
        <br />
        <h2>Expired Chip Request</h2>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:ChipDrop %>' DeleteCommand="DELETE FROM [ChipRequest] WHERE [request_id] = @request_id" InsertCommand="INSERT INTO [ChipRequest] ([request_id], [customer_id], [qty_id], [date_available], [date_expire]) VALUES (@request_id, @customer_id, @qty_id, @date_available, @date_expire)" SelectCommand="SELECT cr.request_id, cr.customer_id, cr.qty_id, cq.description, cr.date_available, cr.date_expire FROM ChipRequest AS cr JOIN ChipQty AS cq ON (cr.qty_id = cq.qty_id) WHERE cr.date_expire &gt; CURRENT_TIMESTAMP;" UpdateCommand="UPDATE [ChipRequest] SET [customer_id] = @customer_id, [qty_id] = @qty_id, [date_available] = @date_available, [date_expire] = @date_expire WHERE [request_id] = @request_id">
        <DeleteParameters>
            <asp:Parameter Name="request_id" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="request_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="customer_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="qty_id" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_available"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_expire"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="customer_id" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="qty_id" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_available"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="date_expire"></asp:Parameter>
            <asp:Parameter Name="request_id" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="request_id">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" />
            <asp:BoundField DataField="request_id" HeaderText="request_id" ReadOnly="True" SortExpression="request_id" Visible="False"></asp:BoundField>
            <asp:BoundField DataField="customer_id" HeaderText="customer_id" SortExpression="customer_id" Visible="False"></asp:BoundField>
            <asp:BoundField DataField="qty_id" HeaderText="qty_id" SortExpression="qty_id" Visible="False"></asp:BoundField>
            <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
            <asp:BoundField DataField="date_available" HeaderText="date_available" SortExpression="date_available"></asp:BoundField>
            <asp:BoundField DataField="date_expire" HeaderText="date_expire" SortExpression="date_expire"></asp:BoundField>
        </Columns>
    </asp:GridView>
</asp:Content>
