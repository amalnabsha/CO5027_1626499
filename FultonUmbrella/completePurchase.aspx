<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="completePurchase.aspx.cs" Inherits="FultonUmbrella.completePurchase" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading2" runat="server">
    <h2>Complete Your Purchase</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
    <asp:Button ID="btnConfirmPurchase" runat="server" Text="Confirm" OnClick="btnConfirmPurchase_Click" />
    <asp:Literal ID="litInformation" runat="server"></asp:Literal>
        </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
