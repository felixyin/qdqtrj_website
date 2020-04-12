from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.sites.models import Site
from django.urls import reverse
from mdeditor.fields import MDTextField
from django.db import models as m
from django.utils.timezone import now

from base.models import BaseModel


class Home(m.Model):
    # 主页
    slogan = RichTextUploadingField(max_length=100, default='mini', verbose_name='口号')
    carousel_delay = m.IntegerField(verbose_name='跑马灯大图切换时间')
    testimonials_delay = m.IntegerField(verbose_name='客户评价切换时间')

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
class HomeCarousel(BaseModel):
    title = m.CharField(max_length=50, verbose_name='标题', blank=False)
    description = RichTextUploadingField(max_length=300, config_name='mini', verbose_name='描述', blank=False)
    image = m.ImageField(upload_to='upload/home/carousel/image', verbose_name='图片', blank=False)
    video = m.FileField(upload_to='upload/home/carousel/video', verbose_name='视频', blank=True)
    home = m.ForeignKey(Home, on_delete=m.CASCADE, verbose_name='主页')

    class Meta:
        verbose_name = '主页跑马灯'
        verbose_name_plural = verbose_name


# 主页-我们的优势
class HomeSuperiority(BaseModel):
    title = m.CharField(max_length=50, verbose_name='标题', blank=False)
    description = RichTextUploadingField(max_length=300, blank=False, config_name='mini', verbose_name='描述')
    home = m.ForeignKey(Home, on_delete=m.CASCADE, verbose_name='主页')

    class Meta:
        verbose_name = '主页我们的优势'
        verbose_name_plural = verbose_name
