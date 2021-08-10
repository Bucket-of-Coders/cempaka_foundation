from django.shortcuts import render, redirect
from . import models
from mapmanager.models import Posisipohon
from django.contrib.auth.decorators import login_required
from .form import UserRegisterForm, UserUpdateForm, ProfileUpdateForm
from landingpage.models import User_review
from django.db import connection

# Create your views here.
@login_required(login_url='/user/login')
def dashboard_maps(request):
    try:
        data_sponsor = models.User_sponsor.objects.get(sponsor_user=request.user.id)
        maps = Posisipohon.objects.get(relasi=request.user.id)
        context = {
            'maps':maps,
            'user': data_sponsor
        }
    except :
        context = {
            'fail': True
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

@login_required(login_url='/user/login')
def dashboard_review(request):
    if request.method == 'POST':
        POST_ID = 1
        user_name = request.POST.get('name')
        user_occupation = request.POST.get('occupation')
        user_review = request.POST.get('review')

        cursor = connection.cursor()
        sql = """INSERT INTO landingpage_user_review (post_id, user_name, user_occupation, user_review)
            VALUES ({}, '{}', '{}', '{}')""".format(POST_ID, user_name, user_occupation, user_review)

        cursor.execute(sql)
        cursor.close()

    return render(request, 'sponsor_dashboard/templates/index_review.html')