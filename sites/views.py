from django.http import HttpResponse
from django.template import loader, RequestContext
from .models import Member
from django.shortcuts import render


def index(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('sites/index.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))

def restaurants(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('sites/restaurants.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))

def universities(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('sites/universities.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))

def museums(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('sites/museums.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))

def parks(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('sites/parks.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))


def libraries(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('sites/libraries.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))


def malls(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('sites/malls.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))

def hotels(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('sites/hotels.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))

def industries(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('sites/industries.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))

def zoos(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('sites/zoos.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))

def registration(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('registration/registration.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))

def map(request):
    all_restaurants = Member.objects.all()
    template = loader.get_template('sites/fullmap.html')
    context = {
        'all_restaurants' : all_restaurants,
    }
    return HttpResponse(template.render(context, request))
# logout user from the session
