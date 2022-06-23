<%@ Page Title="" Language="VB" MasterPageFile="~/anasayfa.master" AutoEventWireup="false" CodeFile="uyesil.aspx.vb" Inherits="uyesil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
    DataFile="~/App_Data/kitap.mdb" 
    DeleteCommand="DELETE FROM [uyeler] WHERE [id] = ?" 
    InsertCommand="INSERT INTO [uyeler] ([id], [ad], [soyad], [kul_adi], [sifre], [eposta], [gizlisoru], [gizlicevap], [yetki]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)" 
    SelectCommand="SELECT * FROM [uyeler]" 
    UpdateCommand="UPDATE [uyeler] SET [ad] = ?, [soyad] = ?, [kul_adi] = ?, [sifre] = ?, [eposta] = ?, [gizlisoru] = ?, [gizlicevap] = ?, [yetki] = ? WHERE [id] = ?">
    <DeleteParameters>
        <asp:Parameter Name="id" Type="Int32" />
    </DeleteParameters>
    <UpdateParameters>
        <asp:Parameter Name="ad" Type="String" />
        <asp:Parameter Name="soyad" Type="String" />
        <asp:Parameter Name="kul_adi" Type="String" />
        <asp:Parameter Name="sifre" Type="String" />
        <asp:Parameter Name="eposta" Type="String" />
        <asp:Parameter Name="gizlisoru" Type="String" />
        <asp:Parameter Name="gizlicevap" Type="String" />
        <asp:Parameter Name="yetki" Type="String" />
        <asp:Parameter Name="id" Type="Int32" />
    </UpdateParameters>
    <InsertParameters>
        <asp:Parameter Name="id" Type="Int32" />
        <asp:Parameter Name="ad" Type="String" />
        <asp:Parameter Name="soyad" Type="String" />
        <asp:Parameter Name="kul_adi" Type="String" />
        <asp:Parameter Name="sifre" Type="String" />
        <asp:Parameter Name="eposta" Type="String" />
        <asp:Parameter Name="gizlisoru" Type="String" />
        <asp:Parameter Name="gizlicevap" Type="String" />
        <asp:Parameter Name="yetki" Type="String" />
    </InsertParameters>
</asp:AccessDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
    AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" 
    BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" 
    DataKeyNames="id" DataSourceID="AccessDataSource1" Height="50px" Width="125px">
    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
    <Fields>
        <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
            ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
        <asp:BoundField DataField="soyad" HeaderText="soyad" SortExpression="soyad" />
        <asp:BoundField DataField="kul_adi" HeaderText="kul_adi" 
            SortExpression="kul_adi" />
        <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
        <asp:BoundField DataField="eposta" HeaderText="eposta" 
            SortExpression="eposta" />
        <asp:BoundField DataField="gizlisoru" HeaderText="gizlisoru" 
            SortExpression="gizlisoru" />
        <asp:BoundField DataField="gizlicevap" HeaderText="gizlicevap" 
            SortExpression="gizlicevap" />
        <asp:BoundField DataField="yetki" HeaderText="yetki" SortExpression="yetki" />
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
            ShowInsertButton="True" />
    </Fields>
    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
</asp:DetailsView>
</asp:Content>

