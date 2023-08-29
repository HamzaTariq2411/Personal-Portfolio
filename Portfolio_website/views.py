from django.http import HttpResponse, HttpResponseRedirect
from portfolio.models import Home , Services, About, Skills, Portfolio, Contact_me, Social_links
from django.shortcuts import render

def homepage(request):
    home = Home.objects.all()
    services = Services.objects.all()
    about = About.objects.all()
    skills = Skills.objects.all()
    portfolio=Portfolio.objects.all()
    contact_me=Contact_me.objects.all()
    social_links=Social_links.objects.all()
    context ={
        'home': home,
        'services':services,
        'about': about,
        'skills': skills,
        'portfolio':portfolio,
        'contact_me':contact_me,
        'social_links':social_links,
    }
    return render(request, "index.html",context)