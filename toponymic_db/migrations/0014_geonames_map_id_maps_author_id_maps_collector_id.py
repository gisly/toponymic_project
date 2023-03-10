# Generated by Django 4.1.5 on 2023-01-21 08:11

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('toponymic_db', '0013_editors_persons_geoobjects_date_added_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='geonames',
            name='map_id',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='toponymic_db.maps'),
        ),
        migrations.AddField(
            model_name='maps',
            name='author_id',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='%(class)s_author', to='toponymic_db.persons'),
        ),
        migrations.AddField(
            model_name='maps',
            name='collector_id',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='%(class)s_collector', to='toponymic_db.persons'),
        ),
    ]
