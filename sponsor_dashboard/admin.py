from django.contrib import admin
from . import models
# Register your models here.

class Galery_sponsor(admin.StackedInline):
    model = models.Sponsor_galery

@admin.register(models.User_sponsor)
class User_sponsor_admin(admin.ModelAdmin):
    list_per_page = 20
    inlines = [
        Galery_sponsor
    ]

    class Meta:
        model = models.User_sponsor

@admin.register(models.Sponsor_galery)
class Galery_sponsor(admin.ModelAdmin):
    pass