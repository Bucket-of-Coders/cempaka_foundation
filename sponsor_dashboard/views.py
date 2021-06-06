from django.shortcuts import render, redirect
from . import models
from mapmanager.models import Posisipohon
from django.contrib.auth.decorators import login_required
from .form import UserRegisterForm, UserUpdateForm, ProfileUpdateForm

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

    if request.method == 'POST':
        u_form = UserUpdateForm(request.POST)
        p_form = ProfileUpdateForm(request.POST, request.FILES)
        if u_form.is_valid() or p_form.is_valid():
            u_form.save()
            p_form.save()
            print('#'*200)
            print('#' * 200)
            from django.contrib import messages
            messages.success(request, "Your message has been sent. Thank you!")
            return redirect('/sponsor/dashboard/profile')
    else:
        u_form = UserUpdateForm()
        p_form = ProfileUpdateForm()

    context = {
        'user': data_sponsor,
        'u_form': u_form,
        'p_form': p_form
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