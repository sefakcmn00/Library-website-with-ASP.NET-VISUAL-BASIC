<%@ Page Title="" Language="VB" MasterPageFile="~/anasayfa.master" AutoEventWireup="false" CodeFile="kitapekle.aspx.vb" Inherits="kitapekle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {
        width: 128px;
    }
    .style4
    {
        width: 128px;
        color: #FF0000;
        font-weight: bold;
    }
    .style29
    {
        width: 389px;
        color: #FF0000;
        font-weight: bold;
        height: 13px;
    }
    .style34
    {
        height: 20px;
    }
    .style35
    {
        width: 389px;
        color: #FF0000;
        font-weight: bold;
        height: 20px;
    }
    .style38
    {
        height: 127px;
    }
    .style39
    {
        width: 389px;
        color: #FF0000;
        font-weight: bold;
        height: 127px;
    }
    .style40
    {
        height: 1px;
    }
    .style41
    {
        width: 389px;
        color: #FF0000;
        font-weight: bold;
        height: 1px;
    }
    .style42
    {
        height: 8px;
    }
    .style43
    {
        width: 389px;
        color: #FF0000;
        font-weight: bold;
        height: 8px;
    }
    .style44
    {
        height: 13px;
    }
    .style45
    {
        width: 128px;
        height: 9px;
    }
    .style46
    {
        height: 9px;
    }
    .style47
    {
        height: 33px;
    }
    .style48
    {
        width: 128px;
        height: 33px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 407px; height: 220px;" >
        <tr>
            <td class="style38">
                </td>
            <td class="style39">
                &nbsp;</td>
            <td class="style38">
            </td>
        </tr>
        <tr>
            <td class="style40">
                </td>
            <td class="style6">
                Kitap&nbsp; Adı :</td>
            <td class="style40">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style34">
                </td>
            <td class="style44">
                Katagori :</td>
            <td class="style34">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style40">
                </td>
            <td class="style1" dir="ltr" rowspan="1">
                Çıkış Tarihi :</td>
            <td class="style40">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style42">
                </td>
            <td class="style1">
                Kitap Tipi :</td>
            <td class="style42">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style42">
                &nbsp;</td>
            <td class="style1" colspan="1">
                Resim :</td>
            <td class="style42">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td class="style44">
                </td>
            <td class="style1">
                Konu :</td>
            <td class="style44">
                <asp:TextBox ID="TextBox5" runat="server" Height="88px" TextMode="MultiLine" 
                    Width="264px" style="margin-top: 0px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style46">
                </td>
            <td class="style45">
                </td>
            <td class="style46">
                </td>
        </tr>
        <tr>
            <td class="style47">
                </td>
            <td class="style48">
                </td>
            <td class="style47">
                <asp:Button ID="Button1" runat="server" Text="Ekle" />
                &nbsp;<asp:Button ID="Button2" runat="server" Text="İptal" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/giris.aspx">Çıkış</asp:HyperLink>
            </td>
        </tr>
    </table>
</asp:Content>

