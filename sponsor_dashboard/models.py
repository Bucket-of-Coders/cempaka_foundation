from django.db import models
from django.conf import settings
from datetime import date as dt
# Create your models here.

class User_sponsor(models.Model):
    sponsor_user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.CASCADE, default="",
                                  related_name='sponsorUser')
    sponsor_name = models.CharField(default='', max_length=255)
    sponsor_logo = models.ImageField(upload_to='sponsor_logo')

class Sponsor_galery(models.Model):
    post = models.ForeignKey(User_sponsor, default='', on_delete=models.CASCADE)
    date = models.DateField(default=dt(2020, 10, 18))
    images = models.ImageField(upload_to='_image')