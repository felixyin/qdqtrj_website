from django.views.generic import ListView, DetailView
from .models import Product


class ProductDetailView(DetailView):
    # 产品详情
    model = Product

    def get_context_data(self, **kwargs):
        # pk = int(self.kwargs[self.pk_url_kwarg])
        # kwargs['next_project'] = self.object.next_project
        # kwargs['prev_project'] = self.object.prev_project
        # kwargs['related_projects'] = self.object.get_related_projects
        kwargs['product_list'] = Product.objects.all()
        return super().get_context_data(**kwargs)
