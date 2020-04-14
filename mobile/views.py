from django.shortcuts import render

# Create your views here.
from django.views.generic import DetailView

from about.models import AboutItem
from case.models import Category, Case
from home.models import Home
from product.models import Product
from service.models import Service


class MobileView(DetailView):
    # 首页
    template_name = 'mobile/index.html'
    model = Home

    def get_context_data(self, **kwargs):
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
