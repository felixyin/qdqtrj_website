from django.contrib import admin

# Register your models here.
from base.models import BaseAttach


class BaseTagAdmin(admin.ModelAdmin):
    search_fields = ('name', 'description',)
    list_display = ('name', 'description',)
    actions_on_bottom = True
    actions_on_top = False


class BaseAttachInline(admin.TabularInline):
    model = BaseAttach
    min_num = 0
    max_num = 20


class WebSettingsAdmin(admin.ModelAdmin):
    pass
