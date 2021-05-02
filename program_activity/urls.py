from django.urls import path
from . import views

#this url patterns is looking to views.py in blog app directory
urlpatterns = [
    path('program-and-activity', views.list_program_activity, name='list_program_activity'),
    path('program-and-activity/<slug:slug>/', views.detail_program_activity, name='detail_program_activity'),
]