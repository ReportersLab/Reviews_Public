from django.contrib.syndication.views import Feed
from django.template.defaultfilters import truncatewords_html
from django.shortcuts import get_object_or_404
from models import Category, Review, CustomTag, Product



class LatestReviewsFeed(Feed):
    title = "ReportersLab.org latest reviews"
    description = "The latest reviews from the Reporters' Lab."
    
    def link(self, object):
        return "/search?type=reviews"
    
    def items(self):
        return Review.published_objects.all()[:10]
    
    def item_title(self, item):
        return item.name
    
    def item_description(self, item):
        return item.teaser
    

class LatestProductFeed(Feed):
    title = "ReportersLab.org latest products"
    description = "The latest products Reporters' Lab is looking at."
    
    def link(self, object):
        return "/search?type=products"
    
    def items(self):
        return Product.published_objects.all()[:10]
    
    def item_title(self, item):
        return item.name
    
    def item_description(self, item):
        return truncatewords_html(item.description, 100)




class TagFeed(Feed):
    def get_object(self, request, slug):
        return get_object_or_404(CustomTag, slug = slug)
    
    def items(self, object):
        all_items = object.tagged_items.all()[:15]
        published_items = []
        for item in all_items:
            if item.content_object.published == True:
                published_items.append(item)
                
        return published_items
        
    def title(self, object):
        return "ReportersLab.org items tagged with '{0}'".format(object.clean_name())
    
    def description(self, object):
        return "Products, Reviews, and more items that have been tagged with '{0}' by Reporters' Lab.".format(object.clean_name())
    
    def link(self, object):
        return object.get_absolute_url()
    
    
    def item_link(self, item):
        return item.content_object.get_absolute_url()
    
    def item_title(self, item):
        try:
            #return str(item.content_object.published)
            return '{0}: {1}'.format(str(item.content_type).capitalize(), item.content_object.name)
        except:
            return "huh"
    
    def item_description(self, item):
        if hasattr(item.content_object, 'teaser'):
            return item.content_object.teaser
        if hasattr(item.content_object, 'description'):
            return truncatewords_html(item.content_object.description, 100)
        return 'huh'

     