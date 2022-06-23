
Partial Class uyesil
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("ad") = Nothing Then
            Response.Redirect("girisaspx.aspx")
        End If
    End Sub
End Class
