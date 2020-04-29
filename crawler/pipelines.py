# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://docs.scrapy.org/en/latest/topics/item-pipeline.html
from accounts.models import BlogUser
from blog.models import Article, Category, Tag
import html2text


class Jb51Pipeline:

    def process_item(self, item, spider):
        title = item['title']
        a_list = Article.objects.filter(title=title)
        article = Article()
        if len(a_list) == 1:
            article = a_list[0]

        article.title = title

        body_ = item['body']
        if "www.jb51.cc" in body_:
            article.status = 'd'
            # self.delete_article(article)
            # return item

        body = html2text.html2text(body_)
        # print(body)
        if len(body) < 400:
            article.status = 'd'
            # self.delete_article(article)
            # return item

        # print('\n\n\n\n\n\n\n\nstart _________________________________________________________________________________________________')
        # print(body)
        # print('end _________________________________________________________________________________________________\n\n\n\n\n\n\n\n')
        article.body = body
        article.pub_time = item['pub_time']
        article.author = BlogUser.objects.get(id=2)
        # print('\n\n\n\n\n))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))')
        # print(article.author.nickname)
        # print('-----------------')

        article.category = self.findOrCreateCategory(item['category1'], item['category2'])
        article.reference_url = item['reference_url']
        article.save()

        tag = self.findOrCreateTag(item)
        article.tags.add(tag)

        article.save()
        print('%s\t-\t%s' % (title, article.category.name))

        # print(article.id)
        return item

    def findOrCreateTag(self, item):
        tag_list = Tag.objects.filter(name=item['category2'])
        if len(tag_list) == 1:
            tag = tag_list[0]
        else:
            t = Tag(name=item['category2'])
            t.save()
            tag = t
        return tag

    def delete_article(self, article):
        if article.id is not None:
            article.delete()
            Tag.objects.filter(article__id=article.id).delete()

    def findOrCreateCategory(self, parentc, subc):
        category_list = Category.objects.filter(name=subc)
        if len(category_list) == 1:
            return category_list[0]
        else:
            category_list1 = Category.objects.filter(name=parentc)
            if len(category_list1) == 1:
                c2 = Category(name=subc)
                c2.parent_category = category_list1[0]
                c2.save()
                return c2
            else:
                c1 = Category(name=parentc)
                c1.save()
                c4 = Category(name=subc)
                c4.parent_category = c1
                c4.save()
                return c4
