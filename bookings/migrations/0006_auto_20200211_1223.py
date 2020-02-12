# Generated by Django 3.0.2 on 2020-02-11 06:38

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('bookings', '0005_booking_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='booking',
            name='user',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='booking',
            name='date',
            field=models.DateTimeField(default=datetime.datetime(2020, 2, 11, 12, 22, 23, 625297), verbose_name='date published'),
        ),
    ]