from django.contrib.sites.models import Site
from django.db import models as m
from pysolr import version_info

from base.models import BaseModel
from mdeditor.fields import MDTextField


class AboutUs(m.Model):
    # 关于我们
    content = MDTextField(max_length=2000, config_name='mini', verbose_name='描述', blank=False)

    def __str__(self):
        return '关于我们'

    class Meta:
        verbose_name = '关于我们'
        verbose_name_plural = verbose_name


class TeamMember(BaseModel):
    # 团队介绍
    picture = m.ImageField(upload_to='upload/team/%Y/%m/%d', verbose_name='照片')
    name = m.CharField(max_length=20, verbose_name='姓名')
    job = m.CharField(max_length=50, verbose_name='职位')
    introduce = MDTextField(max_length=500, config_name='mini', verbose_name='介绍')

    class Meta:
        verbose_name = '团队介绍'
        verbose_name_plural = verbose_name


class OurClient(BaseModel):
    # 我们的客户
    name = m.CharField(max_length=50, verbose_name='公司名称')
    logo = m.FileField(upload_to="upload/our_clients/", verbose_name='客户LOGO')
    url = m.URLField(verbose_name='客户官网地址')

    class Meta:
        verbose_name = '我们的客户'
        verbose_name_plural = verbose_name


class JoinUs(BaseModel):
    # 精英招聘
    count = m.SmallIntegerField(verbose_name='招聘人数')
    address = m.CharField(max_length=20, verbose_name='工作地点')
    treatment = m.CharField(max_length=10, verbose_name='工资待遇')
    requirement = m.CharField(max_length=10, verbose_name='岗位要求')
    skill = m.CharField(max_length=10, verbose_name='技能要求')

    class Meta:
        verbose_name = '精英招聘'
        verbose_name_plural = verbose_name


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
