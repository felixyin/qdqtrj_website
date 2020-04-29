# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://docs.scrapy.org/en/latest/topics/items.html

import scrapy


class Jb51Item(scrapy.Item):
    title = scrapy.Field()
    body = scrapy.Field()
    pub_time = scrapy.Field()
    reference_url = scrapy.Field()
    category1 = scrapy.Field()
    category2 = scrapy.Field()
    category3 = scrapy.Field()
    tag = scrapy.Field()
