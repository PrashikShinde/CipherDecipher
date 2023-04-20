<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cu.aspx.cs" Inherits="AspMiniPrj.cu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link rel="cipher decipher icon" type="image/ico" href="Cipher Decipher_free-file.ico">
    <title></title>
    <style type="text/css">
        #form1
        {
            text-align: center;
        }
    </style>
</head>
<body background="BackgroundImage">
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Panel ID="Panel1" runat="server" Height="142px" style="text-align: center">
            <br />
            <asp:Image ID="Image1" runat="server" Height="118px" ImageAlign="Middle" 
                ImageUrl="~/Cipher Decipher_free-file.png" Width="139px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Caladea" 
                Font-Size="40pt" ForeColor="#00B1F0" Text="Cipher &amp; Decipher"></asp:Label>
        </asp:Panel>
    
    </div>
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Caladea" 
            Font-Size="XX-Large" ForeColor="#00B1F0" Text="Contact Us: -"></asp:Label>
    <p style="text-align: center">
        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" 
            ForeColor="White" Text="Name: - "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Width="152px"></asp:TextBox>
    </p>
    <p style="text-align: center">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" 
            ErrorMessage="Please Enter Your Name!!!" Font-Bold="True" Font-Underline="True" 
            ForeColor="#FF0D0D"></asp:RequiredFieldValidator>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Caladea" 
            Font-Size="Large" ForeColor="White" Text="Email: - "></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="152px"></asp:TextBox>
    </p>
    <p style="text-align: center">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" 
            ErrorMessage="Please Enter Your Email Id!!!" Font-Bold="True" 
            Font-Underline="True" ForeColor="#FF0D0D"></asp:RequiredFieldValidator>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Caladea" 
            Font-Size="Large" ForeColor="White" Text="Choose: - "></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" Width="152px">
            <asp:ListItem Selected="True">Request</asp:ListItem>
            <asp:ListItem>Complaint</asp:ListItem>
            <asp:ListItem>Suggestion</asp:ListItem>
            <asp:ListItem>Feedback</asp:ListItem>
            <asp:ListItem>Other</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p style="text-align: center">
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Caladea" 
            Font-Size="Large" ForeColor="White" Text="Enter Your Msg Here: - "></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:TextBox ID="TextBox3" runat="server" Rows="10" TextMode="MultiLine" 
            Width="326px"></asp:TextBox>
    </p>
    <p style="text-align: center">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" 
            ErrorMessage="Please Prove Some Input Above!!!" Font-Bold="True" 
            Font-Underline="True" ForeColor="#FF0D0D"></asp:RequiredFieldValidator>
    </p>
    <p style="text-align: center">
        <asp:Button ID="Button1" runat="server" BackColor="Cyan" Font-Bold="True" 
            Font-Size="Large" ForeColor="#000066" Text="Submit" 
            onclick="Button1_Click" />
    </p>
    </form>
</body>
</html>
