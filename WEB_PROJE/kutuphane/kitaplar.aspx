<%@ Page Language="VB" MasterPageFile="~/anasayfa.master" AutoEventWireup="false" CodeFile="kitaplar.aspx.vb" Inherits="kitaplar" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Tür seçiniz:
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
        DataSourceID="SqlDataSource1" DataTextField="tur" DataValueField="tur">
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\kitap.mdb;Persist Security Info=True" 
        ProviderName="System.Data.OleDb" 
        SelectCommand="SELECT DISTINCT [tur] FROM [kitap]"></asp:SqlDataSource>
    <br />
    <asp:Button ID="Button2" runat="server" Text="Seç" />
&nbsp; 
</asp:Content>

