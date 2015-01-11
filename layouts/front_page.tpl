<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN"
	"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
{% include "SiteHeader" %}
</head>
<body>	<div id="header-wrap" class="clearfix">
  <div id="header-lang" class="right clearfix">	
   {% include "Langmenu" %}
  </div>
  <div id="header" class="left clearfix">
   <h1>{%editable site.header%}</h1>
  </div>
	</div>
	<div id="mainmenu-wrap" class="clearfix">
  <div id="mainmenu-wrap2" class="left clearfix">
   <div id="mainmenu-wrap3" class="left clearfix">
    {% include "Mainmenu" %}
    {% if site.search.enabled %}
     {% include "Search" %}
    {% endif %}    
   </div>
  </div>
	</div>
	<div id="body-wrap" class="clearfix">
  <div id="body-slogan" class="clearfix">
   <h1>{% content name="slogan" %}</h1>
  </div>
  <div id="body" class="left" data-search-indexing-allowed="true">
   {% content %}
  </div>
  <div id="body-sidebar" class="left clearfix">
   {% include "News" %}	
  </div>
	</div>
	{% include "Footer" %}
	{% unless editmode %}{{site.analytics}}{% endunless %}
</body>
</html>

