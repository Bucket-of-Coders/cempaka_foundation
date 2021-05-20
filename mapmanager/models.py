from django.db import models
from django.conf import settings
from django.contrib.auth.models import User

# Create your models here.

class Posisipohon(models.Model):
    # relasi=models.OneToOneField(User,on_delete=models.CASCADE)
    # relasi=User
    relasi=models.OneToOneField(settings.AUTH_USER_MODEL,on_delete=models.CASCADE, default="", related_name='urlrelasi')
    urlmap=models.URLField(max_length=500,default='')
    # kmz=models.FileField(upload_to='../media/kmz', verbose_name="")
    
    def __str__(self):
        username=User.objects.get(username=self.relasi)
        tampil= str(username)
        return tampil
    class Meta:
    	verbose_name_plural='Map Manager'
