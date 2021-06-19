

{% comment %}
   This loop collects the tip documents.
   It relies on the collection "tips"
   See https://jekyllrb.com/docs/collections/
{% endcomment %}


<hr>

# Related Tips

<div id="search-results">
    {% assign selected_tips = site.tips | where: "category", include.category  %}
    {% for tip in selected_tips  %}
  
    <div class="article-wrapper">
        <article>
            {% include article-header.html page=tip link=true share=false %}
        </article>    
    </div>
    
    <hr class="with-no-margin"/>
    {% endfor %}
</div>


# Related Questions

See [here for questions related to {{ include.topic }}]({{ include.faqlink }}).


# Learn more!

{% include subtle-ads/subtle-ads.html %}

