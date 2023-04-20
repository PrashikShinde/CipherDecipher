<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="popup.aspx.cs" Inherits="AspMiniPrj.popup" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body bgcolor="White">
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        &nbsp;&nbsp;
        <br />
        <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/GT.png" 
            Width="125px" />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Alaska" 
            Font-Size="XX-Large" Text="Thank You!"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" 
            Text="Your Feedback Has Been Sent!"></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
