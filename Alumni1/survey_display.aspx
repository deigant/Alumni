﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" StylesheetTheme="Survey" AutoEventWireup="true" CodeFile="survey_display.aspx.cs" Inherits="survey_display" %>


<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="Survey.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Label ID="Label1" runat="server" > <asp:Image ID="Image1"  ImageUrl="~/manipal_form_back.jpg" Height="100%" Width="100%" runat="server"></asp:Image>
 </asp:Label>
 <div class="Form_Back">
     <asp:Label ID="Label2" runat="server" Text="Exit Survey Form" Font-Size="XX-Large" Font-Names="Times New Roman" Font-Bold="true" BackColor=skyblue Width =100% Height="45px" CssClass ="label"></asp:Label>
     <br />
     <br />
     <asp:Label ID="Label13" runat="server" Text="Survey Could not be Loaded!Please Try again." Visible="false" ForeColor="Red"></asp:Label>
     <br />
     <br />

     &nbsp;<asp:Label ID="Label4" runat="server" Text="Basic details:" Font-Size="X-Large" Font-Italic="true"></asp:Label>
     <hr />
     <br />
     <table>
         <tr>
             <td style="vertical-align:middle">
                 &nbsp;Name:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"   Width="170px" ReadOnly="true" Text="" CssClass="txtbox"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </td>
             <td style="vertical-align:middle">
                 &nbsp;Registration Number:&nbsp;
                 <asp:TextBox ID="TextBox2" runat="server" Width="170px" ReadOnly="true" Text="" CssClass="txtbox"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             </td>
             <td style="vertical-align:middle">
                 &nbsp;Campus Placement Company:&nbsp;
                 <asp:TextBox ID="TextBox3" runat="server" Width="170px" ReadOnly="true" Text="" CssClass="txtbox"></asp:TextBox>
             </td>
         </tr>
     </table>
     <%--&nbsp;Name:&nbsp;
     <asp:TextBox ID="TextBox1" runat="server" ReadOnly="true" Text=""></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     Registration Number:
     <asp:TextBox ID="TextBox2" runat="server" ReadOnly="true" Text=""></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     Campus Placement Company:
     <asp:TextBox ID="TextBox3" runat="server" ReadOnly="true" Text=""></asp:TextBox>&nbsp;--%>
     <br />
     <br />
     <br />
     <br />
     &nbsp;<asp:Label ID="Label5" runat="server" Text="Campus Experience:" Font-Size="X-Large" Font-Italic="true"></asp:Label>
     <hr />
     <br />
     <asp:Label ID="Label6" runat="server" Text="Q:-    How would you rate the college's placement procedure, rules and the placement portal?"></asp:Label>
     <br />
     <br />

     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox8" ReadOnly="true" runat="server" Text="" CssClass="txtbox"></asp:TextBox>
     <br />
     <br />
     <asp:Label ID="Label3" runat="server" Text="Q:-    Please provide further suggestions or feedbacks in a few words."></asp:Label>
     <br />
     <br />
     <asp:TextBox ID="TextBox4" ReadOnly="true" runat="server" Text="" CssClass="txtbox" Height="100px" Width="500px" style="margin-left:50px"></asp:TextBox>
     <br />
     <br />
     <br />
      <asp:Label ID="Label7" runat="server" Text="Q:-    How would you rate the college curriculum, choice of subjects and their corresponding labs?"></asp:Label>
     <br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox9" ReadOnly="true" Text="" CssClass="txtbox" runat="server"></asp:TextBox>
     <br />
     <br />
     <asp:Label ID="Label8" runat="server" Text="Q:-    Please provide us further suggestions or feedbacks in a few words."></asp:Label>
     <br />
     <br />
     <asp:TextBox ID="TextBox5" ReadOnly="true" runat="server" Text="" CssClass="txtbox" Height="100px" Width="500px" style="margin-left:50px"></asp:TextBox>
     <br />
     <br />
     <br />
     <asp:Label ID="Label9" runat="server" Text="Q:-    How would you rate the research facilities, student projects and extra curricular activities provided by the college?"></asp:Label>
     <br />
     <br />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox10" ReadOnly="true" Text="" CssClass="txtbox" runat="server"></asp:TextBox>
     <br />
     <br />
     <asp:Label ID="Label10" runat="server" Text="Q:-    Please provide us further suggestions or feedbacks in a few words."></asp:Label>
     <br />
     <br />
     <asp:TextBox ID="TextBox6" runat="server" ReadOnly="true" Text="" CssClass="txtbox" Height="100px" Width="500px" style="margin-left:50px"></asp:TextBox>
     <%--<asp:Label ID="Label3" runat="server" Text="AAAAAAAAAAAAAAAAAAAAAAAAAAA"></asp:Label>--%>
     <br />
     <br />
     <br />
     <br />
     &nbsp;<asp:Label ID="Label11" runat="server" Text="Company Experience:" Font-Size="X-Large" Font-Italic="true"></asp:Label>
     <hr />
     <br />
     <br />
     <asp:Label ID="Label12" runat="server" Text="Q:-    Describe your experience in your joining company in a few words. Did the work assigned to you match your expectations?"></asp:Label>
     <br />
     <br />
     <asp:TextBox ID="TextBox7" Text="" CssClass="txtbox" runat="server" ReadOnly="true" Height="100px" Width="500px" style="margin-left:50px"></asp:TextBox>
     <br />
     <br />
     <br />
     <%--<table>
         <tr>
             <td>
                 <asp:Button ID="Button2" runat="server" Text="Submit Form" CssClass="btn"/>
             </td>
         </tr>
     </table>--%>
     <asp:Button ID="Button1" runat="server" Text="Back" OnClick="Button1_Click" CssClass="btn"/>
     </div>
</asp:Content>

