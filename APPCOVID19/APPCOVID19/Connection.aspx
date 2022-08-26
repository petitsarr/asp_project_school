<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Connection.aspx.vb" Inherits="APPCOVID19.Connection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page de Connection</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 132px;
        }
        .auto-style6 {
            width: 121px;
            height: 44px;
        }
        .auto-style7 {
            width: 237px;
            height: 44px;
        }
    </style>
</head>
<body>
    <h1>Connexion</h1>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1" border="1">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="TGF" runat="server" Text="Compte"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TxtCompte" runat="server" TextMode="Email"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="GHJH" runat="server" Text="Mot de passe"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnConnection" runat="server" Text="Se connecter" />
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </form>
</body>
</html>
