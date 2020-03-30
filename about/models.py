from django.contrib.sites.models import Site
from django.db import models as m
from django.db.models.signals import post_save, post_delete
from django.dispatch import receiver
from django.urls import reverse
from django.utils.functional import cached_property
from django.utils.timezone import now

from base.models import BaseModel
from mdeditor.fields import MDTextField

from website.utils import cache_decorator


# Create your models here.
class About(m.Model):
    # 关于
    introduce = MDTextField(max_length=800, config_name='full', verbose_name='介绍')
    address = m.CharField(max_length=100, verbose_name='地址')
    phone = m.CharField(max_length=20, verbose_name='电话')
    email = m.EmailField(verbose_name='邮箱')
    qq = m.CharField(max_length=20, verbose_name='QQ号')
    wechat = m.CharField(max_length=20, verbose_name='微信号')
    web_home = m.URLField(verbose_name='个人主页')
    github = m.URLField(verbose_name='GitHub主页')
    git_oschina = m.URLField(verbose_name='OsChina主页')

    def __str__(self):
        return self.web_home

    class Meta:
        verbose_name = '关于信息'
        verbose_name_plural = verbose_name


class Testimonials(BaseModel):
    # 关于-客户评价
    content = MDTextField(max_length=200, config_name='mini', verbose_name='评价内容')
    # author = m.ForeignKey(settings.AUTH_USER_MODEL, verbose_name='作者', on_delete=m.DO_NOTHING)
    author = m.CharField(max_length=20, verbose_name='评价人')
    about = m.ForeignKey(About, on_delete=m.CASCADE, verbose_name='关于')

    class Meta:
        verbose_name = '客户评价'
        verbose_name_plural = verbose_name


class OurClient(BaseModel):
    # 关于-我们的客户
    logo = m.FileField(upload_to="upload/our_clients/", verbose_name='客户LOGO')
    url = m.URLField(verbose_name='客户官网地址')
    about = m.ForeignKey(About, on_delete=m.CASCADE, verbose_name='关于')

    class Meta:
        verbose_name = '我们的客户'
        verbose_name_plural = verbose_name


class TeamMember(BaseModel):
    # 关于-团队
    picture = m.ImageField(upload_to='upload/team/%Y/%m/%d', verbose_name='照片')
    name = m.CharField(max_length=20, verbose_name='姓名')
    job = m.CharField(max_length=50, verbose_name='职位')
    introduce = MDTextField(max_length=500, config_name='mini', verbose_name='介绍')
    about = m.ForeignKey(About, on_delete=m.CASCADE, verbose_name='关于')

    class Meta:
        verbose_name = '我们的团队'
        verbose_name_plural = verbose_name
