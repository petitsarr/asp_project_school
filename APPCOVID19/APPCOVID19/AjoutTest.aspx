<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AjoutTest.aspx.vb" Inherits="APPCOVID19.AjoutTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Page Enregistrement Test</title>
    <style type="text/css">
        .auto-style1 {
            width: 47%;
        }
        .auto-style2 {
            width: 257px;
        }
        .auto-style3 {
            width: 257px;
            height: 23px;
        }
        .auto-style4 {
            height: 23px;
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
         padding-left: 1%;
         
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
                <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/profil.aspx">Profil</asp:LinkButton>
            </li>
            <li>
                <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/AjoutTest.aspx">Enregistrer Test</asp:LinkButton>
            </li>
            <li>
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/ListeTest.aspx">Liste Tests</asp:LinkButton>
            </li>
            <li>
                <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/ListeTestPositif.aspx">Liste Tests Positifs</asp:LinkButton>
            </li>
            <li>
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/RechercheTest.aspx">Recherche Test</asp:LinkButton>
            </li>
            <li>
                <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/SupprimerTest.aspx">Suppression Test</asp:LinkButton>
            </li>
        </ul>
    </div>
        <br />
    <div>
        <h1>Enrigistrement  de Test</h1>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Date de Test (jj-mm-aaaa)"></asp:Label>
                </td>
                <td class="auto-style4">
                    <asp:TextBox ID="Txtdatetst" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label2" runat="server" Text="Résultat"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="Txtresultat" runat="server">
                        <asp:ListItem>Positif</asp:ListItem>
                        <asp:ListItem>Negatif</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label3" runat="server" Text="ID du Personnel"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtidper" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label4" runat="server" Text="ID du Patient"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtidpat" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnAjouter" runat="server" Text="Ajouter" />
                </td>
                <td>
                    <asp:Button ID="btnAnnuler" runat="server" Text="Annuler" />
                </td>
            </tr>
        </table>

    </div>
        <asp:Label ID="Label5" runat="server"></asp:Label>
    
    </form>
</body>
</html>
