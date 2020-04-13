import re

from django.forms import forms, fields
from django.shortcuts import render

# Create your views here.

from django.views.generic import DetailView
from about.models import AboutItem


class AboutItemDetailView(DetailView):
    # 关于子菜单
    model = AboutItem

    def get_context_data(self, **kwargs):
        kwargs['aboutitem_list'] = AboutItem.objects.all()
        return super().get_context_data(**kwargs)
