from django.urls import path
from . import views

#this url patterns is looking to views.py in blog app directory
urlpatterns = [
    path('', views.landingpage, name='landingpage'),
    path('send', views.send_email, name='send')
]