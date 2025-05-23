from django.shortcuts import render
from django.http import HttpResponse

# Create your views here.

def index(request):
    my_dict = { 'insert_me': "Hi, this is the index page template!"}
    return render(request,'sec_app/index.html',context=my_dict)

def help(request):
    my_dict = { 'insert_me': "Hi, this is the help page!"}
    return render(request,'sec_app/help.html',context=my_dict)