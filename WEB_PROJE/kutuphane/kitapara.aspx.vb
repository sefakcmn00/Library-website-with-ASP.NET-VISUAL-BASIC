Imports System.Data
Imports System.Data.OleDb
Partial Class kitapara
    Inherits System.Web.UI.Page
    Dim baglanti As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\kitap.mdb"))
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack = True Then
            Dim adp As New OleDbDataAdapter("select distinct tur from kitap", baglanti)
            Dim dt As New DataTable
            adp.Fill(dt)
            For Each satir In dt.Rows
                Session("kitap") = satir(0)
                DropDownList1.Items.Add(Session("kitap"))
            Next
        End If
        If Session("id") = Nothing Then
            Response.Redirect("giris.aspx")
        End If
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Response.Redirect("kitaplarim.aspx?tur=" & DropDownList1.SelectedValue & "&kitapadi=" & DropDownList2.SelectedValue)
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        Dim adptr As New OleDbDataAdapter("select distinct kitapadi from kitap where tur='" & DropDownList1.SelectedValue & "'", baglanti)
        Dim dtt As New DataTable
        adptr.Fill(dtt)
        For Each satir2 In dtt.Rows
            Session("kitapadi") = satir2(0)
            DropDownList2.Items.Add(Session("kitapadi"))
        Next
    End Sub
End Class
