from django.contrib import admin
from . import models

# Register your models here.
## register landing page and disable add and remove button
class Sponsor_logo_admin(admin.StackedInline):
    model = models.Sponsor

@admin.register(models.Landing_page)
class Landing_page_modification(admin.ModelAdmin):
    list_display = ('name', )
    list_per_page = 20
    inlines = [Sponsor_logo_admin]

    #make field disable cannot be edited
    readonly_fields = ['name']

    # This will help you to disbale add functionality
    def has_add_permission(self, request):
        return False

    # This will help you to disable delete functionality
    def has_delete_permission(self, request, obj=None):
        return False

    class Meta:
        model = models.Landing_page

@admin.register(models.Sponsor)
class Sponsor_logo_admin(admin.ModelAdmin):
    pass
## END register landing page and disable add and remove button