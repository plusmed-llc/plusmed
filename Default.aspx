<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>PlusMed</title>
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
			</div>

		</nav>

		<section class="hero is-medium bg-home">
			<div class="hero-body">
				<div class="container">
					<h1 class="title has-text-white">PlusMed
					</h1>
					<h2 class="subtitle has-text-white">Eficiência, qualidade e compromisso!
					</h2>
				</div>
			</div>
		</section>

		<section class="hero is-primary is-bold">
			<div class="hero-body">
				<div class="container">
					<h1 class="title">» Conte com médicos de diversas especialidades</h1>
					<div class="columns">
						<div class="column has-text-centered">
							<img src="https://www.saofranciscomarilia.com.br/assets/img/icon-01.png" alt="Alternate Text" />
							<p class="has-text-weight-semibold">Ginecologia</p>
						</div>
						<div class="column has-text-centered">
							<img src="https://www.saofranciscomarilia.com.br/assets/img/icon-02.png" alt="Alternate Text" />
							<p class="has-text-weight-semibold">Cardiologia</p>
						</div>
						<div class="column has-text-centered">
							<img src="https://www.saofranciscomarilia.com.br/assets/img/icon-03.png" alt="Alternate Text" />
							<p class="has-text-weight-semibold">Pediatria</p>
						</div>
						<div class="column has-text-centered">
							<img src="https://www.saofranciscomarilia.com.br/assets/img/icon-04.png" alt="Alternate Text" />
							<p class="has-text-weight-semibold">Ortopedia</p>
						</div>
						<div class="column has-text-centered">
							<img src="https://www.saofranciscomarilia.com.br/assets/img/icon-05.png" alt="Alternate Text" />
							
						</div>
					</div>
				</div>
			</div>
		</section>

		<br />

		<div class="pricing-table">
			<div class="pricing-plan">
				<div class="plan-header">Prata</div>
				<div class="plan-price"><span class="plan-price-amount has-text-grey-lighter"><span class="plan-price-currency">R$</span>89,90</span>/mês</div>
				<div class="plan-items">
					<div class="plan-item">Pronto Atendimento</div>
					<div class="plan-item">3 Consultas</div>
					<div class="plan-item">1 Exame</div>
					<div class="plan-item">-</div>
					<div class="plan-item">-</div>
				</div>
				<div class="plan-footer">
					<button class="button is-fullwidth">Escolher</button>
				</div>
			</div>

			<div class="pricing-plan is-warning is-active">
				<div class="plan-header">Ouro</div>
				<div class="plan-price"><span class="plan-price-amount"><span class="plan-price-currency">R$</span>139,90</span>/mês</div>
				<div class="plan-items">
					<div class="plan-item">Pronto Atendimento</div>
					<div class="plan-item">5 Consultas</div>
					<div class="plan-item">3 Exames</div>
					<div class="plan-item">CPT</div>
					<div class="plan-item">-</div>
				</div>
				<div class="plan-footer">
					<button class="button is-fullwidth">Escolher</button>
				</div>
			</div>

			<div class="pricing-plan is-primary">
				<div class="plan-header">Platina</div>
				<div class="plan-price"><span class="plan-price-amount"><span class="plan-price-currency">R$</span>199,90</span>/mês</div>
				<div class="plan-items">
					<div class="plan-item">Pronto Atendimento</div>
					<div class="plan-item">10 Consultas</div>
					<div class="plan-item">5 Exames</div>
					<div class="plan-item">CPT</div>
					<div class="plan-item">Exames Especializados</div>
				</div>
				<div class="plan-footer">
					<button class="button is-fullwidth">Escolher</button>
				</div>
			</div>
		</div>


	</form>
</body>
</html>
