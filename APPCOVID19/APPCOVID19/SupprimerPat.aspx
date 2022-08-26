<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="SupprimerPat.aspx.vb" Inherits="APPCOVID19.SupprimerPat" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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
        #ListPatient {
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
    <div>
        <h1>SUPPRESSION DE PATIENT</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Identifiant Patient"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtNom" runat="server" style="margin-left: 0px"></asp:TextBox>
                    <asp:Button ID="BtnRechercher" runat="server" Text="Rechercher" />
                </td>
                <td class="auto-style2"></td>
            </tr>
        </table>
    
    </div>
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <p>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </p>
    
        <asp:Button ID="BtnSup" runat="server" Text="Supprimer" />
    
    </form>
</body>
</html>
