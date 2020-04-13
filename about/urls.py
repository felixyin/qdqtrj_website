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

from website.utils import my_cache
from . import views as v

app_name = "about"

urlpatterns = [
    path('<int:pk>', my_cache(v.AboutItemDetailView.as_view), name='item'),
]
