from django.shortcuts import render
from . import models
from mapmanager.models import Posisipohon

# Create your views here.
def dashboard_maps(request):
    data_sponsor = models.User_sponsor.objects.get(sponsor_user=request.user.id)
    maps = Posisipohon.objects.get(relasi=request.user.id)
    context = {
        'maps':maps,
        'user': data_sponsor
    }
    return render(request, 'sponsor_dashboard/templates/index_maps.html', context)

def dashboard_profile(request):
    data_sponsor = models.User_sponsor.objects.get(sponsor_user=request.user.id)
    maps = Posisipohon.objects.get(relasi=request.user.id)
    context = {
        'maps':maps,
        'user': data_sponsor
    }
    return render(request, 'sponsor_dashboard/templates/index_profile.html', context)

def dashboard_galeery(request):
    data_sponsor = models.User_sponsor.objects.get(sponsor_user=request.user.id)
    maps = Posisipohon.objects.get(relasi=request.user.id)
    context = {
        'maps':maps,
        'user': data_sponsor
    }
    return render(request, 'sponsor_dashboard/templates/index_gallery.html', context)