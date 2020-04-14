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

from website.utils import my_cache
from . import views as v

app_name = "mobile"
urlpatterns = [
    path('service', my_cache(v.ServiceListView.as_view), name='service'),
    path('service/<int:pk>', my_cache(v.ServiceDetailView.as_view), name='service-detail'),
    path('product', my_cache(v.ProductListView.as_view), name='product'),
    path('product/<int:pk>', my_cache(v.ProductDetailView.as_view), name='product-detail'),
    path('case', my_cache(v.CaseListView.as_view), name='case'),
    path('case/<int:pk>', my_cache(v.CaseDetailView.as_view), name='case-detail'),
    # path('', v.index,  name='index'),
]
