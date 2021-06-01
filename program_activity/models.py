from django.conf import settings
from django.utils import timezone
from django.db import models 
from django.urls import reverse
from ckeditor_uploader.fields import RichTextUploadingField
from ckeditor.fields import RichTextField


OG = "On Going"
LP = "Latest Project"
KHC = 'Kedai Hutan Cempaka'
CA = 'Cempaka Adventure'

CATEGORY = (
		(OG, 'On Going'),
		(LP, 'Latest Project'),
		(KHC, 'Kedai Hutan Cempaka'),
		(CA, 'Cempaka Adventure'),
	)

class Program_activity(models.Model):
	slug = models.SlugField(null=False, unique=True, verbose_name='URL')
	title = models.CharField(max_length=200, blank=False, null=True, verbose_name='Judul')
	image = models.ImageField(upload_to='uploads/on_going', null=True, blank=False, verbose_name='Foto')
	meta_description = models.CharField(max_length=255, blank=True, null=True, verbose_name='meta_description')
	description = RichTextUploadingField(blank=True, null=True, verbose_name='Artikel')
	date_posted = models.DateTimeField(auto_now_add=False, auto_now=True)
	category = models.CharField(max_length=20, verbose_name="Kategori", choices=CATEGORY, blank=False, null=False)

	class Meta:	
		verbose_name_plural = "Program Activity"

	def __str__(self):
		return f"{self.title}, {self.description}"
 
	def get_absolute_url(self):
		return reverse('detail_program_activity', kwargs={'slug': self.slug}) #get slug url 

	# def get_edit_url(self):
	# 		return reverse('news-edit', kwargs={'slug': self.slug}) #get slug url

