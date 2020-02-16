from django.forms import ModelForm
from .models import Flights_details, Booking
#making of the Model forms
class Flight_detailsForm(ModelForm):
    class Meta:
        model = Flights_details
        fields = '__all__'
class BookingForm(ModelForm):
    class Meta:
        model = Booking
        fields = '__all__'
