#!/usr/bin/env python
# encoding: utf-8


"""
@version: ??
@author: liangliangyy
@license: MIT Licence 
@contact: liangliangyy@gmail.com
@site: https://www.lylinux.net/
@software: PyCharm
@file: admin_site.py
@time: 2018/1/7 上午2:21
"""
from django.contrib.admin import AdminSite, ModelAdmin

from about.models import AboutItem
from base.admin import BaseTagAdmin, WebSettingsAdmin, MessageAdmin
from base.models import BaseTag, WebSettings, Message, ContactInfo
from case.admin import CaseAdmin
from case.models import Case
from home.admin import HomeAdmin
from home.models import Home
from product.admin import ProductAdmin
from product.models import Product
from service.admin import ServiceAdmin
from service.models import Service
from django.contrib.sites.admin import SiteAdmin
from django.contrib.admin.models import LogEntry
from django.contrib.sites.models import Site
from website.logentryadmin import LogEntryAdmin
from blog.admin import *
from accounts.admin import *
from oauth.admin import *
from servermanager.admin import *
from comments.admin import *
from owntracks.admin import *
from case.admin import CategoryAdmin as CaseCategoryAdmin
from case.models import Category as CaseCategory


class DjangoBlogAdminSite(AdminSite):
    site_header = '前途软件官网-管理后台'
    site_title = '前途软件官网-管理后台'

    def __init__(self, name='admin'):
        super().__init__(name)

    def has_permission(self, request):
        return request.user.is_superuser

    # def get_urls(self):
    #     urls = super().get_urls()
    #     from django.urls import path
    #     from blog.views import refresh_memcache
    #
    #     my_urls = [
    #         path('refresh/', self.admin_view(refresh_memcache), name="refresh"),
    #     ]
    #     return urls + my_urls


admin_site = DjangoBlogAdminSite(name='admin')

# base
admin_site.register(BaseTag, BaseTagAdmin)
# admin_site.register(Attach, AttachInline)

# about
admin_site.register(AboutItem, ModelAdmin)
admin_site.register(ContactInfo, ModelAdmin)

# message
admin_site.register(Message, MessageAdmin)

# home
admin_site.register(Home, HomeAdmin)

# service
admin_site.register(Service, ServiceAdmin)

# product
admin_site.register(Product, ProductAdmin)

# case
admin_site.register(CaseCategory, CaseCategoryAdmin)
admin_site.register(Case, CaseAdmin)

# blog
admin_site.register(Article, ArticlelAdmin)
admin_site.register(Category, CategoryAdmin)
admin_site.register(Tag, TagAdmin)
admin_site.register(Links, LinksAdmin)
admin_site.register(SideBar, SideBarAdmin)
admin_site.register(WebSettings, WebSettingsAdmin)
admin_site.register(commands, CommandsAdmin)
admin_site.register(EmailSendLog, EmailSendLogAdmin)
admin_site.register(BlogUser, BlogUserAdmin)
admin_site.register(Comment, CommentAdmin)
admin_site.register(OAuthUser, OAuthUserAdmin)
admin_site.register(OAuthConfig, OAuthConfigAdmin)
admin_site.register(OwnTrackLog, OwnTrackLogsAdmin)
admin_site.register(Site, SiteAdmin)
admin_site.register(LogEntry, LogEntryAdmin)
