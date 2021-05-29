# Generated by Django 2.2 on 2021-05-25 20:20

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('landingpage', '0012_auto_20210526_0308'),
    ]

    operations = [
        migrations.AddField(
            model_name='management_team',
            name='staff_social_facebook',
            field=models.URLField(blank=True, default='#', max_length=1000),
        ),
        migrations.AddField(
            model_name='management_team',
            name='staff_social_instagram',
            field=models.URLField(blank=True, default='#', max_length=1000),
        ),
        migrations.AddField(
            model_name='management_team',
            name='staff_social_linkedin',
            field=models.URLField(blank=True, default='#', max_length=1000),
        ),
        migrations.AddField(
            model_name='management_team',
            name='staff_social_twitter',
            field=models.URLField(blank=True, default='#', max_length=1000),
        ),
    ]