from django.shortcuts import render
from django.utils.functional import cached_property
from django.utils.timezone import now
# Create your views here.

# 项目
from django.views.generic import ListView, DetailView

from project.models import Project


class ProjectListView(ListView):
    # template_name = 'home/project_index.html'
    model = Project
    ordering = ('sequence',)

    def get_context_data(self, **kwargs):
        # pk = int(self.kwargs[self.pk_url_kwarg])
        # kwargs['services'] = Service.objects.all()
        return super(ProjectListView, self).get_context_data(**kwargs)


# 项目详情
class ProjectDetailView(DetailView):
    model = Project

    def get_context_data(self, **kwargs):
        # pk = int(self.kwargs[self.pk_url_kwarg])
        kwargs['next_project'] = self.object.next_project
        kwargs['prev_project'] = self.object.prev_project
        kwargs['related_projects'] = self.object.get_related_projects
        return super(ProjectDetailView, self).get_context_data(**kwargs)

