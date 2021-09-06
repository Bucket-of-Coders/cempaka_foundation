# Generated by Django 2.2 on 2021-09-05 08:25

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Posisipohon',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('urlmap', models.URLField(default='', max_length=500)),
                ('relations', models.OneToOneField(default='', on_delete=django.db.models.deletion.CASCADE, related_name='urlrelasi', to=settings.AUTH_USER_MODEL)),
            ],
            options={
                'verbose_name_plural': 'Map Manager',
            },
        ),
    ]