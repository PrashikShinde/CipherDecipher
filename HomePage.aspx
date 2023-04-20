<%@ Page Title="" Language="C#" MasterPageFile="~/BG.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="AspMiniPrj.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align: center">
        <asp:Label ID="Label2" runat="server" ForeColor="White" Font-Bold="True"
           Font-Size="XX-Large" Text="Welcome To Cipher &amp; Decipher Website!"></asp:Label>
        <br />
   <br />
        <asp:Label ID="Label3" runat="server" ForeColor="White" 
            
            Text="This wesite will help you to understand the ciphers and work with them as<br>cipher's are becoming important part of cyber security field. And<br> to gain the knowledge of this old but gold trend, this Cipher<br>and Decipher website will play important role as this<br>website is having some of the most used and very<br>impotant cipher cryptography types which are<br>with both facility, ciphering and deciphering." 
            Font-Size="Larger"></asp:Label>
            <br />
            <br />

        <asp:Label 
            ID="Label5" runat="server" Font-Bold="True" ForeColor="White" Font-Size="XX-Large"
            Text="What Is Cipher?"></asp:Label>
        &nbsp;
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" 
            Text="Ciphers, also called encryption algorithms, are systems for encrypting<br>and decrypting data. A cipher converts the original message, called<br>plaintext, into ciphertext using a key to determine how it is done." 
            ForeColor="White" Font-Size="Larger"></asp:Label>
        &nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large"
            ForeColor="White" Text="What Is Decipher?"></asp:Label>
        &nbsp;&nbsp;&nbsp;
        <br />
    <br />
        <asp:Label ID="Label8" runat="server" ForeColor="White" 
            
            Text="Convert enciphered text to plain text by means of a cryptographic system." 
            Font-Size="Larger"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Font-Bold="True" ForeColor="White" 
            Text="Thank You!" Font-Size="X-Large"></asp:Label>

        <br />
        <br />
        <asp:Button ID="Button1" runat="server" BackColor="#000066" Font-Bold="True" 
            Font-Names="Candara" Font-Size="X-Large" ForeColor="#66FFFF" 
            PostBackUrl="~/io.aspx" Text="Start Ciphering" />
        </div>
</asp:Content>
