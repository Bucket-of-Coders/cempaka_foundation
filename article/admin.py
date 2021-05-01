from django.contrib import admin
from . import models

# Register your models here.
class slugify(admin.ModelAdmin):
    readonly_fields = ['slug']

admin.site.register(models.Add_article, slugify)
admin.site.site_header = "Yayasan Cempaka Admin"
admin.site.site_title = "Yayasan Cempaka Admin"