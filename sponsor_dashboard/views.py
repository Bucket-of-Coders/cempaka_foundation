from django.shortcuts import render

# Create your views here.
def dashboard(request):
    return render(request, 'sponsor_dashboard/templates/index2.html')