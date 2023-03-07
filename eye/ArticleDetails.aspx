<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="ArticleDetails.aspx.cs" Inherits="ArticleDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <form id="form1" runat="server">
        <div>
            <h1>Article Details</h1>
            <hr />
            <asp:Label ID="TitleLabel" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="ContentLabel" runat="server" Text=""></asp:Label>
            <br />
            <a href="home.aspx">Back to Home</a>
        </div>
    </form>
</asp:Content>

