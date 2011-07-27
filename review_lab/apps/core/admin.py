from models import Review, Product, Task
from django.contrib import admin

admin.site.register(Review)


class ProductAdmin(admin.ModelAdmin):
    pass


admin.site.register(Product, ProductAdmin)
admin.site.register(Task)