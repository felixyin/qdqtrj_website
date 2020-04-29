# -*- coding: utf-8 -*-
from locale import str

import scrapy
from pyquery import PyQuery as pd

from blog.models import Article
from crawler.items import Jb51Item


class Jb51Spider(scrapy.Spider):
    name = 'jb51'
    allowed_domains = ['www.jb51.cc']
    start_urls = ['http://www.jb51.cc/']

    def parse(self, response):
        # category_list = response.xpath('//ul[@class="nav navbar-nav"]/li/a/@href').extract()
        # category_list = category_list[1:len(category_list) - 2]
        # category_list1 = response.xpath('//ul[@class="nav navbar-nav"]/li/a/text()').extract()
        # category_list1 = category_list1[1:len(category_list1) - 2]

        # x = response.xpath('//ul[@class="nav navbar-nav"]/li/a')
        # category_list = x.xpath('./@href').extract()
        # category_list = category_list[1:len(category_list) - 2]
        # category_list1 = x.xpath('./text()').extract()
        # category_list1 = category_list1[1:len(category_list1) - 2]
        #
        # for index in range(len(category_list)):
        #     # yield {'href': c}
        #     # print(category_href)
        #     item = Jb51Item()
        #     item['category1'] = category_list1[index]
        #     # print(category_list[index], category_list1[index])
        #     yield scrapy.Request(response.urljoin(category_list[index]), self.parse_menu, meta={'item': item})

        alist = response.xpath('//ul[@class="nav navbar-nav"]/li')
        categorys = []
        for a in alist:
            href = a.xpath('./a/@href').extract_first()
            title = a.xpath('./a/text()').extract_first()
            categorys.append({'href': href, 'title': title})
        categorys = categorys[1:len(categorys) - 2]
        for c in categorys:
            item = Jb51Item()
            item['category1'] = c.get('title')
            # print(category_list[index], category_list1[index])
            yield scrapy.Request(response.urljoin(c.get('href')), self.parse_menu, meta={'item': item})

    def parse_menu(self, response):
        menu_list = response.xpath('//div[@class="panel-body leftmenu"]/a/@href').extract()
        for index in range(len(menu_list)):
            # print(menu_href)
            yield scrapy.Request(response.urljoin(menu_list[index]), self.parse_list, meta={'item': response.meta['item']})

    def parse_list(self, response):
        list = response.xpath('//div[@class="col-sm-7"]/div[@class="panel panel-default"]/ul/li[@class="list-group-item"]/a/@href').extract()
        # print(list)
        for doc_href in list:
            if Article.objects.filter(reference_url=doc_href).exists():
                continue
            # print(doc_href)
            yield scrapy.Request(response.urljoin(doc_href), self.parse_doc, meta={'item': response.meta['item']})

        # 分页处理
        next_href = response.xpath('//a[@class="page_next"]/@href').extract_first()
        # print('=============>' + next_href)
        if next_href is not None:
            yield scrapy.Request(response.urljoin(next_href), self.parse_list, meta={'item': response.meta['item']})

    def parse_doc(self, response):
        '''
        结息文章内容
        '''
        item = response.meta['item']

        title = response.xpath('//div[@class="panel-heading font-weight-bold text-center"]/h3/text()').extract_first()
        item['title'] = title

        category2 = response.xpath('//div[@class="col-sm-7"]/ul[@class="breadcrumb"]/li[2]/a/text()').extract_first()
        item['category2'] = category2

        body = response.xpath('//div[@class="jb51box"]').extract()
        doc = pd(''.join(body))
        jq = doc('*')
        jq.find('blockquote:first').remove()
        jq.find('blockquote:last').remove()
        jq.find('p:last').remove()
        jq.find('h2:last').remove()
        body_str = jq.html()
        # print('\n\n\n\n\n\n\n\n_________________________________________________________________________________________________')
        # print(body_str)
        # print('_________________________________________________________________________________________________\n\n\n\n\n\n\n\n')
        item['body'] = body_str
        item['reference_url'] = response.request.url

        pub_time = response.xpath('//div[@class="time text-center"]/text()').extract_first()
        item['pub_time'] = pub_time.replace(' 发布网站：脚本之家', '').replace('发布时间：', '')

        yield item
