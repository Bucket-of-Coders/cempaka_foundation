from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField

# Create your models here.
class Login_page(models.Model):
    body = RichTextUploadingField()
    name = models.CharField(default='Edit Login Page Demo', max_length=20)

    class Meta:
        verbose_name_plural = 'Login Page Demo'