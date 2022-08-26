Public Class ListeTest
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim table As String
        table = "<table border='1'>"
        table &= "<tr><th>Numéro</th><th>Date Test</th><th>Résultat</th><th>Identifiant Personnel</th><th>Identifiant Patient</th></tr>"
        dr = AfficherTest()
        If dr.HasRows Then
            While dr.Read
                table &= "<tr><td>" & dr(0) & "</td><td>" & dr(1) & "</td><td>" & dr(2) & "</td><td>" & dr(3) & "</td><td>" & dr(4) & "</td></tr>"
            End While
        Else
            table &= "<tr><td colspan='8'>Aucun test trouvé !</td></tr>"
        End If
        table &= "</table>"
        Label1.Text = table
        dr.Close()
    End Sub

End Class