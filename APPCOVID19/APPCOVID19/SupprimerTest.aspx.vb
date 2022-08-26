Public Class SupprimerTest
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnRechercher_Click(sender As Object, e As EventArgs) Handles BtnRechercher.Click
        Dim n As String = Request.Form("txtNumero")
        Dim identifiant As Integer = Int32.Parse(n)
        Dim table As String
        table = "<table border='1'>"
        table &= "<tr><th>Numéro</th><th>Date test</th><th>Résultat test</th><th>Identifiant Personnel</th><th>Identifiant Patient</th></tr>"
        dr = RechTestSup(identifiant)

        If dr.HasRows Then
            While dr.Read
                table &= "<tr><td>" & dr(0) & "</td><td>" & dr(1) & "</td><td>" & dr(2) & "</td><td>" & dr(3) & "</td><td>" & dr(4) & "</td></tr>"
            End While
        Else
            table &= "<tr><td colspan='8'>Aucun test trouvé !</td></tr>"
        End If
        table &= "</table>"
        Label2.Text = table
        dr.Close()
        Label3.Text = "Le nombre de test(s) est <strong>" & NbTest() & "</strong>, enregistré dans la base"
    End Sub

    Protected Sub BtnSup_Click(sender As Object, e As EventArgs) Handles BtnSup.Click
        Dim n As String = Request.Form("txtNumero")
        Dim identifiant As Integer = Int32.Parse(n)
        SupTest(identifiant)
        'Label3.Text = "Suppression de Patient effectuée avec succés"
        MsgBox("Suppression de Test effectuée avec succés")
    End Sub
End Class