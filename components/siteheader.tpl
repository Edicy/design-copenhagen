	<title>{% if article %}{{ article.title }} | {{page.site_title}}{% else %}{{page.site_title}} | {{ page.title }}{% endif %}</title>
	<meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
    <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    {% if site.search.enabled %}{% stylesheet_link "assets/site_search/3.0/style.css?1" static_host="true" %}{% endif %}
	{% stylesheet_link "style.css?copenhagen1" %}
	{% stylesheet_link "museo_slab.css?copenhagen" %}
<!--[if lt IE 7}>{% stylesheet_link "ie6.css?copenhagen" %}<![endif]-->
	{% if editmode %}<style>.untranslated{opacity:.5;filter:alpha(Opacity=50);zoom:1}</style>{% endif %}
    <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
<!--[if IE 7]>
<style type="text/css">
.search-submit {visibility:hidden;}
form#search {
	padding:2px 5px 2px 5px;
   margin:21px 20px 8px 60px;
   height:17px;
}
form#search p {float:none;}
form#search input {float:none;}
input#onpage_search {
	padding:0;
	margin:0;
	width:238px;
}
</style>
<![endif]-->
<!--[if IE 6]>
<style type="text/css">
.search-submit {visibility:hidden;}
form#search {
   padding:3px 5px 1px 5px;
   margin:23px 0 0 75px;
}
input#onpage_search {
	padding:0px;
	margin:0;
	width:213px;
}
	*html div#header-wrap, *html div#body-wrap, *html div#footer-wrap {
	background-image: none;
	filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod=scale, src='{{images_path}}/bg-wrap.png?1');
	}
	*html div#footer-shadow {
  background-image: none;
  filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(enabled=true, sizingMethod=scale, src='{{images_path}}/bg-shadow.png?1');
	}	
</style>
<![endif]-->
<meta name="viewport" content="initial-scale=1" />
<script src="{{ javascripts_path }}/modernizr.js"></script>