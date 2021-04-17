from django.urls import path
from . import views

#this url patterns is looking to views.py in blog app directory
urlpatterns = [
    path('user/login', views.login_user, name='login'),
    path('user/logout', views.logout_user, name='logout'),
]