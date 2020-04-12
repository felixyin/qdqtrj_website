from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.sites.models import Site
from django.urls import reverse
from django.utils.functional import cached_property
from mdeditor.fields import MDTextField
from django.db import models as m
from base.models import BaseModel, BaseTag, BaseAttach
from service.models import Service


class Product(BaseModel):
    # 产品
    name = m.CharField(max_length=50, verbose_name='产品名称')
    thumb = m.ImageField(upload_to="upload/project/thumb/%Y/%m/%d", verbose_name='缩略图')
    content = RichTextUploadingField(max_length=2000, config_name='full', verbose_name='产品详情', blank=False)
    source_url = m.URLField(verbose_name='演示地址', null=True, blank=True)
    service = m.ForeignKey(Service, on_delete=m.DO_NOTHING, null=True, blank=True, verbose_name='服务')
    tags = m.ManyToManyField(BaseTag, verbose_name='技术标签')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '产品'
        verbose_name_plural = verbose_name

    def get_absolute_url(self):
        return reverse('product:product-detail', kwargs={'pk': self.id})

    @cached_property
    def next_project(self):
        # 下一篇
        return Product.objects.filter(sequence__gt=self.sequence, is_enable=True).order_by('sequence').first()

    @cached_property
    def prev_project(self):
        # 前一篇
        return Product.objects.filter(sequence__lt=self.sequence, is_enable=True).order_by('-sequence').first()
