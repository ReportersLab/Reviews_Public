from django.conf import settings
from django.db import models
from django.contrib.auth.models import User
from models import Category, DocumentSet, OperatingSystem, Product, ProductTask, Review, Task, Tutorial, CustomTag
from django.contrib import admin
from functools import partial
from django.forms.models import modelformset_factory



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
    list_filter = ('update_time', 'creation_time', 'published',)
    search_fields = ('tags__name', 'name', 'description',)
    date_heirarchy = ('creation_time', 'update_time',)
    
    readonly_fields = ('slug',)
    
    def view_link(self, object):
        return '<a href="{0}">{0}</a>'.format(object.get_absolute_url())
    view_link.allow_tags = True
    
    
    def get_form(self, request, obj=None, **kwargs):
        self.fieldsets = self.get_fieldsets(request, obj)
        return super(CommonAdmin, self).get_form(request, obj, **kwargs)
    
    
    
    
    def get_changelist_formset(self, request, **kwargs):
        defaults = {
            "formfield_callback": partial(self.formfield_for_dbfield, request=request),
        }
        defaults.update(kwargs)
        
        fields = ()
        if request.user.groups.filter(name = 'Editors').count() > 0:
            fields = ('published',)
        
        return modelformset_factory(self.model, self.get_changelist_form(request), extra=0, fields = fields, **defaults)
    
    class Media:
        js = (settings.STATIC_URL+'grappelli/tinymce/jscripts/tiny_mce/tiny_mce.js', settings.STATIC_URL+'js/tinymce_setup.js')
    


class ProductAdmin(CommonAdmin):
    
    def get_fieldsets(self, request, obj=None):    
        fieldsets = (
            ('The Basics',
                {
                    'fields': ('name', 'slug', 'url', 'tags', )
                }
            ),
            ('Teaser Text', {'fields': ('teaser',)}),
            ('The Description', {'fields': ('description',)}),
            ('Product Details',
                {
                    'fields': ('company', 'image', 'cost', 'open_source', 'demo_available', 'obsolete',
                                'categories', 'release_date', 'operating_systems', 'os_availability',)
                }
            ),
        )
        
        if request.user.groups.filter(name = 'Editors').count() > 0:
            fieldsets[0][1]['fields'] += ('published',)
        
        return fieldsets
        
       
    
   
    inlines = [ProductTaskInline, ReviewInline, ]
    list_display = ('name', 'url', 'company', 'published', 'view_link', 'update_time',)
    list_editable = ('published',)
    list_display_links = ('name',)


class ReviewAdmin(CommonAdmin):
    def get_fieldsets(self, request, obj=None): 
        fieldsets = (
                ('The Basics',
                    {
                        'fields': ('product', 'name', 'subtitle', 'reviewer', 'editor', 'slug', 'tags', 'image', 'review_done', )
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
        if request.user.groups.filter(name = 'Editors').count() > 0:
            fieldsets[0][1]['fields'] += ('published',)
        
        return fieldsets
    
    list_display = ('name', 'product', 'rating', 'published', 'view_link', 'update_time',)
    list_display_links = ('name',)
    list_editable= ('published',) 
    
 
 
class TutorialAdmin(CommonAdmin):
    def get_fieldsets(self, request, obj=None): 
        fieldsets = (
            ('The Basics', {
                'fields': ('product', 'name', 'subtitle', 'writer', 'writer_external', 'editor', 'slug', 'tags', 'image',)
            }),
            ('Teaser Text', {'fields': ('teaser',)}),
            ('Tutorial Text', {'fields': ('description',)}),
            ('Tutorial Details',
                {
                    'fields': ('tasks', 'url', 'embed', 'repo_link', 'files', 'version', 'os_used',)
                }
             ),   
        )
        if request.user.groups.filter(name = 'Editors').count() > 0:
            fieldsets[0][1]['fields'] += ('published',)
        
        return fieldsets
    
    
    
    list_display = ('name', 'product', 'repo_link', 'published', 'view_link', 'update_time',)
    list_display_links = ('name',)
    list_editable = ('published',)
 


class ProductTaskAdmin(CommonAdmin):
    def get_fieldsets(self, request, obj=None): 
        fieldsets = (
            ('The Basics',
                {
                     'fields': ('name', 'subtitle', 'reviewer', 'editor', 'slug', 'tags', 'image', 'review_done',)
                }
            ),
            ('Teaser Text', {'fields': ('teaser',)}),
            ('The Review', {'fields': ('description',)}),
            ('The Details',
                {
                    'fields': ('product', 'task', 'rating', 'rating_text', 'version_tested', 'os_used',)    
                } 
            ),
        )
        
        if request.user.groups.filter(name = 'Editors').count() > 0:
            fieldsets[0][1]['fields'] += ('published',)
        
        return fieldsets
        
    
    list_display = ('name', 'product_name', 'task_name', 'rating', 'published', 'view_link',  'update_time',)
    list_display_links = ('name',)
    list_editable= ('published',)
    

class TaskAdmin(CommonAdmin):
    def get_fieldsets(self, request, obj=None): 
        fieldsets = (
            ('The Basics',
                {
                    'fields': ('name', 'slug', 'tags', )
                }
            ),
            ('Teaser Text', {'fields': ('teaser',)}),
            ('The Description', {'fields': ('description',)}),
            ('The Details',
                {
                    'fields': ('document', 'difficulty', 'difficulty_text',)    
                } 
            )
        )
        
        if request.user.groups.filter(name = 'Editors').count() > 0:
            fieldsets[0][1]['fields'] += ('published',)
        
        return fieldsets
    
    
    
    list_display = ('name', 'document_name', 'published', 'view_link', 'update_time',)
    list_display_links = ('name',)
    list_editable= ('published',)


class DocumentSetAdmin(CommonAdmin):
    def get_fieldsets(self, request, obj=None): 
        fieldsets = (
            ('The Basics',
                {
                    'fields': ('name', 'slug', 'tags', )
                }
            ),
            ('Teaser Text', {'fields': ('teaser',)}),
            ('The Description', {'fields': ('description',)}),
            ('The Details',
                {
                    'fields': ('url', 'kind', 'image',)    
                } 
            )
        )
        
        if request.user.groups.filter(name = 'Editors').count() > 0:
            fieldsets[0][1]['fields'] += ('published',)
        
        return fieldsets
    
    
    list_display = ('name', 'url', 'published', 'image', 'view_link', 'update_time',)
    list_display_links = ('name',)
    list_editable = ('published',)

class OperatingSystemAdmin(CommonAdmin):
    def get_fieldsets(self, request, obj=None): 
        fieldsets = (
            ('The Basics',
                {
                    'fields': ('name', 'slug', 'tags', )
                }
            ),
            ('Teaser Text', {'fields': ('teaser',)}),
            ('The Description', {'fields': ('description',)}),
            ('The Details',
                {
                    'fields': ('url',)    
                } 
            )
        )
        
        if request.user.groups.filter(name = 'Editors').count() > 0:
            fieldsets[0][1]['fields'] += ('published',)
        
        return fieldsets
        
    
    
    list_display = ('name', 'url', 'published', 'update_time',)
    list_display_links = ('name',)
    list_editable = ('published',)

class CategoryAdmin(CommonAdmin):
    def get_fieldsets(self, request, obj=None): 
        fieldsets = (
            ('The Basics',
                {
                    'fields': ('name', 'slug', 'tags', )
                }
            ),
            ('Teaser Text', {'fields': ('teaser',)}),
            ('The Description', {'fields': ('description',)}),
        )
        
        if request.user.groups.filter(name = 'Editors').count() > 0:
            fieldsets[0][1]['fields'] += ('published',)
        
        return fieldsets
        
    
    list_display = ('name', 'published', 'update_time',)
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
admin.site.register(CustomTag)





