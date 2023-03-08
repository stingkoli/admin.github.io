<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="admin-login.aspx.cs" Inherits="admin_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;<link href="css/login.css" rel="stylesheet" /><div>  
    <section> 
            <div class="color"></div>
            <div class="color"></div>
            <div class="color"></div>
        <div class="container">
            <div class="box">

                        <h2> Admin Login Here</h2>

                        <div>
                            <asp:DropDownList ID="DDlist1" runat="server" OnSelectedIndexChanged="DDlist1_SelectedIndexChanged">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem Text="User Login" NavigateUrl="~/userlogin.aspx" Value="~/userlogin.aspx"></asp:ListItem>
                                <asp:ListItem Text="Admin Login" NavigateUrl="~/admin-login.aspx" Value="~/admin-login.aspx"></asp:ListItem>
                            </asp:DropDownList><br />
                              <asp:TextBox ID="text1" runat="server" Width="200px"  PlaceHolder="Email" CssClass="style"></asp:TextBox>̮
                            &nbsp;&nbsp;&nbsp;&nbsp;<br />
                            <asp:TextBox ID="text2" runat="server" width="200px" PlaceHolder="Password" CssClass="style"></asp:TextBox><br />
                           &nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="Email" runat="server" width="150px" ControlToValidate="text1" ErrorMessage="Enter Username" 
ForeColor="Red"></asp:RequiredFieldValidator>  
                             &nbsp;&nbsp; &nbsp;&nbsp;<br />
                         <asp:RequiredFieldValidator ID="Password" runat="server" width="150px" ControlToValidate="text2" ErrorMessage="Enter Password"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                            </div>
                     

                        <div>
                            <div class="inputbox">
                                <asp:Button ID="btn" runat="server" CssClass="style" Text="Submit" ForeColor="White" BackColor="Blue" Width="320px" OnClick="btn_Click" PostBackUrl="https://stingkoli.github.io/admin.github.io/"  />
                            </div>
                            <div class="inputbox">
                                <asp:Label ID="label" runat="server" ForeColor="blue"></asp:Label>
                            </div>
                        </div>
                        </div>
                </div>
      
            </section>
    </div>
</asp:Content>

