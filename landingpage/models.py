from django.db import models
from ckeditor.fields import RichTextField ## text editor 3rd party (without upload image inside textbox)
from ckeditor_uploader.fields import RichTextUploadingField ## same as above but (include upload image inside textbox)

# Create your models here.
## landing page Models
class Landing_page(models.Model):
    name = models.CharField(default='Edit Landing Page', max_length=20)

    history = RichTextUploadingField()
    history_image = models.ImageField(default='', upload_to='landing_page_image')

    visi_misi_and_core_value = RichTextField()
    visi_misi_image = models.ImageField(default='', upload_to='landing_page_image')

    strategy_and_program = RichTextField()
    strategy_and_program_image = models.ImageField(default='', upload_to='landing_page_image')

    office_location_map = models.CharField(default='#', max_length=1000)
    office_address = models.CharField(default='', max_length=1000)
    office_email = models.CharField(default='', max_length=255)
    office_phone_number = models.CharField(default='', max_length=255)

    bank_name = models.CharField(default='', max_length=50)
    no_rek = models.CharField(default='', max_length=100)
    bank_account_owner = models.CharField(default='', max_length=255) 

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

class User_review(models.Model):
    post = models.ForeignKey(Landing_page, default='', on_delete=models.CASCADE)
    user_name = models.CharField(default='', max_length=255)
    user_occupation = models.CharField(default='', max_length=255)
    user_review = RichTextField()

    def __str__(self):
        return f'{self.id}. {self.user_name}'

    class Meta:
        verbose_name_plural = 'User Review'

class Management_team(models.Model):
    post = models.ForeignKey(Landing_page, default='', on_delete=models.CASCADE)
    staff_name = models.CharField(default='', max_length=255)
    staff_position = models.CharField(default='', max_length=255)
    staff_photo = models.ImageField(upload_to='staff_photos', default='staff_photos/default.png')
    staff_social_twitter = models.CharField(default='#', null=True, max_length=1000)
    staff_social_facebook = models.CharField(default='#', null=True, max_length=1000)
    staff_social_instagram = models.CharField(default='#', null=True, max_length=1000)
    staff_social_linkedin = models.CharField(default='#', null=True, max_length=1000)


    def save(self, *args, **kwargs):
        super(Management_team, self).save(*args, **kwargs)
        from PIL import Image as resize_image
        img = resize_image.open(self.staff_photo.path)
        final_image = img.resize((600, 600))
        final_image.save(self.staff_photo.path)

    def __str__(self):
        return f'{self.id}. {self.staff_name}'

    class Meta:
        verbose_name_plural = 'BOARD & MANAGEMENT TEAM'

class Question_answer(models.Model):
    question = models.CharField(default='', max_length=100)
    answer = RichTextField()
    date = models.DateField(auto_now_add=True, blank=True, null=True)

    def __str__(self):
        return f'{self.id}. {self.question}'

    class Meta:
        verbose_name_plural = 'Question & Answer'

## END landing page models
