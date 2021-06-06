from django.shortcuts import render
from . import models
from mapmanager.models import Posisipohon
from django.contrib.auth.decorators import login_required

# Create your views here.
@login_required(login_url='/user/login')
def dashboard_maps(request):
    data_sponsor = models.User_sponsor.objects.get(sponsor_user=request.user.id)
    maps = Posisipohon.objects.get(relasi=request.user.id)
    context = {
        'maps':maps,
        'user': data_sponsor
    }
    return render(request, 'sponsor_dashboard/templates/index_maps.html', context)

@login_required(login_url='/user/login')
def dashboard_profile(request):
    data_sponsor = models.User_sponsor.objects.get(sponsor_user=request.user.id)
    maps = Posisipohon.objects.get(relasi=request.user.id)
    context = {
        'maps':maps,
        'user': data_sponsor
    }
    return render(request, 'sponsor_dashboard/templates/index_profile.html', context)

@login_required(login_url='/user/login')
def dashboard_galeery(request):
    data_sponsor = models.User_sponsor.objects.get(sponsor_user=request.user.id)
    image_gallery = models.Sponsor_galery.objects.filter(post=data_sponsor)
    print(image_gallery)
    context = {
        'user': data_sponsor,
        'image': image_gallery
    }
    return render(request, 'sponsor_dashboard/templates/index_gallery.html', context)