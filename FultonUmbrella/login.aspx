<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="FultonUmbrella.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading2" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <div>
            <fieldset>
                <legend>Register: </legend>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="register"
            CssClass="errorMessages" />
        <div>
            <asp:Label ID="lblRegName" runat="server" Text="UserName" AssociatedControlID="txtRegName"></asp:Label>
            <asp:TextBox ID="txtRegName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtRegName"
                ErrorMessage="Please enter a user name" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblRegPassword" runat="server" Text="Password" AssociatedControlID="txtRegPassword"></asp:Label>
            <asp:TextBox ID="txtRegPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtRegPassword"
                ErrorMessage="Please enter a password" ValidationGroup="register">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" AssociatedControlID="txtConfirmPassword"></asp:Label>
            <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator
                ErrorMessage="Please check your passwords match" ControlToValidate="txtConfirmPassword"
                ControlToCompare="txtRegPassword" runat="server" ValidationGroup="register" ID="cvPasswords">*</asp:CompareValidator>
        &nbsp;</div>
        <div>
            <asp:Button ID="btnReg" runat="server" Text="Register" ValidationGroup="register" OnClick="btnReg_Click" />
        </div>
        <div>
            <asp:Literal ID="litRegisterError" runat="server" EnableViewState="False"></asp:Literal>
        </div>
            </fieldset>
        </div>
        <div class="clear"></div>
        <div>
            <fieldset>
                <legend>Login: </legend>
                <asp:ValidationSummary runat="server" ValidationGroup="login" CssClass="errorMessages" />
            <div>
                <asp:Label ID="lblLogInUserName" runat="server" Text="UserName" AssociatedControlID="txtLogInUserName"></asp:Label>
                <asp:TextBox ID="txtLogInUserName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ErrorMessage="Please enter a username" ControlToValidate="txtLogInUserName" runat="server" ValidationGroup="login" >*</asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Label ID="lblLogInPassword" runat="server" Text="Password" AssociatedControlID="txtLogInPassword"></asp:Label>
                <asp:TextBox ID="txtLogInPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator
                    ErrorMessage="Please enter a password" ControlToValidate="txtLogInPassword" ValidationGroup="login" runat="server" >*</asp:RequiredFieldValidator>
            </div>
            <div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="login" OnClick="btnLogin_Click" />
            </div>
            <div>
                <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
            </div>
            </fieldset>
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
