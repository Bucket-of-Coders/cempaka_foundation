from django.urls import path
from . import views

#this url patterns is looking to views.py in blog app directory
urlpatterns = [
    path('article', views.article_bay, name='article')
]