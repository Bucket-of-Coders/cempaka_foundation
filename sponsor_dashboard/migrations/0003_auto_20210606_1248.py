# Generated by Django 2.2 on 2021-06-06 05:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sponsor_dashboard', '0002_auto_20210603_2207'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user_sponsor',
            name='sponsor_logo',
            field=models.ImageField(blank=True, null=True, upload_to='sponsor_logo'),
        ),
    ]
