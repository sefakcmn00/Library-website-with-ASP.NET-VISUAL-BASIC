<%@ Page Title="" Language="VB" MasterPageFile="~/anasayfa.master" AutoEventWireup="false" CodeFile="uyeol.aspx.vb" Inherits="uyeol" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 99px;
        color: #FF0000;
        font-weight: bold;
    }
    .style4
    {
        width: 74px;
    }
    .style5
    {
    }
    .style6
    {
        width: 132px;
    }
    .style28
    {
        width: 99px;
        color: #FF0000;
        font-weight: bold;
        height: 13px;
    }
    .style29
    {
        height: 13px;
        width: 110px;
    }
    .style30
    {
        width: 110px;
        height: 16px;
    }
    .style31
    {
        width: 99px;
        color: #FF0000;
        font-weight: bold;
        height: 16px;
    }
    .style37
    {
        width: 161px;
    }
    .style40
    {
        width: 161px;
        height: 13px;
    }
    .style41
    {
        height: 13px;
    }
    .style42
    {
        width: 110px;
    }
    .style43
    {
        width: 110px;
        height: 64px;
    }
    .style44
    {
        width: 99px;
        color: #FF0000;
        font-weight: bold;
        height: 64px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 444px; height: 341px" >
        <tr>
            <td class="style29">
                </td>
            <td class="style1">
                Ad</td>
            <td class="style40">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style41">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Ad kısmı boş.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style1">
                Soyad</td>
            <td class="style37">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Soyad boş .">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style1">
                Kullanıcı Adı</td>
            <td class="style37">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Kullanıcı adı boş.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style1">
                Sifre : </td>
            <td class="style37">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Şifre girin .">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style1">
                Sifre Tekrar :</td>
            <td class="style37">
                <asp:TextBox ID="TextBox5" runat="server" Height="22px" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox4" ControlToValidate="TextBox5" 
                    ErrorMessage="Şifreler Uyuşmuyor">*</asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Boş Bırakmayınız">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style1">
                E-Posta :</td>
            <td class="style37">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Lütfen geçerli bir mail giriniz." 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="Boş Bırakmayınız">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style1">
                Birini Seçin :</td>
            <td class="style37">
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Gizli soru seçin.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style1">
                Cevap :</td>
            <td class="style37">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Cevap yazınız.">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style3">
                </td>
            <td class="style37">
                <asp:Button ID="Button1" runat="server" Text="Kayıt" />
                <asp:Button ID="Button2" runat="server" Text="İptal" />
            </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style3">
                </td>
            <td colspan="2">
                &nbsp;<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style30">
                </td>
            <td class="style31">
                </td>
            <td class="style5" colspan="2" rowspan="4">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style29">
                </td>
            <td class="style28">
                </td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style3">
                </td>
        </tr>
        <tr>
            <td class="style43">
                </td>
            <td class="style44">
                </td>
        </tr>
    </table>
</asp:Content>

