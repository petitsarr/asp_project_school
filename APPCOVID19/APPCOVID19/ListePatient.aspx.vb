Public Class ListePatient
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim table As String
        table = "<table border='1'>"
        table &= "<tr><th>Identifiant</th><th>Nom</th><th>Prénom</th><th>Lieu</th><th>Téléphone</th><th>Date de Naissance</th><th>Genre</th><th>Adresse</th></tr>"
        dr = AfficherPatient()
        If dr.HasRows Then
            While dr.Read
                table &= "<tr><td>" & dr(0) & "</td><td>" & dr(1) & "</td><td>" & dr(2) & "</td><td>" & dr(3) & "</td><td>" & dr(4) & "</td><td>" & dr(5) & "</td><td>" & dr(6) & "</td><td>" & dr(7) & "</td></tr>"
            End While
        Else
            table &= "<tr><td colspan='8'>Aucun patient trouvé !</td></tr>"
        End If
        table &= "</table>"
        Label1.Text = table
        dr.Close()
        Label2.Text = "Le nombre de patient(s) est <strong>" & NbPatient() & "</strong>, enregistré dans la base"
    End Sub

End Class