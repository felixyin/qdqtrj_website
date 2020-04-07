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

app_name = "service"
urlpatterns = [
    # path('', v.service, name='service'),
    path('<int:pk>', v.ServiceDetailView.as_view(), name='service-detail'),
]
