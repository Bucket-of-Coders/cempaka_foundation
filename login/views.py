from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from . import models

# Create your views here.

def login_user(request):
    body_demo = models.Login_page.objects.get(name='Edit Login Page Demo')

    if request.user.is_authenticated:
        try:
            return redirect(request.META.get('HTTP_REFERER'))
        except Exception:
            return  redirect('/')
    fail = False
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            current_path = request.GET.get('next', None)
            return redirect(current_path)
        else:
            fail = True

    content_list = {
        'fail': fail,
        'db': body_demo
    }

    return render(request, 'login/templates/login.html', content_list)

def logout_user(request):
    logout(request)
    if request.path == '/user/logout':
        return redirect('/')
    else:
        return redirect(request.META.get('HTTP_REFERER'))
