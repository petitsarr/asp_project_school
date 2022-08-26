<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inscription.aspx.vb" Inherits="APPCOVID19.Inscription" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Inscription</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 117px;
        }
        .auto-style3 {
            width: 186px;
        }
        h1 {
            text-align:center;
        }
       
        #inscription {
            text-align:center;
        }
    </style>
</head>
<body>
    <h1>Formulaire d'inscription</h1>
    <form id="form1" runat="server">
    <div id="inscription">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Matricule"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextMatricule" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextMatricule" ErrorMessage="Veuillez saisir votre matricule" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Nom"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextNom" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextNom" ErrorMessage="Veuillez saisir votre nom" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label3" runat="server" Text="Prenom"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextPrenom" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextPrenom" ErrorMessage="Veuillez saisir votre prenom" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="Date de naissance"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextDatenaiss" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextDatenaiss" ErrorMessage="Veuillez saisir votre date de naissance" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label5" runat="server" Text="Service"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="txtservice" runat="server">
                        <asp:ListItem>Cardiologie</asp:ListItem>
                        <asp:ListItem>Réanimation</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Infirmerie</asp:ListItem>
                        <asp:ListItem>ORL</asp:ListItem>
                        <asp:ListItem>Rhumatologie</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label6" runat="server" Text="Profession"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:DropDownList ID="txtprofession" runat="server">
                        <asp:ListItem>Medecin</asp:ListItem>
                        <asp:ListItem>Cardiologue</asp:ListItem>
                        <asp:ListItem>Infirmier</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label7" runat="server" Text="Compte "></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="Textcompte" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Textcompte" ErrorMessage="Veuillez saisir votre email" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label8" runat="server" Text="Mot de passe"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextMotdepasse" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextMotdepasse" ErrorMessage="Veuillez saisir votre mot de passe" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="BtnValider" runat="server" Text="S'inscrire" />
                </td>
                <td class="auto-style2">
                    <asp:Button ID="BtnAnnuler" runat="server" Text="Annuler" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="Label9" runat="server"></asp:Label>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Italic="True" ForeColor="#FF3300" />
    
    </form>
</body>
</html>
