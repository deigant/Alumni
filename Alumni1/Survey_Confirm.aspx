<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" StylesheetTheme="Survey_Confirm"  AutoEventWireup="true" CodeFile="Survey_Confirm.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder2" Runat="Server">
    <link href="Survey_Confirm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div align="center" class="bla" >
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
    <div class="Boxy">
        <br />
        <asp:Label ID="Label1" runat="server" Text="" SkinID="y"></asp:Label>
        <br /><br /><br />&nbsp;&nbsp;<asp:Label ID="Label2" SkinID="y" runat="server" Text="Your response has been recorded."></asp:Label><br /><br />
        <br /><asp:HyperLink ID="HyperLink1" runat="server" SkinID="x" NavigateUrl="~/Home.aspx">Back to home</asp:HyperLink>
    </div>
    </div>
</asp:Content>

