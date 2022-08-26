Public Class AjoutPat
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAjouter_Click(sender As Object, e As EventArgs) Handles btnAjouter.Click
        Dim nom As String = Request.Form("Txtnpat")
        Dim prenom As String = Request.Form("Txtprpat")
        Dim lieu As String = Request.Form("Txtlieu")
        Dim tel As String = Request.Form("Txttel")
        Dim datenaissance As String = Request.Form("Txtdn")
        Dim genre As String = Request.Form("Txtg")
        Dim adresse As String = Request.Form("Txtadresse")

        AjouterPat(nom, prenom, lieu, tel, datenaissance, genre, adresse)
        Label8.Text = "Ajout du patient reussi"
    End Sub
End Class