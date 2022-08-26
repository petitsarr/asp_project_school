Public Class RechercheTest
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnRechercher_Click(sender As Object, e As EventArgs) Handles BtnRechercher.Click
        Dim n As String = Request.Form("txtIdentifiant")
        Dim identifiant As Integer = Int32.Parse(n)
        Dim table As String
        table = "<table border='1'>"
        table &= "<tr><th>Numéro</th><th>Date Test</th><th>Résultat Test</th><th>Identifiant Personnel</th><th>Identifiant Patient</th></tr>"
        dr = RechTest(identifiant)
        If dr.HasRows Then
            While dr.Read
                table &= "<tr><td>" & dr(0) & "</td><td>" & dr(1) & "</td><td>" & dr(2) & "</td><td>" & dr(3) & "</td><td>" & dr(4) & "</td></tr>"
            End While
        Else
            table &= "<tr><td colspan='8'>Aucun patient trouvé !</td></tr>"
        End If
        table &= "</table>"
        Label2.Text = table
        dr.Close()
        Label3.Text = "Le nombre de test(s) enregistré(s) est <strong>" & NbTest() & "</strong> dans la base"
    End Sub
End Class