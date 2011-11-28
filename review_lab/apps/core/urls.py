from django.conf import settings
from django.conf.urls.defaults import *
from core import views
from django.views.decorators.cache import cache_page

urlpatterns = patterns('',
    url(r'^review/(?P<slug>[-\w]+)/?$', views.review_view, name='review_view'),
    url(r'^product/(?P<slug>[-\w]+)/?$', views.product_view, name='product_view'),
    url(r'^tutorial/(?P<slug>[-\w]+)/?$', views.tutorial_view, name='tutorial_view'),
    #url(r'^challenge/(?P<slug>[-\w]+)/?$', cache_page(60 * 2)(views.challenge_view), name='challenge_view'),
    url(r'^task/(?P<slug>[-\w]+)/$', views.task_view, name='task_view'),
    url(r'^producttask/(?P<slug>[-\w]+)/?$', views.product_task_view, name='product_task_view'),
    url(r'^document/(?P<slug>[-\w]+)/?$', views.document_view, name='document_view'),
    url(r'^tag/(?P<slug>[-\w]+)/?$', cache_page(60 * 15)(views.tag_view), name='tag_view'),
    url(r'^more/(?P<model>\w+)/?$', cache_page(60 * 15)(views.more_view), name='more_view'),
    url(r'^search/?$', cache_page(60 * 15)(views.search_view), name='search_view'),
    #override with our custom view function.
    url(r'^taggit_autosuggest/list/$', views.list_tags, name='taggit_autosuggest-list'),
    url(r'', cache_page(60 * 15)(views.index_view), name='index_view'),
)