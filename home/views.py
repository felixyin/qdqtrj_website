from django.http import HttpResponse
from django.shortcuts import render
from django.views.decorators.cache import cache_page
from django.views.decorators.gzip import gzip_page

from django.views.generic import DetailView

from about.models import AboutItem
from blog.models import Article
from home.models import Home
from case.models import Case, Category
from product.models import Product
from service.models import Service
from website.utils import cache
import logging

logger = logging.getLogger(__name__)


class HomeView(DetailView):
    # 首页
    model = Home

    def get_context_data(self, **kwargs):

        # 判断手机，跳转手机模板首页
        if self.request.is_mobile:
            self.template_name = 'mobile/index.html'
            kwargs['carousel_list'] = self.object.carousel_set.all().order_by('sequence')
            kwargs['adware_list'] = self.object.adware_set.all().order_by('sequence')
            kwargs['superiority_list'] = self.object.superiority_set.all().order_by('sequence')
            kwargs['category_list'] = Category.objects.all().order_by('sequence')
            kwargs['case_list'] = Case.objects.all()[:6]
            kwargs['product_list'] = Product.objects.all()
            kwargs['service_list'] = Service.objects.all()
            kwargs['aboutitem_list'] = AboutItem.objects.all().order_by('sequence')
        else:
            self.template_name = 'index.html'
            kwargs['carousel_list'] = self.object.carousel_set.all().order_by('sequence')
            kwargs['adware_list'] = self.object.adware_set.all().order_by('sequence')
            kwargs['superiority_list'] = self.object.superiority_set.all().order_by('sequence')
            kwargs['category_list'] = Category.objects.all().order_by('sequence')
            kwargs['case_list'] = Case.objects.all()[:6]
            product_list = Product.objects.all()
            kwargs['first_product'] = product_list[0]
            kwargs['other_products'] = product_list[0:4]
            kwargs['service_list'] = Service.objects.all()
            kwargs['aboutitem_list'] = AboutItem.objects.all().order_by('sequence')
        return super().get_context_data(**kwargs)


def index(request):
    return HttpResponse('ok')
