<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TemplateHost.aspx.cs" Inherits="UCMP_TemplateHost" %>
<%@ Register TagPrefix="uc1" TagName="Header" Src ="Header.ascx" %>
<%@ Register TagPrefix="uc2" TagName="Body" Src ="Body.ascx" %>
<%@ Register TagPrefix="uc3" TagName="BodyBLeft" Src ="BodyBLeft.ascx" %>
<%@ Register TagPrefix="uc4" TagName="BodyBRight" Src ="BodyBRight.ascx" %>
<%@ Register TagPrefix="uc5" TagName="Footer2" Src ="Footer2.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <uc1:Header ID="header" runat="server" />
        <br />
        <uc2:Body ID="body" runat="server" />
        <br />
        <uc3:BodyBLeft ID="bodyBLeft" runat="server" />
        <uc4:BodyBRight ID="bodyBRight" runat="server" />
        <br />
        <uc5:Footer2 ID="footer2" runat="server" />

    </div>
    </form>
</body>
</html>
