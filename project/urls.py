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

from django.urls import path
from django.views.decorators.cache import cache_page
from . import views
from haystack.forms import ModelSearchForm
from haystack.query import SearchQuerySet
from haystack.views import SearchView
from . import views as v

app_name = "project"
urlpatterns = [
    path('project/', v.ProjectListView.as_view(), name='project-list'),
    path('project/<int:pk>', v.ProjectDetailView.as_view(), name='project-detail'),

]
