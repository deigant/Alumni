<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Survey_List.aspx.cs" Inherits="Admin_Survey_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceholder2" Runat="Server">
    <link href="Admin_Survey_List.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ConnectionStrings:Alumni%>" 
          SelectCommand ="Select * from registrations"
         DeleteCommand="Delete from Registrations where registration_number=@registration_number"
         UpdateCommand="Update Registrations set Name=@Name,Contact=@Contact,Address=@Address,Year=@Year,Branch=@Branch,Company=@Company,Email=@Email where registration_number=@registration_number">     
     </asp:SqlDataSource>
    
    <div class="back">
        <asp:Label ID="Label1" runat="server"  Height="450px" Width="95%" CssClass="margin_label">
            <div align="center">
                <asp:Label ID="Label4" runat="server" Text="Alumni Registrations List"  Font-Bold="true" Font-Size="X-Large"></asp:Label>

            </div>
            <br />
            <br />

            <asp:Label ID="Label2" runat="server" Text="List of Current Alumni Registrations (Select to see the corresponding survey response) :" Font-Bold="true"></asp:Label>
            <br />
            <br />
            <br />
            <br />

            <div align="center">


            <div align="Center">
                    <asp:GridView  CssClass="mydatagrid" PagerStyle-CssClass="pager"  DataKeyNames="registration_number" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True"  PageSize="10" ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="false">
                        <Columns>
                            <asp:TemplateField HeaderText="Registration Number"  SortExpression="registration_number" >
                                
                                <ItemTemplate>
                                    <%# Eval("registration_number") %>
                                </ItemTemplate>
                                <EditItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%#Bind("registration_number") %>'></asp:Label>
                                 </EditItemTemplate>
                                 
                            </asp:TemplateField>

                            <asp:BoundField DataField="Name" HeaderText="Name" >
                                <ControlStyle width="100px"/>
                            </asp:BoundField>

                            <asp:BoundField DataField="Contact" HeaderText="Contact" >
                                <ControlStyle width="100px"/>
                            </asp:BoundField>

                            <asp:BoundField DataField="Address" HeaderText="Address" >
                                <ControlStyle width="100px"/>
                            </asp:BoundField>
                            <asp:BoundField DataField="Year" HeaderText="Year" >
                                <ControlStyle width="100px"/>
                            </asp:BoundField>

                            <asp:BoundField DataField="Branch" HeaderText="Branch" >
                                <ControlStyle width="100px"/>
                            </asp:BoundField>

                            <asp:BoundField DataField="Company" HeaderText="Company" >
                                <ControlStyle width="100px"/>
                            </asp:BoundField>

                            <asp:BoundField DataField="Email" HeaderText="E-mail" >
                                <ControlStyle width="200px"/>
                            </asp:BoundField>

                            <asp:CommandField ShowSelectButton="true" ItemStyle-ForeColor="Blue"  ItemStyle-Font-Underline="true"/>
                            <asp:CommandField ShowEditButton="true" ItemStyle-ForeColor="Blue"  ItemStyle-Font-Underline="true" />
                            <asp:CommandField ShowDeleteButton="true"  ItemStyle-ForeColor="Blue"  ItemStyle-Font-Underline="true"/>
                            
                        </Columns>
                        </asp:GridView>
                <br />

                <table style="width:100%">
                <tr>
                    <td>
                         <asp:Label ID="Label3" runat="server" Text="Filter By : " Font-Bold="true"></asp:Label>  &nbsp; &nbsp; &nbsp;
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox1" runat="server" Width="150px" placeholder="Registration Number" CssClass="rounded" ></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" Width="100px" placeholder="Name" CssClass="rounded"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" Width="100px" placeholder="Contact"  CssClass="rounded"></asp:TextBox>
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox4" runat="server" Width="100px" placeholder="Address" CssClass="rounded"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox5" runat="server" Width="100px" placeholder="Year" CssClass="rounded"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox6" runat="server" Width="100px" placeholder="Branch" CssClass="rounded"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Width="100px" placeholder="Company" CssClass="rounded"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Width="150px" placeholder="E-mail" CssClass="rounded"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Filter" OnClick="Filter_Click"  CssClass="rounded"/>
                    </td>
            
                </tr>
            </table>


    </asp:Label>

    </div>
    
    






</asp:Content>

