
{% comment %}
   This loop collects the FAQ documents.
   It relies on the collection "faqs"
   See https://jekyllrb.com/docs/collections/
{% endcomment %}



<div id="search-results">
    {% assign selected_faqs = site.faqs | where: "category", include.category  %}
    {% for faq in selected_faqs  %}
  
    <div class="article-wrapper">
        <article>
            {% include article-header.html page=faq link=true share=false %}
        </article>    
    </div>
    
    <hr class="with-no-margin"/>
    {% endfor %}
</div>


# <font color="#dd354b">Learn more!</font>

{% include subtle-ads/subtle-ads.html %}



