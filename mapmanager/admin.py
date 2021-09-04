from django.contrib import admin
from django.http import HttpResponseRedirect
from django.shortcuts import render
from django.template.response import TemplateResponse
from django.urls import path
from .models import Posisipohon
from .forms import Addurlform
# Register your models here.



@admin.register(Posisipohon)
class KMZadmin(admin.ModelAdmin):

    change_list_template='admin/mapmanager/mapmanager.html'
    
    def changelist_view(self, request, extra_context=None):
        # from django.contrib.auth.models import User
        from login.models import Users as User
        from .models import Posisipohon

        usernames=[]
        kmzfiles=[]
        model=Posisipohon
        usernamesqry = User.objects.all()
        for index,username in enumerate(usernamesqry):
            usernames.append(username)     
        extra_context = extra_context or {}
        extra_context['usernames'] = usernames

        return super().changelist_view(request,extra_context=extra_context)


    def get_urls(self):
        urls = super().get_urls()
        my_urls = [
            path('preview/<str:username>/', self.admin_site.admin_view(self.my_view)),
            path('add/<str:username>/', self.admin_site.admin_view(self.addmap)),
        ]
        return my_urls + urls

    def my_view(self, request, username):
        # ...
        # from django.contrib.auth.models import User
        from login.models import Users as User
        from .models import Posisipohon
        quser=User.objects.get(username=username)

        if request.method == 'POST':
            form=Addurlform(request.POST)
            if form.is_valid():
                
                # process the data in form.cleaned_data as required
                # ...
                try:
                    addmapurl=Posisipohon(relasi=quser, urlmap=request.POST['urlmap'])
                    addmapurl.save()
                except:
                    urlmapedit=Posisipohon.objects.get(relasi=quser)
                    urlmapedit.urlmap=request.POST['urlmap']
                    urlmapedit.save()
                # redirect to a new URL:
                return HttpResponseRedirect('/adminmapmanager/posisipohon/')
        else:
            form = Addurlform()
        context = dict(
           # Include common variables for rendering the admin template.
           self.admin_site.each_context(request),
           # Anything else you want in the context...
           us=username,
           user=quser,
           frm=form
        )

        return TemplateResponse(request, "admin/mapmanager/previewmap.html", context)

    def addmap(self, request, username):
        # ...
        # from django.contrib.auth.models import User
        from login.models import Users as User
        from .models import Posisipohon
        if request.method == 'POST':
            form=Addurlform(request.POST)
            if form.is_valid():
                # process the data in form.cleaned_data as required
                # ...
                # quser=User.objects.get(username=username)
                # addmapurl=Posisipohon(relasi=username, urlmap=request.POST)
                # redirect to a new URL:
                return HttpResponseRedirect('/posisipohon/')
        else:
            form = Addurlform()

        return render(request, 'admin/mapmanager/addmap.html', {'form': form})

 
        
        
        # context = dict(
        #    # Include common variables for rendering the admin template.
        #    self.admin_site.each_context(request),
        #    # Anything else you want in the context...
        #    us=username,
        #    user=quser
        # )


        # return TemplateResponse(request, "admin/mapmanager/mapmanager.html", context)
