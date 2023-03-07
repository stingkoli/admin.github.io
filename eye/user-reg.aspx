<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="user-reg.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     
    <style type="text/css">
    .auto-style3 {
        height: 415px;
    }
</style>
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      
        <link href="css/StyleSheet.css" rel="stylesheet" />
    <div class="auto-style3">  
    <section> 
            <div class="color"></div>
            <div class="color"></div>
            <div class="color"></div>
        <div class="container">
            <div class="box">

                        <h2> Registeration Form</h2>

                        <div class="auto-style1">
                              <asp:TextBox ID="text1" runat="server" Width="150px"  PlaceHolder="First Name" CssClass="style"></asp:TextBox>̮
                            &nbsp;&nbsp;
                            <asp:TextBox ID="text2" runat="server" width="150px" PlaceHolder="Last Name" CssClass="style"></asp:TextBox><br />
                           &nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="fname" runat="server" width="150px" ControlToValidate="text1" ErrorMessage="Enter Name" 
ForeColor="Red"></asp:RequiredFieldValidator>  
                             &nbsp;&nbsp; &nbsp;&nbsp;
                         <asp:RequiredFieldValidator ID="lname" runat="server" width="150px" ControlToValidate="text2" ErrorMessage="Enter Name"   
ForeColor="Red"></asp:RequiredFieldValidator>  
                            </div>
                     

                        <div class="auto-style1" style=""width:110%">
                        <asp:DropDownList ID="Drop1" runat="server" CssClass="style" AutoPostBack="True"> 
                            <asp:ListItem Value="Date " Selected="True"></asp:ListItem>
                            <asp:ListItem Value="01"></asp:ListItem>
                            <asp:ListItem Value="02"></asp:ListItem>
                            <asp:ListItem Value="03"></asp:ListItem>
                            <asp:ListItem Value="04"></asp:ListItem>
                            <asp:ListItem Value="05"></asp:ListItem>
                            <asp:ListItem Value="06"></asp:ListItem>
                            <asp:ListItem Value="07"></asp:ListItem>
                            <asp:ListItem Value="08"></asp:ListItem>
                            <asp:ListItem Value="09"></asp:ListItem>
                            <asp:ListItem Value="10"></asp:ListItem>
                            <asp:ListItem Value="11"></asp:ListItem>
                            <asp:ListItem Value="12"></asp:ListItem>
                            <asp:ListItem Value="13"></asp:ListItem>
                            <asp:ListItem Value="14"></asp:ListItem>
                            <asp:ListItem Value="15"></asp:ListItem>
                            <asp:ListItem Value="16"></asp:ListItem>
                            <asp:ListItem Value="17"></asp:ListItem>
                            <asp:ListItem Value="18"></asp:ListItem>
                            <asp:ListItem Value="19"></asp:ListItem>
                            <asp:ListItem Value="20"></asp:ListItem>
                            <asp:ListItem Value="21"></asp:ListItem>
                            <asp:ListItem Value="22"></asp:ListItem>
                            <asp:ListItem Value="23"></asp:ListItem>
                            <asp:ListItem Value="24"></asp:ListItem>
                            <asp:ListItem Value="25"></asp:ListItem>
                            <asp:ListItem Value="26"></asp:ListItem>
                            <asp:ListItem Value="27"></asp:ListItem>
                            <asp:ListItem Value="28"></asp:ListItem>
                            <asp:ListItem Value="29"></asp:ListItem>
                            <asp:ListItem Value="30"></asp:ListItem>
                            <asp:ListItem Value="31"></asp:ListItem>
                        </asp:DropDownList>
                            <%--<asp:RequiredFieldValidator ID="dat" runat="server" width="100px" ControlToValidate="Drop1" ErrorMessage="invalid"  >
                                                        </asp:RequiredFieldValidator>--%>
                        <asp:DropDownList ID="drop2" runat="server" CssClass="style" AutoPostBack="True">
                        <asp:ListItem Value="Month" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="Jan"></asp:ListItem>
                        <asp:ListItem Value="Feb"></asp:ListItem>
                        <asp:ListItem Value="Mar"></asp:ListItem>
                        <asp:ListItem Value="Apr"></asp:ListItem>
                        <asp:ListItem Value="May"></asp:ListItem>
                        <asp:ListItem Value="Jun"></asp:ListItem>
                        <asp:ListItem Value="Jul"></asp:ListItem>
                        <asp:ListItem Value="Aug"></asp:ListItem>
                        <asp:ListItem Value="Sept"></asp:ListItem>
                        <asp:ListItem Value="Oct"></asp:ListItem>
                        <asp:ListItem Value="Nov"></asp:ListItem>
                        <asp:ListItem Value="Dec"></asp:ListItem>
                        </asp:DropDownList>
                            <asp:DropDownList ID="drop3" runat="server" CssClass="style" AutoPostBack="True">
                                <asp:ListItem Selected="True">Year</asp:ListItem>
                                <asp:ListItem Value="2022"></asp:ListItem>
                                <asp:ListItem Value="2021"></asp:ListItem>
                                <asp:ListItem Value="2020"></asp:ListItem>
                                <asp:ListItem Value="2019" ></asp:ListItem>
                                <asp:ListItem Value="2018"></asp:ListItem>
                                <asp:ListItem Value="2017"></asp:ListItem>
                                <asp:ListItem Value="2016"></asp:ListItem>
                                <asp:ListItem Value="2015"></asp:ListItem>
                                <asp:ListItem Value="2014"></asp:ListItem>
                                <asp:ListItem Value="2013"></asp:ListItem>
                                <asp:ListItem Value="2012"></asp:ListItem>
                                <asp:ListItem value="2011"></asp:ListItem>
                                <asp:ListItem value="2010"></asp:ListItem>
                                <asp:ListItem value="2009"></asp:ListItem>
                                <asp:ListItem Value="2008"></asp:ListItem>
                                <asp:ListItem Value="2007"></asp:ListItem>
                                <asp:ListItem Value="2006"></asp:ListItem>
                                <asp:ListItem Value="2005"></asp:ListItem>
                                <asp:ListItem Value="2004"></asp:ListItem>
                                <asp:ListItem Value="2003"></asp:ListItem>
                                <asp:ListItem Value="2002"></asp:ListItem>
                                <asp:ListItem Value="2001"></asp:ListItem>
                                <asp:ListItem Value="2000"></asp:ListItem>
                                <asp:ListItem Value="1999"></asp:ListItem>
                                <asp:ListItem Value="1998"></asp:ListItem>
                                <asp:ListItem Value="1997"></asp:ListItem>
                                <asp:ListItem Value="1996"></asp:ListItem>
                                <asp:ListItem Value="1995"></asp:ListItem>
                                <asp:ListItem Value="1994"></asp:ListItem>
                                <asp:ListItem Value="1993"></asp:ListItem>
                                <asp:ListItem Value="1992"></asp:ListItem>
                                <asp:ListItem Value="1991"></asp:ListItem>
                                <asp:ListItem Value=" 1990"></asp:ListItem>
                                <asp:ListItem Value=" 1989"></asp:ListItem>
                                <asp:ListItem Value="1988"></asp:ListItem>
                                <asp:ListItem Value="1987"></asp:ListItem>
                                <asp:ListItem Value="1986"></asp:ListItem>
                                <asp:ListItem Value="1985"></asp:ListItem>
                                <asp:ListItem Value="1984"></asp:ListItem>
                                <asp:ListItem Value="1983"></asp:ListItem>
                                <asp:ListItem Value="1982"></asp:ListItem>
                                <asp:ListItem Value="1981"></asp:ListItem>
                                <asp:ListItem Value="1980"></asp:ListItem>
                                <asp:ListItem Value="1979"></asp:ListItem>
                                <asp:ListItem Value="1978"></asp:ListItem>
                                <asp:ListItem Value="1977"></asp:ListItem>
                                <asp:ListItem Value="1976"></asp:ListItem>
                                <asp:ListItem Value="1975"></asp:ListItem>
                                <asp:ListItem Value="1974"></asp:ListItem>
                                <asp:ListItem Value="1973"></asp:ListItem>
                                <asp:ListItem Value="1972"></asp:ListItem>
                                <asp:ListItem Value="1971"></asp:ListItem>
                                <asp:ListItem Value="1970"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                                        <div class="auto-style1">
                        <br />
                                        </div>
                        <div ckass="inputbox">
                            <asp:DropDownList ID="drop4" runat="server" Width="320px" CssClass="style">
                                <asp:ListItem Value="Gender" Selected="True"></asp:ListItem> 
                                <asp:ListItem Value="Male"></asp:ListItem>                                                               
                                <asp:ListItem Value="Female"></asp:ListItem>
                                 <asp:ListItem Value="TransGender"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div>
                            <div class="auto-style1">
                                <asp:TextBox ID="text3" runat="server" Width="230px" PlaceHolder="Email ID" CssClass="style">

                                </asp:TextBox>
                            </div>
                                <div class="auto-style1">
                              <asp:TextBox ID="text5" runat="server" Width="160px"  PlaceHolder="password" CssClass="style"></asp:TextBox>̮
                       &nbsp;
                            <asp:TextBox ID="text6" runat="server" width="160px" PlaceHolder="Con-Password" CssClass="style"></asp:TextBox>
                        </div>
                             <div class="auto-style1">
                                <asp:TextBox ID="text4" runat="server" Width="230px" PlaceHolder="Mobile n0" CssClass="style">

                                </asp:TextBox>
                            </div>
                            <div class="auto-style1">
                                <asp:CheckBox ID="check1" runat="server" />
                             <a   style="color:white">I accept
                                 <asp:LinkButton ID="link" runat="server"> Term of use.</asp:LinkButton>
                             </a>
                            </div>
                            <div class="inputbox">
                                <asp:Button ID="Button" runat="server" CssClass="style" Text="Submit" ForeColor="White" BackColor="Blue" Width="320px" OnClick="Button_Click" />
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

