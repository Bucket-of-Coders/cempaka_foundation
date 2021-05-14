from django.db import models
import datetime
from ckeditor_uploader.fields import RichTextUploadingField
from django.utils.text import slugify
# Create your models here.

class Add_article(models.Model):
    name = models.CharField(max_length=255, default='')
    banner = models.ImageField(upload_to='article_images', default='')
    category = models.CharField(max_length=255, null=True)
    body = RichTextUploadingField()
    meta_description = models.CharField(max_length=255, null=True)
    time = models.DateTimeField(auto_now_add=True)
    slug = models.SlugField(max_length=255, blank=True, editable=False)

    def save(self):
        self.slug = slugify(self.name)
        super(Add_article, self).save()

    def __str__(self):
        return '{}. {}'.format(self.id, self.name)

    class Meta:
        verbose_name_plural = 'Add Article/News'