# Generated by Django 2.2 on 2021-05-08 09:40

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('article', '0004_add_article_category'),
    ]

    operations = [
        migrations.AddField(
            model_name='add_article',
            name='meta_description',
            field=models.CharField(default='', max_length=255),
        ),
    ]
