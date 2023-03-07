<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="user-disorder.aspx.cs" Inherits="user_disorder" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1>Types Of Eye Disorder</h1>
    <p>It is important to take your children for annual eye check-up to start early treatment 
        of eye problems (if diagnosed any) and avoid further complications.
Over here we have discussed a list of common eye disorders in children. If your kid shows any of
        the symptoms mentioned below, consult our eye specialists.</p><br /><br />
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="dname" HeaderText="Name" />
        <asp:BoundField DataField="ddescription" HeaderText="Description" />
<%--        <asp:BoundField DataField="imgName" HeaderText="imgName" />--%>
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imgName", "~/Images/{0}") %>' Width="100px" Height="100px" />
            </ItemTemplate>
        </asp:TemplateField>
        </Columns>
        </asp:GridView>
</asp:Content>

