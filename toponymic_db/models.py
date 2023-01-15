from django.db import models


class Language(models.Model):
    language_id = models.AutoField(primary_key=True, null=False)
    language_iso = models.CharField(max_length=3, unique=True, null=False)
    language_name_ru = models.CharField(max_length=100, unique=True, null=False)
    language_name_en = models.CharField(max_length=100, unique=True, null=False)

    def __str__(self):
        return self.language_iso


class SourceReferences(models.Model):
    source_id = models.AutoField(primary_key=True, null=False)
    source_full_description = models.CharField(max_length=100, null=False)

    def __str__(self):
        return self.source_full_description


class MotivationTypes(models.Model):
    motivation_id = models.AutoField(primary_key=True)
    motivation_short_name_ru = models.CharField(max_length=100, unique=True, null=False)
    motivation_short_name_en = models.CharField(max_length=100, unique=True, null=False)
    motivation_comment_ru = models.CharField(max_length=1000, unique=True, null=False)
    motivation_comment_en = models.CharField(max_length=1000, unique=True, null=False)

    def __str__(self):
        return self.motivation_short_name_en


class GeoTypes(models.Model):
    geotype_id = models.AutoField(primary_key=True)
    geotype_ru = models.CharField(max_length=100, unique=True, null=False)
    geotype_en = models.CharField(max_length=100, unique=True, null=False)
    geotype_description_ru = models.CharField(max_length=1000, unique=True, null=False)
    geotype_description_en = models.CharField(max_length=1000, unique=True, null=False)

    def __str__(self):
        return self.geotype_description_en

class Maps(models.Model):
    map_id = models.AutoField(primary_key=True)
    area_name_ru =  models.CharField(max_length=200, unique=True, null=False)
    area_name_en =  models.CharField(max_length=200, unique=True, null=False)

    def __str__(self):
        return self.area_name_en

class GeoSystems(models.Model):
    geo_system_id = models.AutoField(primary_key=True)
    geo_system_ru = models.CharField(max_length=200, unique=True, null=False)
    geo_system_en = models.CharField(max_length=200, unique=True, null=False)

    def __str__(self):
        return self.geo_system_en

class MapsSystems(models.Model):
    map_id = models.ForeignKey(Maps, on_delete=models.SET_NULL, null=True, blank=True, unique=False)
    geo_system_id = models.ForeignKey(GeoSystems, on_delete=models.SET_NULL, null=True, blank=True, unique=False)

    def __str__(self):
        return self.map_id.area_name_en + ':' + self.geo_system_id.geo_system_en

class GeoObjects(models.Model):
    geoobject_id = models.AutoField(primary_key=True)
    latitude = models.DecimalField(unique=False, max_digits=9, decimal_places=6, null=False)
    longitude = models.DecimalField(unique=False, max_digits=9, decimal_places=6, null=False)
    osm_id = models.IntegerField(primary_key=False, unique=False)
    geotype_id = models.ForeignKey(GeoTypes, on_delete=models.SET_NULL, null=True, blank=True)
    map_id = models.ForeignKey(Maps, on_delete=models.SET_NULL, null=True, blank=True)
    is_duplicate = models.IntegerField(null=True, blank=True)

    def __str__(self):
        return str(self.latitude) + ':' + str(self.longitude)


class GeoNames(models.Model):
    geoname_id = models.AutoField(primary_key=True)
    geoname = models.CharField(max_length=200, unique=False, null=False)
    name_translation_ru = models.CharField(max_length=200, unique=False, null=True, blank=True)
    name_translation_en = models.CharField(max_length=200, unique=False, null=True, blank=True)
    motivation_comment = models.CharField(max_length=1000, unique=False, null=True, blank=True)
    linguistic_means = models.CharField(max_length=1000, unique=False, null=True, blank=True)
    language_id = models.ForeignKey(Language, on_delete=models.SET_NULL, null=True, blank=True)
    geoobject_id = models.ForeignKey(GeoObjects, on_delete=models.SET_NULL, null=True, blank=True)
    source_id = models.ForeignKey(SourceReferences, on_delete=models.SET_NULL, null=True, blank=True)
    motivation_id = models.ForeignKey(MotivationTypes, on_delete=models.SET_NULL, null=True, blank=True)

    def __str__(self):
        return self.geoname



