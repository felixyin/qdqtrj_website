"""DjangoBlog URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/zh-hans/3.0/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url, include
from django.contrib import admin
from django.contrib.sitemaps.views import sitemap

from base.views import collection_message
from website.sitemap import StaticViewSitemap, ArticleSiteMap, CategorySiteMap, TagSiteMap, UserSiteMap
from website.feeds import DjangoBlogFeed
from django.views.decorators.cache import cache_page
from django.conf import settings
from django.conf.urls.static import static
from website.admin_site import admin_site
from django.urls import include, path
from base import views as base_views

sitemaps = {

    'blog': ArticleSiteMap,
    'Category': CategorySiteMap,
    'Tag': TagSiteMap,
    'User': UserSiteMap,
    'static': StaticViewSitemap
}

handler404 = 'base.views.page_not_found_view'
handler500 = 'base.views.server_error_view'
handle403 = 'base.views.permission_denied_view'

app_name = 'website'

urlpatterns = [
                  # 首页
                  url(r'', include('home.urls', namespace='home')),
                  # 关于
                  url(r'^about/', include('about.urls', namespace='about')),
                  # 服务
                  url(r'^service/', include('service.urls', namespace='service')),
                  # 产品
                  url(r'^product/', include('product.urls', namespace='product')),
                  # 案例
                  url(r'^case/', include('case.urls', namespace='case')),
                  # 留言
                  url(r'^message/', collection_message, name='message'),

                  # 博客
                  url(r'^blog/', include('blog.urls', namespace='blog')),
                  # 富文本编辑器
                  url(r'^ckeditor/', include('ckeditor_uploader.urls')),
                  # md文档编辑器
                  url(r'mdeditor/', include('mdeditor.urls')),
                  url(r'', include('comments.urls', namespace='comment')),
                  url(r'', include('accounts.urls', namespace='account')),
                  url(r'', include('oauth.urls', namespace='oauth')),
                  url(r'^sitemap\.xml$', sitemap, {'sitemaps': sitemaps},
                      name='django.contrib.sitemaps.views.sitemap'),
                  url(r'^feed/$', DjangoBlogFeed()),
                  url(r'^rss/$', DjangoBlogFeed()),
                  url(r'^search', include('haystack.urls'), name='search'),
                  url(r'', include('servermanager.urls', namespace='servermanager')),
                  url(r'', include('owntracks.urls', namespace='owntracks')),
                  # 管理端
                  url(r'^admin/', admin_site.urls),
              ] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
    import debug_toolbar

    urlpatterns = [
                      path('__debug__/', include(debug_toolbar.urls)),
                      # For django versions before 2.0:
                      # url(r'^__debug__/', include(debug_toolbar.urls)),
                  ] + urlpatterns
