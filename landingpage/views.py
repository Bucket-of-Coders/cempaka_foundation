from string import Template

import article
from django.shortcuts import render, get_object_or_404, redirect
from django.views.decorators.csrf import csrf_protect
from django.core.mail import EmailMultiAlternatives
from django.db.models import Q
from . import models
from article.models import Add_article

#landing page views
def landingpage(request):
	landing_page_text = get_object_or_404(models.Landing_page)
	sponsor_logos = models.Sponsor.objects.filter(post=landing_page_text)
	user_review = models.User_review.objects.filter(post=landing_page_text)
	management_team = models.Management_team.objects.filter(post=landing_page_text)

	##Articles
	articles_highlight = Add_article.objects.all().order_by("-time").first()
	articles = Add_article.objects.all().exclude(id=articles_highlight.id).order_by("?")


	## FAQ
	faq_model = models.Question_answer.objects.all().order_by('-date')


	context = {
		'LP': landing_page_text,
		'sponsor_logos': sponsor_logos,
		'review': user_review,
		'team':management_team,
		'faq_categories': faq_model,
		'question_answer': faq_model,
		'articles' : articles,
		'articles_highlight':articles_highlight
	}

	return render(request, 'landingpage/templates/landingpage/landing_page.html', context)

@csrf_protect
def send_email(request):
	from django.contrib import messages

	## get data from html form
	name = request.POST.get('name')
	email = request.POST.get('email')
	subject = request.POST.get('subject')
	body = request.POST.get('message')
	if name == '' and email == '' and subject == '' and body == '':
		messages.warning(request, "Please fill all form that needed!")
		return redirect('/#contact')
	else:
		messages.success(request, "Your message has been sent. Thank you!")

	##sending to
	sender = 'info@cempakafoundation.org'

	#send to user
	with open('landingpage/email.html', encoding='utf8') as f:
		receiver = [email]
		text = Template(f.read())

		msgSend = EmailMultiAlternatives(subject, '', sender, receiver)
		msgSend.attach_alternative(text.substitute(), 'text/html')
		msgSend.send()

	#send to cempaka
	with open('landingpage/email_info.html', encoding='utf8') as f:
		receiver = ['info@cempakafoundation.org']
		text = Template(f.read())
		text = text.substitute(
			froms=email,
			message=body
		)

		msgSend = EmailMultiAlternatives(subject, '', sender, receiver)
		msgSend.attach_alternative(text, 'text/html')
		msgSend.send()

	# end of send to client
	return redirect('/#contact')
