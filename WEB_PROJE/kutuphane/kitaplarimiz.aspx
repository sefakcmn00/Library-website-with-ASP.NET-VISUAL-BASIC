<%@ Page Language="VB" MasterPageFile="~/anasayfa.master" AutoEventWireup="false" CodeFile="kitaplarimiz.aspx.vb" Inherits="kitaplarimiz" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\kitap.mdb;Persist Security Info=True" 
        ProviderName="System.Data.OleDb" 
        SelectCommand="SELECT [resim], [kitapadi] FROM [kitap] WHERE ([tur] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="tur" SessionField="tur" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/giris.aspx">Çıkış</asp:HyperLink>
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        RepeatColumns="3">
        <ItemTemplate>
            resim:
            <asp:Image ID="Image7" runat="server" Height="76px" 
                ImageUrl='<%# Eval("resim") %>' />
            <br />
            kitapadi:
            <asp:Label ID="kitapadiLabel" runat="server" Text='<%# Eval("kitapadi") %>' />
            <br />
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
</asp:Content>

