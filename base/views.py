import json
import re

from django.shortcuts import render, HttpResponse
import logging

from django.urls import reverse

from base.models import Message

logger = logging.getLogger(__name__)


def page_not_found_view(request, exception, template_name='error_page.html'):
    if exception:
        logger.error(exception)
    url = request.get_full_path()
    return render(request, template_name,
                  {'message': '哎呀，您访问的地址 ' + url + ' 是一个未知的地方。请点击首页看看别的？', 'statuscode': '404'}, status=404)


def server_error_view(request, template_name='error_page.html'):
    return render(request, template_name,
                  {'message': '哎呀，出错了，我已经收集到了错误信息，之后会抓紧抢修，请点击首页看看别的？', 'statuscode': '500'}, status=500)


def permission_denied_view(request, exception, template_name='error_page.html'):
    if exception:
        logger.error(exception)
    return render(request, template_name,
                  {'message': '哎呀，您没有权限访问此页面，请点击首页看看别的？', 'statuscode': '403'}, status=403)


# class MessageFrom(forms.Form):
#     # 留言
#     name = fields.CharField(required=False, max_length=50, )
#     phone = fields.RegexField(required=True, regex=r"^1[35678]\d{9}$")
#     wechart = fields.CharField(required=False, max_length=25, )
#     qq = fields.IntegerField(required=False, )
#     email = fields.EmailField(required=False, max_length=20, )
#     content = fields.CharField(required=2000, max_length=2000, strip=True)


def collection_message(request):
    if request.method == 'GET':
        return render(request, 'message.html')
    else:
        # f = MessageFrom(request.POST)
        # msg = {'msg': '保存成功'}
        # if f.is_valid():
        #     m = f.save(commit=False)
        #     m.save()
        # else:
        #     msg = f.errors
        #     print(msg)

        p = request.POST
        msg = {'msg': '提交成功，稍后我们会联系您。'}
        m = Message(name=p.get('name'), phone=p.get('phone'), wechart=p.get('wechart'), qq=p.get('qq'),
                    content=p.get('content'))
        ret = re.match(r"^1[35678]\d{9}$", m.phone)
        if m.phone == '':
            msg = {'msg': '请填写手机号'}
        elif not ret:
            msg = {'msg': '您填写的不是有效手机号'}
        # elif m.content == '':
        #     msg = {'msg': '请填写留言内容'}
        else:
            # try:
            if m.name: m.name = m.name[0:50]
            if m.phone: m.phone = m.phone[0:50]
            if m.wechart: m.wechart = m.wechart[0:20]
            if m.qq:  m.qq = m.qq[0:20]
            if m.email: m.email = m.email[0:20]
            if m.content: m.content = m.content[0:2000]
            m.save()
            # except BaseException:
            #     pass

    if request.is_mobile:
        return HttpResponse(json.dumps(msg))
    else:
        return render(request, 'message.html', msg)
