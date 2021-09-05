from django.shortcuts import render
# from .models import Posisipohon
# from django.contrib.auth.models import User

# from .forms import Uploadform

# def uploadkmz(request):
#     if request.method == 'POST':
#         form = Uploadform(request.POST, request.FILES,auto_id=False)
#         if form.is_valid():
#             form.save()
#             form = Uploadform(auto_id=False)
#     else:
#         form = Uploadform(auto_id=False)

#     return form

# def datakmz(request):
#     alluser=[]
#     form=uploadkmz(request)
#     username= 'fikra (belum ambil dari database)'
#     # picker= Posisipohon.objects.get(username='fikra')
#     userlist=User.objects.all()
#     for i in range(len(userlist)):
#         alluser.append(userlist[i].username)
#     context = {
#     # 'picker': picker.kmz,
#     'username' : username,
#     'form' : form,
#     'alluser' : alluser,
#     }


#     # output = ', '.join([q.kmz for q in picker])
#     return render(request,'admin/mapmanager/mapmanager.html',context)


# def index(request):
#     latest_question_list = Question.objects.order_by('-pub_date')[:5]
#     output = ', '.join([q.question_text for q in latest_question_list])
#     return HttpResponse(output)
