from django.contrib import admin

# Register your models here.
from about.models import Evaluation, OurClient, TeamMember


class EvaluationInline(admin.StackedInline):
    model = Evaluation
    min_num = 0
    max_num = 50


class OurClientInline(admin.TabularInline):
    model = OurClient
    min_num = 3
    max_num = 20


class TeamMemberInline(admin.StackedInline):
    model = TeamMember
    min_num = 3
    max_num = 10


class AboutAdmin(admin.ModelAdmin):
    exclude = ()
    list_display = ('web_home', 'address', 'phone', 'email',)
    inlines = [EvaluationInline, OurClientInline, TeamMemberInline]


class MessageAdmin(admin.ModelAdmin):
    list_display = ('name', 'phone', 'content', 'wechart', 'qq', 'email',)
