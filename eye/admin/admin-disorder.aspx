<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin-disorder.aspx.cs" Inherits="admin_admin_disorder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <link href="../css/adminsurg.css" rel="stylesheet" />
        <section> 
     <div class="color"></div>
            <div class="color"></div>
            <div class="color"></div>   
    <div class="container">
            <div class="box">
                        <h2>&nbsp;Disorder Details</h2>
                        <div class="auto-style1">
                            <asp:TextBox ID="text1" runat="server" Width="150px"  PlaceHolder="Disorder Name" CssClass="style" ></asp:TextBox>̮&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="ads1" runat="server" width="150px" ControlToValidate="text1" ErrorMessage="Enter Name" 
ForeColor="Red" CssClass="auto-style4"></asp:RequiredFieldValidator> 
                             <br />
                             <br />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:TextBox ID="TextBox1" runat="server"  TextMode="multiline" CssClass="Contact_Input" MaxLength="1200" lines="10" cols="10" Wrap="true"  >

</asp:TextBox>
                             <br />
                             <asp:FileUpload ID="FileUpload1"  AllowMultiple="true" runat="server" />
                             <br />
                             <br />
                                <asp:Button ID="btn" runat="server" Text="Save" OnClick="btn_Click"  />
                                <br />
                                <br />
                                <asp:Label ID="Label1" runat="server" Text="" ForeColor="blue"></asp:Label>
               </div>
                </div>
           </div>
          </section> 
</asp:Content>

