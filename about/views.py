import re

from django.forms import forms, fields
from django.shortcuts import render

# Create your views here.

# 关于
from django.views.generic import DetailView

from about.models import AboutUs


class AboutUsDetailView(DetailView):
    # template_name = 'home/about.html'
    model = AboutUs
    # pk_url_kwarg = 'pk'
    context_object_name = "about"
