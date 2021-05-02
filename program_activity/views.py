from django.shortcuts import render, redirect
from django.conf import settings
from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.utils import timezone
import datetime
from .models import Program_activity
# from .forms import NewFormNews, EditFormNews, NewFormPublication, EditFormPublication

def list_program_activity(request):
	program_activity = Program_activity.objects.all().order_by('-date_posted')
	page = request.GET.get('page', 1)
	paginator = Paginator(program_activity, 6)  # 6 posts in each page
	try:
		program_activity_list = paginator.page(page)
	except PageNotAnInteger:
			# If page is not an integer deliver the first page
		program_activity_list = paginator.page(1)
	except EmptyPage:
			# If page is out of range deliver last page of results
		program_activity_list = paginator.page(paginator.num_pages)
	return render(request, 'program_activity/templates/program_activity/list.html',{'program_activity_list': program_activity_list})

def detail_program_activity(request, slug):
	detail = Program_activity.objects.get(slug=slug)
	return render(request, 'program_activity/templates/program_activity/details.html', {'detail': detail})
