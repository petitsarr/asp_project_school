<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ListeTest.aspx.vb" Inherits="APPCOVID19.ListeTest" %>

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
                <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/AjoutTest.aspx">Enrigistrer Test</asp:LinkButton>
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
        <h1>LISTE DES TESTS</h1>
        <asp:Label ID="Label1" runat="server"></asp:Label>
    
    </div>
    </form>
</body>
</html>
