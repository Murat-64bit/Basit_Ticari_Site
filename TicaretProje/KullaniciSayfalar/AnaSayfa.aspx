<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="TicaretProje.AnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                    <img src="<%#Eval("Banner") %>" style="width: 100%; height: auto" />
                </ItemTemplate>

        </asp:DataList>
    </div>
    <div class="jumbotron jumbotron-fluid text-center">
        <h3>Ucuzluğun ve kalitenin bir numaralı adresi</h3>
    </div>

    
    <table class="container align-content-center shadow"  style="width:100px" >
        <tr>
        <td>
            <asp:DataList ID="DataList2" runat="server">
                <ItemTemplate>
                     <div class="container">
                <div class="card" style="width: 300px; height:506px">
                    <img class="card-img-top" src="<%#Eval("Tanitim") %>" alt="Card image" style="width: 100%; height:100%">
                    <div class="card-body">
                    </div>
                </div>
            </div>

                </ItemTemplate>
            </asp:DataList>
        </td>
        <td>
               <asp:DataList ID="DataList3" runat="server">
                   <ItemTemplate>
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
             </ItemTemplate>
                        </asp:DataList>
        </td>
        <td>
               <asp:DataList ID="DataList4" runat="server">
                   <ItemTemplate>
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
             </ItemTemplate>
                        </asp:DataList>
        </td>
        <td>
              <asp:DataList ID="DataList5" runat="server">
                   <ItemTemplate>
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
             </ItemTemplate>
                        </asp:DataList>
        </td>
            </tr>
    </table>

     
</asp:Content>
