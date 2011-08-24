from django.conf import settings
from django.db import models
from models import Category, DocumentSet, OperatingSystem, Product, ProductTask, Review, Task, Tutorial, Challenge
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
        js = (settings.STATIC_URL+'grappelli/tinymce/jscripts/tiny_mce/tiny_mce.js', settings.STATIC_URL+'grappelli/tinymce_setup/tinymce_setup.js')
    


class ProductAdmin(CommonAdmin):
    fieldsets = (
        ('The Basics',
            {
                'fields': ('name', 'slug', 'url', 'description', 'published', 'tags', )
            }
        ),
        ('Product Details',
            {
                'fields': ('company', 'image', 'cost', 'open_source', 'demo_available', 'obsolete', 'programming_required_rating', 'programming_required_description', 'categories', 'release_date',)
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
                'fields': ('product', 'kicker', 'name', 'subtitle', 'reviewer', 'editor', 'slug', 'published', 'tags', 'image',)
            }
        ),
        ('Teaser Text', {'fields': ('teaser',)}),
        ('Review Text', {'fields': ('description',)}),
        ('Review Details',
            {
                'fields': ('version_tested', 'os_used', 'community', 'community_text', 'documentation', 'documentation_text',
                           'performance', 'performance_text', 'usability', 'usability_text', 'rating', 'rating_text',)
            }
        )
    )
    
    list_display = ('name', 'product', 'rating', 'published',)
    list_display_links = ('name',)
    list_editable= ('published',)
    
 
 
class TutorialAdmin(CommonAdmin):
    fieldsets = (
        ('The Basics', {
            'fields': ('product', 'kicker', 'name', 'subtitle', 'writer', 'writer_external', 'editor', 'slug', 'published', 'tags', 'image',)
        }),
        ('Teaser Text', {'fields': ('teaser',)}),
        ('Tutorial Text', {'fields': ('description',)}),
        ('Tutorial Details',
            {
                'fields': ('tasks', 'url', 'embed', 'repo_link', 'files',)
            }
         ),
        
    )
    list_display = ('name', 'product', 'repo_link', 'published',)
    list_display_links = ('name',)
    list_editable = ('published',)
 
 
class ChallengeAdmin(CommonAdmin):
    fieldsets = (
        ('The Basics', {
            'fields': ('kicker', 'name', 'subtitle', 'contact', 'other_contact', 'slug', 'published', 'tags', 'image',)
        }),
        ('Teaser Text', {'fields': ('teaser',)}),
        ('Challenge Text', {'fields': ('description',)}),
        ('Challenge Details',
            {
                'fields': ('tasks', 'documents', 'files', 'award')
            }
         ),
        
    )
    list_display = ('name', 'contact', 'published',)
    list_display_links = ('name',)
    list_editable = ('published',)
 
    

class ProductTaskAdmin(CommonAdmin):
    fieldsets = (
        ('The Basics',
            {
                'fields': ('name', 'slug', 'description', 'published', 'tags', )
            }
        ),
        ('The Details',
            {
                'fields': ('product', 'task', 'rating', 'rating_text',)    
            } 
        )
    )
    
    list_display = ('name', 'product_name', 'task_name', 'rating', 'published',)
    list_display_links = ('name',)
    list_editable= ('published',)
    

class TaskAdmin(CommonAdmin):
    fieldsets = (
        ('The Basics',
            {
                'fields': ('name', 'slug', 'description', 'published', 'tags', )
            }
        ),
        ('The Details',
            {
                'fields': ('document',)    
            } 
        )
    )
    list_display = ('name', 'document_name', 'published',)
    list_display_links = ('name',)
    list_editable= ('published',)


class DocumentSetAdmin(CommonAdmin):
    fieldsets = (
        ('The Basics',
            {
                'fields': ('name', 'slug', 'description', 'published', 'tags', )
            }
        ),
        ('The Details',
            {
                'fields': ('url', 'kind', 'image',)    
            } 
        )
    )
    list_display = ('name', 'url', 'published', 'image',)
    list_display_links = ('name',)
    list_editable = ('published',)

class OperatingSystemAdmin(CommonAdmin):
    fieldsets = (
        ('The Basics',
            {
                'fields': ('name', 'slug', 'description', 'published', 'tags', )
            }
        ),
        ('The Detials',
            {
                'fields': ('url',)    
            } 
        )
    )
    
    list_display = ('name', 'url', 'published',)
    list_display_links = ('name',)
    list_editable = ('published',)

class CategoryAdmin(CommonAdmin):
    fieldsets = (
        ('The Basics',
            {
                'fields': ('name', 'slug', 'description', 'published', 'tags', )
            }
        ),
    )
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
admin.site.register(Tutorial, TutorialAdmin)
admin.site.register(Challenge, ChallengeAdmin)





