from django.urls import path, re_path
from . import views

#this url patterns is looking to views.py in blog app directory
urlpatterns = [
    path('article', views.article_bay, name='article'),
    re_path('^article/(?P<slug>[\w-]+)/$', views.read_more, name='details'),
    path('cobaya/',views.coba, name='coba')

]