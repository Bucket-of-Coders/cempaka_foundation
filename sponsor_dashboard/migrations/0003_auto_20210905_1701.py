# Generated by Django 2.2 on 2021-09-05 10:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sponsor_dashboard', '0002_auto_20210905_1700'),
    ]

    operations = [
        migrations.RenameField(
            model_name='user_sponsor',
            old_name='sponsor_user',
            new_name='sponsor_user_id',
        ),
    ]
