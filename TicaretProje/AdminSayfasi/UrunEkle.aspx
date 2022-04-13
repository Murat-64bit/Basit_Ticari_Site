<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfasi/AdminPanel.Master" AutoEventWireup="true" CodeBehind="UrunEkle.aspx.cs" Inherits="TicaretProje.AdminSayfasi.UrunEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="jumbotron text-center">
        <h1>Ürün Ekleme Paneli
        </h1>
        <p>Ucuzluğun ve kalitenin bir numaralı adresi.</p>
    </div>

    <asp:Label ID="Label1" runat="server" Text="Ad:"></asp:Label>
    <br />
    <asp:TextBox ID="txtad" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Fiyat:"></asp:Label>
    <br />
    <asp:TextBox ID="txtfiyat" runat="server" CssClass="form-control"></asp:TextBox>
    <br /> 
    <asp:Label ID="Label3" runat="server" Text="Görsel Yolu:"></asp:Label>
    <br />
    <asp:TextBox ID="txtgorsel" runat="server" CssClass="form-control"></asp:TextBox>

    <br />
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success form-control" Text="Kaydet" OnClick="Button1_Click" />
</asp:Content>
