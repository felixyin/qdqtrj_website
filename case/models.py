from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.sites.models import Site
from django.urls import reverse
from django.utils.functional import cached_property
from mdeditor.fields import MDTextField
from django.db import models as m

from base.models import BaseModel, BaseTag, BaseAttach
from service.models import Service
from website.utils import cache_decorator


class Category(BaseModel):
    name = m.CharField(max_length=50, null=False, blank=False, verbose_name='分类名称')
    sequence = m.IntegerField('排列顺序', unique=True, null=False, blank=False)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '案例分类'
        verbose_name_plural = verbose_name

    def get_absolute_url(self):
        return reverse('case:category-detail', kwargs={'category_pk': self.id})


class Case(BaseModel):
    # 案例
    category = m.ForeignKey(Category, on_delete=m.DO_NOTHING, null=True, blank=True, verbose_name='分类')
    name = m.CharField(max_length=50, verbose_name='项目名称')
    thumb = m.ImageField(upload_to="upload/case/thumb/%Y/%m/%d", verbose_name='缩略图')
    content = RichTextUploadingField(max_length=2000, config_name='full', verbose_name='项目详情', blank=False)
    source_url = m.URLField(verbose_name='演示地址', null=True, blank=True)
    service = m.ForeignKey(Service, on_delete=m.DO_NOTHING, null=True, blank=True, verbose_name='服务')
    sequence = m.IntegerField('排列顺序', unique=True, null=False, blank=False)
    related_cases = m.ManyToManyField('self', verbose_name="类似项目", blank=True, null=True, )

    # related_projects = m.ManyToManyField('self', to="", related_name=None, related_query_name=None,
    #              limit_choices_to=None, symmetrical=None, through=None,
    #              through_fields=None, db_constraint=True, db_table=None,
    #              swappable=True, **kwargs)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '案例'
        verbose_name_plural = verbose_name

    def get_absolute_url(self):
        return reverse('case:case-detail', kwargs={'category_pk': self.category.id, 'case_pk': self.id})

    def get_mobile_url(self):
        return reverse('mobile:case-detail', kwargs={'pk': self.id})

    @cached_property
    def next_case(self):
        # 下一篇
        return Case.objects.filter(sequence__gt=self.sequence, is_enable=True).order_by('sequence').first()

    @cached_property
    def prev_case(self):
        # 前一篇
        return Case.objects.filter(sequence__lt=self.sequence, is_enable=True).order_by('-sequence').first()

    @cache_decorator(60 * 60 * 10)
    def get_related_cases(self):
        return Case.objects.all().filter(related_cases=self)
