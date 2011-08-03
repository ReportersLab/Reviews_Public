from django.db import models
from models import Category, DocumentSet, OperatingSystem, Product, ProductTask, Review, Task
from django.contrib import admin




#Inlines
class CommonInline(admin.StackedInline):
    extra = 0
    readonly_fields = ('slug',)


    
class ProductTaskInline(CommonInline):
    model = ProductTask

class ProductInline(CommonInline):
    model = Product

class CategoryInline(CommonInline):
    model = Category

class ReviewInline(CommonInline):
    model = Review



class CommonAdmin(admin.ModelAdmin):
    actions_on_top = True
    actions_on_bottom = True
    save_on_top = True
    list_filter = ('update_time', 'creation_time', 'published')
    
    readonly_fields = ('slug',)
    
    
    class Media:
        js = ('/static/grappelli//tinymce/jscripts/tiny_mce/tiny_mce.js', '/static/grappelli/tinymce_setup/tinymce_setup.js')
    


class ProductAdmin(CommonAdmin):
    fieldsets = (
        ('The Basics',
            {
                'fields': ('name', 'slug', 'url', 'description', 'published', 'tags', )
            }
        ),
        ('Product Details',
            {
                'fields': ('company', 'cost', 'open_source', 'demo_available', 'obsolete', 'programming_required_rating', 'programming_required_description', 'categories', 'release_date',)
            }
        ),
    )
    
    inlines = [ProductTaskInline, ReviewInline, ]
    list_display = ('name', 'url', 'company', 'published',)
    list_editable= ('published',)
    list_display_links = ('name',)


class ReviewAdmin(CommonAdmin):
    fieldsets = (
        ('The Basics',
            {
                'fields': ('product', 'kicker', 'name', 'subtitle', 'reviewer', 'editor', 'slug', 'published', 'tags', )
            }
        ),
        ('Teaser Text', {'fields': ('teaser',)}),
        ('Review Text', {'fields': ('description',)}),
        ('Review Details',
            {
                'fields': ('version_tested', 'os_used', 'rating', 'community', 'documentation', 'performance', 'usability',)
            }
        )
    )
    
    list_display = ('name', 'product', 'rating', 'published',)
    list_display_links = ('name',)
    list_editable= ('published',)
    
    

class ProductTaskAdmin(CommonAdmin):
    list_display = ('name', 'product_name', 'task_name', 'rating', 'published',)
    list_display_links = ('name',)
    list_editable= ('published',)
    

class TaskAdmin(CommonAdmin):
    list_display = ('name', 'document_name', 'published',)
    list_display_links = ('name',)
    list_editable= ('published',)


class DocumentSetAdmin(CommonAdmin):
    list_display = ('name', 'url', 'published',)
    list_display_links = ('name',)
    list_editable = ('published',)

class OperatingSystemAdmin(CommonAdmin):
    list_display = ('name', 'url', 'published',)
    list_display_links = ('name',)
    list_editable = ('published',)

class CategoryAdmin(CommonAdmin):
    list_display = ('name', 'published',)
    list_display_links = ('name',)
    list_editable = ('published',)



admin.site.register(Category, CategoryAdmin)
admin.site.register(DocumentSet, DocumentSetAdmin)
admin.site.register(OperatingSystem, OperatingSystemAdmin)
admin.site.register(Product, ProductAdmin)
admin.site.register(ProductTask, ProductTaskAdmin)
admin.site.register(Review, ReviewAdmin)
admin.site.register(Task, TaskAdmin)