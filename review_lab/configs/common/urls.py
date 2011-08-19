from django.conf import settings
from django.conf.urls.defaults import *
from django.contrib import admin

admin.autodiscover()

urlpatterns = patterns('',
    
    (r'^admin/doc/', include('django.contrib.admindocs.urls')),
    (r'^admin/', include(admin.site.urls)),
    (r'^taggit_autosuggest/', include('taggit_autosuggest.urls')),
    (r'^grappelli/', include('grappelli.urls')),
    
    
    (r'^site_media/(?P<path>.*)$', 'django.views.static.serve', {
        'document_root': settings.MEDIA_ROOT
    }),
    
    (r'^/?', include('core.urls')),
    
)