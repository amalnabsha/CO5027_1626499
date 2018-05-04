<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="FultonUmbrella.default1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server" style="height: 494px">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <HeaderTemplate><ul></HeaderTemplate>
                <ItemTemplate>
                    <a href="<%# Eval("ProductId","orderproduct.aspx?Id={0}") %>">
                    <table id="tbldefault">
                        <tr>
                            <td>
                                <asp:Image ID="displayProductImage" runat="server" Height="180px" ImageUrl='<%# Eval ("ProductImage") %>' Width="200px" />
                                <asp:Label ID="LblProductName" runat="server" Text="Name"></asp:Label>  <%#Eval ("ProductName") %>
                                <asp:Label ID="LblProductPrice" runat="server" Text="Price"></asp:Label>  <%# Eval("ProductPrice") %>
                                </a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            <FooterTemplate></ul></FooterTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626499_co5027_1626499ConnectionString %>" SelectCommand="SELECT * FROM [tblproduct]">
        </asp:SqlDataSource>
     </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
