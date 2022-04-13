<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminGiris.aspx.cs" Inherits="TicaretProje.AdminSayfasi.AdminGiris" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Tablet Marketim Giriş Panel</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="/AdminSayfasi/Giris/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/AdminSayfasi/Giris/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/AdminSayfasi/Giris/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/AdminSayfasi/Giris/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/AdminSayfasi/Giris/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/AdminSayfasi/Giris/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/AdminSayfasi/Giris/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/AdminSayfasi/Giris/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="/AdminSayfasi/Giris/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="/AdminSayfasi/Giris/css/util.css">
	<link rel="stylesheet" type="text/css" href="/AdminSayfasi/Giris/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(/AdminSayfasi/Giris/images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Giriş
					</span>
				</div>

				<form runat="server" class="login100-form validate-form">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Kullanıcı Adı</span>
						<asp:TextBox ID="TextBox1" class="input100" name="username" placeholder="Kullanıcı Adınızı Girin" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Şifre</span>
						<asp:TextBox ID="TextBox2" class="password" name="passs" placeholder="Şifrenizi Girin" runat="server"></asp:TextBox>
						<span class="focus-input100"></span>
					</div>

					

					<div class="container-login100-form-btn">
						<asp:Button CssClass="login100-form-btn" ID="Button1" runat="server" Text="Giriş" OnClick="Button1_Click" />
					</div>
				</form>
			</div>
		</div>
	</div>
	
<!--===============================================================================================-->
	<script src="/AdminSayfasi/Giris/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="/AdminSayfasi/Giris/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="/AdminSayfasi/Giris/vendor/bootstrap/js/popper.js"></script>
	<script src="/AdminSayfasi/Giris/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="/AdminSayfasi/Giris/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="/AdminSayfasi/Giris/vendor/daterangepicker/moment.min.js"></script>
	<script src="/AdminSayfasi/Giris/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="/AdminSayfasi/Giris/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="/AdminSayfasi/Giris/js/main.js"></script>

</body>
</html>
