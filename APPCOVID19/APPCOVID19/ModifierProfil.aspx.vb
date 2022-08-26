Public Class ModifierProfil
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

    Protected Sub BtnValider_Click(sender As Object, e As EventArgs) Handles BtnValider.Click
        Dim mat As String = Request.Form("TextMatricule")
        Dim nom As String = Request.Form("TextNom")
        Dim datenaissance As String = Request.Form("TextDatenaiss")
        Dim prenom As String = Request.Form("TextPrenom")
        Dim service As String = Request.Form("txtservice")
        Dim profession As String = Request.Form("txtprofession")
        Dim compte As String = Request.Form("textcompte")
        Dim motdepasse As String = Request.Form("TextMotdepasse")


        modifProfil(mat, nom, prenom, datenaissance, service, profession, compte, motdepasse)
        Label9.Text = "modification profil effectuée avec succés"
    End Sub
End Class