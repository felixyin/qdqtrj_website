from django.contrib.sites.models import Site
from django.urls import reverse
from mdeditor.fields import MDTextField
from django.db import models as m
from django.utils.timezone import now


class Home(m.Model):
    # 主页
    slogan = MDTextField(max_length=100, verbose_name='口号')
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
