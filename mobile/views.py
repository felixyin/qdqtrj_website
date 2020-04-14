from django.shortcuts import render

# Create your views here.
from django.views.generic import DetailView, ListView

from about.models import AboutItem
from blog.views import LinkListView
from case.models import Category, Case
from home.models import Home
from product.models import Product
from service.models import Service


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
    template_name = 'mobile/case/case_list.html'
    model = Category
    pk_url_kwarg = 'category_pk'

    def get_context_data(self, **kwargs):
        kwargs['category_list'] = Category.objects.all()
        category_pk = int(self.kwargs['category_pk'])
        kwargs['case_list'] = Case.objects.filter(category=category_pk).all()
        return super().get_context_data(**kwargs)


class CaseListView(ListView):
    template_name = 'mobile/case/case_list.html'
    model = Case

    def get_context_data(self, **kwargs):
        kwargs['category_list'] = Category.objects.all()
        return super().get_context_data(**kwargs)


class CaseDetailView(DetailView):
    template_name = 'mobile/case/case_detail.html'
    model = Case

    def get_context_data(self, **kwargs):
        # pk = int(self.kwargs[self.pk_url_kwarg])
        kwargs['next_case'] = self.object.next_case
        kwargs['prev_case'] = self.object.prev_case
        kwargs['related_cases'] = self.object.get_related_cases
        return super().get_context_data(**kwargs)
