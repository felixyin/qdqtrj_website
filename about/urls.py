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
from . import views as v

app_name = "about"

urlpatterns = [
    path('', v.AboutUsDetailView.as_view(), {'pk': 1}, name='index'),
]
