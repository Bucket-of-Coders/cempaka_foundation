# Generated by Django 2.2 on 2021-04-10 07:41

import ckeditor.fields
from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('landingpage', '0004_landing_page_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='landing_page',
            name='history',
            field=ckeditor.fields.RichTextField(),
        ),
        migrations.AlterField(
            model_name='landing_page',
            name='strategy_and_program',
            field=ckeditor.fields.RichTextField(),
        ),
        migrations.AlterField(
            model_name='landing_page',
            name='visi_misi_and_core_value',
            field=ckeditor.fields.RichTextField(),
        ),
    ]
