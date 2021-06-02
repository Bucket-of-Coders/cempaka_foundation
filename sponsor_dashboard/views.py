from django.shortcuts import render
from . import models
from mapmanager.models import Posisipohon

# Create your views here.
def dashboard(request):
    data_sponsor = models.User_sponsor.objects.get(sponsor_user=request.user.id)
    maps = Posisipohon.objects.get(relasi=request.user.id)
    return render(request, 'sponsor_dashboard/templates/index5.html')