# Generated by Django 2.2 on 2021-09-05 06:31

import django.contrib.auth.models
from django.db import migrations
import django.db.models.manager


class Migration(migrations.Migration):

    dependencies = [
        ('login', '0008_remove_users_profile_image'),
    ]

    operations = [
        migrations.AlterModelManagers(
            name='users',
            managers=[
                ('object', django.db.models.manager.Manager()),
                ('objects', django.contrib.auth.models.UserManager()),
            ],
        ),
    ]
