# Generated by Django 2.2 on 2021-04-10 08:41

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('landingpage', '0008_auto_20210410_1531'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Sponsor_logo',
            new_name='Sponsor',
        ),
        migrations.AlterModelOptions(
            name='sponsor',
            options={'verbose_name_plural': 'Sponsor Logo'},
        ),
    ]
