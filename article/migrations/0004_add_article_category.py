# Generated by Django 2.2 on 2021-05-01 17:51

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('article', '0003_add_article_banner'),
    ]

    operations = [
        migrations.AddField(
            model_name='add_article',
            name='category',
            field=models.CharField(max_length=255, null=True),
        ),
    ]
