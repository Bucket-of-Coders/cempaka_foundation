from django.db import models
from ckeditor.fields import RichTextField ## text editor 3rd party (without upload image inside textbox)
from ckeditor_uploader.fields import RichTextUploadingField ## same as above but (include upload image inside textbox)

# Create your models here.
## landing page Models
class Landing_page(models.Model):
    name = models.CharField(default='Edit Landing Page', max_length=20)
    history = RichTextUploadingField()
    visi_misi_and_core_value = RichTextField()
    strategy_and_program = RichTextField()
    image_1 = models.ImageField(default='', upload_to='landing_page_image')
    image_2 = models.ImageField(default='', upload_to='landing_page_image')
    image_3 = models.ImageField(default='', upload_to='landing_page_image')

    class Meta:
        verbose_name_plural = 'Landing Page' ## change name in admin site from 'Landing_page' to 'Landing Page'

class Sponsor(models.Model):
    post = models.ForeignKey(Landing_page, default='', on_delete=models.CASCADE)
    organization_name = models.CharField(max_length=255)
    organization_logo = models.ImageField(upload_to='sponsor_logo')

    def __str__(self):
        return self.organization_name

    class Meta:
        verbose_name_plural = 'Sponsor Logo'  ## change name in admin site from 'Landing_page' to 'Landing Page'

## END landing page models