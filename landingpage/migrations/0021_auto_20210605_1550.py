# Generated by Django 2.2 on 2021-06-05 08:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('landingpage', '0020_question_answer_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='landing_page',
            name='bank_account_owner',
            field=models.CharField(default='', max_length=255),
        ),
        migrations.AddField(
            model_name='landing_page',
            name='bank_name',
            field=models.CharField(default='', max_length=50),
        ),
        migrations.AddField(
            model_name='landing_page',
            name='no_rek',
            field=models.IntegerField(default=1),
        ),
    ]
