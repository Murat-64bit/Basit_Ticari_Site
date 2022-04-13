<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkinda.aspx.cs" Inherits="TicaretProje.Hakkinda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="jumbotron text-center">
  <h1>Hakkında Sayfası
  </h1>
  <p>Ucuzluğun ve kalitenin bir numaralı adresi.</p> 
</div>
    <table class="container align-content-center shadow" style="width: 100px">
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server">
                    <ItemTemplate>
                        <img src="<%#Eval("fotograf") %>" alt="Card image" style="width: 680px; height: 350px">
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr> 
            </table>
<table class="container align-content-center">
        <tr>
            <td>
                <br />
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text=<%#Eval("metin") %>></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>
</asp:Content>
