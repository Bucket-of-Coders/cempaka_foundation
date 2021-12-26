from django.contrib import admin
from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.template.response import TemplateResponse
from django.urls import path
from .models import Posisipohon,Maps
from .forms import Addurlform
from django.utils.html import format_html
from datetime import date, datetime,timedelta
# Register your models here.






class Mapowner(admin.StackedInline):
    model = Posisipohon
    

@admin.register(Maps)
class KMZadmin(admin.ModelAdmin):
    pass
    inlines = [
        Mapowner,
    ]
    list_display=('email','last_updated_year')
    list_filter=('urlrelasi__year',)
    search_fields = ['email']
    fields=('email',)
    readonly_fields=('email',)
    def last_updated_year(self,obj):
        f=Posisipohon.objects.filter(relations=obj).order_by('year').last()
        if f:
            return format_html(str(f.year)) 
        else:
            return None
    