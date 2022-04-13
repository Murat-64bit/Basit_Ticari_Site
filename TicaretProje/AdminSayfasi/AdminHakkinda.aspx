<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfasi/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminHakkinda.aspx.cs" Inherits="TicaretProje.AdminSayfasi.Hakkinda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center">
        <h1>Hakkında Admin Paneli
        </h1>
        <p>Ucuzluğun ve kalitenin bir numaralı adresi.</p>
    </div>

    <asp:Label ID="Label1" runat="server" Text="Resim:"></asp:Label>
    <br />
    <asp:TextBox ID="txtresim" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="Hakkında:"></asp:Label>
    <br />
    <textarea id="txthakkinda" cols="20" rows="6" runat="server" class="form-control"></textarea>
    <br />   
    <asp:Label ID="Label3" runat="server" Text="Google Konum Embed:"></asp:Label>
    <br />
    <textarea id="txtkonum" cols="20" rows="6" runat="server" class="form-control"></textarea>
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success form-control" Text="Kaydet" OnClick="Button1_Click" />
</asp:Content>
