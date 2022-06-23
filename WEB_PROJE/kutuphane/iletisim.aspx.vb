Imports System.Net
Imports System.Net.Mail
Partial Class iletisim
    Inherits System.Web.UI.Page

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim gonderici As New SmtpClient
        Dim mail As New MailMessage
        mail.To.Add(TextBox5.Text)
        mail.From = New MailAddress(TextBox6.Text)
        mail.Subject = TextBox4.Text
        mail.Body = TextBox3.Text
        Dim uyari As New NetworkCredential("hilal.boztepe.11@gmail.com", "hilal220240")
        gonderici.Credentials = uyari
        gonderici.Port = 587
        gonderici.Host = "smtp.gmail.com"
        gonderici.EnableSsl = True
        gonderici.Send(mail)
        Label5.Text = "Mesajınız Gönderildi..."

    End Sub
End Class
