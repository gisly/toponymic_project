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


class Persons(models.Model):
    person_id = models.AutoField(primary_key=True, null=False)
    first_name = models.TextField(null=False, blank=False)
    patronymic = models.TextField(null=True, blank=True)
    last_name = models.TextField(null=False, blank=False)
    comment = models.TextField(null=True, blank=True)

    def __str__(self):
        full_name = str(self.first_name)
        if self.patronymic:
            full_name += ' ' + str(self.patronymic)
        full_name += ' ' + str(self.last_name)
        return full_name


class Maps(models.Model):
    map_id = models.AutoField(primary_key=True)
    area_name_ru = models.CharField(max_length=500, unique=True, null=False)
    area_name_en = models.CharField(max_length=500, unique=True, null=False)
    author_id = models.ForeignKey(Persons, on_delete=models.SET_NULL, null=True, blank=True, related_name='%(class)s_author')
    collector_id = models.ForeignKey(Persons, on_delete=models.SET_NULL, null=True, blank=True, related_name='%(class)s_collector')
    date_collected = models.DateField(null=True, blank=True)
    place_collected = models.TextField(null=True, blank=True)
    image_link = models.URLField(null=True, blank=True)
    map_latitude = models.DecimalField(unique=False, max_digits=9, decimal_places=6, null=True, blank=True)
    map_longitude = models.DecimalField(unique=False, max_digits=9, decimal_places=6, null=True, blank=True)

    comment_collected_ru = models.TextField(null=True, blank=True)
    comment_collected_en = models.TextField(null=True, blank=True)

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
    editor_id = models.ForeignKey(Persons, on_delete=models.SET_NULL, null=True, blank=True)
    is_duplicate = models.IntegerField(null=True, blank=True)
    is_coordinates_approximate = models.BooleanField(null=False, blank=False, default=False)
    date_added = models.DateTimeField(null=True, blank=True)
    location_comment = models.TextField(null=True, blank=True)

    def __str__(self):
        description = str(self.latitude) + ':' + str(self.longitude)
        if self.location_comment:
            description += ' ' + self.location_comment
        return description


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
    map_id = models.ForeignKey(Maps, on_delete=models.SET_NULL, null=True, blank=True)
    number_on_map = models.CharField(max_length=10, unique=False, null=True, blank=True)

    def __str__(self):
        return self.geoname


class GeoNarrations(models.Model):
    geonarration_id = models.AutoField(primary_key=True, null=False)
    geoobject_id = models.ForeignKey(GeoObjects, on_delete=models.CASCADE, null=False, blank=False)
    narrator_id = models.ForeignKey(Persons, on_delete=models.CASCADE, null=False, blank=False)
    text_original = models.TextField(null=False, blank=False)

    def __str__(self):
        return self.text_original


class GeoNarrationTranslations(models.Model):
    geonarration_translation_id = models.AutoField(primary_key=True, null=False)
    language_id = models.ForeignKey(Language, on_delete=models.CASCADE, null=False, blank=False)
    text_translation = models.TextField(null=False, blank=False)

    def __str__(self):
        return self.text_translation

