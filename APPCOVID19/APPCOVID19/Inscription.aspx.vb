Public Class Inscription
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub BtnValider_Click(sender As Object, e As EventArgs) Handles BtnValider.Click

        Dim mat As String = Request.Form("TextMatricule")
        Dim nom As String = Request.Form("TextNom")
        Dim prenom As String = Request.Form("TextPrenom")
        Dim datenaissance As String = Request.Form("TextDatenaiss")
        Dim service As String = Request.Form("txtservice")
        Dim profession As String = Request.Form("txtprofession")
        Dim compte As String = Request.Form("textcompte")
        Dim motdepasse As String = Request.Form("TextMotdepasse")


        AjouterPersonnel(mat, nom, prenom, datenaissance, service, profession, compte, motdepasse)
        Label9.Text = "inscription effectuée avec succés"

        'Response.Redirect("profil.aspx")
    End Sub
End Class