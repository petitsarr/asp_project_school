<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AjoutPat.aspx.vb" Inherits="APPCOVID19.AjoutPat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ajouter Patient</title>
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
        ul {
         padding:0;
         margin:0;
         list-style-type:none;
        }
        li {
         float:left; /*pour IE*/
         border-left:1px solid black;
         text-align:center;
         }
        ul li a {
         display:block;
         float:left;  
         width:200px;
         
         color:#DCDCDC;
         text-decoration:none;
         text-align:center;
         }
         ul li  {
         background:Black;
         color:white;
         text-align:center;
         padding-left: 5%;
         
         }
        #addPatient {
            text-align:center;
        }
        #menu {
            text-align:center;
        }

    </style>
</head>
<body>
    
    <form id="form1" runat="server">
    <div id="menu">
        <ul>
            <li>
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/profil.aspx">Profil</asp:LinkButton>
            </li>
            <li>
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/AjoutPat.aspx">Enregistrer Patient</asp:LinkButton>
            </li>
            <li>
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/ListePatient.aspx">Liste Patients</asp:LinkButton>
            </li>
            <li>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RecherchePatient.aspx">Recherche Patient</asp:LinkButton>
            </li>
            <li>
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/SupprimerPat.aspx">Suppression Patient</asp:LinkButton>
            </li>
        </ul>
    </div>
        <br />
        <div id="addPatient">
        <h1>Ajouter un patient</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Nom Patient"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtnpat" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Prénom Patient"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtprpat" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="Lieu"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtlieu" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="Téléphone"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txttel" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label5" runat="server" Text="Date de naissance"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtdn" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" runat="server" Text="Genre"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtg" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" runat="server" Text="Adresse"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="Txtadresse" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnAjouter" runat="server" Text="Ajouter" />
                </td>
                <td class="auto-style3">
                    <asp:Button ID="btnAnnuler" runat="server" Text="Annuler" />
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="Label8" runat="server"></asp:Label>
    
    </form>
</body>
</html>
