<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${html_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">


<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="container-fluid position-relative" id="wrapper">
	<#if has_navigation && is_setup_complete>
			<#include "${full_templates_path}/navigation.ftl" />
		</#if>
	<header class="top-site d-flex" class="d_block" id="banner" role="banner">
		
		<div  id="heading">
			
			<div aria-level="1" class="site-title" role="heading">
				<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
					<img alt="${logo_description}" height="90" src="${site_logo}" width="${site_logo_width}" />
				</a>

				<#if show_site_name>
					<span class="site-name" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
						${site_name}
					</span>
				</#if>
			</div>
		</div>
				<div class="search-bar"> 
					<@liferay.search_bar />
				</div>

		<#if !is_signed_in>
			<a data-redirect="${is_login_redirect_required?string}" 
			 href="${themeDisplay.getURLSignIn()}" 
			id="sign-in" 
			rel="nofollow">${languageUtil.get(locale, "sign_in")}</a>
		</#if>

		
	</header>

	<div class="conteudo container">
	<section id="content">
		<h2 class="hide-accessible sr-only" role="heading" aria-level="1">${the_title}</h2>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>
	</div>

	<footer id="footer" role="contentinfo">
		<div class="container-footer"> 
			<div class="row justify-content-center">
				<div class="col-4">
				<a a href="http://localhost:8080/home"></a>
				<img src="http://localhost:8080/documents/35526/39902/logo.png" alt="Logo Prefeitura de Águas Lindas">
			</div>

			<div class="col-4">
				<p><span>Telefone: (61) 3618 – 4007</span></p>
				<p><span>sic@aguaslindasdegoias.go.gov.br</span></p>
			</div>

			<div class="col-4"> 
				<p><span> Área Especial 4, Av. 2 Jd. Querência, Águas Lindas de Goiás. CEP: 72910-733 </span></p>
			</div>
		</div>

		<#--  <p class="powered-by">
			<@liferay.language_format
				arguments='<a href="http://www.liferay.com" rel="external">Liferay</a>'
				key="powered-by-x"
			/>
		</p>  -->
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<!-- endinject -->

</body>

</html>