from django.urls import path
from . import views

#this url patterns is looking to views.py in blog app directory
urlpatterns = [
    path('sponsor/dahsboard/maps', views.dashboard_maps, name='dashboard_maps'),
    path('sponsor/dahsboard/profile', views.dashboard_profile, name='dashboard_profile'),
    path('sponsor/dahsboard/gallery', views.dashboard_galeery, name='dashboard_gallery')
]