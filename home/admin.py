from django.contrib import admin

# Register your models here.
# 首页跑马灯
from .models import Carousel, Superiority, Adware


# 轮播图
class CarouselInline(admin.StackedInline):
    model = Carousel
    min_num = 2
    max_num = 4


# 首页我们的优势
class SuperiorityInline(admin.StackedInline):
    model = Superiority
    min_num = 2
    max_num = 4


# 首页广告图片
class AdwareInline(admin.StackedInline):
    model = Adware
    min_num = 2
    max_num = 3


# 首页
class HomeAdmin(admin.ModelAdmin):
    # search_fields = ('name', 'description',)
    list_display = ('about_title',)
    inlines = [CarouselInline, SuperiorityInline, AdwareInline]
