# Generated by Django 2.2 on 2021-04-28 13:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('program_activity', '0002_auto_20210428_1242'),
    ]

    operations = [
        migrations.AddField(
            model_name='program_activity',
            name='image',
            field=models.ImageField(null=True, upload_to='uploads/on_going', verbose_name='Foto'),
        ),
    ]
