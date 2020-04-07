from django.views.generic import ListView, DetailView
from case.models import Case


class CaseListView(ListView):
    # template_name = 'home/project_index.html'
    model = Case
    ordering = ('sequence',)

    def get_context_data(self, **kwargs):
        # pk = int(self.kwargs[self.pk_url_kwarg])
        # kwargs['services'] = Service.objects.all()
        return super(CaseListView, self).get_context_data(**kwargs)


class CaseDetailView(DetailView):
    # 项目详情
    model = Case

    def get_context_data(self, **kwargs):
        # pk = int(self.kwargs[self.pk_url_kwarg])
        kwargs['next_project'] = self.object.next_project
        kwargs['prev_project'] = self.object.prev_project
        kwargs['related_projects'] = self.object.get_related_projects
        return super(CaseDetailView, self).get_context_data(**kwargs)
