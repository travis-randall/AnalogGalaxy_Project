<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
   
   
   
   
   <!-- Headers and links to repository pages go here -->
   <h2>Sample</h2>
    <a href="Sample/Page1.aspx" target="_blank">Sample/Page1.aspx</a>
    <a href="Sample/Page2.aspx" target="_blank">Sample/Page2.aspx</a>

   <h2>C#</h2>
    <a href="C-Sharp/ProductCatalogTest.aspx" target="_blank">Product Catalog Test</a>
   
   <h2>Web Form Fundamentals</h2>
    <a href="WebForm/CurrencyConverter.aspx" target="_blank">Currency Converter</a>

   <h2>Web Controls</h2>
    <a href="WebControls/NewGreetingCardMaker.aspx" target="_blank">New Greeting Card Maker</a>

   <h2>Advanced Controls</h2>
    <a href="Advanced_Controls/Advanced_Controls.aspx" target="_blank">Advanced Web Form Controls</a>

    <h2>User Controls and Master Pages</h2>
    <a href="UCMP/FooterHost.aspx" target="_blank">FooterHost.aspx</a>
    <a href="UCMP/ChangeMaster.aspx" target="_blank">ChangeMaster.aspx</a>

</asp:Content>
