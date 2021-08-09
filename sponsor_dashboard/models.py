from django.db import models
from django.conf import settings
from django.contrib.auth.models import User
from datetime import date as dt
# Create your models here.

class User_sponsor(models.Model):
    sponsor_user = models.OneToOneField(User, on_delete=models.CASCADE)
    sponsor_name = models.CharField(default='', max_length=255)
    sponsor_logo = models.ImageField(upload_to='sponsor_logo', blank=True, null=True, default='staff_photos/default.png')

    def __str__(self):
        return self.sponsor_name

    class Meta:
        verbose_name_plural = 'Sponsors'

class Sponsor_galery(models.Model):
    post = models.ForeignKey(User_sponsor, default='', on_delete=models.CASCADE)
    date = models.DateField(default=dt(2020, 10, 18))
    images = models.ImageField(upload_to='_image')