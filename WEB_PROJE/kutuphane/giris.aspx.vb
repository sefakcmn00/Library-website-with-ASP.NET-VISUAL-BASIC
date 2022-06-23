Imports System.Data
Imports System.Data.OleDb
Partial Class giris
    Inherits System.Web.UI.Page
    Dim baglanti As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\kitap.mdb"))
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Label1.Text = Nothing
        Dim kadi As String = TextBox1.Text
        Dim sifre As String = TextBox2.Text
        Dim adp As New OleDbDataAdapter("select * from uyeler where kul_adi='" & kadi & "' and sifre='" & sifre & "'", baglanti)
        Dim dt As New DataTable
        adp.Fill(dt)
        Dim i As Integer = 0
        For Each satir In dt.Rows
            i += 1
            Session("id") = satir(0)
            Session("ad") = satir(1)
            Session("soyad") = satir(2)
            Session("yetki") = satir(8)
        Next
        If i = 0 Then
            Label1.Text = "kullanıcı adı ve şifre hatalı"
        ElseIf Session("yetki") = 0 Then
            Response.Redirect("index.aspx")
        ElseIf Session("yetki") = 1 Then
            Response.Redirect("adminsayfasi.aspx")
        End If

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = Nothing
    End Sub
End Class
