from django.shortcuts import render,redirect
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from .models import Flights_details, Booking, Passanger
from django.contrib.auth.decorators import user_passes_test
from .forms import Flight_detailsForm, BookingForm
from django.http import JsonResponse
from django.contrib import messages
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

# Creating the views.
@user_passes_test(lambda u: u.is_superuser) #allows access to only super users
def wat(request):
    flight_details_list = Flights_details.objects.order_by('date')
    booking_list = Booking.objects.all()
    paginator = Paginator(flight_details_list, 2)#making the pagination in the webpage
    page = request.GET.get('page')
    try:
        flight_details_list = paginator.page(page)
    except PageNotAnInteger:
        flight_details_list = paginator.page(1)
    except EmptyPage:
        flight_details_list = paginator.page(paginator.num_pages)
    paginator1 = Paginator(booking_list, 2)
    page = request.GET.get('page1')
    try:
        booking_list = paginator1.page(page)
    except PageNotAnInteger:
        booking_list = paginator1.page(1)
    except EmptyPage:
        booking_list = paginator1.page(paginator1.num_pages)
    if request.method == 'POST':
        flight = Flights_details()
        flight.name = request.POST['name']
        flight.aircraft_model = request.POST['model']
        flight.source = request.POST['source']
        flight.destination = request.POST['destination']
        flight.duration = request.POST['duration']  
        flight.date = request.POST['date']
        flight.arrivals = request.POST['arrivals']
        flight.departure = request.POST['departure']
        flight.seats = request.POST['seats']
        flight.fare = request.POST['fare']
        flight.save()
        return redirect('wat')
    
    return render(request,'html/watman.html', {'flight_details_list': flight_details_list, 'access_records': booking_list})

@login_required(login_url='/users/login/') #enables booking tab after login only
def booking(request):
    return render(request, 'html/booking.html')

def update(request, pk):   #updating the flight details 
    flight = Flights_details.objects.get(flight_id=pk)
    form = Flight_detailsForm(instance=flight)
    if request.method=='POST':
        form =Flight_detailsForm(request.POST, instance=flight)
        if form.is_valid:
            form.save()
            return redirect('wat')

    context ={'form':form}
    return render(request, 'html/flightadd.html', context)

def delete(request, pk): #deleting the flight Details
    flight = Flights_details.objects.get(flight_id=pk)
    if request.method == 'POST':
        flight.delete()
        return redirect('wat')
    context={'item':flight}
    return render(request, 'html/delete.html', context)

def flight_detail_view(request):   #retreiving the value from Flight_details 
    qs = Flights_details.objects.all()
    title_destination_query = request.GET['destination']
    title_source_query = request.GET['origin']
    title_date_query = request.GET['date']
    if title_destination_query != '' and title_destination_query is not None:
        qs = Flights_details.objects.filter(destination__icontains = title_destination_query)
        print(qs)
    elif title_source_query != '' and title_source_query is not None:
        qs = Flights_details.objects.filter(source__icontains = title_source_query)
    elif title_date_query != '' and title_date_query is not None:
        qs = Flights_details.objects.filter(date__icontains = title_date_query)
    context ={
        'queryset':qs
    }
    return render(request, "html/booking.html", context)

def book(request, pk, fare):   # for booking the flights
    id = int(pk)
    cost = fare
    booked_list = Booking.objects.all()
    passanger = Passanger.objects.all()
    if request.method == 'POST':
        booking = Booking()
        clients = Passanger()
        clients.passanger_name = request.POST['passanger_name']
        print(request.POST['passport'])
        clients.passport_number = request.POST['passport']
        clients.save()
        client = Passanger.objects.get(passanger_name = request.POST['passanger_name'], passport_number = request.POST['passport'])
        try:
            print(pk)
            print(request.POST['seat'])
            Booking.objects.get(seat_number = request.POST['seat'], flight_id = pk)
            messages.info(request,'seat already booked')
            return redirect('booking')
        except Booking.DoesNotExist:
            booking.seat_number = request.POST['seat']
            booking.amount = cost
            booking.flight_id = Flights_details.objects.get(flight_id = pk)
            booking.passanger_id = client
            booking.user = request.user
            booking.status = "CONFIRMED"
            booking.save()
            return render(request,'html/bookingconfirmed.html')
            
def show(request):               #searching the flights details
    if request.method =='POST':
        flight_detail = Flights_details.objects.filter(destination__icontains = request.POST['searchTerm']).values()
        print(request.POST['searchTerm'])
        return JsonResponse(list(flight_detail), safe=False)

def confirmed(request):
    return render(request,'html/bookingconfirmed.html')

def books(request):
    booking_list = Booking.objects.all()
    paginator = Paginator(booking_list, 2)
    page = request.GET.get('page')
    try:
        booking_list = paginator.page(page)
    except PageNotAnInteger:
        booking_list = paginator.page(1)
    except EmptyPage:
        booking_list = paginator.page(paginator.num_pages)
    return render(request,'html/watman.html', {'access_records': booking_list})

def profile(request):
    user_booking = Booking.objects.filter(user = request.user)
    return render(request, 'html/profile.html', {'user_bookings': user_booking})
def updatebooking(request, pk):   #updating the booking
    book = Booking.objects.get(ticket_id=pk)
    form = BookingForm(instance=book)
    if request.method=='POST':
        form =BookingForm(request.POST, instance=book)
        if form.is_valid:
            form.save()
            return redirect('wat')

    context ={'form':form}
    return render(request, 'html/update.html', context)

def deletebooking(request, pk):
    book = Booking.objects.get(ticket_id=pk)
    if request.method == 'POST':
        book.delete()
        return redirect('wat')
    context={'item':book}
    return render(request, 'html/deletebooking.html', context)

      
