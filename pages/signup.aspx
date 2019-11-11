<%@ Page Language="C#" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="pages_signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>PlusMed - Login</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css" />
	<script defer="defer" src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="../customize.css" />
</head>
<body>
	<form id="form1" runat="server">
		<nav class="navbar is-fixed-top" role="navigation">

			<div class="navbar-brand">
				<a class="navbar-item" href="#">
					<b>PLUSMED</b>
				</a>
				<a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false">
					<span aria-hidden="true"></span>
					<span aria-hidden="true"></span>
					<span aria-hidden="true"></span>
				</a>
			</div>

			<div class="navbar-menu">
				<div class="navbar-start">
					<a class="navbar-item" href="/Default.aspx">Home</a>
				</div>
				<div class="navbar-end">
					<a class="navbar-item" href="/pages/login.aspx">Login</a>
					<div class="navbar-item">
						<div class="buttons">
							<a class="button is-primary" href="/pages/signup.aspx">
								<strong>Sign up</strong>
							</a>
						</div>
					</div>
				</div>
			</div>

		</nav>

		<section class="hero is-fullheight">
			<div class="hero-body bg-med">
				<div class="container has-text-centered">
					<h1 class="title has-text-white">Cadastro</h1>
					<div class="field">
						<label class="label has-text-white" for="txt_email">E-mail</label>
						<div class="control login-input has-text-centered has-icons-left">
							<asp:TextBox CssClass="input" runat="server" ID="txt_email"></asp:TextBox>
							<span class="icon is-small is-left">
								<i class="fas fa-envelope"></i>
							</span>
						</div>
					</div>
					<div class="field">
						<label class="label has-text-white" for="txt_password">Senha</label>
						<div class="control login-input has-text-centered has-icons-left">
							<asp:TextBox CssClass="input" runat="server" ID="txt_password" type="password"></asp:TextBox>
							<span class="icon is-small is-left">
								<i class="fas fa-lock"></i>
							</span>
						</div>
					</div>
					<div class="field">
						<label class="label has-text-white" for="txt_birthdate">Data de Nascimento</label>
						<div class="control login-input has-text-centered has-icons-left">
							<asp:TextBox CssClass="input" runat="server" ID="txt_birthdate" type="date"></asp:TextBox>
							<span class="icon is-small is-left">
								<i class="fas fa-calendar"></i>
							</span>
						</div>
					</div>
					<div class="field">
						<label class="label has-text-white" for="txt_rg">RG</label>
						<div class="control login-input has-text-centered has-icons-left">
							<asp:TextBox CssClass="input" runat="server" ID="txt_rg" type="text"></asp:TextBox>
							<span class="icon is-small is-left">
								<i class="fas fa-id-badge"></i>
							</span>
						</div>
					</div>
					<div class="field">
						<label class="label has-text-white" for="txt_cpf">CPF</label>
						<div class="control login-input has-text-centered has-icons-left">
							<asp:TextBox CssClass="input" runat="server" ID="txt_cpf" type="number"></asp:TextBox>
							<span class="icon is-small is-left">
								<i class="fas fa-id-card"></i>
							</span>
						</div>
					</div>

					<div class="field">
						<label class="label has-text-white" for="txt_convenio">Convênio</label>
						<div class="control login-input has-icons-left">
							<div class="select" style="width: 100%;">
								<select style="width: 100%;">
									<option selected value="0">Nenhum</option>
									<option value="1">Unimed</option>
									<option value="2">Bradesco Saúde</option>
								</select>
							</div>
							<span class="icon is-left">
								<i class="fas fa-ambulance"></i>
							</span>
						</div>
					</div>

					<div class="field">
						<div class="control has-text-centered">
							<asp:Button ID="btn_login" runat="server" Text="Cadastrar" CssClass="button is-success" Width="30%" />
						</div>
					</div>
				</div>
			</div>
		</section>
	</form>
</body>
</html>
