<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Urunler.aspx.cs" Inherits="TicaretProje.Urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center">
        <h1>Ürünler Sayfası
        </h1>
        <p>Ucuzluğun ve kalitenin bir numaralı adresi.</p>
    </div>

    <table class="container" style="width: 75%; margin: 0 auto;">
        <tr>
            <asp:DataList ID="DataList1" RepeatColumns="4" CellPadding="1" style="width:75%; margin: 0 auto;" runat="server">
                <ItemTemplate>
                    <td>
                        <div class="container">
                            <div class="card-body d-flex shadow flex-column" style="width: 300px; height: 506px">
                                <img class="card-img-top" src="<%#Eval("gorsel") %>" alt="Card image" style="width: 100%">
                                <div class="card-body">
                                    <h4 class="card-title"><%#Eval("fiyat") + " TL" %></h4>
                                    <p class="card-text"><%#Eval("ad")%></p>
                                    <a href="#" style="width: 100%" class="mt-auto btn btn-lg btn-block btn-primary">Satın Al</a>
                                </div>
                            </div>
                        </div>
                    </td>
                </ItemTemplate>
            </asp:DataList>
        </tr>
    </table>
</asp:Content>
