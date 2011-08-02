from django.db import models
from models import Category, DocumentSet, OperatingSystem, Product, ProductTask, Review, Task
from django.contrib import admin




#Inlines



    
class ProductTaskInline(admin.StackedInline):
    model = ProductTask
    extra = 0
    
    readonly_fields = ('slug',)
    




class CommonAdmin(admin.ModelAdmin):
    actions_on_top = True
    actions_on_bottom = True
    save_on_top = True
    
    readonly_fields = ('slug',)
    
    
    class Media:
        js = ('/static/grappelli//tinymce/jscripts/tiny_mce/tiny_mce.js', '/static/grappelli/tinymce_setup/tinymce_setup.js')
    




    
    
    


class ProductAdmin(CommonAdmin):
    fieldsets = (
        ('The Basics',
            {'fields': ('name', 'slug', 'url', 'description', 'published', 'tags', )
                
            }
        ),
        ('Product Details',
            {'fields': ('company', 'cost', 'open_source', 'demo_available', 'programming_required_rating', 'programming_required_description', 'categories')
                
            }
        ),
    )
    
    inlines = [ProductTaskInline,]




admin.site.register(Category, CommonAdmin)
admin.site.register(DocumentSet, CommonAdmin)
admin.site.register(OperatingSystem, CommonAdmin)
admin.site.register(Product, ProductAdmin)
admin.site.register(ProductTask, CommonAdmin)
admin.site.register(Review, CommonAdmin)
admin.site.register(Task, CommonAdmin)