# Generated by Django 2.2 on 2021-06-04 20:12

import ckeditor.fields
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('landingpage', '0016_auto_20210526_0335'),
    ]

    operations = [
        migrations.CreateModel(
            name='FAQ',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('categories', models.CharField(default='', max_length=255)),
            ],
        ),
        migrations.CreateModel(
            name='Question_answer',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('question', models.CharField(default='', max_length=100)),
                ('answer', ckeditor.fields.RichTextField()),
                ('post', models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='landingpage.FAQ')),
            ],
            options={
                'verbose_name_plural': 'Question & Answer',
            },
        ),
    ]
