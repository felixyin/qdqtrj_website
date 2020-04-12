from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.sites.models import Site
from django.urls import reverse
from django.db import models as m

from base.models import BaseModel


class Service(BaseModel):
    # 服务
    name = m.CharField(max_length=50, verbose_name='服务名称')
    description = m.CharField(max_length=200, verbose_name='服务简介')
    thumb = m.ImageField(verbose_name='缩略图')
    slogan = m.CharField(max_length=100, verbose_name='服务口号')
    content = RichTextUploadingField(max_length=2000, config_name='full', verbose_name='服务详情', blank=False)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '服务'
        verbose_name_plural = verbose_name

    def get_absolute_url(self):
        return reverse('service:service-detail', kwargs={'pk': self.id})

