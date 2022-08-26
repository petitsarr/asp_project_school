Public Class AjoutTest
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnAjouter_Click(sender As Object, e As EventArgs) Handles btnAjouter.Click
        Dim date_test As String = Request.Form("Txtdatetst")
        Dim result As String = Request.Form("Txtresultat")
        Dim idpers As String = Request.Form("Txtidper")
        Dim idpat As String = Request.Form("Txtidpat")

        AjouterTest(date_test, result, idpers, idpat)
        Label5.Text = "Test enregistré reussi"
    End Sub
End Class