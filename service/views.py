from django.shortcuts import render

# Create your views here.
from django.views.generic import ListView, DetailView

from service.models import Service


def service(request):
    return render(request, 'service/service_detail.html')


# 服务详情
class ServiceDetailView(DetailView):
    model = Service

    def get_context_data(self, **kwargs):
        # pk = int(self.kwargs[self.pk_url_kwarg])
        kwargs['services'] = Service.objects.all()
        return super().get_context_data(**kwargs)
