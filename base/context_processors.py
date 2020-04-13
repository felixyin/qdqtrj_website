#!/usr/bin/env python
# encoding: utf-8


"""
@version: ??
@author: liangliangyy
@license: MIT Licence
@contact: liangliangyy@gmail.com
@site: https://www.lylinux.net/
@software: PyCharm
@file: context_processors.py
@time: 2016/11/6 下午4:23
"""
from blog.models import Category, Article
from website.utils import cache, get_web_setting, get_contact_info

from datetime import datetime
import logging

logger = logging.getLogger(__name__)


def seo_processor(requests):
    key = 'seo_processor'
    value = cache.get(key)
    if value:
        return value
    else:
        logger.info('set processor cache.')
        setting = get_web_setting()
        contact = get_contact_info()
        value = {
            'SITE_NAME': setting.sitename,
            'SHOW_GOOGLE_ADSENSE': setting.show_google_adsense,
            'GOOGLE_ADSENSE_CODES': setting.google_adsense_codes,
            'SITE_SEO_DESCRIPTION': setting.site_seo_description,
            'SITE_DESCRIPTION': setting.site_description,
            'SITE_KEYWORDS': setting.site_keywords,
            'BLOG_NAME': setting.blogname,
            'BLOG_SEO_DESCRIPTION': setting.blog_seo_description,
            'BLOG_DESCRIPTION': setting.blog_description,
            'BLOG_KEYWORDS': setting.blog_keywords,
            'SITE_BASE_URL': requests.scheme + '://' + requests.get_host() + '/',
            'BLOG_BASE_URL': requests.scheme + '://' + requests.get_host() + '/blog/',
            'ARTICLE_SUB_LENGTH': setting.article_sub_length,
            'nav_category_list': Category.objects.all(),
            'nav_pages': Article.objects.filter(type='p', status='p'),
            'OPEN_SITE_COMMENT': setting.open_site_comment,
            'BEIAN_CODE': setting.beiancode,
            'ANALYTICS_CODE': setting.analyticscode,
            "BEIAN_CODE_GONGAN": setting.gongan_beiancode,
            "SHOW_GONGAN_CODE": setting.show_gongan_code,
            "CURRENT_YEAR": datetime.now().year,
            "LOGO_IMG": setting.logo_img,
            "LOGO_FOOTER_IMG": setting.logo_footer_img,
            "PHONE_IMG": setting.phone_img,
            "WECHART_IMG": setting.wechart_img,
            "COMPANY": contact.company,
            "PHONE": contact.phone,
            "PHONE_USER": contact.phone_user,
            "WECHART": contact.wechart,
            "QQ": contact.qq,
            "PHONE_AFTER_SALE": contact.phone_after_sale,
            "PHONE_AFTER_SALE_USER": contact.phone_after_sale_user,
            "EMAIL": contact.email,
            "EMAIL_HR": contact.email_hr,
            "ADDRESS": contact.address,
        }
        cache.set(key, value, 60 * 60 * 10)
        return value
