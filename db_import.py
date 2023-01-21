import psycopg2

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'geoterms',
        'USER': 'postgres',
        'PASSWORD': 'password',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}

INSERT_GEOOBJECT = "INSERT INTO public.toponymic_db_geoobjects" \
                   "(latitude, longitude, osm_id, geotype_id_id, map_id_id, is_duplicate, date_added, is_coordinates_approximate, location_comment, editor_id_id)" \
                   "VALUES" \
                   "(%(latitude)s, %(longitude)s, -1, %(geotype_id)s, %(map_id)s, 0, CURRENT_TIMESTAMP," \
                   " %(is_coordinates_approximate)s, %(location_comment)s, 6) RETURNING GEOOBJECT_ID"

INSERT_GEONAME = "INSERT INTO public.toponymic_db_geonames" \
                 "(geoname, name_translation_ru, name_translation_en, linguistic_means, geoobject_id_id, language_id_id, " \
                 "motivation_id_id, source_id_id, map_id_id, number_on_map)" \
                 "VALUES(%(geoname)s, %(name_translation_ru)s, %(name_translation_en)s, %(linguistic_means)s, " \
                 "%(geoobject_id_id)s, %(language_id)s, " \
                 "NULL, 2, %(map_id)s, %(number_on_map)s) RETURNING GEONAME_ID"

CHECK_EXISTS_QUERY = "SELECT * FROM public.toponymic_db_geonames tdg WHERE map_id_id = %(map_id)s AND number_on_map = %(number_on_map)s"


def import_file_into_db(filename, map_id):
    connection = None
    cursor = None
    try:
        connection = psycopg2.connect(user=DATABASES['default']['USER'],
                                      password=DATABASES['default']['PASSWORD'],
                                      host=DATABASES['default']['HOST'],
                                      port=DATABASES['default']['PORT'],
                                      database=DATABASES['default']['NAME'])
        cursor = connection.cursor()
        import_file(filename, map_id, cursor)
        connection.commit()
    finally:
        if cursor:
            cursor.close()
        if connection:
            connection.close()


def import_file(filename, map_id, cursor):
    with open(filename, 'r', encoding='utf-8') as fin:
        for line in fin:
            import_line(line.strip(), map_id, cursor)


def import_line(line, map_id, cursor):
    line_parts = line.split('\t')
    geoname_map_number = line_parts[0].strip()
    geoname = line_parts[1].strip()
    geoname_transliteration = line_parts[2].strip()
    geoname_translation_ru = line_parts[3].strip()
    geoname_translation_en = line_parts[4].strip()
    linguistic_means = line_parts[5].strip()
    if linguistic_means == '':
        linguistic_means = None
    geoname_type_id = convert_geotype_to_id(line_parts[6].strip())
    print(geoname)
    geoname_language_id = convert_language_to_id(line_parts[8].strip())
    geoname_official = line_parts[12].strip()

    if line_parts[13] == '':
        latitude = 0
        longitude = 0
        is_precise = 0
    else:
        latitude = float(line_parts[13])
        longitude = float(line_parts[14])
        try:
            is_precise = int(line_parts[15])
        except Exception as e:
            print("!!!"+geoname)
            raise e
    if is_already_existing(map_id, geoname_map_number, cursor):
        print('already existing: ' + str(map_id) + ':' + geoname_map_number)
        return
    if is_precise == 1:
        is_coordinates_approximate = False
    else:
        is_coordinates_approximate = True
    geoobject_id = insert_geoobject(geoname, latitude, longitude, geoname_type_id, map_id, is_coordinates_approximate,
                                    cursor)
    geoname_id = insert_geoname(geoname, geoname_translation_ru, geoname_translation_en, linguistic_means, geoobject_id,
                   geoname_language_id, map_id, geoname_map_number, cursor)


def is_already_existing(map_id, geoname_map_number, cursor):
    select_parameters = {'map_id': map_id,
                         'number_on_map': geoname_map_number}
    cursor.execute(CHECK_EXISTS_QUERY, select_parameters)
    result = cursor.fetchone()
    if result:
        return True
    return False


def insert_geoobject(geoname, latitude, longitude, geotype_id, map_id, is_coordinates_approximate, cursor):
    insert_parameters = {'latitude': latitude, 'longitude': longitude,
                         'geotype_id': geotype_id, 'map_id': map_id,
                         'is_coordinates_approximate': is_coordinates_approximate,
                         'location_comment': geoname}

    return perform_insert(cursor, INSERT_GEOOBJECT, insert_parameters)


def insert_geoname(geoname, geoname_translation_ru, geoname_translation_en, linguistic_means, geoobject_id,
                   geoname_language_id, map_id,  number_on_map, cursor):
    insert_parameters = {'geoname': geoname,
                         'name_translation_ru': geoname_translation_ru,
                         'name_translation_en': geoname_translation_en, 'map_id': map_id,
                         'geoobject_id_id': geoobject_id,
                        'linguistic_means': linguistic_means,
                         'language_id': geoname_language_id,
                         'map_id': map_id,
                         'number_on_map': number_on_map
                         }
    return perform_insert(cursor, INSERT_GEONAME, insert_parameters)


def perform_insert(cursor, insert_query, insert_parameters):
    cursor.execute(insert_query, insert_parameters)
    return cursor.fetchone()[0]


def convert_geotype_to_id(geotype):
    if geotype.lower() == '':
        return 8
    if geotype.lower() == 'река':
        return 1
    if geotype.lower() == 'гора':
        return 2
    if geotype.lower() == 'поселение':
        return 3
    if geotype.lower() == 'settlement':
        return 3
    if geotype.lower() == 'священное место':
        return 4
    if geotype.lower() == 'песчаная коса':
        return 5
    if geotype.lower() == 'коса':
        return 5
    if geotype.lower() == 'мыс':
        return 6
    if geotype.lower() == 'залив':
        return 7
    if geotype.lower() == 'озеро':
        return 9
    if geotype.lower() == 'возвышенность':
        return 10
    if geotype.lower() == 'сопка':
        return 11
    if geotype.lower() == 'распадок':
        return 12
    if geotype.lower() == 'море':
        return 13
    if geotype.lower() == 'остров':
        return 14
    if geotype.lower() == 'экотоп':
        return 15
    if geotype.lower() == 'горный перевал':
        return 16
    if geotype.lower() == 'пещера':
        return 17
    if geotype.lower() == 'болотистая местность':
        return 18
    if geotype.lower().startswith('лес'):
        return 19
    raise Exception('Unknown geotype:' + geotype)


def convert_language_to_id(language):
    if language.lower() == '':
        return 5
    if language.lower().startswith('эвенк'):
        return 1
    if language.lower().startswith('якут'):
        return 2
    if language.lower().startswith('рус'):
        return 3
    raise Exception('Unknown language:' + language)


import_file_into_db('c://Users/user/Maps/map42.txt', 42)
