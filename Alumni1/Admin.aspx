<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content contentplaceholderid="head" runat="server">
    <link href="LoginBox.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" >
        <asp:Image ID="Image1"  ImageUrl="~/mahe_back_without_text.jpg" Height="100%" Width="100%" runat="server"></asp:Image>
    </asp:Label>
    <div class="LoginBox">
        <div style="display: inline-block">
            <asp:Label ID="Label2" runat="server" Text="Admin Login" Font-Size="X-Large" Font-Names="Times New Roman" Font-Bold="true" BackColor="#CF7F69" Width ="300px" Height="30px" CssClass ="label"></asp:Label>
            <br />
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtBox" PlaceHolder="Username"></asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" PlaceHolder="Password" CssClass="txtBox" TextMode="Password"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="butt" Text="Login" />
        </div>
    </div>
</asp:Content>