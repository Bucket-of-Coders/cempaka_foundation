# Generated by Django 2.2 on 2021-04-10 08:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('landingpage', '0007_sponsor_logo'),
    ]

    operations = [
        migrations.RenameField(
            model_name='sponsor_logo',
            old_name='organization_image',
            new_name='organization_logo',
        ),
    ]
