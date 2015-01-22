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
  <div id="body-slogan" class="clearfix">
    <h1 class="blog">{% editable article.title %} <span class="post-date"> {{article.created_at | format_date:"long"}} </span> <span class="post-author"> {{article.author.name}}</span></h1>
  </div>
  <div id="blog-article" class="left">
    <div id="body" class="clearfix">
      <div class="excerpt clearfix" data-search-indexing-allowed="true"> {% editable article.excerpt %} </div>
      <div class="article-body clearfix" data-search-indexing-allowed="true"> {% editable article.body %} </div>
      
      {% if editmode %}
            <div class="cfx article-tags">
                <div class="article-tag-icon"></div>
                {% editable article.tags %}
            </div>
          {% else %}
            {% unless article.tags == empty %}
                <div class="cfx article-tags">
                    <div class="article-tag-icon"></div>
                    {% for tag in article.tags %}
                        <a href="{{ article.page.url }}/tagged/{{ tag.path }}">{{ tag.name }}</a>{% unless forloop.last %}, {% endunless %}
                    {% endfor %}
                </div>
            {% endunless %}
        {% endif %}
      
    </div>
    <div id="comment-box"> <a name="comments"></a>
      <div class="div_round clearfix">
        <h3>{% case article.comments_count %}{% when 0 %}{{"no_comments"|lc}}{% else %}{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span>{% endcase %}</h3>
      </div>
      <ul>
        {% for comment in article.comments %}
        <li class="edy-site-blog-comment"> <span class="comment-author">{{comment.author}}</span> <span class="comment-date">{{comment.created_at | date:"%b.%d, %Y"}} {% removebutton %}</span>
          <div class="comment-body"> {{comment.body_html}}</div>
        </li>
        {% endfor %}
      </ul>
      <div id="comments-add"> <a name="add-comment"></a>
        <h3>{{"add_a_comment"|lc}}</h3>
        {% commentform %}     {% unless comment.valid? %}
        <ul class="errors">
          {% for error in comment.errors %}
          <li>{{ error | lc }}</li>
          {% endfor %}
        </ul>
        {% endunless %}
        <p>
          <label for="commentform-name">{{"name"|lc}}</label>
          <input type="text" class="textbox bold" id="commentform-name" value="{{comment.author}}" name="comment[author]" />
        </p>
        <p>
          <label for="commentform-email">{{"email"|lc}}</label>
          <input type="text" class="textbox" id="commentform-email" value="{{comment.author_email}}" name="comment[author_email]" />
        </p>
        <p>
          <label for="commentform-body">{{"comment"|lc}}</label>
          <textarea class="textbox" rows="4" cols="62" name="comment[body]">{{comment.body}}</textarea>
        </p>
        <p>
          <input type="submit" class="submit" value="{{"submit"|lc}}" />
        </p>
        {% endcommentform %} </div>
    </div>
  </div>
  <div id="body-sidebar" class="left clearfix">
    <ul class="blogmenu">
      <li> <a href="#comments">{% case article.comments_count %}{% when 0 %}{{"Write_first_comment" | lc}}{% else %}{{"comments" | lc}} (<span class="edy-site-blog-comments-count">{{ article.comments_count }}</span>){% endcase %}</a> </li>
      <li> <a href="#add-comment">{{"add_a_comment"|lc}}</a> </li>
      <li> <a href="{{blog.rss_url}}">RSS</a> </li>
    </ul>
    <br />
    {% include "Submenu" %} </div>
</div>
{% include "Footer" %} {% unless editmode %}{{site.analytics}}{% endunless %}
</body>
</html>