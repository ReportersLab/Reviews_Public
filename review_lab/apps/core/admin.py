from django.db import models
from models import Review, Product, Task
from django.contrib import admin
from tinymce.widgets import TinyMCE

admin.site.register(Review)


class ProductAdmin(admin.ModelAdmin):
    formfield_overrides = {
        models.TextField: {'widget': TinyMCE(attrs={'cols': 80, 'rows': 20}, )},
    }



admin.site.register(Product, ProductAdmin)
admin.site.register(Task)