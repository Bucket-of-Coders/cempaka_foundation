# Generated by Django 2.2 on 2021-06-02 11:43

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='User_sponsor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('sponsor_name', models.CharField(default='', max_length=255)),
                ('sponsor_logo', models.ImageField(upload_to='sponsor_logo')),
                ('sponsor_user', models.OneToOneField(default='', on_delete=django.db.models.deletion.CASCADE, related_name='sponsorUser', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Sponsor_galery',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateField(default=datetime.date(2020, 10, 18))),
                ('images', models.ImageField(upload_to='<django.db.models.query_utils.DeferredAttribute object at 0x000001B7847E4820>_image')),
                ('post', models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='sponsor_dashboard.User_sponsor')),
            ],
        ),
    ]