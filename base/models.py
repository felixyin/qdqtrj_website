from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.sites.models import Site
from django.db import models as m
from django.utils.timezone import now
from django.core.exceptions import ValidationError
from django.utils.translation import gettext_lazy as _


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
    # description = MDTextField(max_length=200, blank=True, verbose_name='特点简介')
    description = RichTextUploadingField(max_length=2000, config_name='mini', verbose_name='特点简介', blank=False)

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


class WebSettings(m.Model):
    '''站点设置 '''
    site_address = m.CharField("网站地址", max_length=30, null=False, blank=False, default='')
    sitename = m.CharField("网站名称", max_length=30, null=False, blank=False, default='')
    site_description = m.TextField("网站描述", max_length=500, null=False, blank=False, default='')
    site_seo_description = m.TextField("网站SEO描述", max_length=500, null=False, blank=False, default='')
    site_keywords = m.TextField("网站关键字", max_length=500, null=False, blank=False, default='')
    copyright = m.CharField('Copyright', max_length=40, null=True, blank=True, default='')
    beiancode = m.CharField('备案号', max_length=20, null=True, blank=True, default='')
    analyticscode = m.TextField("网站统计代码", max_length=500, null=False, blank=False, default='')
    show_gongan_code = m.BooleanField('是否显示公安备案号', default=False, null=False)
    gongan_beiancode = m.TextField('公安备案号', max_length=20, null=True, blank=True, default='')
    blogname = m.CharField("博客名称", max_length=200, null=False, blank=False, default='')
    blog_description = m.TextField("博客描述", max_length=500, null=False, blank=False, default='')
    blog_seo_description = m.TextField("博客SEO描述", max_length=500, null=False, blank=False, default='')
    blog_keywords = m.TextField("博客关键字", max_length=500, null=False, blank=False, default='')
    article_sub_length = m.IntegerField("文章摘要长度", default=300)
    sidebar_article_count = m.IntegerField("侧边栏文章数目", default=10)
    sidebar_comment_count = m.IntegerField("侧边栏评论数目", default=5)
    show_google_adsense = m.BooleanField('是否显示谷歌广告', default=False)
    google_adsense_codes = m.TextField('广告内容', max_length=500, null=True, blank=True, default='')
    open_blog_comment = m.BooleanField('是否打开网站评论功能', default=True)
    resource_path = m.CharField("静态文件保存地址", max_length=30, null=False, default='/var/www/resource/')
    logo_img = m.ImageField(upload_to='upload/websetting/', verbose_name='网站LOGO', blank=False)
    logo_footer_img = m.ImageField(upload_to='upload/websetting/', verbose_name='网站页脚LOGO', blank=False)
    phone_img = m.ImageField(upload_to='upload/websetting/', verbose_name='电话', blank=False)
    wechart_img = m.ImageField(upload_to='upload/websetting/', verbose_name='微信二维码', blank=False)

    class Meta:
        verbose_name = '网站配置'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.sitename

    def clean(self):
        if WebSettings.objects.exclude(id=self.id).count():
            raise ValidationError(_('只能有一个配置'))

    def save(self, *args, **kwargs):
        super().save(*args, **kwargs)
        from website.utils import cache
        cache.clear()


class Message(BaseModel):
    # 留言
    name = m.CharField(max_length=50, null=True, blank=True, verbose_name='姓名')
    phone = m.CharField(max_length=20, null=True, blank=True, verbose_name='电话')
    wechart = m.CharField(max_length=20, null=True, blank=True, verbose_name='微信')
    qq = m.CharField(max_length=20, null=True, blank=True, verbose_name='qq')
    email = m.CharField(max_length=20, null=True, blank=True, verbose_name='邮箱')
    content = m.TextField(max_length=2000, null=True, blank=True, verbose_name='留言信息')

    class EnumIsRead(m.TextChoices):
        YIDU = 'Y', _('已读')
        WEIDU = 'N', _('未读')

    is_read = m.CharField(max_length=1, choices=EnumIsRead.choices, default=EnumIsRead.WEIDU, verbose_name='已读否？')

    class Meta:
        verbose_name = '免费报价'
        verbose_name_plural = verbose_name


# Create your models here.
class ContactInfo(m.Model):
    # 联系信息
    company = m.CharField(max_length=20, verbose_name='组织名称')
    phone = m.CharField(max_length=20, verbose_name='咨询电话')
    phone_user = m.CharField(max_length=20, verbose_name='咨询电话姓名')
    wechart = m.CharField(max_length=20, verbose_name='微信号')
    qq = m.CharField(max_length=20, verbose_name='QQ号')
    phone_after_sale = m.CharField(max_length=20, verbose_name='售后电话')
    phone_after_sale_user = m.CharField(max_length=20, verbose_name='售后电话姓名')
    email = m.EmailField(verbose_name='邮箱')
    email_hr = m.EmailField(verbose_name='HR邮箱')
    address = m.CharField(max_length=100, verbose_name='地址')

    def __str__(self):
        return self.company

    class Meta:
        verbose_name = '联系信息'
        verbose_name_plural = verbose_name
