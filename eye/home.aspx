<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/articles.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   
        <script>
            $(document).on("click", ".readMoreButton", function () {
                $(this).closest(".article").find(".contentDiv").show();
            $(this).hide();
            $(this).siblings(".readLessButton").show();
        });

            $(document).on("click", ".readLessButton", function () {
                $(this).closest(".article").find(".contentDiv").hide();
            $(this).hide();
            $(this).siblings(".readMoreButton").show();
        });
    </script>
   
</asp:Content>
<asp:Content id="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<asp:Repeater ID="ArticlesRepeater" runat="server" OnItemCommand="ArticlesRepeater_ItemCommand">
    <ItemTemplate>
       <div class="article-summary">
            <h2><%#Eval("Title") %></h2>
            <p><%#Eval("summary") %></p>
            <asp:Button ID="ReadMoreButton" runat="server" Text="Read More" CommandName="ReadMore" CommandArgument='<%#Eval("Id") %>' />
        </div>
        <div class="article-content" style="display:none;">
            <h2><%#Eval("Title") %></h2>
            <p><%#Eval("Content") %></p>
                        <asp:Button ID="Button1" runat="server" Text="Read More" CommandName="ReadMore" CommandArgument='<%#Eval("Id") %>' />

        </div>
    </ItemTemplate>
</asp:Repeater>
</asp:Content>

