# Generated by Django 4.1.5 on 2023-01-21 08:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('toponymic_db', '0014_geonames_map_id_maps_author_id_maps_collector_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='persons',
            name='patronymic',
            field=models.TextField(blank=True, null=True),
        ),
    ]