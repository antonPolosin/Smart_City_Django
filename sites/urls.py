from django.conf.urls import include, url
from . import views



urlpatterns = [

    # /sites/

    url(r'^$', views.index, name='index'),
    url(r'^restaurants/$', views.restaurants, name='restaurants'),
    url(r'^universities/$', views.universities, name='universities'),
    url(r'^museums/$', views.museums, name='museums'),
    url(r'^parks/$', views.parks, name='parks'),
    url(r'^libraries/$', views.libraries, name='libraries'),
    url(r'^malls/$', views.malls, name='malls'),
    url(r'^hotels/$', views.hotels, name='hotels'),
    url(r'^industries/$', views.industries, name='industries'),
    url(r'^zoos/$', views.zoos, name='zoos'),
	url(r'^registration/$', views.registration, name ='registration'),
    url(r'^map/$', views.map, name='map'),
    # /helloworld/






]
