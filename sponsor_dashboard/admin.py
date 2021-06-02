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

class MyModelAdmin(admin.ModelAdmin):
    class Meta:
        model = models.Sponsor_galery
    def get_model_perms(self, request):
        """
        Return empty perms dict thus hiding the model from admin index.
        """
        return {}
admin.site.register(models.Sponsor_galery, MyModelAdmin)
class Galery_sponsor(admin.ModelAdmin):
    pass