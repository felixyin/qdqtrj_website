from django.contrib.sites.models import Site
from django.urls import reverse
from django.utils.functional import cached_property
from mdeditor.fields import MDTextField
from django.db import models as m
from django.utils.timezone import now

# Create your models here.


from base.models import BaseModel
from service.models import Service
from website.utils import cache_decorator


class Project(BaseModel):
    # 项目
    name = m.CharField(max_length=50, verbose_name='项目名称')
    description = MDTextField(max_length=200, config_name='mini', verbose_name='项目简介')
    thumb = m.ImageField(upload_to="upload/project/thumb/%Y/%m/%d", verbose_name='缩略图')
    content = MDTextField(max_length=10000, verbose_name='项目详情')
    source_url = m.URLField(verbose_name='源码地址', null=True, blank=True)
    cycle = MDTextField(config_name='mini', verbose_name='项目周期', null=True, blank=True)

    service = m.ForeignKey(Service, on_delete=m.DO_NOTHING, null=True, blank=True, verbose_name='服务')
    tags = m.ManyToManyField('ProjectTag', verbose_name='技术标签')

    sequence = m.IntegerField('排列顺序', unique=True, null=False, blank=False)
    begin_time = m.DateTimeField('开始时间', default=now, editable=True)
    end_time = m.DateTimeField('结束时间', default=now, editable=True)

    related_projects = m.ManyToManyField('self', verbose_name="类似项目", blank=True, null=True, )

    # related_projects = m.ManyToManyField('self', to="", related_name=None, related_query_name=None,
    #              limit_choices_to=None, symmetrical=None, through=None,
    #              through_fields=None, db_constraint=True, db_table=None,
    #              swappable=True, **kwargs)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '项目'
        verbose_name_plural = verbose_name

    def get_absolute_url(self):
        return reverse('home:project-detail', kwargs={'pk': self.id})

    @cached_property
    def next_project(self):
        # 下一篇
        return Project.objects.filter(sequence__gt=self.sequence, is_enable=True).order_by('sequence').first()

    @cached_property
    def prev_project(self):
        # 前一篇
        return Project.objects.filter(sequence__lt=self.sequence, is_enable=True).order_by('-sequence').first()

    @cache_decorator(60 * 60 * 10)
    def get_related_projects(self):
        return Project.objects.all().filter(related_projects=self)


# 项目-技术标签
class ProjectTag(BaseModel):
    name = m.CharField(max_length=50, verbose_name='技术标签名称')
    description = MDTextField(max_length=200, config_name='mini', blank=True, verbose_name='特点简介')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '项目技术标签'
        verbose_name_plural = verbose_name


# 项目-附件
class ProjectAttach(BaseModel):
    file = m.FileField(upload_to="upload/project/thumb/%Y/%m/%d", null=True, verbose_name='附件')
    name = m.CharField(max_length=50, null=True, verbose_name='附件名称', default=file.name)
    project = m.ForeignKey(Project, on_delete=m.CASCADE, null=True, verbose_name='项目')

    class Meta:
        verbose_name = '项目附件'
        verbose_name_plural = verbose_name
