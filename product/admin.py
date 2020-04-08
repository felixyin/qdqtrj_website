from django.contrib import admin


class ProductAdmin(admin.ModelAdmin):
    # formfield_overrides = {
    #     'content': {'widget': MDEditorWidget}
    # }
    search_fields = ('name', 'description', 'content')
    list_display = ('name', 'last_mod_time', 'is_enable', 'sequence',)
    filter_horizontal = ('tags',)
    ordering = ('sequence',)
