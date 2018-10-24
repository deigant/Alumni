<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" StylesheetTheme="Alumni"  AutoEventWireup="true" CodeFile="Alumni.aspx.cs" Inherits="Alumni" %>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="Alumni.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"  >
    <div class="back">
   <asp:Label ID="Label2"  runat="server" Height="450px" Width="95%" CssClass="margin_label" >
         <asp:Label ID="Label1" runat="server" Text="Alumni Registration" Font-Size="X-Large" CssClass="center" ></asp:Label>
      
       &nbsp;&nbsp;
       <asp:Label ID="Label3" runat="server" Text="Please register with your details"   ></asp:Label>

       <table class="left">
           <tr>
               <td>
                 <asp:Label ID="Label4" runat="server" Text="Name :"></asp:Label>
   
               </td>
               <td>
                      <asp:TextBox ID="TextBox1" runat="server"  CssClass="txtbox"></asp:TextBox>
                     <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required!" ForeColor="Red"></asp:RequiredFieldValidator>

               </td>
           </tr>
           
           <tr>
               <td>
                   <asp:Label ID="Label5" runat="server" Text="Address :"></asp:Label>
   
               </td>
               <td>
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="txtbox"></asp:TextBox>
                    <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address is required!" ForeColor="Red"></asp:RequiredFieldValidator>


                   
               </td>
           </tr>
           <tr>
               <td>
                     <asp:Label ID="Label6" runat="server" Text="Contact Number :"></asp:Label>
               </td>
               <td>
                  <asp:TextBox ID="TextBox3" runat="server" CssClass="txtbox"></asp:TextBox>
                    <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox3" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Contact No. is required!" ForeColor="Red"></asp:RequiredFieldValidator>

               </td>
           </tr>
           <tr>
               <td>
                  <asp:Label ID="Label7" runat="server" Text="College Registration Number :"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox4" runat="server" CssClass="txtbox"></asp:TextBox>
                    <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox4" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Registration Number is required!" ForeColor="Red"></asp:RequiredFieldValidator>

               </td>
           </tr>
           </table>

           <table class="right">
           <tr>
               <td>
                   <asp:Label ID="Label8" runat="server" Text="Year of Graduation :"></asp:Label>
               </td>
               <td>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="txtbox"></asp:TextBox>
                      <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox5" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Year of Graduation is required!" ForeColor="Red"></asp:RequiredFieldValidator>


               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label9" runat="server" Text="Company :"></asp:Label>
               </td>
               <td>
                   <asp:TextBox ID="TextBox6" runat="server" CssClass="txtbox"></asp:TextBox>
                      <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox6" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Company is required!" ForeColor="Red"></asp:RequiredFieldValidator>


               </td>
           </tr>
           <tr>
               <td>
                   <asp:Label ID="Label10" runat="server" Text="Branch :"></asp:Label>
               </td>
                <td>
                     <asp:TextBox ID="TextBox7" runat="server" CssClass="txtbox"></asp:TextBox>
                       <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox7" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Branch is required!" ForeColor="Red"></asp:RequiredFieldValidator>


               </td>

          </tr>
           <tr>
               <td>
                   <asp:Label ID="Label11" runat="server" Text="Email ID :"></asp:Label>
               </td>
               <td>
                    <asp:TextBox ID="TextBox8" runat="server" CssClass="txtbox"></asp:TextBox>
                      <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox8" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Email Id is required!" ForeColor="Red"></asp:RequiredFieldValidator>


               </td>
           </tr>
       </table>

       <asp:Button ID="Button1" runat="server" Text="Register"  Height="30px" Width="150px"  CssClass="register"/>

   </asp:Label>

    </div>

</asp:Content>

