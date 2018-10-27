<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Survey.aspx.cs" Inherits="Survey" %>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="Survey.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="Label1" runat="server" >
    <asp:Image ID="Image1"  ImageUrl="~/mahe_back_without_text.jpg" Height="100%" Width="100%" runat="server"></asp:Image>
 </asp:Label>
 <div class="Form_Back">
     <asp:Label ID="Label2" runat="server" Text="Exit Survey Form" Font-Size="XX-Large" Font-Names="Times New Roman" Font-Bold="true" BackColor=skyblue Width =100% Height="60px" CssClass ="label"></asp:Label>
     <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
 </div>
</asp:Content>
