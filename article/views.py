from django.shortcuts import render
from . import models

# Create your views here.

def article_bay(request):
    db = models.Add_article.objects.all().order_by('-time')
    context = {
        'data':db
    }
    return render(request, 'article/templates/article.html', context)