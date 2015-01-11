	<div id="footer-wrap" class="clearfix">
  <div id="footer" class="clearfix">
   <div id="footer_content" class="left">{% xcontent name="footer" %}</div>
   <div id="edicy" class="right clearfix">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div>
  </div>
	</div>
	<div id="footer-shadow" class="clearfix"></div>
    <script src="{{ site.static_asset_host }}/libs/picturefill/latest/picturefill.min.js"></script>
    {% if site.search.enabled %}
        <script type="text/javascript" src="http://static.edicy.com/assets/site_search/3.0/site_search.js?1"></script>
        <script type="text/javascript">
            var edys_site_search_options = {
                texts: { noresults: "{{ "search_noresults"|lc }}" },
                default_stylesheet_enabled: false
    }
    </script>
    {% endif %}