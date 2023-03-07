<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.master" AutoEventWireup="true" CodeFile="admin-blog.aspx.cs" Inherits="admin_admin_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
         <link href="../css/adminsurg.css" rel="stylesheet" />

         <style type="text/css">
             .auto-style3 {
                 border-right: 1px solid #a9a9a9;
                 border-bottom: 1px solid #a9a9a9;
                 padding: 5px;
                 max-width: 455px;
                 max-height: 230px;
                 min-height: 230px;
                 font-size: 13px;
                 line-height: 20px;
                 color: rgb(63,69,73);
                 font-family: Arapey;
                 font-weight: lighter;
                 min-width: 455px;
                 margin-top: 10px;
                 background-color: #fcfcfc;
                 border-top: 1px solid #191919;
                 border-left: 1px solid #191919;
                 margin-left: 0;
                 margin-right: 0;
                 margin-bottom: 0;
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

                        <h2>&nbsp; Blogs</h2>

                        <div class="auto-style1">
                  <asp:TextBox ID="text1" runat="server" Width="150px"  PlaceHolder="Title" CssClass="style" ></asp:TextBox>̮
                            <asp:RequiredFieldValidator ID="ads1" runat="server" width="150px" ControlToValidate="text1" ErrorMessage="Enter Title" 
ForeColor="Red" CssClass="auto-style4"></asp:RequiredFieldValidator>  
                              <br />
                             <asp:TextBox ID="text2" runat="server" Width="150px"  PlaceHolder="Author" CssClass="style" ></asp:TextBox>̮&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="ads4" runat="server" width="150px" ControlToValidate="text1" ErrorMessage="Enter Author" 
ForeColor="Red" CssClass="auto-style4"></asp:RequiredFieldValidator>  
                             <br />
                               <asp:TextBox ID="text3" runat="server" Width="150px"  PlaceHolder="Date" CssClass="style" ></asp:TextBox>̮&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" width="150px" ControlToValidate="text1" ErrorMessage="Enter Date" 
ForeColor="Red" CssClass="auto-style4"></asp:RequiredFieldValidator>  
                             <br /><asp:TextBox ID="TextBox1" runat="server"  TextMode="multiline" CssClass="Contact_Input" MaxLength="1200" lines="10" cols="10" Wrap="true"  >

</asp:TextBox>
 <asp:Button ID="btn" runat="server" Text="Save" OnClick="btn_Click" Height="45px" Width="206px"  />
                                <br />
                                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="label1" runat="server" Text="" ForeColor="blue"></asp:Label>
                        
               </div>
                </div>
           </div>
          </section> >
    
</asp:Content>

