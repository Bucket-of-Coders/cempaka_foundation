from django.shortcuts import render
from . import models

# Create your views here.

def article_bay(request):
    db = models.Add_article.objects.all().order_by('-time')
    context = {
        'data':db
    }
    return render(request, 'article/templates/article.html', context)

def read_more(request, slug):
    db = models.Add_article.objects.get(slug=slug)
    return render(request, 'article/templates/details.html', {'data':db})

def coba(request):
    db = models.Add_article.objects.all().order_by("-id")[:5]
    # db=db.reverse()
    context={'articles':db}
    return render(request,'article/templates/coba.html',context)
