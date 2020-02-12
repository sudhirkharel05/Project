# Generated by Django 3.0.2 on 2020-01-29 04:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('bookings', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Flights',
            fields=[
                ('flight_id', models.AutoField(auto_created=True, primary_key=True, serialize=False)),
                ('name', models.CharField(max_length=200)),
                ('aircraft_model', models.CharField(max_length=20)),
                ('departure', models.TimeField()),
                ('arrivals', models.TimeField()),
                ('date', models.DateField()),
                ('seats', models.IntegerField()),
                ('duration', models.TimeField()),
                ('source', models.CharField(max_length=200)),
                ('destination', models.CharField(max_length=200)),
            ],
        ),
        migrations.DeleteModel(
            name='demo',
        ),
    ]