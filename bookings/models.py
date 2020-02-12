from django.db import models
from django.urls import reverse
from datetime import datetime
from django.contrib.auth.models import User

# Create your models here.
class Flights_details(models.Model):
    flight_id = models.AutoField(auto_created=True,primary_key=True)
    name = models.CharField(max_length=200)
    aircraft_model = models.CharField(max_length=20)
    departure = models.TimeField()
    arrivals = models.TimeField()
    date = models.DateField()
    seats = models.IntegerField()
    duration = models.TimeField()
    source = models.CharField(max_length=200)
    fare = models.IntegerField()
    destination = models.CharField(max_length=200)

    def __str__(self):
        return self.name
class Passanger(models.Model):
    passanger_id = models.AutoField(auto_created=True, primary_key=True)
    passanger_name = models.CharField(max_length=250)
    passport_number = models.IntegerField()

    def __str__(self):
        return self.passanger_name

class Booking(models.Model):
    ticket_id = models.AutoField(auto_created=True, primary_key=True)
    seat_number = models.CharField(max_length=3)
    flight_id = models.ForeignKey(Flights_details,on_delete=models.CASCADE)
    amount = models.IntegerField()
    status = models.CharField(max_length=20)
    passanger_id = models.ForeignKey(Passanger, on_delete=models.CASCADE)
    date = models.DateTimeField("date published", default=datetime.now())
    user = models.ForeignKey(User, on_delete=models.CASCADE)