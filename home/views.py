from django.shortcuts import render

# Create your views here.

# 主页设置
from django.views.generic import DetailView

from blog.models import Article
from home.models import Home


class HomeView(DetailView):
    template_name = 'index.html'
    model = Home

    def get_context_data(self, **kwargs):
        # kwargs['recent_projects'] = Project.objects.order_by('-sequence')[:4]
        blogs = Article.objects.order_by('-created_time')[:12]
        kwargs['latest_blogs1'] = blogs[0:4]
        kwargs['latest_blogs2'] = blogs[4:8]
        kwargs['latest_blogs3'] = blogs[8:12]
        return super(HomeView, self).get_context_data(**kwargs)
