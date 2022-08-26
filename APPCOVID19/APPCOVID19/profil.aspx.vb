Public Class profil
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("isOpen") <> 1 Then
            Response.Redirect("Connection.aspx")
            Response.End()
            Exit Sub
        Else
            Dim dt As DataTable = Session("personnel")
            recupInfo(dt)
            Label11.Text = idp
            TextMatricule.Text = mat
            TextNom.Text = nom
            TextPrenom.Text = prenom
            TextDatenaiss.Text = dn
            txtservice.Text = service
            txtprofession.Text = prof
            Textcompte.Text = compte
            TextMotdepasse.Text = mp
        End If
    End Sub

End Class