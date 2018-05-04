<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FultonUmbrella.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading2" runat="server">
    <h1>Welcome to Admin Panel</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
    <asp:Button ID="BtnProductList" runat="server" Text="Product List" OnClick="BtnProductList_Click" />
        <div class="clear"></div>
    <asp:Button ID="BtnAddProduct" runat="server" Text="Add Product" OnClick="BtnAddProduct_Click" />
        <div class="clear"></div>
    <asp:Button ID="BtnLogOut" runat="server" Text="Logout" OnClick="Button3_Click" />
        
    </form>
&nbsp;
</asp:Content>
