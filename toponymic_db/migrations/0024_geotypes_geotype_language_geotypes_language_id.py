# Generated by Django 4.1.7 on 2023-03-20 01:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('toponymic_db', '0023_maps_is_archive'),
    ]

    operations = [
        migrations.AddField(
            model_name='geotypes',
            name='geotype_language',
            field=models.CharField(max_length=100, null=True, unique=True),
        ),
        migrations.AddField(
            model_name='geotypes',
            name='language_id',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='%(class)s_id', to='toponymic_db.language'),
        ),
    ]
