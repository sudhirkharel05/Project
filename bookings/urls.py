from django.urls import path
from . import views
#setting up the URL Path
urlpatterns = [
    path('', views.booking, name='booking'),
    path('wat', views.wat, name='wat'),
    path('books', views.books, name='books'),
    path('update/<str:pk>/', views.update, name ='update'),
    path('delete/<str:pk>/', views.delete, name ='delete'),
    path('search', views.flight_detail_view, name='flight_detail_view'),
    path('book/<int:pk>/<int:fare>', views.book, name='book'),
    path('show', views.show, name='show'),
    path('profile/', views.profile, name='profile'),
    path('updatebooking/<str:pk>/', views.updatebooking, name="updatebooking"),
    path('deletebooking/<str:pk>/', views.deletebooking, name="deletebooking"),
    
]