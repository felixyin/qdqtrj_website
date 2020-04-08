from django.contrib import admin

# Register your models here.
from base.admin import BaseAttachInline


class CategoryAdmin(admin.ModelAdmin):
    # formfield_overrides = {
    #     'content': {'widget': MDEditorWidget}
    # }
    search_fields = ('name',)
    list_display = ('name', 'last_mod_time', 'is_enable', 'sequence',)
    ordering = ('sequence',)


class CaseAdmin(admin.ModelAdmin):
    # formfield_overrides = {
    #     'content': {'widget': MDEditorWidget}
    # }
    search_fields = ('name', 'description', 'content')
    list_display = ('name', 'last_mod_time', 'is_enable', 'sequence',)
    ordering = ('sequence',)
