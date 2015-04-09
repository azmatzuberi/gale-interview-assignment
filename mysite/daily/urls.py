from django.conf.urls import patterns, url
from daily import views


urlpatterns = patterns('',
    # /daily/
    url(r'^$', views.index, name='index'),
    # /dilay/3/
    url(r'^(?P<article_id>\d+)/$', views.detail, name='detail'),
    )