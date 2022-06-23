Imports System.Data
Imports System.Data.OleDb
Partial Class kitaplarimiz
    Inherits System.Web.UI.Page

    Dim baglanti As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\kitap.mdb"))

   
  
    Protected Sub DataList1_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DataList1.ItemCommand
        If e.CommandName = "bilgi" Then
            Response.Redirect("ozellik.aspx?id=" + e.CommandArgument)
        End If
    End Sub

    
End Class
