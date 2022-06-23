<%@ Page Language="VB" MasterPageFile="~/anasayfa.master" AutoEventWireup="false" CodeFile="kitaplarim.aspx.vb" Inherits="kitaplarim" title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style28
        {
            width: 169px;
        }
        .style29
        {
            width: 101px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="id" 
                    DataSourceID="SqlDataSource1" RepeatColumns="3">
                    <ItemTemplate>
                        <table style="width:100%;">
                            <tr>
                                <td class="style29">
                                    &nbsp;</td>
                                <td>
                                    <asp:Image ID="Image7" runat="server" Height="70px" 
                                        ImageUrl='<%# Eval("resim") %>' Width="70px" />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style29">
                                    Kitap Adı :</td>
                                <td>
                                    <asp:Label ID="kitapadiLabel" runat="server" Text='<%# Eval("kitapadi") %>' />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style29">
                                    Katagori</td>
                                <td>
                                    <asp:Label ID="katagoriLabel" runat="server" Text='<%# Eval("katagori") %>' />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style29">
                                    Tarih :</td>
                                <td>
                                    <asp:Label ID="tarihLabel" runat="server" Text='<%# Eval("tarih") %>' />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style29">
                                    Konu :</td>
                                <td>
                                    <asp:Label ID="konuLabel" runat="server" Text='<%# Eval("konu") %>' />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style29">
                                    Tip :</td>
                                <td>
                                    <asp:Label ID="tipLabel" runat="server" Text='<%# Eval("tip") %>' />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style29">
                                    Tür :</td>
                                <td>
                                    <asp:Label ID="turLabel" runat="server" Text='<%# Eval("tur") %>' />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style29">
                                    Yazar :</td>
                                <td>
                                    <asp:Label ID="yazaradiLabel" runat="server" Text='<%# Eval("yazaradi") %>' />
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style29">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\kitap.mdb;Persist Security Info=True" 
                    ProviderName="System.Data.OleDb" 
                    SelectCommand="SELECT DISTINCT * FROM [kitap] WHERE (([tur] = ?) AND ([kitapadi] = ?))">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="tur" QueryStringField="tur" Type="String" />
                        <asp:QueryStringParameter Name="kitapadi" QueryStringField="kitapadi" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

