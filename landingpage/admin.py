from django.contrib import admin
from . import models

# Register your models here.
## register landing page and disable add and remove button
class Sponsor_logo_admin(admin.StackedInline):
    model = models.Sponsor

    def get_model_perms(self, request):
        """
        Return empty perms dict thus hiding the model from admin index.
        """
        return {}

class User_review_admin(admin.StackedInline):
    model = models.User_review

    def get_model_perms(self, request):
        """
        Return empty perms dict thus hiding the model from admin index.
        """
        return {}

class Management_team_admin(admin.StackedInline):
    model = models.Management_team

    def get_model_perms(self, request):
        """
        Return empty perms dict thus hiding the model from admin index.
        """
        return {}

@admin.register(models.Landing_page)
class Landing_page_modification(admin.ModelAdmin):
    list_display = ('name', )
    list_per_page = 20
    inlines = [
        Sponsor_logo_admin,
        User_review_admin,
        Management_team_admin
    ]

    #make field disable cannot be edited
    readonly_fields = ['name']

    # This will help you to disbale add functionality
    def has_add_permission(self, request):
        if models.Landing_page.objects.count() == 1:
            return False

    # This will help you to disable delete functionality
    def has_delete_permission(self, request, obj=None):
        if models.Landing_page.objects.count() == 1:
            return False

    class Meta:
        model = models.Landing_page

class Sponsor_logo_admin(admin.ModelAdmin):
    def get_model_perms(self, request):
        """
        Return empty perms dict thus hiding the model from admin index.
        """
        return {}
admin.site.register(models.Sponsor, Sponsor_logo_admin)

class User_review_admin(admin.ModelAdmin):
    def get_model_perms(self, request):
        """
        Return empty perms dict thus hiding the model from admin index.
        """
        return {}
admin.site.register(models.User_review, User_review_admin)

class Management_team_admin(admin.ModelAdmin):
    def get_model_perms(self, request):
        """
        Return empty perms dict thus hiding the model from admin index.
        """
        return {}
admin.site.register(models.Management_team, Management_team_admin)
## END register landing page and disable add and remove button