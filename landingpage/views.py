from django.shortcuts import render, get_object_or_404
from . import models

#landing page views
def landingpage(request):
	landing_page_text = get_object_or_404(models.Landing_page)
	sponsor_logos = models.Sponsor.objects.filter(post=landing_page_text)
	context = {
		'LP': landing_page_text,
		'sponsor_logos': sponsor_logos
	}
	return render(request, 'landingpage/templates/landingpage/landing_page.html', context)