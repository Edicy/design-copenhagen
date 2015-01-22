<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="{{ page.langauage_code }}" lang="{{ page.language_code }}">
<head>
{% include "SiteHeader" %}{{ blog.rss_link }}
</head>
<body>
<div id="header-wrap" class="clearfix">
  <div id="header-lang" class="right clearfix"> {% include "Langmenu" %} </div>
  <div id="header" class="left clearfix">
    <h1>{%editable site.header%}</h1>
  </div>
</div>
<div id="mainmenu-wrap" class="clearfix">
  <div id="mainmenu-wrap2" class="left clearfix">
    <div id="mainmenu-wrap3" class="left clearfix"> {% include "Mainmenu" %}    {% if site.search.enabled %}     {% include "Search" %}    {% endif %} </div>
  </div>
</div>
<div id="body-wrap" class="clearfix">
  {% include "MobileMenus" %}
  <div class="left clearfix">
    
    {% if tags %}
        <div class="tagged-list-header">
            <div class="header-tag-icon"></div>
            {% if tags == empty %}
                {{ "no_posts_tagged" | lc }}
            {% else %}
                {{ "posts_tagged" | lc }} '{{ tags | sort:"name" | map:"name" | join:"', '"}}'.
            {% endif %}
        </div>
    {% endif %}
    
    <ul id="blog-list" class="left clearfix">
      {% addbutton class="add-article" %}
      {% for article in articles %}
      <li class="post">
        <h2><a href="{{article.url}}">{{article.title}}</a> <span class="date">{{article.created_at | format_date:"long"}}</span></h2>
        <div class="excerpt"> {{article.excerpt}} </div>
        <div class="postmetadata clearfix"> <span><strong><a href="{{article.url}}">{{"read_more"|lc}} &raquo;</a></strong></span> <span class="postmetadata-comments"> <a href="{{article.url}}">{% case article.comments_count %}{% when 0 %}{{"Write_first_comment" | lc}}{% else %}{{"comments" | lc}} ({{article.comments_count}}){% endcase %}</a> </span> </div>
      </li>
      {% endfor %}
    </ul>
  </div>
  <div id="body-sidebar" class="left clearfix blog30px"> {% include "Submenu" %} </div>
</div>
{% include "Footer" %} {% unless editmode %}{{site.analytics}}{% endunless %}
</body>
</html>