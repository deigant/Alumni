<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" StylesheetTheme="Alumni"  AutoEventWireup="true" CodeFile="Alumni.aspx.cs" Inherits="Alumni" %>

<asp:Content ID="content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link href="Alumni.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server"  >
    <div class="back">
   <asp:Label ID="Label2"  runat="server" Height="450px" Width="95%" CssClass="margin_label" >
         <asp:Label ID="Label1" runat="server" Text="Alumni Registration" Font-Size="X-Large" CssClass="center" ></asp:Label>
      
       &nbsp;&nbsp;
       <asp:Label ID="Label3" runat="server" Text="Please register with your details"   Font-Bold ="true" Font-Size="Medium"></asp:Label>
       <br />
       <br />

       <table class="left">
           <tr>
               <td style="vertical-align: middle" >
                 <asp:Label ID="Label4" runat="server" Text="Name :"></asp:Label>
   
               </td>
               <td style="vertical-align: bottom">
                      <asp:TextBox PlaceHolder="Name" ID="TextBox1" runat="server"  CssClass="txtbox"></asp:TextBox>
                     <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox1" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name is required!"></asp:RequiredFieldValidator>
                   <br /><br />

               </td>
           </tr>
           
           <tr>
               <td style="vertical-align: middle" >
                   <asp:Label ID="Label5" runat="server" Text="Address :"></asp:Label>
   
               </td>
               <td style="vertical-align: bottom">
                        <asp:TextBox PlaceHolder="Address" ID="TextBox2" runat="server" CssClass="txtbox"></asp:TextBox>
                    <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox2" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Address is required!" ></asp:RequiredFieldValidator>
                   <br />
                   <br />

                   
               </td>
           </tr>
           <tr>
               <td style="vertical-align: middle">
                     <asp:Label ID="Label6" runat="server" Text="Contact Number :"></asp:Label>
               </td>
               <td style="vertical-align: bottom">
                  <asp:TextBox ID="TextBox3" PlaceHolder="Contact Number" runat="server" CssClass="txtbox"></asp:TextBox>
                    <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox3" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Contact No. is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator3" ControlToValidate="TextBox3" ValidationExpression="[0-9]{10}" runat="server" ErrorMessage="Please enter a 10 digit phone number"></asp:RegularExpressionValidator>
                   <br />

               </td>
           </tr>
           <tr>
               <td style="vertical-align: middle" >
                  <asp:Label ID="Label7" runat="server" Text="College Registration Number :"></asp:Label>
               </td>
               <td style="vertical-align: bottom">
                   <asp:TextBox ID="TextBox4" PlaceHolder="College Registration Number" runat="server" CssClass="txtbox"></asp:TextBox>
                    <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox4" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Registration Number is required!" ></asp:RequiredFieldValidator>
                   <br />
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator4"  ControlToValidate="TextBox4"  ValidationExpression="[0-9]{9}" runat="server" ErrorMessage="Please enter a 9 digit registration number"></asp:RegularExpressionValidator>
             <br />

                   </td>
           </tr>
           </table>

           <table class="right">
           <tr>
               <td style="vertical-align: middle">
                   <asp:Label ID="Label8" runat="server" Text="Year of Graduation :"></asp:Label>
               </td>
               <td style="vertical-align: bottom">
                    <asp:TextBox ID="TextBox5" PlaceHolder="Year of Graduation" runat="server" CssClass="txtbox"></asp:TextBox>
                      <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox5" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Year of Graduation is required!" ></asp:RequiredFieldValidator>
                   <br />
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ValidationExpression="[0-9]{4}" ControlToValidate="TextBox5"  ErrorMessage="Please enter year in the valid format (YYYY)"></asp:RegularExpressionValidator>
                   <br />


               </td>
           </tr>
           <tr>
               <td style="vertical-align: middle" >
                   <asp:Label ID="Label9" runat="server" Text="Company :"></asp:Label>
               </td>
               <td style="vertical-align: bottom">
                   <asp:TextBox ID="TextBox6" PlaceHolder="Company" runat="server" CssClass="txtbox"></asp:TextBox>
                      <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox6" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Company is required!" ></asp:RequiredFieldValidator>
                   <br />


               </td>
           </tr>
           <tr>
               <td style="vertical-align: middle" >
                   <asp:Label ID="Label10" runat="server" Text="Branch :"></asp:Label>
               </td>
                <td style="vertical-align: bottom">
                     <asp:TextBox ID="TextBox7" PlaceHolder="Branch" runat="server" CssClass="txtbox"></asp:TextBox>
                       <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox7" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Branch is required!" ></asp:RequiredFieldValidator>
                    <br />


               </td>

          </tr>
           <tr>
               <td style="vertical-align: middle" >
                   <asp:Label ID="Label11" runat="server" Text="Email ID :"></asp:Label>
               </td>
               <td style="vertical-align: bottom">
                    <asp:TextBox ID="TextBox8" PlaceHolder="Email ID" runat="server" CssClass="txtbox"></asp:TextBox>
                      <br />

                      &nbsp;&nbsp; <asp:RequiredFieldValidator ControlToValidate="TextBox8" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Email Id is required!" ForeColor="Red"></asp:RequiredFieldValidator>
                   <br />

                   <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox8"  ValidationExpression="[a-zA-Z].+@.+" ErrorMessage="Please enter a valid Email Id!"></asp:RegularExpressionValidator>



               </td>
           </tr>
       </table>

       <asp:Button ID="Button1" runat="server" Text="Register"  Height="30px" Width="150px"  CssClass="register" OnClick="Button1_Click"/>
       &nbsp;&nbsp;&nbsp; <asp:Label ID="Label12" runat="server" Text="Registration Failed. Please Enter the Correct Data and try again." CssClass="errorb"  ForeColor="Red" Visible="false"></asp:Label>
   </asp:Label>

    </div>

</asp:Content>

