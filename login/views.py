from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout

# Create your views here.

def login_user(request):
    if request.user.is_authenticated:
        return redirect(request.META.get('HTTP_REFERER'))
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
        'fail': fail
    }

    return render(request, 'login/templates/login.html', content_list)

def logout_user(request):
    logout(request)
    return redirect(request.META.get('HTTP_REFERER'))
    print(request.META.get('HTTP_REFERER'))