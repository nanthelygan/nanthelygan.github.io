---
layout: default
title: Experiments
permalink: /experiments/
---

<div class="welcome-strip">
	<div class="welcome-strip__message">
		<span>Experiments</span>
	</div>
</div>

<div class="wrapper-main">

	<ul id="og-grid" class="og-grid">
		{% for post in site.posts %}
		    {% if post.categories contains 'experiment' %}
    
						<li>
							<a href="{{ BASE_PATH }}{{ post.url }}" data-largesrc="{{ site.cdn_path }}{{ post.large-image-src }}" data-title="{{ post.title }}" data-description="{{ post.description }}">
								<img src="{{ site.cdn_path }}{{ post.thumb-image-src }}" width="250" height="250" />
							</a>
						</li>

		    {% endif %}
		{% endfor %}
	</ul>

</div>
