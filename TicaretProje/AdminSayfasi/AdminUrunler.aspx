<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfasi/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminUrunler.aspx.cs" Inherits="TicaretProje.AdminSayfasi.Urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center">
        <h1>Ürünler Admin Paneli
        </h1>
        <p>Ucuzluğun ve kalitenin bir numaralı adresi.</p>
    </div>

    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">ÜRÜN ID</th>
            <th scope="col">ÜRÜN AD</th>
            <th scope="col">ÜRÜN FİYAT</th>
            <th scope="col">ÜRÜN RESİM</th>
            <th scope="col">İŞLEMLER</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("id") %></td>
                        <td><%#Eval("ad") %></td>
                        <td><%#Eval("fiyat") %></td>
                        <td><%#Eval("gorsel") %></td>
                        <td>
                            <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#"~/AdminSayfasi/UrunGuncelle.aspx?id="+Eval("id")%>' CssClass="btn btn-warning" Width="150px" runat="server">Güncelle</asp:HyperLink>
                            <asp:HyperLink ID="HyperLink2" NavigateUrl='<%#"~/AdminSayfasi/UrunSil.aspx?id="+Eval("id")%>' CssClass="btn btn-danger" Width="150px" runat="server">Sil</asp:HyperLink>
                    </tr>
                    </tbody>
                </ItemTemplate>
            </asp:Repeater>
    </table>

    <asp:HyperLink ID="HyperLink3" NavigateUrl="~/AdminSayfasi/UrunEkle.aspx" CssClass="btn btn-info" Width="150px" runat="server">Ekle</asp:HyperLink>
</asp:Content>
