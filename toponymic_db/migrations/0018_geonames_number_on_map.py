# Generated by Django 4.1.5 on 2023-01-21 12:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('toponymic_db', '0017_maps_image_link'),
    ]

    operations = [
        migrations.AddField(
            model_name='geonames',
            name='number_on_map',
            field=models.CharField(blank=True, max_length=10, null=True),
        ),
    ]
