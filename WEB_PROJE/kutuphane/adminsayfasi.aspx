<%@ Page Title="" Language="VB" MasterPageFile="~/anasayfa.master" AutoEventWireup="false" CodeFile="adminsayfasi.aspx.vb" Inherits="adminsayfasi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/kitapekle.aspx">Kitap Ekle</asp:LinkButton>
<br />
<br />
<asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/uyesil.aspx">Üye Sil</asp:HyperLink>
<br />
</asp:Content>

