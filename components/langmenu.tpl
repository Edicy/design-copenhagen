   {% if editmode %}
   <ul>{% for language in site.languages %}
    <li{% if language.selected? %} class="active"{% endif %}>
     <a href="{{language.url}}">{{language.title}}</a>
    </li>{% endfor %}
    <li>
     {% languageadd %}
    </li>
   </ul>
   {% else %}{% if site.has_many_languages? %}
   <ul>{% for language in site.languages %}
    <li{% if language.selected? %} class="active"{% endif %}>
     <a href="{{language.url}}">{{language.title}}</a>
    </li>{% endfor %}
   </ul>
   {% endif %}{% endif %}
