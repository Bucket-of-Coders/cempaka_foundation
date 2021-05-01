from django.contrib import admin
from . import models

# Register your models here.

@admin.register(models.Login_page)
class Landing_page_modification(admin.ModelAdmin):
    list_display = ('name', )
    list_per_page = 20

    #make field disable cannot be edited
    readonly_fields = ['name']

    # This will help you to disbale add functionality
    def has_add_permission(self, request):
        return False

    # This will help you to disable delete functionality
    def has_delete_permission(self, request, obj=None):
        return False

    class Meta:
        model = models.Login_page