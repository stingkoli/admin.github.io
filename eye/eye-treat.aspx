<%@ Page Title="" Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="eye-treat.aspx.cs" Inherits="eye_treat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
    .grid-container {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-gap: 30px;
}

.grid-item {
  background-color: #f9f9f9;
  border-radius: 5px;
  box-shadow: 0 2px 4px rgba(0,0,0,0.2);
  overflow: hidden;
  transition: transform 0.2s ease-in-out;
}

.grid-item:hover {
  transform: translateY(-5px);
}

.grid-item h2 {
  margin-top: 0;
  font-size: 24px;
  text-align: center;
}

.grid-item img {
  display: block;
  margin: 0 auto;
  max-width: 100%;
  height: auto;
  border-bottom: 1px solid #ccc;
}

.grid-item p {
  font-size: 18px;
  line-height: 1.5;
  margin-bottom: 10px;
  padding: 10px;
}

.grid-item strong {
  font-weight: bold;
}

.grid-item p:last-child {
  margin-bottom: 0;
}

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h1>Types Of Eye Surgeries</h1>
    <p>In recent years, there have been incredible advancements in vision correction surgeries.
        From surgical procedures that people see well without glasses or contact lenses
        to operations that can remove cataracts, there are many types of eye surgeries th
        at are helping people see better.
Here are the different types of corrective eye surgeries, why you may need and what to 
        expect when you have them:</p><br /><br />
  <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="tname" HeaderText="Name" />
        <asp:BoundField DataField="tcost" HeaderText="Cost" />
        <asp:BoundField DataField="tdescription" HeaderText="Description" />
<%--        <asp:BoundField DataField="imgName" HeaderText="imgName" />--%>
        <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("imgName", "~/Images/{0}") %>' Width="100px" Height="100px" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
</asp:Content>

