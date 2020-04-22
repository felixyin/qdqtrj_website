from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.sites.models import Site
from django.db import models as m
from django.urls import reverse

from base.models import BaseModel


class AboutItem(BaseModel):
    # 关于我们
    title = m.CharField(max_length=20, verbose_name='菜单')
    content = RichTextUploadingField(max_length=10000, config_name='full', verbose_name='描述', blank=False)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = '关于子项'
        verbose_name_plural = verbose_name
        ordering = ('sequence',)

    def get_absolute_url(self):
        return reverse('about:item', kwargs={'pk': self.id})

    def get_mobile_url(self):
        return reverse('mobile:about', kwargs={'pk': self.id})
