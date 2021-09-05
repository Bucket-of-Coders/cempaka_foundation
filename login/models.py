from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField
from django.contrib.auth.models import AbstractUser, BaseUserManager

# Create your models here.
class Login_page(models.Model):
    body = RichTextUploadingField()
    name = models.CharField(default='Edit Login Page Demo', max_length=20)

    class Meta:
        verbose_name_plural = 'Login Page Demo'

class AccountManager(BaseUserManager):
    def create_user(self, email, username, password=None):
        if not email:
            raise ValueError("Email most not blank")
        if not username:
            raise ValueError("Username must not blank")
        user = self.model(
            email=self.normalize_email(email),
            username=username
        )
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, email, username, password):
        user = self.create_user(
            email=self.normalize_email(email),
            username=username,
            password=password
        )
        user.is_superuser=True
        user.is_staff=True
        user.is_admin=True
        user.save(using=self._db)
        return user

class Users(AbstractUser):
    email = models.EmailField(unique=True, verbose_name='Email', max_length=100)
    username = models.CharField(unique=False, max_length=255, null=True, blank=True)
    first_name = models.CharField(max_length=255, default='')
    last_name = models.CharField(max_length=255, default='')
    date_joined = models.DateTimeField(verbose_name='Date Joined', auto_now_add=True)
    last_login = models.DateTimeField(verbose_name='Last Login', auto_now=True)
    is_admin = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['username']

    object = AccountManager()

    def __str__(self):
        return self.username
    def has_perm(self, perm, obj=None):
        return self.is_admin
    def has_module_perms(self, app_label):
        return True