Imports System.Data
Imports System.Data.OleDb
Partial Class kitapekle
    Inherits System.Web.UI.Page
    Dim baglanti As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\kitap.mdb"))
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim dosyaad As String
        If FileUpload1.HasFile Then
            dosyaad = FileUpload1.FileName
            FileUpload1.SaveAs(Server.MapPath("resim\" + dosyaad))
        End If
        Try
            Dim cmnd As New OleDbCommand
            cmnd.Connection = baglanti
            cmnd.CommandText = "insert into kitap(kitapadi,katagori,tarih,konu,tip,resim) values(@kitapadi,@katagori,@tarih,@konu,@tip,@resim)"
            cmnd.Parameters.Add("@kitapadi", OleDbType.VarChar).Value = TextBox1.Text
            cmnd.Parameters.Add("@katagori", OleDbType.VarChar).Value = TextBox2.Text
            cmnd.Parameters.Add("@tarih", OleDbType.VarChar).Value = TextBox3.Text
            cmnd.Parameters.Add("@tip", OleDbType.VarChar).Value = TextBox5.Text
            cmnd.Parameters.Add("@konu", OleDbType.VarChar).Value = TextBox4.Text
            cmnd.Parameters.Add("@resim", OleDbType.VarChar).Value = "resim\" + dosyaad
            baglanti.Open()
            cmnd.ExecuteNonQuery()
            Label2.Text = "kitap eklendi"
        Catch ex As Exception
            Label2.Text = "hata oluştu"
        End Try
        baglanti.Close()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("ad") = Nothing Then
            Response.Redirect("giris.aspx")
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = Nothing
        TextBox2.Text = Nothing
        TextBox3.Text = Nothing
        TextBox4.Text = Nothing
        TextBox5.Text = Nothing

    End Sub
End Class
