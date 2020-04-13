from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.sites.models import Site
from django.db import models as m
from django.urls import reverse
from pysolr import version_info

from base.models import BaseModel
from mdeditor.fields import MDTextField


class AboutItem(m.Model):
    # 关于我们
    title = m.CharField(max_length=20, verbose_name='菜单')
    content = RichTextUploadingField(max_length=2000, config_name='full', verbose_name='描述', blank=False)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = '关于子项'
        verbose_name_plural = verbose_name

    def get_absolute_url(self):
        return reverse('about:item', kwargs={'pk': self.id})


# Create your models here.
class ContactUs(m.Model):
    # 联系我们
    company = m.CharField(max_length=20, verbose_name='组织名称')
    phone = m.CharField(max_length=20, verbose_name='咨询电话')
    phone_user = m.CharField(max_length=20, verbose_name='咨询电话姓名')
    wechat = m.CharField(max_length=20, verbose_name='微信号')
    qq = m.CharField(max_length=20, verbose_name='QQ号')
    phone2 = m.CharField(max_length=20, verbose_name='售后电话')
    phone2_user = m.CharField(max_length=20, verbose_name='售后电话姓名')
    email = m.EmailField(verbose_name='邮箱')
    email2 = m.EmailField(verbose_name='HR邮箱')
    address = m.CharField(max_length=100, verbose_name='地址')

    def __str__(self):
        return self.company

    class Meta:
        verbose_name = '联系我们'
        verbose_name_plural = verbose_name
