   {% for article in site.latest_articles limit:1 %}
    <div class="div_round clearfix">
     <h3>{{ "latest_news" | lc }}</h3>
    </div>
    <ul id="latest_news" class="clearfix">
     {% for article in site.latest_articles limit:5 %}
      <li>
       <a href="{{article.url}}">{{ article.title }}</a> <span class="date">{{article.created_at | date:"%b.%d, %Y"}}</span>
      </li>
    {% endfor %}
    </ul>
   {% endfor %}

