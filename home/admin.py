from django.contrib import admin

# Register your models here.
# 首页跑马灯
from .models import HomeCarousel, HomeSuperiority


# 轮播图
class HomeCarouselInline(admin.StackedInline):
    model = HomeCarousel
    min_num = 2
    max_num = 3


# 首页我们的优势
class HomeSuperiorityInline(admin.StackedInline):
    model = HomeSuperiority
    min_num = 2
    max_num = 3


# 收页
class HomeAdmin(admin.ModelAdmin):
    # search_fields = ('name', 'description',)
    list_display = ('slogan', 'carousel_delay', 'testimonials_delay')
    inlines = [HomeCarouselInline, HomeSuperiorityInline]
