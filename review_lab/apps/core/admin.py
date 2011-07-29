from django.db import models
from models import Category, DocumentSet, OperatingSystem, Product, ProductTask, Review, Task
from django.contrib import admin
from tinymce.widgets import TinyMCE


class CommonAdmin(admin.ModelAdmin):
    formfield_overrides = {
        models.TextField: {'widget': TinyMCE(attrs={'cols': 80, 'rows': 20}, )},
    }
    
    class Media:
        js = ('http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js', 'https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.6/jquery-ui.min.js')
    


admin.site.register(Category, CommonAdmin)
admin.site.register(DocumentSet, CommonAdmin)
admin.site.register(OperatingSystem, CommonAdmin)
admin.site.register(Product, CommonAdmin)
admin.site.register(ProductTask, CommonAdmin)
admin.site.register(Review, CommonAdmin)
admin.site.register(Task, CommonAdmin)