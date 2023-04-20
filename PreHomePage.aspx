<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PreHomePage.aspx.cs" Inherits="AspMiniPrj.PreHomePage" %>

<!DOCTYPE html5 PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="cipher decipher icon" type="image/ico" href="Cipher Decipher_free-file.ico">
    <title></title>
</head>
<body background="BackgroundImage">
    <form id="form1" runat="server">
    <div style="text-align: center">
        <br />
        &nbsp;<asp:Label ID="Label1" 
            runat="server" Font-Bold="True" Font-Names="Caladea" 
            Font-Size="50pt" ForeColor="#00B1F0" Text="Welcome To Cipher World!"></asp:Label>
        
            <br />
            <br />
            <br />
            <br />
            <br />
        <video widte="720" height="360" autoplay="True" muted="True" onended="ver()">
        <source src="intro.mp4" type="video/mp4"/>
        </video>
        </div>
    </form>
    <script type = "text/javascript">
        function ver() {
            location.href = "HomePage.aspx";
        }
    </script>
</body>
</html>
