# Create your models here.
from django.db import models
from login.models import Users
from datetime import date, timedelta,datetime

class Maps(Users):
    class Meta:
        proxy = True
        verbose_name = "Sponsor Maps"
        verbose_name_plural = 'Maps Manager'
        
        

class Posisipohon(models.Model):
    relations = models.ForeignKey(Maps, on_delete=models.CASCADE, default="", related_name='urlrelasi')
    urlmap = models.URLField(max_length=500, default='')
    year = models.IntegerField(default=2020)

    def __str__(self):
        return str(self.relations.email)


    class Meta:
        verbose_name_plural = 'Map Manager'
        constraints = [
        models.UniqueConstraint(fields=['relations', 'year'], name='unique map per year')
    ]