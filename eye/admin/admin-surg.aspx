<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin-surg.aspx.cs" Inherits="admin_admin_surg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../css/adminsurg.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style3 {
            width: 619px;
            height: 127px;

        }
    </style>                                                                                             
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section> 
     <div class="color"></div>
            <div class="color"></div>
            <div class="color"></div>   
    <div class="container">
            <div class="box">

                        <h2>&nbsp;Surgery Details</h2>

                        <div class="auto-style1">
                              <asp:TextBox ID="text1" runat="server" Width="150px"  PlaceHolder="Surgery Name" CssClass="style" ></asp:TextBox>̮&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="ads1" runat="server" width="150px" ControlToValidate="text1" ErrorMessage="Enter Name" 
ForeColor="Red" CssClass="auto-style4"></asp:RequiredFieldValidator>  
                              <br />
                        <br />
                             <asp:TextBox ID="text2" runat="server" width="150px" PlaceHolder="Surgery Cost" Cs TextMode="multiline"  MaxLength="1200" lines="3" cols="8" Wrap="true" ></asp:TextBox>&nbsp; &nbsp;&nbsp;
                         <asp:RequiredFieldValidator ID="ads2" runat="server" width="150px" ControlToValidate="text2" ErrorMessage="Enter Cost"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                             <br />
                             <br />
<asp:TextBox ID="TextBox1" runat="server"  TextMode="multiline" CssClass="Contact_Input" MaxLength="1200" lines="10" cols="10" Wrap="true"  >
</asp:TextBox>                           
                             <br />
 <asp:TextBox ID="text3" runat="server" width="150px" PlaceHolder="Image Name" CssClass="style" ></asp:TextBox>

                         <asp:RequiredFieldValidator ID="ads3" runat="server" width="202px" ControlToValidate="text2" ErrorMessage="Enter Image Name"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                             <br />
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
          </section> >
                    
</asp:Content>

