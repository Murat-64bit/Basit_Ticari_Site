    <%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="TicaretProje.Iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron text-center">
        <h1>İletişim Sayfası
        </h1>
        <p>Ucuzluğun ve kalitenin bir numaralı adresi.</p>
    </div>

        <div class="row">
            <div class="col-md-6 col-sm-12">
                <div>
                    <asp:DataList ID="DataList1" runat="server">
                        <ItemTemplate>
                    <iframe src="<%#Eval("konum") %>" width="900px" height="435px" frameborder="0" style="border: 0" allowfullscreen></iframe>
                            </ItemTemplate>
                        </asp:DataList>
                </div>
            </div>
            <div class="col-md-6 col-sm-12">
                <form action="" method="">
                    <div class="card mt-4">
                        <div class="card-body p-3">
                            <div class="form-group">
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa fa-user "></i>
                                        </div>
                                    </div>
                                    <asp:TextBox ID="txtadsoyad" CssClass="form-control" runat="server" ToolTip="Ad Soyad"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa fa-envelope"></i>
                                        </div>
                                    </div>
                                    <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" ToolTip="E-Mail"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa fa-tag"></i>
                                        </div>
                                    </div>
                                    <asp:TextBox ID="txtkonu" CssClass="form-control" runat="server" ToolTip="Konu"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="input-group mb-2">
                                    <div class="input-group-prepend">
                                        <div class="input-group-text">
                                            <i class="fa fa-comment"></i></div>
                                        <textarea id="txtmesaj" cols="700" rows="6" style="width:100%" runat="server" class="form-control"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="text-center">
                                <asp:Button ID="btngonder" CssClass="btn btn-primary btn-block" runat="server" Text="Gönder" OnClick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
