# Generated by Django 2.2 on 2021-05-01 08:14

import ckeditor_uploader.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Login_page',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('body', ckeditor_uploader.fields.RichTextUploadingField()),
                ('name', models.CharField(default='Edit Landing Page', max_length=20)),
            ],
            options={
                'verbose_name_plural': 'Landing Page',
            },
        ),
    ]
