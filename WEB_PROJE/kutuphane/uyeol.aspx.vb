Imports System.Data
Imports System.Data.OleDb
Partial Class uyeol
    Inherits System.Web.UI.Page
    Dim baglanti As New OleDbConnection("provider=Microsoft.ace.oledb.12.0;data source=" & Server.MapPath("App_data\kitap.mdb"))
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Label1.Text = Nothing
        Dim adp As New OleDbDataAdapter("select * from uyeler where kul_adi='" & TextBox3.Text & "'", baglanti)
        Dim dt As New DataTable
        adp.Fill(dt)
        Dim i As Integer = 0
        For Each satir In dt.Rows
            i = i + 1
        Next
        If i = 1 Then
            Label1.Text = "Böyle Bir Kullanıcı Adı Zaten Var "
        Else
            Try
                Dim cmnd As New OleDbCommand
                cmnd.Connection = baglanti
                cmnd.CommandText = "insert into uyeler(ad,soyad,kul_adi,sifre,eposta,gizlisoru,gizlicevap,yetki) values (@ad,@soyad,@kul_adi,@sifre,@eposta,@gizlisoru,@gizlicevap,@yetki)"
                cmnd.Parameters.Add("@ad", OleDbType.VarChar).Value = TextBox1.Text
                cmnd.Parameters.Add("@soyad", OleDbType.VarChar).Value = TextBox2.Text
                cmnd.Parameters.Add("@kul_adi", OleDbType.VarChar).Value = TextBox3.Text
                cmnd.Parameters.Add("@sifre", OleDbType.VarChar).Value = TextBox4.Text
                cmnd.Parameters.Add("@eposta", OleDbType.VarChar).Value = TextBox6.Text
                cmnd.Parameters.Add("@gizlisoru", OleDbType.VarChar).Value = DropDownList1.SelectedValue
                cmnd.Parameters.Add("@gizlicevap", OleDbType.VarChar).Value = TextBox7.Text
                cmnd.Parameters.Add("@yetki", OleDbType.VarChar).Value = 0S
                baglanti.Open()
                cmnd.ExecuteNonQuery()
                Label1.Text = "kayıt oldunuz"
                baglanti.Close()
            Catch ex As Exception
                Label1.Text = "hata oluştu"
            End Try
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DropDownList1.Items.Add("En Sevdiğiniz Arkadaşınızın İsmi")
        DropDownList1.Items.Add("İlk Hayvanınızın İsmi")
        DropDownList1.Items.Add("En Sevdiğiniz Öğretmeniniz")
        DropDownList1.Items.Add("En Sevdiğiniz Kitap")
    End Sub
End Class
