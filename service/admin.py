from django.contrib import admin

# Register your models here.


class ServiceAdmin(admin.ModelAdmin):
    search_fields = ('name', 'description',)
    list_display = ('name', 'thumb', 'description', 'slogan')
    exclude = ('slug', 'last_mod_time', 'created_time')
