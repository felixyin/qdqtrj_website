from django.contrib.sites.models import Site
from django.urls import reverse
from mdeditor.fields import MDTextField
from django.db import models as m
from django.utils.timezone import now

from base.models import BaseModel


class Service(BaseModel):
    # 服务
    name = m.CharField(max_length=50, verbose_name='服务名称')
    description = m.CharField(max_length=200, verbose_name='服务简介')
    thumb = m.ImageField(verbose_name='缩略图')
    slogan = m.CharField(max_length=100, verbose_name='服务口号')
    content = MDTextField(max_length=1000, null=True, verbose_name='服务详情')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '服务'
        verbose_name_plural = verbose_name


class ServiceItem(BaseModel):
    # 服务-内容
    name = m.CharField(max_length=50, verbose_name='服务内容')
    description = MDTextField(max_length=200, config_name='mini', verbose_name='服务简介')
    service = m.ForeignKey(Service, on_delete=m.CASCADE, null=True, verbose_name='服务')

    class Meta:
        verbose_name = '服务内容'
        verbose_name_plural = verbose_name


class ServerProcess(BaseModel):
    # 服务-流程和特点
    name = m.CharField(max_length=50, verbose_name='服务流程')
    description = MDTextField(max_length=200, config_name='mini', verbose_name='服务流程简介')
    service = m.ForeignKey(Service, on_delete=m.CASCADE, null=True, verbose_name='服务')

    class Meta:
        verbose_name = '服务流程和特点'
        verbose_name_plural = verbose_name
