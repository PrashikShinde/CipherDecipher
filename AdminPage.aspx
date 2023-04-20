<%@ Page Title="" Language="C#" MasterPageFile="~/BG.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="AspMiniPrj.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="text-align: center">
        <br />
        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Cambria" 
            Font-Size="Larger" ForeColor="White" Text="User Feedback Data: - "></asp:Label>
    </p>
    <p style="text-align: center">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataSourceID="SqlDataSource1" Height="50px" Width="125px" 
            AllowPaging="True" Font-Bold="True" Font-Names="Candara" Font-Size="Large" 
            ForeColor="#66FFFF" GridLines="Horizontal">
            <Fields>
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="RT" HeaderText="RT" SortExpression="RT" />
                <asp:BoundField DataField="Msg" HeaderText="Msg" SortExpression="Msg" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            SelectCommand="SELECT * FROM [FeedbackData]"></asp:SqlDataSource>
</p>
    </asp:Content>
