# Generated by Django 2.2 on 2021-04-21 13:45

import ckeditor_uploader.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Program_activity',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('slug', models.SlugField(unique=True, verbose_name='URL')),
                ('image', models.ImageField(null=True, upload_to='uploads/on_going', verbose_name='Foto')),
                ('title', models.CharField(max_length=200, null=True, verbose_name='Judul')),
                ('description', ckeditor_uploader.fields.RichTextUploadingField(blank=True, null=True, verbose_name='Artikel')),
                ('date_posted', models.DateTimeField(auto_now=True)),
                ('category', models.CharField(choices=[('On Going', 'Single'), ('Latest Project', 'Married')], max_length=20, verbose_name='Kategori')),
            ],
            options={
                'verbose_name_plural': 'On Going',
            },
        ),
    ]
