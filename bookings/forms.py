from django.forms import ModelForm
from .models import Flights_details

class Flight_detailsForm(ModelForm):
    class Meta:
        model = Flights_details
        fields = '__all__'
