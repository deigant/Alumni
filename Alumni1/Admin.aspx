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
            <asp:Label ID="Label2" runat="server" Text="Login" Font-Size="X-Large" Font-Names="Times New Roman"></asp:Label>
        </div>
    </div>
</asp:Content>

