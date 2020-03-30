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
        from website.blog_signals import send_email_signal
        # if not self.slug or self.slug == 'no-slug' or not self.id:
        #     slug = self.title if 'title' in self.__dict__ else self.name
        #     self.slug = slugify(slug)
        super().save(*args, **kwargs)
        # type = self.__class__.__name__
        is_update_views = 'update_fields' in kwargs and len(kwargs['update_fields']) == 1 and kwargs['update_fields'][
            0] == 'views'
        send_email_signal.send(sender=self.__class__, is_update_views=is_update_views, id=self.id)

    def get_full_url(self):
        site = Site.objects.get_current().domain
        url = "http://{site}{path}".format(site=site, path=self.get_absolute_url())
        return url
