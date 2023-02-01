from django.contrib import admin

# Register your models here.

from .models import Product, Bin, Home

#admin.site.register(Product)
admin.site.register(Bin)

@admin.register(Product)
class ProductAdmin(admin.ModelAdmin):
    list_display = ['title', 'id', 'cost']
    #fields = ['id']
    list_filter = ['cost']
    search_fileds = ['title']

#admin.site.register(Product, ProductAdmin)

@admin.register(Home)
class HomeAdmin(admin.ModelAdmin):
    list_display = ['size','cost', 'adr', 'bal']
    #fields = ['id']
    #list_filter = ['cost']
    #search_fileds = ['title']
