from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.sites.models import Site
from django.urls import reverse
from mdeditor.fields import MDTextField
from django.db import models as m
from django.utils.timezone import now

from base.models import BaseModel


class Home(m.Model):
    # 主页
    carousel_delay = m.IntegerField(verbose_name='跑马灯大图切换时间')
    product_title = m.CharField(max_length=20, verbose_name='产品标题', blank=False)
    product_slogan = m.CharField(max_length=50, verbose_name='产品口号', blank=False)
    service_title = m.CharField(max_length=20, verbose_name='服务标题', blank=False)
    service_slogan = m.CharField(max_length=50, verbose_name='服务口号', blank=False)
    service_description = m.TextField(max_length=300, verbose_name='服务描述', blank=False)
    service_img_max = m.ImageField(upload_to='upload/home/service/image', verbose_name='服务小图', blank=True)
    service_img_min = m.ImageField(upload_to='upload/home/service/image', verbose_name='服务大图', blank=True)
    about_title = m.CharField(max_length=20, verbose_name='关于标题', blank=False)
    about_slogan = m.CharField(max_length=50, verbose_name='关于口号', blank=False)
    about_description = m.TextField(max_length=300, verbose_name='关于描述', blank=False)
    about_img_max = m.ImageField(upload_to='upload/home/about/image', verbose_name='关于小图', blank=True)
    about_img_min = m.ImageField(upload_to='upload/home/about/image', verbose_name='关于大图', blank=True)

    def __str__(self):
        return '主页'

    class Meta:
        verbose_name = '主页'
        verbose_name_plural = verbose_name

    def get_full_url(self):
        site = Site.objects.get_current().domain
        url = "http://{site}{path}".format(site=site, path=self.get_absolute_url())
        return url

    def get_absolute_url(self):
        return reverse('home:index')


# 主页-跑马灯大图
class Carousel(BaseModel):
    title = m.CharField(max_length=50, verbose_name='标题', blank=False)
    image = m.ImageField(upload_to='upload/home/carousel/image', verbose_name='图片', blank=True)
    home = m.ForeignKey(Home, on_delete=m.CASCADE, verbose_name='主页')

    class Meta:
        verbose_name = '图片跑马灯'
        verbose_name_plural = verbose_name


# 主页-我们的优势
class Superiority(BaseModel):
    title = m.CharField(max_length=50, verbose_name='标题', blank=False)
    description = RichTextUploadingField(max_length=300, blank=False, config_name='mini', verbose_name='描述')
    image = m.ImageField(upload_to='upload/home/service/image', verbose_name='图标', blank=True)
    home = m.ForeignKey(Home, on_delete=m.CASCADE, verbose_name='主页')

    class Meta:
        verbose_name = '我们的优势'
        verbose_name_plural = verbose_name


# 主页-广告图片
class Adware(BaseModel):
    image = m.ImageField(upload_to='upload/home/adware/image', verbose_name='广告图片', blank=True)
    home = m.ForeignKey(Home, on_delete=m.CASCADE, verbose_name='主页')

    class Meta:
        verbose_name = '广告图片'
        verbose_name_plural = verbose_name
