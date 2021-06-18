
{% comment %}
   This loop collects the FAQ documents from the posts.
   TODO: restrict to those posts that really are FAQ...
{% endcomment %}



<div id="search-results">
    {% assign selected_posts = site.posts | where: "category", include.category | reverse %}
    {% for post in selected_posts  %}
  
    <div class="article-wrapper">
        <article>
            {% include article-header.html page=post link=true share=false %}
        </article>    
    </div>
    
    <hr class="with-no-margin"/>
    {% endfor %}
</div>


# <font color="#dd354b">Learn more!</font>

{% include subtle-ads/subtle-ads.html %}



