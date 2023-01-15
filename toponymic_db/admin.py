from django.contrib import admin

from .models import Language, SourceReferences, MotivationTypes, GeoTypes, \
    Maps, GeoSystems, MapsSystems, GeoObjects, GeoNames


class LanguageAdmin(admin.ModelAdmin):
    list_display = ('language_iso', 'language_name_ru', 'language_name_en')
    list_filter = ['language_iso', 'language_name_ru', 'language_name_en' ]
    search_fields = ['language_iso', 'language_name_ru', 'language_name_en']


class SourceReferencesAdmin(admin.ModelAdmin):
    list_display = ('source_full_description',)
    search_fields = ['source_full_description']


class MotivationTypesAdmin(admin.ModelAdmin):
    list_display = ('motivation_short_name_ru', 'motivation_short_name_en',
                    'motivation_comment_ru', 'motivation_comment_en')
    search_fields = ['motivation_short_name_ru', 'motivation_short_name_en',
                    'motivation_comment_ru', 'motivation_comment_en']

class GeoTypesAdmin(admin.ModelAdmin):
    list_display = ('geotype_ru', 'geotype_en',
                    'geotype_description_ru', 'geotype_description_en')
    search_fields = ['geotype_ru', 'geotype_en',
                    'geotype_description_ru', 'geotype_description_en']


class MapsAdmin(admin.ModelAdmin):
    list_display = ('area_name_ru', 'area_name_en',)
    search_fields = ['area_name_ru', 'area_name_en']


class GeoSystemsAdmin(admin.ModelAdmin):
    list_display = ('geo_system_ru', 'geo_system_en',)
    search_fields = ['geo_system_ru', 'geo_system_en']


class MapsSystemsAdmin(admin.ModelAdmin):
    list_display = ('map_id', 'geo_system_id',)
    search_fields = ['map_id', 'geo_system_id',]


class GeoObjectsAdmin(admin.ModelAdmin):
    list_display = ('latitude', 'longitude', 'osm_id', 'geotype_id', 'map_id', )
    search_fields = ['latitude', 'longitude', 'osm_id', 'geotype_id', 'map_id', ]

class GeoNamesAdmin(admin.ModelAdmin):
    list_display = ('geoname', 'name_translation_ru', 'name_translation_en', 'motivation_comment',
                    'linguistic_means', 'language_id', 'geoobject_id', 'source_id', 'motivation_id' )
    search_fields = ['geoname', 'name_translation_ru', 'name_translation_en', 'motivation_comment',
                    'linguistic_means', 'language_id', 'geoobject_id', 'source_id', 'motivation_id' ]

admin.site.register(Language, LanguageAdmin)
admin.site.register(SourceReferences, SourceReferencesAdmin)
admin.site.register(MotivationTypes, MotivationTypesAdmin)
admin.site.register(GeoTypes, GeoTypesAdmin)
admin.site.register(Maps, MapsAdmin)
admin.site.register(GeoSystems, GeoSystemsAdmin)
admin.site.register(MapsSystems, MapsSystemsAdmin)
admin.site.register(GeoObjects, GeoObjectsAdmin)
admin.site.register(GeoNames, GeoNamesAdmin)