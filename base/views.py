from django.shortcuts import render


# Create your views here.



def miss_page(request):
    return render(request, 'home/404.html')


def pricing_tables(request):
    return render(request, 'home/pricing_tables.html')


def shortcodes(request):
    return render(request, 'home/shortcodes.html')


def text_columns(request):
    return render(request, 'home/text_columns.html')


def portfolio_2(request):
    return render(request, 'home/portfolio_2.html')


def portfolio_3(request):
    return render(request, 'home/portfolio_3.html')


def single_project(request):
    return render(request, 'home/project_detail.html')


def services(request):
    return render(request, 'home/services.html')


def copy(request):
    return render(request, 'share_layout/mycopy.html')
