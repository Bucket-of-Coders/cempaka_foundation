from django.contrib import admin
from .models import Program_activity

@admin.register(Program_activity)
class Program_activityAdmin(admin.ModelAdmin):
    list_display = ("title", "date_posted")
