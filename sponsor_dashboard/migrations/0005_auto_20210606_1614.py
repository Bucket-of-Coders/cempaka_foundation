# Generated by Django 2.2 on 2021-06-06 09:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('sponsor_dashboard', '0004_auto_20210606_1525'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user_sponsor',
            name='sponsor_logo',
            field=models.ImageField(blank=True, default='staff_photos/default.png', null=True, upload_to='sponsor_logo'),
        ),
    ]
