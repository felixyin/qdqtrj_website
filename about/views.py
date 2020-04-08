import re

from django.forms import forms, fields
from django.shortcuts import render

# Create your views here.

# 关于
from django.views.generic import DetailView

from about.models import About, Message


class AboutDetailView(DetailView):
    # template_name = 'home/about.html'
    model = About
    # pk_url_kwarg = 'pk'
    context_object_name = "about"


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
        return render(request, 'about/message.html')
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
        msg = {'msg': '留言成功！'}
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
            if m.qq != '':  m.qq = m.qq[0:20]
            if m.email: m.email = m.email[0:20]
            if m.content: m.content = m.name[0:2000]
            m.save()
            # except BaseException:
            #     pass

    return render(request, 'about/message.html', msg)
