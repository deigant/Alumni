<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master"  AutoEventWireup="true" CodeFile="Alumni.aspx.cs" Inherits="Alumni" %>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="Alumni.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"  >
    <div class="back">
   <asp:Label ID="Label2"  runat="server" Height="450px" Width="100%" CssClass="margin_label" >
         <asp:Label ID="Label1" runat="server" Text="Alumni Registration" Font-Size="X-Large" CssClass="center" ></asp:Label>
       <asp:Label ID="Label3" runat="server" Text="Please register with your details"></asp:Label>


       <br /><br />
       <table>
           <tr>
               <td>
                 <asp:Label ID="Label4" runat="server" Text="Name :"></asp:Label>
   
               </td>
               <td>
                      <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>

                       <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>

               </td>
           </tr>
           
           <tr>
               <td>
                   <asp:Label ID="Label5" runat="server" Text="Address :"></asp:Label>
   
               </td>
               <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                   
               </td>
           </tr>
           <tr>
               <td>
                     <asp:Label ID="Label6" runat="server" Text="Contact Number :"></asp:Label>
               </td>
               <td>
                  <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                  <asp:Label ID="Label7" runat="server" Text="College Registration Number :"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label8" runat="server" Text="Year of Graduation :"></asp:Label>
               </td>
               <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label9" runat="server" Text="Company :"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><br /><br />
               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label10" runat="server" Text="Branch :"></asp:Label>
               </td>
                <td>
                     <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
               </td>

          </tr>
           <tr>
               <td>
                   <asp:Label ID="Label11" runat="server" Text="Email ID :"></asp:Label>
               </td>
               <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
               </td>
           </tr>
       </table>
       
            

       <asp:Button ID="Button1" runat="server" Text="Button" />

   </asp:Label>

    </div>

</asp:Content>

