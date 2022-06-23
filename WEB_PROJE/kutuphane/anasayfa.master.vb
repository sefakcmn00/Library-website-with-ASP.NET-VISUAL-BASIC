Imports System.Data
Imports System.Data.OleDb
Partial Class anasayfa
    Inherits System.Web.UI.MasterPage

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Label1.Text = Nothing
        Label1.Text = "Hoşgeldiniz Sayın" & " " & Session("ad") & " " & Session("soyad")

        If Session("yetki") = 1 Then
            HyperLink1.Enabled = True
        Else
            HyperLink1.Enabled = False

        End If
    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Session.Abandon()
        Response.Redirect("giris.aspx")
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim baglanti As New OleDbConnection("Provider=Microsoft.ACE.OleDB.12.0;Data Source=" & Server.MapPath("App_Data\kitap.mdb"))
        Dim puan As Integer
        If RadioButton3.Checked Then
            puan = 4
        End If
        If RadioButton4.Checked Then
            puan = 3
        End If
        If RadioButton3.Checked Then
            puan = 2
        End If
        If RadioButton5.Checked Then
            puan = 1
        End If
        baglanti.Open()
        Dim cmd As New OleDbCommand
        cmd.Connection = baglanti
        cmd.CommandText = "insert into oy(puan) values (@puan)"
        cmd.Parameters.Add("@puan", OleDbType.VarChar).Value = puan
        cmd.ExecuteNonQuery()
        Label2.Text = "Oyunuz alınmıştır"
        baglanti.Close()
    End Sub
End Class

