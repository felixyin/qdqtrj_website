from django.contrib import admin

# Register your models here.
from base.admin import BaseAttachInline


class ProjectAdmin(admin.ModelAdmin):
    # formfield_overrides = {
    #     'content': {'widget': MDEditorWidget}
    # }
    search_fields = ('name', 'description', 'content')
    list_display = ('name', 'last_mod_time', 'is_enable', 'sequence',)
    inlines = [BaseAttachInline]
    filter_horizontal = ('tags',)
    ordering = ('sequence',)
