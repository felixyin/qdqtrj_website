from django.contrib.sites.models import Site
from django.urls import reverse
from mdeditor.fields import MDTextField
from django.db import models as m
from django.utils.timezone import now


# Create your models here.

#
class BaseModel(m.Model):
    created_time = m.DateTimeField('创建时间', default=now, editable=False)
    last_mod_time = m.DateTimeField('修改时间', default=now, editable=False)
    is_enable = m.BooleanField('是否启用', default=True)
    sequence = m.IntegerField('排列顺序', unique=True, null=True, blank=True)

    class Meta:
        abstract = True

    def save(self, *args, **kwargs):
        from website.blog_signals import save_signal
        # if not self.slug or self.slug == 'no-slug' or not self.id:
        #     slug = self.title if 'title' in self.__dict__ else self.name
        #     self.slug = slugify(slug)
        super().save(*args, **kwargs)
        # type = self.__class__.__name__
        is_update_views = 'update_fields' in kwargs and len(kwargs['update_fields']) == 1 and kwargs['update_fields'][
            0] == 'views'
        # FIXME 通知百度重新收录url地址
        # save_signal.send(sender=self.__class__, is_update_views=is_update_views, id=self.id)

    def get_full_url(self):
        site = Site.objects.get_current().domain
        try:
            url = "http://{site}{path}".format(site=site, path=self.get_absolute_url())
        except Exception:
            url = "http://{site}".format(site=site)
        return url


class BaseTag(BaseModel):
    # 项目-技术标签
    name = m.CharField(max_length=50, verbose_name='标签名称')
    description = MDTextField(max_length=200, config_name='mini', blank=True, verbose_name='特点简介')

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = '标签'
        verbose_name_plural = verbose_name


class BaseAttach(BaseModel):
    # 项目-附件
    file = m.FileField(upload_to="upload/attach/%Y/%m/%d", null=True, verbose_name='附件')
    name = m.CharField(max_length=50, null=True, verbose_name='附件名称', default=file.name)

    # project = m.ForeignKey(BaseModel, on_delete=m.CASCADE, null=True, verbose_name='项目')

    class Meta:
        verbose_name = '附件'
        verbose_name_plural = verbose_name
