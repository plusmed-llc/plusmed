<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="adm_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>PlusMed - Administração</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.8.0/css/bulma.min.css" />
	<script defer="defer" src="https://use.fontawesome.com/releases/v5.3.1/js/all.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet" />
	<link href="/node_modules/bulma-pricingtable/dist/css/bulma-pricingtable.min.css" rel="stylesheet" />
	<link href="/node_modules/bulma-divider/dist/css/bulma-divider.min.css" rel="stylesheet" />
	<link href="/css/main.css" rel="stylesheet"/>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="stylesheet" href="customize.css" />
</head>
<body>
	<form id="form1" runat="server">
		<nav class="navbar" role="navigation">

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
								<strong>Cadastrar</strong>
							</a>
						</div>
					</div>
				</div>
			</div>

		</nav>
	</form>
</body>
</html>
