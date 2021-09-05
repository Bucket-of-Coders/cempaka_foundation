# Create your models here.
from django.db import models

from login.models import Users


class Posisipohon(models.Model):
    relations = models.OneToOneField(Users, on_delete=models.CASCADE, default="", related_name='urlrelasi')
    urlmap = models.URLField(max_length=500, default='')

    def __str__(self):
        username = Users.objects.all().filter(username=self.relations)
        tampil = str(username)
        return tampil

    class Meta:
        verbose_name_plural = 'Map Manager'