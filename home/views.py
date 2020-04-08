from django.http import HttpResponse
from django.shortcuts import render

from django.views.generic import DetailView

from blog.models import Article
from home.models import Home
from case.models import Case, Category
from product.models import Product
from service.models import Service


class HomeView(DetailView):
    # 首页
    template_name = 'index.html'
    model = Home

    def get_context_data(self, **kwargs):
        # kwargs['recent_projects'] = Case.objects.order_by('-sequence')[:4]
        # blogs = Article.objects.order_by('-created_time')[:12]
        # kwargs['latest_blogs1'] = blogs[0:4]
        # kwargs['latest_blogs2'] = blogs[4:8]
        # kwargs['latest_blogs3'] = blogs[8:12]
        kwargs['category_list'] = Category.objects.all()
        kwargs['case_list'] = Case.objects.all()[:6]
        product_list = Product.objects.all()
        kwargs['first_product'] = product_list[0]
        kwargs['other_products'] = product_list[0:4]
        kwargs['service_list'] = Service.objects.all()
        return super().get_context_data(**kwargs)


def index(request):
    return HttpResponse('ok')
