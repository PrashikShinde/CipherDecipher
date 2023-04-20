<%@ Page Title="" Language="C#" MasterPageFile="~/BG.Master" AutoEventWireup="true" CodeBehind="io.aspx.cs" Inherits="AspMiniPrj.Inputpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="style1">
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Candara" 
            Font-Size="X-Large" ForeColor="White" Text="Choose from below: -" 
            style="text-align: center"></asp:Label>
    </p>
    <p class="style1">
        <asp:DropDownList ID="cdd" runat="server" Font-Size="Large">
            <asp:ListItem>Cipher</asp:ListItem>
            <asp:ListItem>Decipher</asp:ListItem>
        </asp:DropDownList>
    </p>
   <p class="style1">
        &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Candara" 
            Font-Size="X-Large" ForeColor="White" Text="Choose Cipher From Below: -"></asp:Label>
    </p>
    <p class="style1">
        <asp:DropDownList ID="ccd" runat="server" Font-Size="Large"
            Width="186px">
            <asp:ListItem>MD5</asp:ListItem>
            <asp:ListItem Value="Cea">Ceaser</asp:ListItem>
            <asp:ListItem Value="Atb">Atbash</asp:ListItem>
            <asp:ListItem>AES</asp:ListItem>
            <asp:ListItem Value="Vig">Vigenere</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p class="style1">
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Cambria" 
            Font-Size="X-Large" ForeColor="White" Text="Enter Your Input Here: - "></asp:Label>
    </p>
    <p class="style1">
        <asp:TextBox ID="tb" runat="server" 
            Rows="10" TextMode="MultiLine" Width="420px" BackColor="#66FFFF" 
            style="text-align: center"></asp:TextBox>
    </p>
    <p style="text-align: center">
        <asp:Button ID="Button1" runat="server" BackColor="#000066" Font-Bold="True" 
            Font-Names="Candara" Font-Size="Large" ForeColor="#66FFFF" 
            onclick="Button1_Click" Text="Submit" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" BackColor="#000066" Font-Bold="True" 
            Font-Names="Candara" Font-Size="Large" ForeColor="#66FFFF" 
            onclick="Button4_Click" Text="Paste Your Input" />
    </p>
    <p style="text-align: center">
        <asp:Button ID="Button2" runat="server" BackColor="#000066" Font-Bold="True" 
            Font-Names="Candara" Font-Size="Large" ForeColor="#66FFFF" Height="34px" 
            PostBackUrl="~/HomePage.aspx" Text="Run Again" Visible="False" />
    &nbsp;
        <asp:Button ID="Button3" runat="server" BackColor="#000066" Font-Bold="True" 
            Font-Names="Candara" Font-Size="Large" ForeColor="#66FFFF" Height="34px" 
            Text="Copy To ClipBoard"
            Visible="False" onclick="Button3_Click" />
    </p>
</asp:Content>
