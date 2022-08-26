<%@ Page Title="Log in" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.vb" Inherits="APPCOVID19.Login" %>
<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1><%: Title %>.</h1>
    </hgroup>
    
    <section id="loginForm">
        <h2>Use a local account to log in.</h2>
        <asp:Login runat="server" ViewStateMode="Disabled" RenderOuterTable="false">
            <LayoutTemplate>
                <p class="validation-summary-errors">
                    <asp:Literal runat="server" ID="FailureText" />
                </p>
                <fieldset>
                    <legend>Log in Form</legend>
                    <ol>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="UserName">Nom utilisateur</asp:Label>
                            <asp:TextBox runat="server" ID="txtCompte" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtCompte" CssClass="field-validation-error" ErrorMessage="The user name field is required." />
                        </li>
                        <li>
                            <asp:Label runat="server" AssociatedControlID="Password">Mot de Passe</asp:Label>
                            <asp:TextBox runat="server" ID="txtPassword" TextMode="Password" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtPassword" CssClass="field-validation-error" ErrorMessage="The password field is required." />
                        </li>
                        <li>
                            <asp:CheckBox runat="server" ID="RememberMe" />
                            <asp:Label runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Remember me?</asp:Label>
                        </li>
                    </ol>
                    <asp:Button runat="server" CommandName="Login" Text="Se connecter" ID="btnLogin" OnClick="Unnamed6_Click" />
                </fieldset>
            </LayoutTemplate>
        </asp:Login>
        <p>
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register</asp:HyperLink>
            if you don't have an account.
        </p>
    </section>

    <section id="socialLoginForm">
        <h2>Use another service to log in.</h2>
        <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
    </section>
</asp:Content>