from django.urls import path
from users import views

urlpatterns=[
    path('login/', views.login, name= 'login' ),
    path('register/', views.register, name='register'),
    path('contact/', views.contact, name='contact'),
    path('logout/', views.logout, name='logout'),
     path('place/', views.place, name='place'),

]