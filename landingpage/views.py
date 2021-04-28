from django.shortcuts import render, get_object_or_404, redirect
from django.views.decorators.csrf import csrf_protect
from django.core.mail import EmailMultiAlternatives
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

@csrf_protect
def send_email(request):

	## get data from html form
	name = request.POST.get('name')
	email = request.POST.get('email')
	subject = request.POST.get('subject')
	body = request.POST.get('message')
	current_path = request.POST.get('current') ## current path for redirect

	##sending to
	fromEmail1 = 'bucketofcoders@bucketofcoders.com'
	to = [
		'bucketofcoders@bucketofcoders.com',
		'mochamadiqbal@bucketofcoders.com',
		'void341@gmail.com'
	]

	bodyMsg = 'Message From Visitors\n' + 'Name : ' + name + '\nEmail : ' + email + '\nMessage : ' + body

	msgSend = EmailMultiAlternatives(subject, bodyMsg, fromEmail1, to)
	msgSend.send()

	# to2 = [email]
	# with open('/var/www/gamebook/gamebook_art/email.html', encoding='utf8') as t:
	# 	text = t.read()
	# msg2 = EmailMultiAlternatives('Thank You', '', fromEmail1, to2)
	# msg2.attach_alternative(text, 'text/html')
	# msg2.send()

	# end of send to client
	return redirect('/#contact')