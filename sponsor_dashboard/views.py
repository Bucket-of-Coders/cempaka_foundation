from django.shortcuts import render
from . import models

# Create your views here.
def dashboard(request):
    data_sponsor = models.User_sponsor.objects.get(sponsor_user=request.user.username)
    return render(request, 'sponsor_dashboard/templates/index5.html')