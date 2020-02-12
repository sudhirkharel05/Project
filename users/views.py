from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib import messages
from django.contrib.auth.models import User, auth
from django.contrib.auth.decorators import login_required


def index(request):
    return render(request,'html/boot.html')

def contact(request):
    return render(request,'html/contact.html')


def place(request):
    return render(request,'html/places.html')

@login_required(login_url='/users/login/')
def booking(request):
    return render(request, 'html/booking.html')

# Create your views here.

def login(request):
    if request.method =='POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)

        if user is not None:
            auth.login(request, user)
            return redirect('booking')
        else:
            messages.info(request,'invalid credentials')
            return redirect('login')
    else:
        return render(request, 'html/login.html')
def register(request):
    if request.method == 'POST':
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        email = request.POST['email']
        if password1==password2:
            if User.objects.filter(email=email).exists():
                messages.info(request,'Email already registered')
                return redirect('register')
            elif User.objects.filter(username=username).exists():
                messages.info(request,'Username already registered')
                return redirect('register')
            else:
                user = User.objects.create_user(username=username, email= email, password=password1, first_name=first_name, last_name=last_name)
                user.save()
                messages.info(request,'Congratulations!!!, You have successfully been registered.')
                return redirect('login')
        else:
            messages.info(request,'Password is not matching')
            return redirect('register')
        return redirect('register')

    else:
         return render(request, 'html/register.html')

def logout(request):
    auth.logout(request)
    return redirect('login')