from django.shortcuts import render

# Create your views here.
from django.views.generic import DetailView, ListView

from about.models import AboutItem
from blog.views import LinkListView
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


class ServiceListView(ListView):
    template_name = 'mobile/service/service_list.html'
    model = Service


class ServiceDetailView(DetailView):
    template_name = 'mobile/service/service_detail.html'
    model = Service


class ProductListView(ListView):
    template_name = 'mobile/product/product_list.html'
    model = Product


class ProductDetailView(DetailView):
    template_name = 'mobile/product/product_detail.html'
    model = Product


class CategoryDetailView(DetailView):
    # 分类
    model = Category
    pk_url_kwarg = 'category_pk'

    # 分类 和 案例列表
    def get_context_data(self, **kwargs):
        kwargs['category_list'] = Category.objects.all()
        category_pk = int(self.kwargs['category_pk'])
        kwargs['case_list'] = Case.objects.filter(category=category_pk).all()
        return super().get_context_data(**kwargs)


class CaseDetailView(DetailView):
    # 案例详情
    model = Case
    pk_url_kwarg = 'case_pk'

    def get_context_data(self, **kwargs):
        # pk = int(self.kwargs[self.pk_url_kwarg])
        kwargs['category_list'] = Category.objects.all()
        kwargs['next_case'] = self.object.next_case
        kwargs['prev_case'] = self.object.prev_case
        kwargs['related_cases'] = self.object.get_related_cases
        return super().get_context_data(**kwargs)
