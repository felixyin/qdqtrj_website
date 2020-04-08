from django.urls import reverse
from django.views.generic import ListView, DetailView
from case.models import Case, Category


# class CaseListView(ListView):
#     # template_name = 'home/project_index.html'
#     model = Case
#     ordering = ('sequence',)
#
#     def get_context_data(self, **kwargs):
#         # pk = int(self.kwargs[self.pk_url_kwarg])
#         return super().get_context_data(**kwargs)


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
