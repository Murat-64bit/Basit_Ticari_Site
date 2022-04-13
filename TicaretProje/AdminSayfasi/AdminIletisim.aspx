<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSayfasi/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminIletisim.aspx.cs" Inherits="TicaretProje.AdminSayfasi.AdminIletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="jumbotron text-center">
        <h1>İletişim Admin Paneli
        </h1>
        <p>Ucuzluğun ve kalitenin bir numaralı adresi.</p>
    </div>

    <table class="table table-bordered table-hover">
        <tr>
            <th scope="col">MESAJ ID</th>
            <th scope="col">AD SOYAD</th>
            <th scope="col">E-MAIL</th>
            <th scope="col">KONU</th>
            <th scope="col">MESAJ</th>
        </tr>
        <tbody>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%#Eval("id") %></td>
                        <td><%#Eval("adsoyad") %></td>
                        <td><%#Eval("email") %></td>
                        <td><%#Eval("konu") %></td>
                        <td><%#Eval("mesaj") %></td>
                       
                    </tr>
                    </tbody>
                </ItemTemplate>
            </asp:Repeater>
    </table>

</asp:Content>
