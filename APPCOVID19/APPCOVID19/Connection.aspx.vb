Public Class Connection
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnConnection_Click(sender As Object, e As EventArgs) Handles btnConnection.Click
        Dim compte As String = Request.Form("txtCompte")
        Dim motdepasse As String = Request.Form("txtPassword")

        dr = verifierCompte(compte, motdepasse)
        If dr.HasRows Then
            Session("isOpen") = "1"
            Dim dt As New DataTable
            dt.Load(dr)
            Session("personnel") = dt
            Response.Redirect("profil.aspx")
        Else
            Label1.Text = "Identifiant ou mot de Passe incorrect"
        End If
        dr.Close()
    End Sub
End Class