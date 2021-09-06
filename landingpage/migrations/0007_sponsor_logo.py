# Generated by Django 2.2 on 2021-04-10 08:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('landingpage', '0006_auto_20210410_1456'),
    ]

    operations = [
        migrations.CreateModel(
            name='Sponsor_logo',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('organization_name', models.CharField(max_length=255)),
                ('organization_image', models.ImageField(upload_to='sponsor_logo')),
                ('post', models.ForeignKey(default='', on_delete=django.db.models.deletion.CASCADE, to='landingpage.Landing_page')),
            ],
        ),
    ]