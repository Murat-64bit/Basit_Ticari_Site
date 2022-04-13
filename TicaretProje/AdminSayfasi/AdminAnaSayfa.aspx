<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfasi/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminAnaSayfa.aspx.cs" Inherits="TicaretProje.AdminSayfasi.AdminAnaSayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center">
        <h1>Anasayfa Admin Paneli
        </h1>
        <p>Ucuzluğun ve kalitenin bir numaralı adresi.</p>
    </div>
    
    <asp:Label ID="Label1" runat="server" Text="Banner:"></asp:Label>
    <br />
    <asp:TextBox ID="txtbanner" runat="server" CssClass="form-control"></asp:TextBox> 
    <br />
    <asp:Label ID="Label2" runat="server" Text="Tanıtım:"></asp:Label>
    <br />
    <asp:TextBox ID="txttanitim" runat="server" CssClass="form-control"></asp:TextBox>
    <br /> 
    <asp:Label ID="Label3" runat="server" Text="Tanıtım:"></asp:Label>
    <br />
    <asp:TextBox ID="txtlogo" runat="server" CssClass="form-control"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success form-control" Text="Kaydet" OnClick="Button1_Click" />
</asp:Content>
