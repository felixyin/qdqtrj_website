#!/usr/bin/env python
# encoding: utf-8


"""
@version: ??
@author: liangliangyy
@license: MIT Licence
@contact: liangliangyy@gmail.com
@site: https://www.lylinux.net/
@software: PyCharm
@file: urls.py
@time: 2016/11/2 下午7:15
"""
from django.conf.urls import url
from django.urls import path
from django.views.decorators.cache import cache_page
from . import views
from haystack.forms import ModelSearchForm
from haystack.query import SearchQuerySet
from haystack.views import SearchView
from . import views as v

app_name = "case"
urlpatterns = [
    url(r'(?P<category_pk>[0-9]+)/(?P<case_pk>[0-9]+)$', v.CaseDetailView.as_view(), name='case-detail'),
    url(r'(?P<category_pk>[0-9]+)$', v.CategoryDetailView.as_view(), name='category-detail'),

]
