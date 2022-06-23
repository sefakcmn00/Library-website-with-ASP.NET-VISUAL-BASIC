<%@ Page Title="" Language="VB" MasterPageFile="~/anasayfa.master" AutoEventWireup="false" CodeFile="giris.aspx.vb" Inherits="giris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style1
    {
        width: 427px;
    }
    .style2
    {
        width: 131px;
    }
    .style3
    {
        }
    .style4
    {
        width: 131px;
        font-weight: bold;
        font-size: x-large;
        color: #0066FF;
        height: 38px;
    }
    .style6
    {
        width: 131px;
    }
    .style7
    {
        width: 144px;
    }
    .style8
    {
        width: 145px;
        height: 1px;
    }
    .style9
    {
        width: 131px;
        height: 1px;
    }
    .style10
    {
        width: 144px;
        }
    .style11
    {
        width: 145px;
        height: 16px;
    }
    .style15
    {
        width: 144px;
        height: 38px;
    }
    .style28
    {
        width: 79px;
    }
    .style29
    {
        width: 180px;
    }
    .style30
    {
        width: 268px;
        font-weight: bold;
        font-size: x-large;
        color: #0066FF;
    }
    .style31
    {
        width: 222px;
    }
    .style32
    {
        width: 180px;
        height: 16px;
    }
    .style35
    {
        width: 268px;
        height: 16px;
    }
    .style36
    {
        width: 268px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="margin-right: 15px">
        <tr>
            <td class="style11">
                </td>
            <td class="style35">
                </td>
            <td class="style32">
                </td>
        </tr>
        <tr>
            <td class="style29">
                <b></b></td>
            <td class="style30">
                Üye Girişi
            </td>
            <td class="style31">
                </td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style36">
                </td>
            <td class="style28">
                </td>
        </tr>
        <tr>
            <td class="style3">
                Kullanıcı Adı :</td>
            <td class="style36">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style28">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Boş Bırakmayınız">*</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style28">
                Şifre :</td>
            <td class="style36">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="style10">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Boş Bırakmayınız">*</asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style36">
                <asp:Button ID="Button1" runat="server" Text="Giriş " />
                &nbsp;<asp:Button ID="Button2" runat="server" Text="İptal" style="height: 26px" />
            </td>
            <td class="style28">
                </td>
        </tr>
        <tr>
            <td class="style3">
                </td>
            <td class="style36">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td class="style28">
                </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style36">
                &nbsp;</td>
            <td class="style28">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/uyeol.aspx">Üye Ol</asp:HyperLink>
                </td>
        </tr>
        <tr>
            <td class="style3" colspan="3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
        </tr>
    </table>
</asp:Content>

