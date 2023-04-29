from django.template import loader
from django.shortcuts import render
from django.http import HttpResponse


def index(request):
    return render(request, "polls/index.html")

def start(request):
	return render(request, "polls/index.html")
