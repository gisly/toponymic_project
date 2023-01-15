PGDMP     -                    x            geoterms    9.6.3    9.6.3 g   }
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ~
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            
           1262    25507    geoterms    DATABASE     �   CREATE DATABASE geoterms WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE geoterms;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    25508    ab_permission    TABLE     b   CREATE TABLE ab_permission (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
 !   DROP TABLE public.ab_permission;
       public         app    false    3            �            1259    25511    ab_permission_id_seq    SEQUENCE     v   CREATE SEQUENCE ab_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ab_permission_id_seq;
       public       app    false    3            �            1259    25513    ab_permission_view    TABLE     r   CREATE TABLE ab_permission_view (
    id integer NOT NULL,
    permission_id integer,
    view_menu_id integer
);
 &   DROP TABLE public.ab_permission_view;
       public         app    false    3            �            1259    25516    ab_permission_view_id_seq    SEQUENCE     {   CREATE SEQUENCE ab_permission_view_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.ab_permission_view_id_seq;
       public       app    false    3            �            1259    25518    ab_permission_view_role    TABLE     w   CREATE TABLE ab_permission_view_role (
    id integer NOT NULL,
    permission_view_id integer,
    role_id integer
);
 +   DROP TABLE public.ab_permission_view_role;
       public         app    false    3            �            1259    25521    ab_permission_view_role_id_seq    SEQUENCE     �   CREATE SEQUENCE ab_permission_view_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ab_permission_view_role_id_seq;
       public       app    false    3            �            1259    25523    ab_register_user    TABLE     u  CREATE TABLE ab_register_user (
    id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    username character varying(64) NOT NULL,
    password character varying(256),
    email character varying(64) NOT NULL,
    registration_date timestamp without time zone,
    registration_hash character varying(256)
);
 $   DROP TABLE public.ab_register_user;
       public         app    false    3            �            1259    25529    ab_register_user_id_seq    SEQUENCE     y   CREATE SEQUENCE ab_register_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.ab_register_user_id_seq;
       public       app    false    3            �            1259    25531    ab_role    TABLE     [   CREATE TABLE ab_role (
    id integer NOT NULL,
    name character varying(64) NOT NULL
);
    DROP TABLE public.ab_role;
       public         app    false    3            �            1259    25534    ab_role_id_seq    SEQUENCE     p   CREATE SEQUENCE ab_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ab_role_id_seq;
       public       app    false    3            �            1259    25536    ab_user    TABLE       CREATE TABLE ab_user (
    id integer NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    username character varying(64) NOT NULL,
    password character varying(256),
    active boolean,
    email character varying(64) NOT NULL,
    last_login timestamp without time zone,
    login_count integer,
    fail_login_count integer,
    created_on timestamp without time zone,
    changed_on timestamp without time zone,
    changed_by_fk integer,
    created_by_fk integer
);
    DROP TABLE public.ab_user;
       public         app    false    3            �            1259    25542    ab_user_id_seq    SEQUENCE     p   CREATE SEQUENCE ab_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.ab_user_id_seq;
       public       app    false    3            �            1259    25544    ab_user_role    TABLE     a   CREATE TABLE ab_user_role (
    id integer NOT NULL,
    user_id integer,
    role_id integer
);
     DROP TABLE public.ab_user_role;
       public         app    false    3            �            1259    25547    ab_user_role_id_seq    SEQUENCE     u   CREATE SEQUENCE ab_user_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ab_user_role_id_seq;
       public       app    false    3            �            1259    25549    ab_view_menu    TABLE     a   CREATE TABLE ab_view_menu (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
     DROP TABLE public.ab_view_menu;
       public         app    false    3            �            1259    25552    ab_view_menu_id_seq    SEQUENCE     u   CREATE SEQUENCE ab_view_menu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.ab_view_menu_id_seq;
       public       app    false    3            �            1259    25831 
   auth_group    TABLE     _   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    25829    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    230            �
           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    229            �            1259    25841    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    25839    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    232    3            �
           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    231            �            1259    25823    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    25821    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    228    3            �
           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    227            �            1259    25849 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    3            �            1259    25859    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    25857    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    3    236            �
           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    235            �            1259    25847    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    234    3            �
           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    233            �            1259    25867    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    25865 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    238            �
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    237            �            1259    25927    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    3            �            1259    25925    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    240    3            �
           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    239            �            1259    25813    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    25811    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    226    3            �
           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    225            �            1259    25802    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    25800    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    224    3            �
           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    223            �            1259    25958    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    25554 	   geo_names    TABLE     �  CREATE TABLE geo_names (
    geoname_id integer NOT NULL,
    geoname character varying(200) NOT NULL,
    name_translation_ru character varying(200) NOT NULL,
    name_translation_en character varying(200) NOT NULL,
    motivation_comment character varying(1000),
    linguistic_means character varying(1000),
    language_id integer NOT NULL,
    geoobject_id integer NOT NULL,
    source_id integer NOT NULL,
    motivation_id integer NOT NULL
);
    DROP TABLE public.geo_names;
       public         app    false    3            �            1259    25560    geo_names_geoname_id_seq    SEQUENCE     z   CREATE SEQUENCE geo_names_geoname_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.geo_names_geoname_id_seq;
       public       app    false    201    3            �
           0    0    geo_names_geoname_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE geo_names_geoname_id_seq OWNED BY geo_names.geoname_id;
            public       app    false    202            �            1259    25562    geo_objects    TABLE     �   CREATE TABLE geo_objects (
    geoobject_id integer NOT NULL,
    latitude numeric NOT NULL,
    longitude numeric NOT NULL,
    osm_id integer NOT NULL,
    geotype_id integer NOT NULL,
    map_id integer,
    is_duplicate numeric(1,0) DEFAULT 0
);
    DROP TABLE public.geo_objects;
       public         app    false    3            �            1259    25569    geo_objects_geoobject_id_seq    SEQUENCE     ~   CREATE SEQUENCE geo_objects_geoobject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.geo_objects_geoobject_id_seq;
       public       app    false    203    3            �
           0    0    geo_objects_geoobject_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE geo_objects_geoobject_id_seq OWNED BY geo_objects.geoobject_id;
            public       app    false    204            �            1259    25571    geo_systems    TABLE     �   CREATE TABLE geo_systems (
    geo_system_id integer NOT NULL,
    geo_system_ru character varying(100) NOT NULL,
    geo_system_en character varying(100) NOT NULL
);
    DROP TABLE public.geo_systems;
       public         app    false    3            �            1259    25574 	   geo_types    TABLE       CREATE TABLE geo_types (
    geotype_id integer NOT NULL,
    geotype_ru character varying(100) NOT NULL,
    geotype_en character varying(100) NOT NULL,
    geotype_description_ru character varying(1000) NOT NULL,
    geotype_description_en character varying(1000) NOT NULL
);
    DROP TABLE public.geo_types;
       public         app    false    3            �            1259    25580    geo_types_geotype_id_seq    SEQUENCE     z   CREATE SEQUENCE geo_types_geotype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.geo_types_geotype_id_seq;
       public       app    false    3    206            �
           0    0    geo_types_geotype_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE geo_types_geotype_id_seq OWNED BY geo_types.geotype_id;
            public       app    false    207            �            1259    25582 	   languages    TABLE     �   CREATE TABLE languages (
    language_id integer NOT NULL,
    language_iso character varying(100) NOT NULL,
    language_name_ru character varying(100) NOT NULL,
    language_name_en character varying(100) NOT NULL
);
    DROP TABLE public.languages;
       public         app    false    3            �            1259    25585    languages_language_id_seq    SEQUENCE     {   CREATE SEQUENCE languages_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.languages_language_id_seq;
       public       app    false    208    3            �
           0    0    languages_language_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE languages_language_id_seq OWNED BY languages.language_id;
            public       app    false    209            �            1259    25587    linguistic_means    TABLE     �   CREATE TABLE linguistic_means (
    id integer NOT NULL,
    description character varying NOT NULL,
    lingustic_type integer NOT NULL
);
 $   DROP TABLE public.linguistic_means;
       public         app    false    3            �            1259    25593    lingustic_means_id_seq    SEQUENCE     x   CREATE SEQUENCE lingustic_means_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.lingustic_means_id_seq;
       public       app    false    210    3            �
           0    0    lingustic_means_id_seq    SEQUENCE OWNED BY     D   ALTER SEQUENCE lingustic_means_id_seq OWNED BY linguistic_means.id;
            public       app    false    211            �            1259    25595    map_systems_map_system_id_seq    SEQUENCE        CREATE SEQUENCE map_systems_map_system_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.map_systems_map_system_id_seq;
       public       app    false    3    205            �
           0    0    map_systems_map_system_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE map_systems_map_system_id_seq OWNED BY geo_systems.geo_system_id;
            public       app    false    212            �            1259    25597    maps    TABLE     �   CREATE TABLE maps (
    area_name_ru character varying(1000),
    map_id integer NOT NULL,
    area_name_en character varying(1000)
);
    DROP TABLE public.maps;
       public         app    false    3            �            1259    25603    maps_map_id_seq    SEQUENCE     q   CREATE SEQUENCE maps_map_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.maps_map_id_seq;
       public       app    false    213    3            �
           0    0    maps_map_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE maps_map_id_seq OWNED BY maps.map_id;
            public       app    false    214            �            1259    25605    maps_systems    TABLE     _   CREATE TABLE maps_systems (
    map_id integer NOT NULL,
    geo_system_id integer NOT NULL
);
     DROP TABLE public.maps_systems;
       public         app    false    3            �            1259    25608    means_types    TABLE     [   CREATE TABLE means_types (
    id integer NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.means_types;
       public         app    false    3            �            1259    25614    means_types_id_seq    SEQUENCE     t   CREATE SEQUENCE means_types_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.means_types_id_seq;
       public       app    false    3    216            �
           0    0    means_types_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE means_types_id_seq OWNED BY means_types.id;
            public       app    false    217            �            1259    25616    motivation_types    TABLE     :  CREATE TABLE motivation_types (
    motivation_id integer NOT NULL,
    motivation_short_name_ru character varying(100) NOT NULL,
    motivation_short_name_en character varying(100) NOT NULL,
    motivation_comment_ru character varying(1000) NOT NULL,
    motivation_comment_en character varying(1000) NOT NULL
);
 $   DROP TABLE public.motivation_types;
       public         app    false    3            �            1259    25622 "   motivation_types_motivation_id_seq    SEQUENCE     �   CREATE SEQUENCE motivation_types_motivation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.motivation_types_motivation_id_seq;
       public       app    false    3    218            �
           0    0 "   motivation_types_motivation_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE motivation_types_motivation_id_seq OWNED BY motivation_types.motivation_id;
            public       app    false    219            �            1259    25624    names_means    TABLE     h   CREATE TABLE names_means (
    geoname_id integer NOT NULL,
    linguistic_means_id integer NOT NULL
);
    DROP TABLE public.names_means;
       public         app    false    3            �            1259    25627    source_references    TABLE     �   CREATE TABLE source_references (
    source_id integer NOT NULL,
    source_full_description character varying(100) NOT NULL
);
 %   DROP TABLE public.source_references;
       public         app    false    3            �            1259    25630    source_references_source_id_seq    SEQUENCE     �   CREATE SEQUENCE source_references_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.source_references_source_id_seq;
       public       app    false    3    221            �
           0    0    source_references_source_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE source_references_source_id_seq OWNED BY source_references.source_id;
            public       app    false    222            �            1259    26070    toponymic_db_geonames    TABLE     �  CREATE TABLE toponymic_db_geonames (
    geoname_id integer NOT NULL,
    geoname character varying(200) NOT NULL,
    name_translation_ru character varying(200),
    name_translation_en character varying(200),
    motivation_comment character varying(1000),
    linguistic_means character varying(1000),
    geoobject_id_id integer,
    language_id_id integer,
    motivation_id_id integer,
    source_id_id integer
);
 )   DROP TABLE public.toponymic_db_geonames;
       public         postgres    false    3            �            1259    26162 $   toponymic_db_geonames_geoname_id_seq    SEQUENCE     �   CREATE SEQUENCE toponymic_db_geonames_geoname_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.toponymic_db_geonames_geoname_id_seq;
       public       postgres    false    248    3            �
           0    0 $   toponymic_db_geonames_geoname_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE toponymic_db_geonames_geoname_id_seq OWNED BY toponymic_db_geonames.geoname_id;
            public       postgres    false    253            �            1259    26039    toponymic_db_geoobjects    TABLE     �   CREATE TABLE toponymic_db_geoobjects (
    geoobject_id integer NOT NULL,
    latitude numeric(9,6) NOT NULL,
    longitude numeric(9,6) NOT NULL,
    osm_id integer NOT NULL,
    geotype_id_id integer,
    map_id_id integer,
    is_duplicate integer
);
 +   DROP TABLE public.toponymic_db_geoobjects;
       public         postgres    false    3            �            1259    26167 (   toponymic_db_geoobjects_geoobject_id_seq    SEQUENCE     �   CREATE SEQUENCE toponymic_db_geoobjects_geoobject_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.toponymic_db_geoobjects_geoobject_id_seq;
       public       postgres    false    3    246            �
           0    0 (   toponymic_db_geoobjects_geoobject_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE toponymic_db_geoobjects_geoobject_id_seq OWNED BY toponymic_db_geoobjects.geoobject_id;
            public       postgres    false    254            �            1259    26116    toponymic_db_geosystems    TABLE     �   CREATE TABLE toponymic_db_geosystems (
    geo_system_id integer NOT NULL,
    geo_system_ru character varying(200) NOT NULL,
    geo_system_en character varying(200) NOT NULL
);
 +   DROP TABLE public.toponymic_db_geosystems;
       public         postgres    false    3            �            1259    26178 )   toponymic_db_geosystems_geo_system_id_seq    SEQUENCE     �   CREATE SEQUENCE toponymic_db_geosystems_geo_system_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public.toponymic_db_geosystems_geo_system_id_seq;
       public       postgres    false    3    249            �
           0    0 )   toponymic_db_geosystems_geo_system_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE toponymic_db_geosystems_geo_system_id_seq OWNED BY toponymic_db_geosystems.geo_system_id;
            public       postgres    false    255            �            1259    25991    toponymic_db_geotypes    TABLE     "  CREATE TABLE toponymic_db_geotypes (
    geotype_id integer NOT NULL,
    geotype_ru character varying(100) NOT NULL,
    geotype_en character varying(100) NOT NULL,
    geotype_description_ru character varying(1000) NOT NULL,
    geotype_description_en character varying(1000) NOT NULL
);
 )   DROP TABLE public.toponymic_db_geotypes;
       public         postgres    false    3                        1259    26189 $   toponymic_db_geotypes_geotype_id_seq    SEQUENCE     �   CREATE SEQUENCE toponymic_db_geotypes_geotype_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.toponymic_db_geotypes_geotype_id_seq;
       public       postgres    false    242    3            �
           0    0 $   toponymic_db_geotypes_geotype_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE toponymic_db_geotypes_geotype_id_seq OWNED BY toponymic_db_geotypes.geotype_id;
            public       postgres    false    256            �            1259    26007    toponymic_db_language    TABLE     �   CREATE TABLE toponymic_db_language (
    language_id integer NOT NULL,
    language_iso character varying(3) NOT NULL,
    language_name_ru character varying(100) NOT NULL,
    language_name_en character varying(100) NOT NULL
);
 )   DROP TABLE public.toponymic_db_language;
       public         postgres    false    3            �            1259    26151 %   toponymic_db_language_language_id_seq    SEQUENCE     �   CREATE SEQUENCE toponymic_db_language_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.toponymic_db_language_language_id_seq;
       public       postgres    false    243    3            �
           0    0 %   toponymic_db_language_language_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE toponymic_db_language_language_id_seq OWNED BY toponymic_db_language.language_id;
            public       postgres    false    252            �            1259    26061    toponymic_db_maps    TABLE     �   CREATE TABLE toponymic_db_maps (
    map_id integer NOT NULL,
    area_name_ru character varying(200) NOT NULL,
    area_name_en character varying(200) NOT NULL
);
 %   DROP TABLE public.toponymic_db_maps;
       public         postgres    false    3                       1259    26200    toponymic_db_maps_map_id_seq    SEQUENCE     ~   CREATE SEQUENCE toponymic_db_maps_map_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.toponymic_db_maps_map_id_seq;
       public       postgres    false    247    3            �
           0    0    toponymic_db_maps_map_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE toponymic_db_maps_map_id_seq OWNED BY toponymic_db_maps.map_id;
            public       postgres    false    257            �            1259    26131    toponymic_db_mapssystems    TABLE     x   CREATE TABLE toponymic_db_mapssystems (
    id integer NOT NULL,
    geo_system_id_id integer,
    map_id_id integer
);
 ,   DROP TABLE public.toponymic_db_mapssystems;
       public         postgres    false    3            �            1259    26129    toponymic_db_mapssystems_id_seq    SEQUENCE     �   CREATE SEQUENCE toponymic_db_mapssystems_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.toponymic_db_mapssystems_id_seq;
       public       postgres    false    3    251            �
           0    0    toponymic_db_mapssystems_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE toponymic_db_mapssystems_id_seq OWNED BY toponymic_db_mapssystems.id;
            public       postgres    false    250            �            1259    26018    toponymic_db_motivationtypes    TABLE     F  CREATE TABLE toponymic_db_motivationtypes (
    motivation_id integer NOT NULL,
    motivation_short_name_ru character varying(100) NOT NULL,
    motivation_short_name_en character varying(100) NOT NULL,
    motivation_comment_ru character varying(1000) NOT NULL,
    motivation_comment_en character varying(1000) NOT NULL
);
 0   DROP TABLE public.toponymic_db_motivationtypes;
       public         postgres    false    3                       1259    26217 .   toponymic_db_motivationtypes_motivation_id_seq    SEQUENCE     �   CREATE SEQUENCE toponymic_db_motivationtypes_motivation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.toponymic_db_motivationtypes_motivation_id_seq;
       public       postgres    false    3    244            �
           0    0 .   toponymic_db_motivationtypes_motivation_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE toponymic_db_motivationtypes_motivation_id_seq OWNED BY toponymic_db_motivationtypes.motivation_id;
            public       postgres    false    258            �            1259    26034    toponymic_db_sourcereferences    TABLE     �   CREATE TABLE toponymic_db_sourcereferences (
    source_id integer NOT NULL,
    source_full_description character varying(100) NOT NULL
);
 1   DROP TABLE public.toponymic_db_sourcereferences;
       public         postgres    false    3                       1259    26228 +   toponymic_db_sourcereferences_source_id_seq    SEQUENCE     �   CREATE SEQUENCE toponymic_db_sourcereferences_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.toponymic_db_sourcereferences_source_id_seq;
       public       postgres    false    3    245            �
           0    0 +   toponymic_db_sourcereferences_source_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE toponymic_db_sourcereferences_source_id_seq OWNED BY toponymic_db_sourcereferences.source_id;
            public       postgres    false    259            �           2604    25834    auth_group id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    230    230            �           2604    25844    auth_group_permissions id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    232    232            �           2604    25826    auth_permission id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    228    228            �           2604    25852    auth_user id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    234    233    234            �           2604    25862    auth_user_groups id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    236    236            �           2604    25870    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    238    238            �           2604    25930    django_admin_log id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    239    240            �           2604    25816    django_content_type id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225    226            �           2604    25805    django_migrations id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223    224            �           2604    25632    geo_names geoname_id    DEFAULT     n   ALTER TABLE ONLY geo_names ALTER COLUMN geoname_id SET DEFAULT nextval('geo_names_geoname_id_seq'::regclass);
 C   ALTER TABLE public.geo_names ALTER COLUMN geoname_id DROP DEFAULT;
       public       app    false    202    201            �           2604    25633    geo_objects geoobject_id    DEFAULT     v   ALTER TABLE ONLY geo_objects ALTER COLUMN geoobject_id SET DEFAULT nextval('geo_objects_geoobject_id_seq'::regclass);
 G   ALTER TABLE public.geo_objects ALTER COLUMN geoobject_id DROP DEFAULT;
       public       app    false    204    203            �           2604    25634    geo_systems geo_system_id    DEFAULT     x   ALTER TABLE ONLY geo_systems ALTER COLUMN geo_system_id SET DEFAULT nextval('map_systems_map_system_id_seq'::regclass);
 H   ALTER TABLE public.geo_systems ALTER COLUMN geo_system_id DROP DEFAULT;
       public       app    false    212    205            �           2604    25635    geo_types geotype_id    DEFAULT     n   ALTER TABLE ONLY geo_types ALTER COLUMN geotype_id SET DEFAULT nextval('geo_types_geotype_id_seq'::regclass);
 C   ALTER TABLE public.geo_types ALTER COLUMN geotype_id DROP DEFAULT;
       public       app    false    207    206            �           2604    25636    languages language_id    DEFAULT     p   ALTER TABLE ONLY languages ALTER COLUMN language_id SET DEFAULT nextval('languages_language_id_seq'::regclass);
 D   ALTER TABLE public.languages ALTER COLUMN language_id DROP DEFAULT;
       public       app    false    209    208            �           2604    25637    linguistic_means id    DEFAULT     k   ALTER TABLE ONLY linguistic_means ALTER COLUMN id SET DEFAULT nextval('lingustic_means_id_seq'::regclass);
 B   ALTER TABLE public.linguistic_means ALTER COLUMN id DROP DEFAULT;
       public       app    false    211    210            �           2604    25638    maps map_id    DEFAULT     \   ALTER TABLE ONLY maps ALTER COLUMN map_id SET DEFAULT nextval('maps_map_id_seq'::regclass);
 :   ALTER TABLE public.maps ALTER COLUMN map_id DROP DEFAULT;
       public       app    false    214    213            �           2604    25639    means_types id    DEFAULT     b   ALTER TABLE ONLY means_types ALTER COLUMN id SET DEFAULT nextval('means_types_id_seq'::regclass);
 =   ALTER TABLE public.means_types ALTER COLUMN id DROP DEFAULT;
       public       app    false    217    216            �           2604    25640    motivation_types motivation_id    DEFAULT     �   ALTER TABLE ONLY motivation_types ALTER COLUMN motivation_id SET DEFAULT nextval('motivation_types_motivation_id_seq'::regclass);
 M   ALTER TABLE public.motivation_types ALTER COLUMN motivation_id DROP DEFAULT;
       public       app    false    219    218            �           2604    25641    source_references source_id    DEFAULT     |   ALTER TABLE ONLY source_references ALTER COLUMN source_id SET DEFAULT nextval('source_references_source_id_seq'::regclass);
 J   ALTER TABLE public.source_references ALTER COLUMN source_id DROP DEFAULT;
       public       app    false    222    221            �           2604    26164     toponymic_db_geonames geoname_id    DEFAULT     �   ALTER TABLE ONLY toponymic_db_geonames ALTER COLUMN geoname_id SET DEFAULT nextval('toponymic_db_geonames_geoname_id_seq'::regclass);
 O   ALTER TABLE public.toponymic_db_geonames ALTER COLUMN geoname_id DROP DEFAULT;
       public       postgres    false    253    248            �           2604    26169 $   toponymic_db_geoobjects geoobject_id    DEFAULT     �   ALTER TABLE ONLY toponymic_db_geoobjects ALTER COLUMN geoobject_id SET DEFAULT nextval('toponymic_db_geoobjects_geoobject_id_seq'::regclass);
 S   ALTER TABLE public.toponymic_db_geoobjects ALTER COLUMN geoobject_id DROP DEFAULT;
       public       postgres    false    254    246            �           2604    26180 %   toponymic_db_geosystems geo_system_id    DEFAULT     �   ALTER TABLE ONLY toponymic_db_geosystems ALTER COLUMN geo_system_id SET DEFAULT nextval('toponymic_db_geosystems_geo_system_id_seq'::regclass);
 T   ALTER TABLE public.toponymic_db_geosystems ALTER COLUMN geo_system_id DROP DEFAULT;
       public       postgres    false    255    249            �           2604    26191     toponymic_db_geotypes geotype_id    DEFAULT     �   ALTER TABLE ONLY toponymic_db_geotypes ALTER COLUMN geotype_id SET DEFAULT nextval('toponymic_db_geotypes_geotype_id_seq'::regclass);
 O   ALTER TABLE public.toponymic_db_geotypes ALTER COLUMN geotype_id DROP DEFAULT;
       public       postgres    false    256    242            �           2604    26153 !   toponymic_db_language language_id    DEFAULT     �   ALTER TABLE ONLY toponymic_db_language ALTER COLUMN language_id SET DEFAULT nextval('toponymic_db_language_language_id_seq'::regclass);
 P   ALTER TABLE public.toponymic_db_language ALTER COLUMN language_id DROP DEFAULT;
       public       postgres    false    252    243            �           2604    26202    toponymic_db_maps map_id    DEFAULT     v   ALTER TABLE ONLY toponymic_db_maps ALTER COLUMN map_id SET DEFAULT nextval('toponymic_db_maps_map_id_seq'::regclass);
 G   ALTER TABLE public.toponymic_db_maps ALTER COLUMN map_id DROP DEFAULT;
       public       postgres    false    257    247            �           2604    26134    toponymic_db_mapssystems id    DEFAULT     |   ALTER TABLE ONLY toponymic_db_mapssystems ALTER COLUMN id SET DEFAULT nextval('toponymic_db_mapssystems_id_seq'::regclass);
 J   ALTER TABLE public.toponymic_db_mapssystems ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    250    251    251            �           2604    26219 *   toponymic_db_motivationtypes motivation_id    DEFAULT     �   ALTER TABLE ONLY toponymic_db_motivationtypes ALTER COLUMN motivation_id SET DEFAULT nextval('toponymic_db_motivationtypes_motivation_id_seq'::regclass);
 Y   ALTER TABLE public.toponymic_db_motivationtypes ALTER COLUMN motivation_id DROP DEFAULT;
       public       postgres    false    258    244            �           2604    26230 '   toponymic_db_sourcereferences source_id    DEFAULT     �   ALTER TABLE ONLY toponymic_db_sourcereferences ALTER COLUMN source_id SET DEFAULT nextval('toponymic_db_sourcereferences_source_id_seq'::regclass);
 V   ALTER TABLE public.toponymic_db_sourcereferences ALTER COLUMN source_id DROP DEFAULT;
       public       postgres    false    259    245            0
          0    25508    ab_permission 
   TABLE DATA               *   COPY ab_permission (id, name) FROM stdin;
    public       app    false    185   ��      �
           0    0    ab_permission_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('ab_permission_id_seq', 15, true);
            public       app    false    186            2
          0    25513    ab_permission_view 
   TABLE DATA               F   COPY ab_permission_view (id, permission_id, view_menu_id) FROM stdin;
    public       app    false    187   ��      �
           0    0    ab_permission_view_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('ab_permission_view_id_seq', 82, true);
            public       app    false    188            4
          0    25518    ab_permission_view_role 
   TABLE DATA               K   COPY ab_permission_view_role (id, permission_view_id, role_id) FROM stdin;
    public       app    false    189   ��      �
           0    0    ab_permission_view_role_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('ab_permission_view_role_id_seq', 97, true);
            public       app    false    190            6
          0    25523    ab_register_user 
   TABLE DATA                  COPY ab_register_user (id, first_name, last_name, username, password, email, registration_date, registration_hash) FROM stdin;
    public       app    false    191   �      �
           0    0    ab_register_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('ab_register_user_id_seq', 1, false);
            public       app    false    192            8
          0    25531    ab_role 
   TABLE DATA               $   COPY ab_role (id, name) FROM stdin;
    public       app    false    193   ;�      �
           0    0    ab_role_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('ab_role_id_seq', 2, true);
            public       app    false    194            :
          0    25536    ab_user 
   TABLE DATA               �   COPY ab_user (id, first_name, last_name, username, password, active, email, last_login, login_count, fail_login_count, created_on, changed_on, changed_by_fk, created_by_fk) FROM stdin;
    public       app    false    195   i�      �
           0    0    ab_user_id_seq    SEQUENCE SET     5   SELECT pg_catalog.setval('ab_user_id_seq', 2, true);
            public       app    false    196            <
          0    25544    ab_user_role 
   TABLE DATA               5   COPY ab_user_role (id, user_id, role_id) FROM stdin;
    public       app    false    197   ��      �
           0    0    ab_user_role_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('ab_user_role_id_seq', 2, true);
            public       app    false    198            >
          0    25549    ab_view_menu 
   TABLE DATA               )   COPY ab_view_menu (id, name) FROM stdin;
    public       app    false    199   ��      �
           0    0    ab_view_menu_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('ab_view_menu_id_seq', 38, true);
            public       app    false    200            ]
          0    25831 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    230   6�      �
           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    229            _
          0    25841    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    232   S�      �
           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    231            [
          0    25823    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    228   p�      �
           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 60, true);
            public       postgres    false    227            a
          0    25849 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    234   ��      c
          0    25859    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    236   ��      �
           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    235            �
           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       postgres    false    233            e
          0    25867    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    238   ��      �
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    237            g
          0    25927    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    240   ��      �
           0    0    django_admin_log_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('django_admin_log_id_seq', 6, true);
            public       postgres    false    239            Y
          0    25813    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    226   >�      �
           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 17, true);
            public       postgres    false    225            W
          0    25802    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    224   
�      �
           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 20, true);
            public       postgres    false    223            h
          0    25958    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    241   ��      @
          0    25554 	   geo_names 
   TABLE DATA               �   COPY geo_names (geoname_id, geoname, name_translation_ru, name_translation_en, motivation_comment, linguistic_means, language_id, geoobject_id, source_id, motivation_id) FROM stdin;
    public       app    false    201   �      �
           0    0    geo_names_geoname_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('geo_names_geoname_id_seq', 1733, true);
            public       app    false    202            B
          0    25562    geo_objects 
   TABLE DATA               k   COPY geo_objects (geoobject_id, latitude, longitude, osm_id, geotype_id, map_id, is_duplicate) FROM stdin;
    public       app    false    203   `7      �
           0    0    geo_objects_geoobject_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('geo_objects_geoobject_id_seq', 1736, true);
            public       app    false    204            D
          0    25571    geo_systems 
   TABLE DATA               K   COPY geo_systems (geo_system_id, geo_system_ru, geo_system_en) FROM stdin;
    public       app    false    205   JR      E
          0    25574 	   geo_types 
   TABLE DATA               p   COPY geo_types (geotype_id, geotype_ru, geotype_en, geotype_description_ru, geotype_description_en) FROM stdin;
    public       app    false    206   �S      �
           0    0    geo_types_geotype_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('geo_types_geotype_id_seq', 1, false);
            public       app    false    207            G
          0    25582 	   languages 
   TABLE DATA               [   COPY languages (language_id, language_iso, language_name_ru, language_name_en) FROM stdin;
    public       app    false    208   %T      �
           0    0    languages_language_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('languages_language_id_seq', 1, false);
            public       app    false    209            I
          0    25587    linguistic_means 
   TABLE DATA               D   COPY linguistic_means (id, description, lingustic_type) FROM stdin;
    public       app    false    210   �T      �
           0    0    lingustic_means_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('lingustic_means_id_seq', 184, true);
            public       app    false    211            �
           0    0    map_systems_map_system_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('map_systems_map_system_id_seq', 13, true);
            public       app    false    212            L
          0    25597    maps 
   TABLE DATA               ;   COPY maps (area_name_ru, map_id, area_name_en) FROM stdin;
    public       app    false    213   �U      �
           0    0    maps_map_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('maps_map_id_seq', 74, true);
            public       app    false    214            N
          0    25605    maps_systems 
   TABLE DATA               6   COPY maps_systems (map_id, geo_system_id) FROM stdin;
    public       app    false    215   |Y      O
          0    25608    means_types 
   TABLE DATA               (   COPY means_types (id, name) FROM stdin;
    public       app    false    216   �Y      �
           0    0    means_types_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('means_types_id_seq', 1, true);
            public       app    false    217            Q
          0    25616    motivation_types 
   TABLE DATA               �   COPY motivation_types (motivation_id, motivation_short_name_ru, motivation_short_name_en, motivation_comment_ru, motivation_comment_en) FROM stdin;
    public       app    false    218   Z      �
           0    0 "   motivation_types_motivation_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('motivation_types_motivation_id_seq', 1, true);
            public       app    false    219            S
          0    25624    names_means 
   TABLE DATA               ?   COPY names_means (geoname_id, linguistic_means_id) FROM stdin;
    public       app    false    220   W\      T
          0    25627    source_references 
   TABLE DATA               H   COPY source_references (source_id, source_full_description) FROM stdin;
    public       app    false    221   �b      �
           0    0    source_references_source_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('source_references_source_id_seq', 1, false);
            public       app    false    222            o
          0    26070    toponymic_db_geonames 
   TABLE DATA               �   COPY toponymic_db_geonames (geoname_id, geoname, name_translation_ru, name_translation_en, motivation_comment, linguistic_means, geoobject_id_id, language_id_id, motivation_id_id, source_id_id) FROM stdin;
    public       postgres    false    248   �b      �
           0    0 $   toponymic_db_geonames_geoname_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('toponymic_db_geonames_geoname_id_seq', 1733, true);
            public       postgres    false    253            m
          0    26039    toponymic_db_geoobjects 
   TABLE DATA               }   COPY toponymic_db_geoobjects (geoobject_id, latitude, longitude, osm_id, geotype_id_id, map_id_id, is_duplicate) FROM stdin;
    public       postgres    false    246   ��      �
           0    0 (   toponymic_db_geoobjects_geoobject_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('toponymic_db_geoobjects_geoobject_id_seq', 1736, true);
            public       postgres    false    254            p
          0    26116    toponymic_db_geosystems 
   TABLE DATA               W   COPY toponymic_db_geosystems (geo_system_id, geo_system_ru, geo_system_en) FROM stdin;
    public       postgres    false    249   ��      �
           0    0 )   toponymic_db_geosystems_geo_system_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('toponymic_db_geosystems_geo_system_id_seq', 13, true);
            public       postgres    false    255            i
          0    25991    toponymic_db_geotypes 
   TABLE DATA               |   COPY toponymic_db_geotypes (geotype_id, geotype_ru, geotype_en, geotype_description_ru, geotype_description_en) FROM stdin;
    public       postgres    false    242   ��      �
           0    0 $   toponymic_db_geotypes_geotype_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('toponymic_db_geotypes_geotype_id_seq', 2, true);
            public       postgres    false    256            j
          0    26007    toponymic_db_language 
   TABLE DATA               g   COPY toponymic_db_language (language_id, language_iso, language_name_ru, language_name_en) FROM stdin;
    public       postgres    false    243   ��      �
           0    0 %   toponymic_db_language_language_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('toponymic_db_language_language_id_seq', 4, true);
            public       postgres    false    252            n
          0    26061    toponymic_db_maps 
   TABLE DATA               H   COPY toponymic_db_maps (map_id, area_name_ru, area_name_en) FROM stdin;
    public       postgres    false    247   t�      �
           0    0    toponymic_db_maps_map_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('toponymic_db_maps_map_id_seq', 30, true);
            public       postgres    false    257            r
          0    26131    toponymic_db_mapssystems 
   TABLE DATA               L   COPY toponymic_db_mapssystems (id, geo_system_id_id, map_id_id) FROM stdin;
    public       postgres    false    251   ��      �
           0    0    toponymic_db_mapssystems_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('toponymic_db_mapssystems_id_seq', 34, true);
            public       postgres    false    250            k
          0    26018    toponymic_db_motivationtypes 
   TABLE DATA               �   COPY toponymic_db_motivationtypes (motivation_id, motivation_short_name_ru, motivation_short_name_en, motivation_comment_ru, motivation_comment_en) FROM stdin;
    public       postgres    false    244   *�      �
           0    0 .   toponymic_db_motivationtypes_motivation_id_seq    SEQUENCE SET     V   SELECT pg_catalog.setval('toponymic_db_motivationtypes_motivation_id_seq', 22, true);
            public       postgres    false    258            l
          0    26034    toponymic_db_sourcereferences 
   TABLE DATA               T   COPY toponymic_db_sourcereferences (source_id, source_full_description) FROM stdin;
    public       postgres    false    245   o�      �
           0    0 +   toponymic_db_sourcereferences_source_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('toponymic_db_sourcereferences_source_id_seq', 1, true);
            public       postgres    false    259            �           2606    25643 $   ab_permission ab_permission_name_key 
   CONSTRAINT     X   ALTER TABLE ONLY ab_permission
    ADD CONSTRAINT ab_permission_name_key UNIQUE (name);
 N   ALTER TABLE ONLY public.ab_permission DROP CONSTRAINT ab_permission_name_key;
       public         app    false    185    185            �           2606    25645     ab_permission ab_permission_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY ab_permission
    ADD CONSTRAINT ab_permission_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.ab_permission DROP CONSTRAINT ab_permission_pkey;
       public         app    false    185    185            �           2606    25647 D   ab_permission_view ab_permission_view_permission_id_view_menu_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_view_menu_id_key UNIQUE (permission_id, view_menu_id);
 n   ALTER TABLE ONLY public.ab_permission_view DROP CONSTRAINT ab_permission_view_permission_id_view_menu_id_key;
       public         app    false    187    187    187            �           2606    25649 *   ab_permission_view ab_permission_view_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY ab_permission_view
    ADD CONSTRAINT ab_permission_view_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.ab_permission_view DROP CONSTRAINT ab_permission_view_pkey;
       public         app    false    187    187            �           2606    25651 N   ab_permission_view_role ab_permission_view_role_permission_view_id_role_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_role_id_key UNIQUE (permission_view_id, role_id);
 x   ALTER TABLE ONLY public.ab_permission_view_role DROP CONSTRAINT ab_permission_view_role_permission_view_id_role_id_key;
       public         app    false    189    189    189            �           2606    25653 4   ab_permission_view_role ab_permission_view_role_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.ab_permission_view_role DROP CONSTRAINT ab_permission_view_role_pkey;
       public         app    false    189    189            �           2606    25655 &   ab_register_user ab_register_user_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY ab_register_user
    ADD CONSTRAINT ab_register_user_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.ab_register_user DROP CONSTRAINT ab_register_user_pkey;
       public         app    false    191    191            �           2606    25657 .   ab_register_user ab_register_user_username_key 
   CONSTRAINT     f   ALTER TABLE ONLY ab_register_user
    ADD CONSTRAINT ab_register_user_username_key UNIQUE (username);
 X   ALTER TABLE ONLY public.ab_register_user DROP CONSTRAINT ab_register_user_username_key;
       public         app    false    191    191            �           2606    25659    ab_role ab_role_name_key 
   CONSTRAINT     L   ALTER TABLE ONLY ab_role
    ADD CONSTRAINT ab_role_name_key UNIQUE (name);
 B   ALTER TABLE ONLY public.ab_role DROP CONSTRAINT ab_role_name_key;
       public         app    false    193    193            �           2606    25661    ab_role ab_role_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY ab_role
    ADD CONSTRAINT ab_role_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ab_role DROP CONSTRAINT ab_role_pkey;
       public         app    false    193    193            �           2606    25663    ab_user ab_user_email_key 
   CONSTRAINT     N   ALTER TABLE ONLY ab_user
    ADD CONSTRAINT ab_user_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.ab_user DROP CONSTRAINT ab_user_email_key;
       public         app    false    195    195            �           2606    25665    ab_user ab_user_pkey 
   CONSTRAINT     K   ALTER TABLE ONLY ab_user
    ADD CONSTRAINT ab_user_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.ab_user DROP CONSTRAINT ab_user_pkey;
       public         app    false    195    195            �           2606    25667    ab_user_role ab_user_role_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY ab_user_role
    ADD CONSTRAINT ab_user_role_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ab_user_role DROP CONSTRAINT ab_user_role_pkey;
       public         app    false    197    197            �           2606    25669 -   ab_user_role ab_user_role_user_id_role_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_role_id_key UNIQUE (user_id, role_id);
 W   ALTER TABLE ONLY public.ab_user_role DROP CONSTRAINT ab_user_role_user_id_role_id_key;
       public         app    false    197    197    197            �           2606    25671    ab_user ab_user_username_key 
   CONSTRAINT     T   ALTER TABLE ONLY ab_user
    ADD CONSTRAINT ab_user_username_key UNIQUE (username);
 F   ALTER TABLE ONLY public.ab_user DROP CONSTRAINT ab_user_username_key;
       public         app    false    195    195            �           2606    25673 "   ab_view_menu ab_view_menu_name_key 
   CONSTRAINT     V   ALTER TABLE ONLY ab_view_menu
    ADD CONSTRAINT ab_view_menu_name_key UNIQUE (name);
 L   ALTER TABLE ONLY public.ab_view_menu DROP CONSTRAINT ab_view_menu_name_key;
       public         app    false    199    199            �           2606    25675    ab_view_menu ab_view_menu_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY ab_view_menu
    ADD CONSTRAINT ab_view_menu_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.ab_view_menu DROP CONSTRAINT ab_view_menu_pkey;
       public         app    false    199    199            0	           2606    25956    auth_group auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    230    230            5	           2606    25883 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    232    232    232            8	           2606    25846 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    232    232            2	           2606    25836    auth_group auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    230    230            +	           2606    25874 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    228    228    228            -	           2606    25828 $   auth_permission auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    228    228            @	           2606    25864 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    236    236            C	           2606    25898 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    236    236    236            :	           2606    25854    auth_user auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    234    234            F	           2606    25872 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    238    238            I	           2606    25912 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    238    238    238            =	           2606    25950     auth_user auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    234    234            L	           2606    25936 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    240    240            &	           2606    25820 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    226    226    226            (	           2606    25818 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    226    226            $	           2606    25810 (   django_migrations django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    224    224            P	           2606    25965 "   django_session django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    241    241             	           2606    25677    geo_names geo_names_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY geo_names
    ADD CONSTRAINT geo_names_pkey PRIMARY KEY (geoname_id);
 B   ALTER TABLE ONLY public.geo_names DROP CONSTRAINT geo_names_pkey;
       public         app    false    201    201            	           2606    25679    geo_objects geo_objects_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY geo_objects
    ADD CONSTRAINT geo_objects_pkey PRIMARY KEY (geoobject_id);
 F   ALTER TABLE ONLY public.geo_objects DROP CONSTRAINT geo_objects_pkey;
       public         app    false    203    203            	           2606    25681 "   geo_types geo_types_geotype_en_key 
   CONSTRAINT     \   ALTER TABLE ONLY geo_types
    ADD CONSTRAINT geo_types_geotype_en_key UNIQUE (geotype_en);
 L   ALTER TABLE ONLY public.geo_types DROP CONSTRAINT geo_types_geotype_en_key;
       public         app    false    206    206            	           2606    25683 "   geo_types geo_types_geotype_ru_key 
   CONSTRAINT     \   ALTER TABLE ONLY geo_types
    ADD CONSTRAINT geo_types_geotype_ru_key UNIQUE (geotype_ru);
 L   ALTER TABLE ONLY public.geo_types DROP CONSTRAINT geo_types_geotype_ru_key;
       public         app    false    206    206            
	           2606    25685    geo_types geo_types_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY geo_types
    ADD CONSTRAINT geo_types_pkey PRIMARY KEY (geotype_id);
 B   ALTER TABLE ONLY public.geo_types DROP CONSTRAINT geo_types_pkey;
       public         app    false    206    206            	           2606    25687 $   languages languages_language_iso_key 
   CONSTRAINT     `   ALTER TABLE ONLY languages
    ADD CONSTRAINT languages_language_iso_key UNIQUE (language_iso);
 N   ALTER TABLE ONLY public.languages DROP CONSTRAINT languages_language_iso_key;
       public         app    false    208    208            	           2606    25689 (   languages languages_language_name_en_key 
   CONSTRAINT     h   ALTER TABLE ONLY languages
    ADD CONSTRAINT languages_language_name_en_key UNIQUE (language_name_en);
 R   ALTER TABLE ONLY public.languages DROP CONSTRAINT languages_language_name_en_key;
       public         app    false    208    208            	           2606    25691 (   languages languages_language_name_ru_key 
   CONSTRAINT     h   ALTER TABLE ONLY languages
    ADD CONSTRAINT languages_language_name_ru_key UNIQUE (language_name_ru);
 R   ALTER TABLE ONLY public.languages DROP CONSTRAINT languages_language_name_ru_key;
       public         app    false    208    208            	           2606    25693    languages languages_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY languages
    ADD CONSTRAINT languages_pkey PRIMARY KEY (language_id);
 B   ALTER TABLE ONLY public.languages DROP CONSTRAINT languages_pkey;
       public         app    false    208    208            	           2606    25695    geo_systems map_systems_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY geo_systems
    ADD CONSTRAINT map_systems_pkey PRIMARY KEY (geo_system_id);
 F   ALTER TABLE ONLY public.geo_systems DROP CONSTRAINT map_systems_pkey;
       public         app    false    205    205            	           2606    25697    maps maps_pkey 
   CONSTRAINT     I   ALTER TABLE ONLY maps
    ADD CONSTRAINT maps_pkey PRIMARY KEY (map_id);
 8   ALTER TABLE ONLY public.maps DROP CONSTRAINT maps_pkey;
       public         app    false    213    213            	           2606    25699 >   motivation_types motivation_types_motivation_short_name_en_key 
   CONSTRAINT     �   ALTER TABLE ONLY motivation_types
    ADD CONSTRAINT motivation_types_motivation_short_name_en_key UNIQUE (motivation_short_name_en);
 h   ALTER TABLE ONLY public.motivation_types DROP CONSTRAINT motivation_types_motivation_short_name_en_key;
       public         app    false    218    218            	           2606    25701 >   motivation_types motivation_types_motivation_short_name_ru_key 
   CONSTRAINT     �   ALTER TABLE ONLY motivation_types
    ADD CONSTRAINT motivation_types_motivation_short_name_ru_key UNIQUE (motivation_short_name_ru);
 h   ALTER TABLE ONLY public.motivation_types DROP CONSTRAINT motivation_types_motivation_short_name_ru_key;
       public         app    false    218    218             	           2606    25703 &   motivation_types motivation_types_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY motivation_types
    ADD CONSTRAINT motivation_types_pkey PRIMARY KEY (motivation_id);
 P   ALTER TABLE ONLY public.motivation_types DROP CONSTRAINT motivation_types_pkey;
       public         app    false    218    218            	           2606    25705    linguistic_means pk_id 
   CONSTRAINT     M   ALTER TABLE ONLY linguistic_means
    ADD CONSTRAINT pk_id PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.linguistic_means DROP CONSTRAINT pk_id;
       public         app    false    210    210            	           2606    25707    maps_systems pk_maps_systems 
   CONSTRAINT     f   ALTER TABLE ONLY maps_systems
    ADD CONSTRAINT pk_maps_systems PRIMARY KEY (map_id, geo_system_id);
 F   ALTER TABLE ONLY public.maps_systems DROP CONSTRAINT pk_maps_systems;
       public         app    false    215    215    215            "	           2606    25709 (   source_references source_references_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY source_references
    ADD CONSTRAINT source_references_pkey PRIMARY KEY (source_id);
 R   ALTER TABLE ONLY public.source_references DROP CONSTRAINT source_references_pkey;
       public         app    false    221    221            �	           2606    26161 0   toponymic_db_geonames toponymic_db_geonames_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY toponymic_db_geonames
    ADD CONSTRAINT toponymic_db_geonames_pkey PRIMARY KEY (geoname_id);
 Z   ALTER TABLE ONLY public.toponymic_db_geonames DROP CONSTRAINT toponymic_db_geonames_pkey;
       public         postgres    false    248    248            ~	           2606    26166 4   toponymic_db_geoobjects toponymic_db_geoobjects_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY toponymic_db_geoobjects
    ADD CONSTRAINT toponymic_db_geoobjects_pkey PRIMARY KEY (geoobject_id);
 ^   ALTER TABLE ONLY public.toponymic_db_geoobjects DROP CONSTRAINT toponymic_db_geoobjects_pkey;
       public         postgres    false    246    246            �	           2606    26124 A   toponymic_db_geosystems toponymic_db_geosystems_geo_system_en_key 
   CONSTRAINT     ~   ALTER TABLE ONLY toponymic_db_geosystems
    ADD CONSTRAINT toponymic_db_geosystems_geo_system_en_key UNIQUE (geo_system_en);
 k   ALTER TABLE ONLY public.toponymic_db_geosystems DROP CONSTRAINT toponymic_db_geosystems_geo_system_en_key;
       public         postgres    false    249    249            �	           2606    26122 A   toponymic_db_geosystems toponymic_db_geosystems_geo_system_ru_key 
   CONSTRAINT     ~   ALTER TABLE ONLY toponymic_db_geosystems
    ADD CONSTRAINT toponymic_db_geosystems_geo_system_ru_key UNIQUE (geo_system_ru);
 k   ALTER TABLE ONLY public.toponymic_db_geosystems DROP CONSTRAINT toponymic_db_geosystems_geo_system_ru_key;
       public         postgres    false    249    249            �	           2606    26177 4   toponymic_db_geosystems toponymic_db_geosystems_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY toponymic_db_geosystems
    ADD CONSTRAINT toponymic_db_geosystems_pkey PRIMARY KEY (geo_system_id);
 ^   ALTER TABLE ONLY public.toponymic_db_geosystems DROP CONSTRAINT toponymic_db_geosystems_pkey;
       public         postgres    false    249    249            T	           2606    26006 F   toponymic_db_geotypes toponymic_db_geotypes_geotype_description_en_key 
   CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_geotypes
    ADD CONSTRAINT toponymic_db_geotypes_geotype_description_en_key UNIQUE (geotype_description_en);
 p   ALTER TABLE ONLY public.toponymic_db_geotypes DROP CONSTRAINT toponymic_db_geotypes_geotype_description_en_key;
       public         postgres    false    242    242            W	           2606    26004 F   toponymic_db_geotypes toponymic_db_geotypes_geotype_description_ru_key 
   CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_geotypes
    ADD CONSTRAINT toponymic_db_geotypes_geotype_description_ru_key UNIQUE (geotype_description_ru);
 p   ALTER TABLE ONLY public.toponymic_db_geotypes DROP CONSTRAINT toponymic_db_geotypes_geotype_description_ru_key;
       public         postgres    false    242    242            Z	           2606    26002 :   toponymic_db_geotypes toponymic_db_geotypes_geotype_en_key 
   CONSTRAINT     t   ALTER TABLE ONLY toponymic_db_geotypes
    ADD CONSTRAINT toponymic_db_geotypes_geotype_en_key UNIQUE (geotype_en);
 d   ALTER TABLE ONLY public.toponymic_db_geotypes DROP CONSTRAINT toponymic_db_geotypes_geotype_en_key;
       public         postgres    false    242    242            ]	           2606    26000 :   toponymic_db_geotypes toponymic_db_geotypes_geotype_ru_key 
   CONSTRAINT     t   ALTER TABLE ONLY toponymic_db_geotypes
    ADD CONSTRAINT toponymic_db_geotypes_geotype_ru_key UNIQUE (geotype_ru);
 d   ALTER TABLE ONLY public.toponymic_db_geotypes DROP CONSTRAINT toponymic_db_geotypes_geotype_ru_key;
       public         postgres    false    242    242            _	           2606    26188 0   toponymic_db_geotypes toponymic_db_geotypes_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY toponymic_db_geotypes
    ADD CONSTRAINT toponymic_db_geotypes_pkey PRIMARY KEY (geotype_id);
 Z   ALTER TABLE ONLY public.toponymic_db_geotypes DROP CONSTRAINT toponymic_db_geotypes_pkey;
       public         postgres    false    242    242            b	           2606    26013 <   toponymic_db_language toponymic_db_language_language_iso_key 
   CONSTRAINT     x   ALTER TABLE ONLY toponymic_db_language
    ADD CONSTRAINT toponymic_db_language_language_iso_key UNIQUE (language_iso);
 f   ALTER TABLE ONLY public.toponymic_db_language DROP CONSTRAINT toponymic_db_language_language_iso_key;
       public         postgres    false    243    243            e	           2606    26017 @   toponymic_db_language toponymic_db_language_language_name_en_key 
   CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_language
    ADD CONSTRAINT toponymic_db_language_language_name_en_key UNIQUE (language_name_en);
 j   ALTER TABLE ONLY public.toponymic_db_language DROP CONSTRAINT toponymic_db_language_language_name_en_key;
       public         postgres    false    243    243            h	           2606    26015 @   toponymic_db_language toponymic_db_language_language_name_ru_key 
   CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_language
    ADD CONSTRAINT toponymic_db_language_language_name_ru_key UNIQUE (language_name_ru);
 j   ALTER TABLE ONLY public.toponymic_db_language DROP CONSTRAINT toponymic_db_language_language_name_ru_key;
       public         postgres    false    243    243            j	           2606    26150 0   toponymic_db_language toponymic_db_language_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY toponymic_db_language
    ADD CONSTRAINT toponymic_db_language_pkey PRIMARY KEY (language_id);
 Z   ALTER TABLE ONLY public.toponymic_db_language DROP CONSTRAINT toponymic_db_language_pkey;
       public         postgres    false    243    243            �	           2606    26111 4   toponymic_db_maps toponymic_db_maps_area_name_en_key 
   CONSTRAINT     p   ALTER TABLE ONLY toponymic_db_maps
    ADD CONSTRAINT toponymic_db_maps_area_name_en_key UNIQUE (area_name_en);
 ^   ALTER TABLE ONLY public.toponymic_db_maps DROP CONSTRAINT toponymic_db_maps_area_name_en_key;
       public         postgres    false    247    247            �	           2606    26114 4   toponymic_db_maps toponymic_db_maps_area_name_ru_key 
   CONSTRAINT     p   ALTER TABLE ONLY toponymic_db_maps
    ADD CONSTRAINT toponymic_db_maps_area_name_ru_key UNIQUE (area_name_ru);
 ^   ALTER TABLE ONLY public.toponymic_db_maps DROP CONSTRAINT toponymic_db_maps_area_name_ru_key;
       public         postgres    false    247    247            �	           2606    26199 (   toponymic_db_maps toponymic_db_maps_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY toponymic_db_maps
    ADD CONSTRAINT toponymic_db_maps_pkey PRIMARY KEY (map_id);
 R   ALTER TABLE ONLY public.toponymic_db_maps DROP CONSTRAINT toponymic_db_maps_pkey;
       public         postgres    false    247    247            �	           2606    26136 6   toponymic_db_mapssystems toponymic_db_mapssystems_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY toponymic_db_mapssystems
    ADD CONSTRAINT toponymic_db_mapssystems_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.toponymic_db_mapssystems DROP CONSTRAINT toponymic_db_mapssystems_pkey;
       public         postgres    false    251    251            p	           2606    26033 S   toponymic_db_motivationtypes toponymic_db_motivationtypes_motivation_comment_en_key 
   CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_motivationtypes
    ADD CONSTRAINT toponymic_db_motivationtypes_motivation_comment_en_key UNIQUE (motivation_comment_en);
 }   ALTER TABLE ONLY public.toponymic_db_motivationtypes DROP CONSTRAINT toponymic_db_motivationtypes_motivation_comment_en_key;
       public         postgres    false    244    244            r	           2606    26031 S   toponymic_db_motivationtypes toponymic_db_motivationtypes_motivation_comment_ru_key 
   CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_motivationtypes
    ADD CONSTRAINT toponymic_db_motivationtypes_motivation_comment_ru_key UNIQUE (motivation_comment_ru);
 }   ALTER TABLE ONLY public.toponymic_db_motivationtypes DROP CONSTRAINT toponymic_db_motivationtypes_motivation_comment_ru_key;
       public         postgres    false    244    244            t	           2606    26029 V   toponymic_db_motivationtypes toponymic_db_motivationtypes_motivation_short_name_en_key 
   CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_motivationtypes
    ADD CONSTRAINT toponymic_db_motivationtypes_motivation_short_name_en_key UNIQUE (motivation_short_name_en);
 �   ALTER TABLE ONLY public.toponymic_db_motivationtypes DROP CONSTRAINT toponymic_db_motivationtypes_motivation_short_name_en_key;
       public         postgres    false    244    244            v	           2606    26027 V   toponymic_db_motivationtypes toponymic_db_motivationtypes_motivation_short_name_ru_key 
   CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_motivationtypes
    ADD CONSTRAINT toponymic_db_motivationtypes_motivation_short_name_ru_key UNIQUE (motivation_short_name_ru);
 �   ALTER TABLE ONLY public.toponymic_db_motivationtypes DROP CONSTRAINT toponymic_db_motivationtypes_motivation_short_name_ru_key;
       public         postgres    false    244    244            x	           2606    26216 >   toponymic_db_motivationtypes toponymic_db_motivationtypes_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_motivationtypes
    ADD CONSTRAINT toponymic_db_motivationtypes_pkey PRIMARY KEY (motivation_id);
 h   ALTER TABLE ONLY public.toponymic_db_motivationtypes DROP CONSTRAINT toponymic_db_motivationtypes_pkey;
       public         postgres    false    244    244            z	           2606    26227 @   toponymic_db_sourcereferences toponymic_db_sourcereferences_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY toponymic_db_sourcereferences
    ADD CONSTRAINT toponymic_db_sourcereferences_pkey PRIMARY KEY (source_id);
 j   ALTER TABLE ONLY public.toponymic_db_sourcereferences DROP CONSTRAINT toponymic_db_sourcereferences_pkey;
       public         postgres    false    245    245            	           2606    25711 #   linguistic_means unique_description 
   CONSTRAINT     ^   ALTER TABLE ONLY linguistic_means
    ADD CONSTRAINT unique_description UNIQUE (description);
 M   ALTER TABLE ONLY public.linguistic_means DROP CONSTRAINT unique_description;
       public         app    false    210    210            .	           1259    25957    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    230            3	           1259    25894 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    232            6	           1259    25895 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    232            )	           1259    25880 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    228            >	           1259    25910 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    236            A	           1259    25909 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    236            D	           1259    25924 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    238            G	           1259    25923 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    238            ;	           1259    25951     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    234            J	           1259    25947 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    240            M	           1259    25948 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    240            N	           1259    25967 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    241            Q	           1259    25966 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    241            �	           1259    26170 .   toponymic_db_geonames_geoobject_id_id_a2291a9a    INDEX     t   CREATE INDEX toponymic_db_geonames_geoobject_id_id_a2291a9a ON toponymic_db_geonames USING btree (geoobject_id_id);
 B   DROP INDEX public.toponymic_db_geonames_geoobject_id_id_a2291a9a;
       public         postgres    false    248            �	           1259    26154 -   toponymic_db_geonames_language_id_id_96405604    INDEX     r   CREATE INDEX toponymic_db_geonames_language_id_id_96405604 ON toponymic_db_geonames USING btree (language_id_id);
 A   DROP INDEX public.toponymic_db_geonames_language_id_id_96405604;
       public         postgres    false    248            �	           1259    26220 /   toponymic_db_geonames_motivation_id_id_7e7e82f0    INDEX     v   CREATE INDEX toponymic_db_geonames_motivation_id_id_7e7e82f0 ON toponymic_db_geonames USING btree (motivation_id_id);
 C   DROP INDEX public.toponymic_db_geonames_motivation_id_id_7e7e82f0;
       public         postgres    false    248            �	           1259    26231 +   toponymic_db_geonames_source_id_id_c0c713e4    INDEX     n   CREATE INDEX toponymic_db_geonames_source_id_id_c0c713e4 ON toponymic_db_geonames USING btree (source_id_id);
 ?   DROP INDEX public.toponymic_db_geonames_source_id_id_c0c713e4;
       public         postgres    false    248            {	           1259    26192 .   toponymic_db_geoobjects_geotype_id_id_30843414    INDEX     t   CREATE INDEX toponymic_db_geoobjects_geotype_id_id_30843414 ON toponymic_db_geoobjects USING btree (geotype_id_id);
 B   DROP INDEX public.toponymic_db_geoobjects_geotype_id_id_30843414;
       public         postgres    false    246            |	           1259    26203 *   toponymic_db_geoobjects_map_id_id_2202c81d    INDEX     l   CREATE INDEX toponymic_db_geoobjects_map_id_id_2202c81d ON toponymic_db_geoobjects USING btree (map_id_id);
 >   DROP INDEX public.toponymic_db_geoobjects_map_id_id_2202c81d;
       public         postgres    false    246            �	           1259    26126 3   toponymic_db_geosystems_geo_system_en_72268f52_like    INDEX     �   CREATE INDEX toponymic_db_geosystems_geo_system_en_72268f52_like ON toponymic_db_geosystems USING btree (geo_system_en varchar_pattern_ops);
 G   DROP INDEX public.toponymic_db_geosystems_geo_system_en_72268f52_like;
       public         postgres    false    249            �	           1259    26125 3   toponymic_db_geosystems_geo_system_ru_cb432924_like    INDEX     �   CREATE INDEX toponymic_db_geosystems_geo_system_ru_cb432924_like ON toponymic_db_geosystems USING btree (geo_system_ru varchar_pattern_ops);
 G   DROP INDEX public.toponymic_db_geosystems_geo_system_ru_cb432924_like;
       public         postgres    false    249            R	           1259    26047 :   toponymic_db_geotypes_geotype_description_en_792dc982_like    INDEX     �   CREATE INDEX toponymic_db_geotypes_geotype_description_en_792dc982_like ON toponymic_db_geotypes USING btree (geotype_description_en varchar_pattern_ops);
 N   DROP INDEX public.toponymic_db_geotypes_geotype_description_en_792dc982_like;
       public         postgres    false    242            U	           1259    26046 :   toponymic_db_geotypes_geotype_description_ru_afda1dff_like    INDEX     �   CREATE INDEX toponymic_db_geotypes_geotype_description_ru_afda1dff_like ON toponymic_db_geotypes USING btree (geotype_description_ru varchar_pattern_ops);
 N   DROP INDEX public.toponymic_db_geotypes_geotype_description_ru_afda1dff_like;
       public         postgres    false    242            X	           1259    26045 .   toponymic_db_geotypes_geotype_en_325e5699_like    INDEX     �   CREATE INDEX toponymic_db_geotypes_geotype_en_325e5699_like ON toponymic_db_geotypes USING btree (geotype_en varchar_pattern_ops);
 B   DROP INDEX public.toponymic_db_geotypes_geotype_en_325e5699_like;
       public         postgres    false    242            [	           1259    26044 .   toponymic_db_geotypes_geotype_ru_d8a1c645_like    INDEX     �   CREATE INDEX toponymic_db_geotypes_geotype_ru_d8a1c645_like ON toponymic_db_geotypes USING btree (geotype_ru varchar_pattern_ops);
 B   DROP INDEX public.toponymic_db_geotypes_geotype_ru_d8a1c645_like;
       public         postgres    false    242            `	           1259    26048 0   toponymic_db_language_language_iso_4b0a006b_like    INDEX     �   CREATE INDEX toponymic_db_language_language_iso_4b0a006b_like ON toponymic_db_language USING btree (language_iso varchar_pattern_ops);
 D   DROP INDEX public.toponymic_db_language_language_iso_4b0a006b_like;
       public         postgres    false    243            c	           1259    26050 4   toponymic_db_language_language_name_en_02794411_like    INDEX     �   CREATE INDEX toponymic_db_language_language_name_en_02794411_like ON toponymic_db_language USING btree (language_name_en varchar_pattern_ops);
 H   DROP INDEX public.toponymic_db_language_language_name_en_02794411_like;
       public         postgres    false    243            f	           1259    26049 4   toponymic_db_language_language_name_ru_3ce031f6_like    INDEX     �   CREATE INDEX toponymic_db_language_language_name_ru_3ce031f6_like ON toponymic_db_language USING btree (language_name_ru varchar_pattern_ops);
 H   DROP INDEX public.toponymic_db_language_language_name_ru_3ce031f6_like;
       public         postgres    false    243            	           1259    26112 ,   toponymic_db_maps_area_name_en_cdd21454_like    INDEX        CREATE INDEX toponymic_db_maps_area_name_en_cdd21454_like ON toponymic_db_maps USING btree (area_name_en varchar_pattern_ops);
 @   DROP INDEX public.toponymic_db_maps_area_name_en_cdd21454_like;
       public         postgres    false    247            �	           1259    26115 ,   toponymic_db_maps_area_name_ru_1a860a06_like    INDEX        CREATE INDEX toponymic_db_maps_area_name_ru_1a860a06_like ON toponymic_db_maps USING btree (area_name_ru varchar_pattern_ops);
 @   DROP INDEX public.toponymic_db_maps_area_name_ru_1a860a06_like;
       public         postgres    false    247            �	           1259    26181 2   toponymic_db_mapssystems_geo_system_id_id_03f4f879    INDEX     |   CREATE INDEX toponymic_db_mapssystems_geo_system_id_id_03f4f879 ON toponymic_db_mapssystems USING btree (geo_system_id_id);
 F   DROP INDEX public.toponymic_db_mapssystems_geo_system_id_id_03f4f879;
       public         postgres    false    251            �	           1259    26204 +   toponymic_db_mapssystems_map_id_id_81b5c1fe    INDEX     n   CREATE INDEX toponymic_db_mapssystems_map_id_id_81b5c1fe ON toponymic_db_mapssystems USING btree (map_id_id);
 ?   DROP INDEX public.toponymic_db_mapssystems_map_id_id_81b5c1fe;
       public         postgres    false    251            k	           1259    26054 <   toponymic_db_motivationt_motivation_comment_en_39959552_like    INDEX     �   CREATE INDEX toponymic_db_motivationt_motivation_comment_en_39959552_like ON toponymic_db_motivationtypes USING btree (motivation_comment_en varchar_pattern_ops);
 P   DROP INDEX public.toponymic_db_motivationt_motivation_comment_en_39959552_like;
       public         postgres    false    244            l	           1259    26053 <   toponymic_db_motivationt_motivation_comment_ru_090c5792_like    INDEX     �   CREATE INDEX toponymic_db_motivationt_motivation_comment_ru_090c5792_like ON toponymic_db_motivationtypes USING btree (motivation_comment_ru varchar_pattern_ops);
 P   DROP INDEX public.toponymic_db_motivationt_motivation_comment_ru_090c5792_like;
       public         postgres    false    244            m	           1259    26052 ?   toponymic_db_motivationt_motivation_short_name_en_9161f3c1_like    INDEX     �   CREATE INDEX toponymic_db_motivationt_motivation_short_name_en_9161f3c1_like ON toponymic_db_motivationtypes USING btree (motivation_short_name_en varchar_pattern_ops);
 S   DROP INDEX public.toponymic_db_motivationt_motivation_short_name_en_9161f3c1_like;
       public         postgres    false    244            n	           1259    26051 ?   toponymic_db_motivationt_motivation_short_name_ru_a46de46c_like    INDEX     �   CREATE INDEX toponymic_db_motivationt_motivation_short_name_ru_a46de46c_like ON toponymic_db_motivationtypes USING btree (motivation_short_name_ru varchar_pattern_ops);
 S   DROP INDEX public.toponymic_db_motivationt_motivation_short_name_ru_a46de46c_like;
       public         postgres    false    244            �	           2606    25712 8   ab_permission_view ab_permission_view_permission_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY ab_permission_view
    ADD CONSTRAINT ab_permission_view_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES ab_permission(id);
 b   ALTER TABLE ONLY public.ab_permission_view DROP CONSTRAINT ab_permission_view_permission_id_fkey;
       public       app    false    2272    185    187            �	           2606    25717 G   ab_permission_view_role ab_permission_view_role_permission_view_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_permission_view_id_fkey FOREIGN KEY (permission_view_id) REFERENCES ab_permission_view(id);
 q   ALTER TABLE ONLY public.ab_permission_view_role DROP CONSTRAINT ab_permission_view_role_permission_view_id_fkey;
       public       app    false    189    187    2276            �	           2606    25722 <   ab_permission_view_role ab_permission_view_role_role_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY ab_permission_view_role
    ADD CONSTRAINT ab_permission_view_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES ab_role(id);
 f   ALTER TABLE ONLY public.ab_permission_view_role DROP CONSTRAINT ab_permission_view_role_role_id_fkey;
       public       app    false    2288    189    193            �	           2606    25727 7   ab_permission_view ab_permission_view_view_menu_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY ab_permission_view
    ADD CONSTRAINT ab_permission_view_view_menu_id_fkey FOREIGN KEY (view_menu_id) REFERENCES ab_view_menu(id);
 a   ALTER TABLE ONLY public.ab_permission_view DROP CONSTRAINT ab_permission_view_view_menu_id_fkey;
       public       app    false    199    187    2302            �	           2606    25732 "   ab_user ab_user_changed_by_fk_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY ab_user
    ADD CONSTRAINT ab_user_changed_by_fk_fkey FOREIGN KEY (changed_by_fk) REFERENCES ab_user(id);
 L   ALTER TABLE ONLY public.ab_user DROP CONSTRAINT ab_user_changed_by_fk_fkey;
       public       app    false    195    2292    195            �	           2606    25737 "   ab_user ab_user_created_by_fk_fkey    FK CONSTRAINT     {   ALTER TABLE ONLY ab_user
    ADD CONSTRAINT ab_user_created_by_fk_fkey FOREIGN KEY (created_by_fk) REFERENCES ab_user(id);
 L   ALTER TABLE ONLY public.ab_user DROP CONSTRAINT ab_user_created_by_fk_fkey;
       public       app    false    2292    195    195            �	           2606    25742 &   ab_user_role ab_user_role_role_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY ab_user_role
    ADD CONSTRAINT ab_user_role_role_id_fkey FOREIGN KEY (role_id) REFERENCES ab_role(id);
 P   ALTER TABLE ONLY public.ab_user_role DROP CONSTRAINT ab_user_role_role_id_fkey;
       public       app    false    2288    193    197            �	           2606    25747 &   ab_user_role ab_user_role_user_id_fkey    FK CONSTRAINT     y   ALTER TABLE ONLY ab_user_role
    ADD CONSTRAINT ab_user_role_user_id_fkey FOREIGN KEY (user_id) REFERENCES ab_user(id);
 P   ALTER TABLE ONLY public.ab_user_role DROP CONSTRAINT ab_user_role_user_id_fkey;
       public       app    false    197    2292    195            �	           2606    25889 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    2349    228    232            �	           2606    25884 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    230    2354    232            �	           2606    25875 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    2344    226    228            �	           2606    25904 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    2354    236    230            �	           2606    25899 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    234    2362    236            �	           2606    25918 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    228    2349    238            �	           2606    25913 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    238    2362    234            �	           2606    25937 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    240    2344    226            �	           2606    25942 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    240    2362    234            �	           2606    25752    names_means fk_geoname_id    FK CONSTRAINT     y   ALTER TABLE ONLY names_means
    ADD CONSTRAINT fk_geoname_id FOREIGN KEY (geoname_id) REFERENCES geo_names(geoname_id);
 C   ALTER TABLE ONLY public.names_means DROP CONSTRAINT fk_geoname_id;
       public       app    false    201    2304    220            �	           2606    25757 "   names_means fk_linguistic_means_id    FK CONSTRAINT     �   ALTER TABLE ONLY names_means
    ADD CONSTRAINT fk_linguistic_means_id FOREIGN KEY (linguistic_means_id) REFERENCES linguistic_means(id);
 L   ALTER TABLE ONLY public.names_means DROP CONSTRAINT fk_linguistic_means_id;
       public       app    false    210    220    2324            �	           2606    25762    maps_systems fk_map_id    FK CONSTRAINT     i   ALTER TABLE ONLY maps_systems
    ADD CONSTRAINT fk_map_id FOREIGN KEY (map_id) REFERENCES maps(map_id);
 @   ALTER TABLE ONLY public.maps_systems DROP CONSTRAINT fk_map_id;
       public       app    false    213    215    2328            �	           2606    25767    maps_systems fk_system_id    FK CONSTRAINT     �   ALTER TABLE ONLY maps_systems
    ADD CONSTRAINT fk_system_id FOREIGN KEY (geo_system_id) REFERENCES geo_systems(geo_system_id);
 C   ALTER TABLE ONLY public.maps_systems DROP CONSTRAINT fk_system_id;
       public       app    false    215    2308    205            �	           2606    25772 %   geo_names geo_names_geoobject_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY geo_names
    ADD CONSTRAINT geo_names_geoobject_id_fkey FOREIGN KEY (geoobject_id) REFERENCES geo_objects(geoobject_id);
 O   ALTER TABLE ONLY public.geo_names DROP CONSTRAINT geo_names_geoobject_id_fkey;
       public       app    false    203    2306    201            �	           2606    25777 $   geo_names geo_names_language_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY geo_names
    ADD CONSTRAINT geo_names_language_id_fkey FOREIGN KEY (language_id) REFERENCES languages(language_id);
 N   ALTER TABLE ONLY public.geo_names DROP CONSTRAINT geo_names_language_id_fkey;
       public       app    false    208    2322    201            �	           2606    25782 &   geo_names geo_names_motivation_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY geo_names
    ADD CONSTRAINT geo_names_motivation_id_fkey FOREIGN KEY (motivation_id) REFERENCES motivation_types(motivation_id);
 P   ALTER TABLE ONLY public.geo_names DROP CONSTRAINT geo_names_motivation_id_fkey;
       public       app    false    201    218    2336            �	           2606    25787 "   geo_names geo_names_source_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY geo_names
    ADD CONSTRAINT geo_names_source_id_fkey FOREIGN KEY (source_id) REFERENCES source_references(source_id);
 L   ALTER TABLE ONLY public.geo_names DROP CONSTRAINT geo_names_source_id_fkey;
       public       app    false    201    2338    221            �	           2606    25792 '   geo_objects geo_objects_geotype_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY geo_objects
    ADD CONSTRAINT geo_objects_geotype_id_fkey FOREIGN KEY (geotype_id) REFERENCES geo_types(geotype_id);
 Q   ALTER TABLE ONLY public.geo_objects DROP CONSTRAINT geo_objects_geotype_id_fkey;
       public       app    false    206    203    2314            �	           2606    26171 G   toponymic_db_geonames toponymic_db_geonames_geoobject_id_id_a2291a9a_fk    FK CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_geonames
    ADD CONSTRAINT toponymic_db_geonames_geoobject_id_id_a2291a9a_fk FOREIGN KEY (geoobject_id_id) REFERENCES toponymic_db_geoobjects(geoobject_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.toponymic_db_geonames DROP CONSTRAINT toponymic_db_geonames_geoobject_id_id_a2291a9a_fk;
       public       postgres    false    2430    248    246            �	           2606    26155 F   toponymic_db_geonames toponymic_db_geonames_language_id_id_96405604_fk    FK CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_geonames
    ADD CONSTRAINT toponymic_db_geonames_language_id_id_96405604_fk FOREIGN KEY (language_id_id) REFERENCES toponymic_db_language(language_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.toponymic_db_geonames DROP CONSTRAINT toponymic_db_geonames_language_id_id_96405604_fk;
       public       postgres    false    2410    243    248            �	           2606    26221 H   toponymic_db_geonames toponymic_db_geonames_motivation_id_id_7e7e82f0_fk    FK CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_geonames
    ADD CONSTRAINT toponymic_db_geonames_motivation_id_id_7e7e82f0_fk FOREIGN KEY (motivation_id_id) REFERENCES toponymic_db_motivationtypes(motivation_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.toponymic_db_geonames DROP CONSTRAINT toponymic_db_geonames_motivation_id_id_7e7e82f0_fk;
       public       postgres    false    244    2424    248            �	           2606    26232 D   toponymic_db_geonames toponymic_db_geonames_source_id_id_c0c713e4_fk    FK CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_geonames
    ADD CONSTRAINT toponymic_db_geonames_source_id_id_c0c713e4_fk FOREIGN KEY (source_id_id) REFERENCES toponymic_db_sourcereferences(source_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.toponymic_db_geonames DROP CONSTRAINT toponymic_db_geonames_source_id_id_c0c713e4_fk;
       public       postgres    false    248    245    2426            �	           2606    26193 I   toponymic_db_geoobjects toponymic_db_geoobjects_geotype_id_id_30843414_fk    FK CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_geoobjects
    ADD CONSTRAINT toponymic_db_geoobjects_geotype_id_id_30843414_fk FOREIGN KEY (geotype_id_id) REFERENCES toponymic_db_geotypes(geotype_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.toponymic_db_geoobjects DROP CONSTRAINT toponymic_db_geoobjects_geotype_id_id_30843414_fk;
       public       postgres    false    246    242    2399            �	           2606    26205 E   toponymic_db_geoobjects toponymic_db_geoobjects_map_id_id_2202c81d_fk    FK CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_geoobjects
    ADD CONSTRAINT toponymic_db_geoobjects_map_id_id_2202c81d_fk FOREIGN KEY (map_id_id) REFERENCES toponymic_db_maps(map_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.toponymic_db_geoobjects DROP CONSTRAINT toponymic_db_geoobjects_map_id_id_2202c81d_fk;
       public       postgres    false    246    2438    247            �	           2606    26182 N   toponymic_db_mapssystems toponymic_db_mapssystems_geo_system_id_id_03f4f879_fk    FK CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_mapssystems
    ADD CONSTRAINT toponymic_db_mapssystems_geo_system_id_id_03f4f879_fk FOREIGN KEY (geo_system_id_id) REFERENCES toponymic_db_geosystems(geo_system_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.toponymic_db_mapssystems DROP CONSTRAINT toponymic_db_mapssystems_geo_system_id_id_03f4f879_fk;
       public       postgres    false    2452    249    251            �	           2606    26210 G   toponymic_db_mapssystems toponymic_db_mapssystems_map_id_id_81b5c1fe_fk    FK CONSTRAINT     �   ALTER TABLE ONLY toponymic_db_mapssystems
    ADD CONSTRAINT toponymic_db_mapssystems_map_id_id_81b5c1fe_fk FOREIGN KEY (map_id_id) REFERENCES toponymic_db_maps(map_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.toponymic_db_mapssystems DROP CONSTRAINT toponymic_db_mapssystems_map_id_id_81b5c1fe_fk;
       public       postgres    false    2438    251    247            0
   �   x�]�K
�0��)z�R'�o�t]0�V�cK!��
�t��H�dM��ɐ��TG74��������tZy��#-%��p��c����6�C#�$���1� ؋��(�:y�jkwt ۘ�lkF,��! o�μhZOoʛp�&�
|� ���K�      2
     x�%�ˑ!�(�-���\^�q��Дǭ1`�Vs�����}��/�uqWr}�p��J�Ղ�+�zB.~&ab-5�z�vE۰�D3�^g�?��"�:L��������ŀ�<ȓ{{
�Ј���E�
�*�F��(�!6�/EJ��1Dё�%$2�@%����@^%�oD^�X8&�t��fS"y$�spo��xq�D�I��-�4��K$cćJ��Q��XŦ(�!��"�s�a�9u8ڕ�P�J ��R�J �i"�O���,\�J��M����?�\d      4
   N  x��ɍ�0D�s9���K�t�q��uңL�d���[C�5�[K���[G���l��[��c{���l[���e�l!,[
���W��&�����y���x�r<9�9�_9^�
�0^�����E�H^�/Z����������W����KW�e(�����x�J�%^%^^%^�*�2^�
�B�W����k��V�ը������U㵩���xj�N5^����.�G��G��W�7�oL�7�����Mj�4xӚ��S�������;��1��:x'x��d��Ş6�9os�<�m�2�˽6�{m:���n&}7���M�͡�?���y�Vi�      6
      x������ � �      8
      x�3�tL����2�(M��L����� D3z      :
     x���=O�@���+:tmd�|��3B���\BD��M��OX`�",/�����<t���<m9�!���i)L����Z�w�{:=>�	��J���AS�7�$6@�<�����,lR̖�u#mV�����=�~_�gE���A�
����"����W��� ���[�oF�(TX����q�]��~�>�i��8��$N:I����J��S!�>�ѭ���ͶI���ƨ�P� ��͡�mL�x�~z����(4_`���B��"HoF�jw�t����� aR�      <
      x�3�4�4�2�B�=... 
      >
   i  x�]�OS�0�ϛO�M�h!�Q��t���ZO^Rضq(q�`��7j��a���~oÒf]�?�$���+)�E�ZtM
T�_�R!���V����Y���N��׻i���Ӳ��&0�JGVV$��^r}$q��@ƉG�jP�F-5��aǤ?,N�z�"k���+�=W��.��A�F�g��Wa�`�Duge�L�q�>��(�"�$�9�=�K%��ړc0
S.��Brۦ���q����ax�����#L*�Jh�m�A�r�����E��e��P��:�Ow�Eq���b/�O�yH��$4�(�Ծ��>LӁ�E�����+���<�V&4��K&�@q���L��|�B~I���      ]
      x������ � �      _
      x������ � �      [
   [  x�m�ێ�0�����	Vs��kT�X�e���)�������I>+�����QwY}�e��͠��oܲ���q�sD�Ϻk�PqK��<`�`��D����nT%���8����&���Hv�=k?Ò�b/�hHtT�5Y�C?�\����û��s�"$h'FH��\T@:.��<��JX}(��tJ�G�ҷ@�G�$w�1^���殮k���W�m�;>\��&!�_�׆'?���Qװ!Y��zBaZ��̻0�03킑^�Ԭ�V	�I�;�8���x�s3�")͌+��T�0H������K�-.|a�;�P�̄'��H����� S�B����Fw�i��6|aFޢ<E���4gP�*��qT�$c�硁l��0@���7<�}_�����JM^Ky,�����aa�]Y0�X��Ёہk_��f$NzAh��DB����	�.&�z����^'����}*1);�"�]�I�Q!��]�J�Q��]���Y�.�s�g_�H�1k#a���!����QOm������y\�j��I�	�e0��yB7L w�0I�c�k�[p!��x�+6��GM"M�4�_5L�T�4?k������4�      a
   �   x�3�,H�NI3�/�H425S1�0 �ЪtoS�R�� �B�
�rgg�(/C/�pè�@73�*��ǜ���"�0g_7ӂ␪P[N##]3 R02�24�26�33410��60�,�LL���������9�z���@�L݆�z���f@�\1z\\\ �=.�      c
      x������ � �      e
      x������ � �      g
   i  x����J�@�ϛ�X��X��O����<j1I�H���')Ԃ("z�W(EA,��o����
�����v��F�%���"*�?�a�6WDxq#x�)�������Wx�Lv� �,J�4a!��$ �����Z�K�"������� F�R�JI�K�&����Iݕ�;w��T�O�G�/,�Y��e��I����<F� ��[l�l�V�-�+��<�6�ܗR(n+���=�ڋ���S��%��+�Jn�f���Ui7�G��3���C3�|
����q?��������a+�A�K��<>�N�Y���
�U�_U�l�Cc|Y���j�z� �GY����#��/���0      Y
   �   x�e�[!E�����^LbE�@��ٽ���q>����P�s	:����� [�
�J"�.߉/\3��C*��I��}&�pB/[�n!s�	�+����+G��̩���'��|��SA3#�Z��J�ڂ���/�Y�Ad;\��������k��a{=�M�ZOh6CzQ���N/|�a��O��S      W
   �  x���ю� �k�{�Y��C�e�*�!Aq'ӷ_`[ۤv:I�����S��Ô��y�KC�&���%��""�~P8~�J)���hc���*![�
�(	֘at��R��ޤ�E����g�>����î�G���o�9�M�\��_oN����Z�"J<�E��\N�rFOf��R��Pr��j㓍z�qt�R&*y=�O��t�W�Ri�p�؅Z�|��q��"�@�(jS�{��8aNO�Q�����l�7�YRi��'[��;�6G�
l�����.n���u)�	���"����Q>�w�I!.���Cԣ]s�}p����n;_֜%ű.#t�*�� ���R@.�)�u�C��z�sCV�1|��r�`U�@��b/W��wc˔PD�6s���<�uMA5)�a:���ß�Q�w�ة��\�����!J�DJ���n��GyP8i��֡�����}o�      h
     x�=�Ao�0@��+v_4�H0�I���H'��Eʴ��l*���v�{υ�1���נuS�a�ԧÁ�0�x0�Z�;Wqf3N}��.�k�ڍf�oi\hZVs����K~I�F'���a_�&3�N����&чF�^���Jv�eБ�ddrֵm�[ˮ�P����Tb�����Sc�j(�z��
����f�J����Q��
��N�f%���pg�L��#wX&�Q(:ڦ&++,�3K���)ZL� ^bX��l��W�{3����f�      @
      x�սK�G����w'�,��;�0�l���F[m�f�lZV�cjI��F����� X ���E� �yo.dc����G�����p����-k�2�{�D������N�V[���;�q?��߽������~���{�[�o��;�'�{��4�o����������C��|(?��'��rw��-,w�Ŭ?��;��������9n)��i�����+��F�\�d%<N���L�>S��	z���g�����H��_�뼓?��+<�w���|�ABWt�&�2S�J��~���3/�1�cN�7X>�������b�_�س��8�������It�
3$����_��:{υ�g���Y&k��=���Y�m*O�L�>_��O�=����V�
l��l�(u��[�_<maC�EC�O#�KM��������z���������/�-��_�_�����=�>���Y>_~&�!�l���n���!�<�B&�?׻�L�۹�������\n�W^�'|!w�'���W��c!�b����Y�,�.��}�W�3yz?'��~��������ჿ�GL�~� ���Dw��Y~���<�;̱H��a��lo����c"T2ӧ~^������XǺ�(j<��(�ɠ1�5�d�n��FF	����'>�P�q~��������o���.�\v�^��e.���\p������. %��1ίO�?_ɧ��1�?�\�����8�����^<������=�j���~qw���%`鷼��,�-l�#�ڋ�˖س��)�T��z���g�ˢ?���7^�Ԝ���
�<�Ne�����/)����UD�E��)���6�euƱ~Z��U��f� }��?�����_?�����̶Kl�x<6�ÊѯΌl�j�)2>���~FN�Ogw����N�)�Σ�9 ���V�%֡��S~�u�ُ��m�͍��ٕx4e�,0�G^��T9��z�%ħ��^��0?X�o��=?O�_��vʳ���TV�1f�����ճ�������lc�@3����X�)�?�X�vS8� �!���_�8�<8�&��$M�=���>�S�����O��p���7�x�¯�6e�T�Xm��N����Oq�?ځ�*|���\v�_֘Г�R��B������7h儎�; 9J�,쉊+ŕ�:��	���hP�����$U���v�تґ��|D����ix��'���Uz�ſ�v=��A﫨Ҋp���׿g�<�-\����͸zv|V�5�+|�_�Y�/~�~��4�UX�5�R.�+���>���"opF~�T�S�Wl^W���������W�k뎍���.E���	:Խ:�	���)NuN���E�o���F�v�%^�4>�c0�m@!=C��M$䗞�!����O���8�BO��a���-*<���sù
��mV4e�F��EO�l�wPNJ�ۉ������;Uk��p� ��=3MZ�Ec��Wx��D��e�Y�c�n���?�E�-K/͞BO
�a�E��OuJ��NrQ����,�ܝ�-�!�9僈E����T��u��z.'T�eWݓ����z�3
��q*�g8�������ycf��/f�aL�\����؁�����L����\���l��9:Й?	��뎯�O�K�/���<�lY5w��:w#F���A��D=��6	%ʡ� �_�� _�X6�>PHE�\i����6K�b��)[�ي� 9e�T�h��٩<(��R�-5���q8��f?	��n:���x�/t�a����&sT��
��(���~B�ȶ�R���A��f-��sSdĿ�.L녿���b���˖M�u��V�����^^~F�@,u[�|'#*!;��~L[@,+1�?���Z��N\�U��!�b��٠μ�yt��Ч��{�vņ��l�L)aH�)�ͤ^�ʍ��p��nq�ߏ�\�r���~�
�����᠈�B�o��c��ʑG�g���z��^��=����W�Gi�C4����'</�z</x�x�?����g��Ñ .t�"���r�l�����a���K6�Sՙp��2�F#��o~����&���
���W��d �z9�?��e��rJk9�����P���������3���fU���r`ӱ"��G줽U�J��#w~E����W��tL&r���Ǩ��vW�����]��핬f�[�lf��lg�~y��e�ix�'�@�	�o�;j���h2ے���2�O���Vr۶�	�dQ�y��M$+��XM(j]Ad��������jEUW}*?���v���&���;�VU���6;�m�W��q]��	C�O��x�h'44��^<�R~�5�i�9/?V�5�ݸ]�ۮ�n�]�e�x?��������MG��s?k��Zr���Ov��ۣsC��د�ob~E9�_��F�#���`;&ui�ю��׌�a���`��Z�-�ʟ�>�G�5>�Lya!Bz�1L�4t>7M���[�sܴ�p���×;�<���ȣ3���@ȣ�缷�]+����0�@?�K���r��f�_u�{��a�õP?�`�2/��,��x��L��ӟ�P�\�wSÛ/䝨i?�램�-�<�z�|D����ٲ���z\�݉�#]����8ڇ]�wΠ�����a�٥��Ye��pP�5������~���1і�Q3*�t��?X\�3ؕ�A�}�����q��X=�k�ތ��KvJ�F�Q;�E\��FK�ң!��!D6�:e�ޫ\�>��|z>��W����
N���i EfgS ;�ޖ�v��ׯ�#J4pg����a;��%�D�-Ya�"s�����XWy�䊃]�
�ef\0~�|�Ʒ\uꢮ���C,���'עy��:¦i*RW��5/�ɢ�)2;�ο�1s����,���	�¥k,b�B�~�z�3����.�P�f��V���3��D|#��FYum������W�]��^'��D����*�A�Ĝ�^�1v&�]C䵨�Pe�c�Xy,�{i�_���v����;(�ն�w���,yHK^������Y���������l���o�g����7K<�#g���~2���mf'��Ӈ8�R:�\]4A2�`��~Y�<���Tëm�L��Tn�t������w[Սl�����UI�	-�ǪK���ND�+����=��~�F*wK�]�c~�ԅ��Ϛ�gm�_�)�%�����P)�L�L3ݯ���Oos�Nu�z�e�r������\<�wW߽���U�X��(�<A\�D5��D9N�+�\��i\��Õ��s�Ɖ�)u�םY�` EN� ��z8M�Av�y2��B�����v�'Mb4�~�\��׸�<x���؋h)t���._&=oM���`����$O`�Cށ��`�&zyN�A�-�`�E[?�+�cI���&4��]��w���HC)1���x2���ɓ�����J-���c*=
�H%�sg$�g��L5�H�B�|:���op�bP��9�Ƌ�/\oC߹�5Lna�)G@��R�Q��T����%`kf(����m��c���e8�����t�C��Q�0d�t���KG�]&_�|�=
�j��α��	Mi4���ތ|�GCh� �������#��ĳ�KB�E�5a���eC���-o��*��p�U]I��N)��!Y����
U������Mt]蚍t��߶�t��`|z�]�'�f���^CM~"ǥr��c���7��6�Ex/���\��bkU�8����ʣ� ��K��P
����xd��#F�>�λ�[����5v�ߦY�]R��������HFj�3v.�����to�7��(OT�L��F�T�d#���iL�9o���э7QQ�2u�z
; 
�!�b��{�aS����<&��d6KQa��,ރ�����\(�"�]�Fj���7�<g]"�������������g�H�Sbv9����J%{�A<��ꎲC�I�dOr|&<�~����մRd~�L�(1���������ox�9�d��2s8    �*t���N��]�^<�Ε��J.�7Py��J��!�FWDj��e�x�҈��mLe���yn���9A����Y�ϒ{w��=og�e�T�[r�d*̓�Ύ����1Mr�Em:�C"[V��%IWY�`Aru��|�к��f�fhak�Ȍ{b��V���@g��x�i��Ӂ��L�e6b���\�/�0,,7p�B>��M��+]n,4oq�p�d�ȏ�NŦ��ol��^�3�1��OpjӲaEf�z�Z��P���H�*��G�@����]ɡ��҂�/��[�?���#���RIb��̎Yĕ�k�E�F-�����0�¨`5��J��A�%�Y�{c��|�DFjG���l�$/H��J��ʒ�+	���d��?�Pb*{�o�"$|L����E��ve򻽓Ā���;����qZ��/��F��^���x�	^㧞:'*��|zb������**WhXD��_������B��p}��_i����f�W�M'+��RI�����A��ݜ��0��J����\֒��|%�z�c���Α]-��Ѓ� %�5e���(���+3
üׄ�d�׀��&nw���ƺ$}�(����(��zt/4,��F����R��Ek��+'tފ�*'q4�qdŏE����
)YOeMR��SX�[SQD� B�q���}SX�4u��6�Q���D�y�L�"��=���A�Q��4W�~��O�/I9R��nT���ߪ0+*fY;~�+�Z�x�$���B�����7��FS���4�єJs�Ҫ5���rX�bWX�x�"9��O͛e���c�|���je!�kE��V�$�T�%���uyx���I%��F��H�:d�2%>S/��n��3�Zo���s��DY:QIpZs*�5�aUK�+Gr�ƭh��o��RY��T��1�e�n�C+a:(��ck�p���k�O-	���͖"E�?�1�K�t������F��[��iU��$���4��|[ώ��y����M���a��yޚ� '�OԅN�]U0�E��?%�h����]�e3��6�! s�c������$�KYb�ZѠ/��L�ȴ�Y��(U�"��$p�O=�PpRC񥨂Z?���%�Yn����h�W�C7.ۃ�%�NI�S��Qi�Y�t��!n��$٫k�����ތQ����D�y�����$�h+)>[��i�lE�s����9k~���G?��#�)��mS�ZNNt|YF�L~MO����P�W1j?~��t�L�*�ɍd�$�5s��Ɉ&ܮ�S�3&��1���i�O��n��7}���阺��g�����ud�sn�=:I8��Il�ą��,��TS_�X���OԮd��n&����Uj8HT`���ߙ Ҡ�C�'��H��@��Q��4�0	,6f���S�9�#�:ݏ#q8�0h�f���f�x�����0Br���|�\b���mʅ���)`�q��i+e^y��Z����YR���*Rs:�F2K�����<8V����wtä��
Ս��KeӔ��.��	[�Ue5�'�â	2��B���\'s��T+s�"�/��~�p����9�t�������H�QMJ�<���{�8�6}��]v{��V��%�L8u��X�t�n׺�ԉq(ϫ�&�zLk� o��X2_��r�r��b���[5j���eG(�H�3�ܥ8��*-�g�[��2<*3��`���ȥ{�q�c��R�pEi���֕|�U\*�fwTtF?�]�j�f.�yv#F���Ѻ0F��g/� �\=�1�m��6��M�ԍ�4�9_��1�^.H���5��|�A彔�[��r���6ڱv:߆G�.�9TfO}��dT�U1��W��Th��<8p������jMJCEEIVsJ����O^��.š��n�
��Qi�4�������F��u�;I��yV�ŋ����M"�6����;�jK��������)���k�<5�j�-�2^z��%}OT���T��CJ|!kk��ˏ�Zf����t ���3���s����S��h] _`�7�?������h�̌%W�(pd-{p9���t��k!/�D��s�Jx<c9S��"���=km+�|�Ki�L�<��V�do�w��L>�A��
̓����/��yfeH(�"|�@"��K���mq�<3-ǤY:���":�����]�U9W��(C;$|w�g.�q����1�Iv�'W:��#��,�\,��$v���#�a���yFf[@\�9��[���b��	���1J�����~g3�$��_t��'�����D��Oh&;+}Ŷ��W�b�|�o-�.B�11Hz�����?@[2�ޢ8�">�-�Ĩ��sM,���W-M>��}R�EӒ�罡�Ly�J�F}����l�f���?����rZ�&촎x��ɳY��8Ǿ���g钰���k���+�4��-���Vwؑ��f/����A����n��8��N����	d�i}�5�p�ɶ,h�	�kS�N5�{)*k���2|Ú�p��T�_v�:�����X�<%>���\��I�B����&�XDL�n�M���-Z���4��O����N���cX�I{��x��t��]ꀒ���ț�K:��Y=a��i�T� ���^�8���"l�b���b	�YΣ�F�|���9�P--һ��.��P'�,ϸ�:�.���6㜐������;��]�yj��(�RJ�|��Nr���@�[#�%A	O�;�
��m�B�l�wNāxL�ܗ��G5�Ϣ"��>�d0�+�<���Ubv��(�+�PX~�+��$2��>�Ҵ��Qj�;+Y ��N�"c�/�
�S�..jE�����]#����g�&T�#�Pu��D<8S^�6�ْ�[�����e;"a��i*�������ކ�W�^� 7�׬�f�i������T���Ҽ �\l�4s��6�ծ1ޛ܎P�F4'Gx��X�j�T�x�:��L��i�*̌]S��8	�2Y�MIO���R��4�|b%�1���k2�#cU��CPGe�\��������V(U�l��̌�ҳ�lk�:�2f"��T?{�sC�0�z����i�f�ʹql���������Ʋ�A&'����#mJ�d��ƔV�,!����;1�a�?_��R� ;�J�������H�3�����A �%�g����X����%���F��]"�b�(%q�p���(	5�G���&)�����3�#G��YZ\-�P��3�K2��H�����"P��<]��%T�s��I;]\�Yd������H~�h�N -Q)hј*��	_B&<�����?��J�h�	Ux�Q��q�`Ɛ���[�"��D��)���+ܠ��oLz��(��Z�i�uAx����5�x�mO��9���~x�,4 Ң
>����8�3�HU)�#t�)FÔ�@[gu��z����rK�{��\U�]�`�zBgi���#/I�%\"�k�ҩZM�s!�An.6�{�+�Zszt�9ߓ��	�(�kV�.H�L�����VXj �_�'�)���:KP�q�Mco_c�f�����Ba�z�EU�y��Vu}�A�<�Q2�K����YfI��z6MeJ.�L�ь[�D����[�p��ua������+����V�g��!���rF�H�3���
<^���&����<�P���'	k�	w�@;�%WY+�pA��E������t�:���p��V��Ә�$��G�>���$�1!$��'z���s9\��������x�B�m�P��U����{d�\��!9��bHںVGc��?J-5�h���������G,λ?f>�kp����
X̕Ӈ#��6�{!��<�S "P����R���<h���iHa�p`��"�t�dM�E����~x��t*3�p�ˁӢ^��%O_�g8�w�\W|p���d�*Ѱ$������=�N�R�;��so����m�<������z���Lk/x��g�|��<Wjs�_��\��ⲯ�96P�]����<�1;�� ��nH�| ����3˹��>@E�ߴ �    J���	n���v�vޑPD�ѹvZ�#��o5|h>��E�`�"��iO�2����A��G-+M��5gmci��|��"�L�Y��H�9;B���GW�g��z���;�	"�Ģ���m���"<V��X�5���R����\{�\4�}��G�Ma'�\��V��M�Ǜn���m(��	o���ޅ�FȮ��d*�*ݸ�V�.wv_�d9��w��')��W�F���TS���F���jU�$���G�X�������~�����Fi5���δ�=�Xo,������?�����_��_���_���O��*K����5�u&h���Ep��s4�d��a�T�c"L+�w��p;�K��&��`��ET[n%�g��Y�8d��/UTL��r%�+*؍�B>��R@+����KA��Eg���U�Q�
���#��
s\�LO�]��V�l�0/ꧭ����A}�x���I4��v,�MzG��]MdT�1
�c���4�W���$��x�!t��h'lj�'��ԓ]&r���N�W�&�e[�e���Or;�,�?��L�g��{589��T�M8�~l�_�q7`��Y�&�D*1S����L6`B��,��U%��
�n�0�D��f: ���=0�hܹ@C^Ӎ�T�8��|G��s�@��wv�٪��8dA�
O����sJ��;���E�?S��2	�o3T�����ɂ^	�LhMO%�Օ�0�ZoH�j��֊U���N�ʈ�">�vgT'.c.�5�׺CՎ��	�o�\p�D�5D*q��g}��Is�-���T�D_��$�(>x����}��G��������}��g�<�P�]P�/<~l��q�F�s�Y̉5$}":K�ᆞ�Z�y�������R��D�T5:��w�e���L�rF���	��C���,U��r7�åX�q���J��Z�֩X+��`Wr�^i����4�,ڮ�b%
�1]att�~�И4k�
��Y�Q�<8P� T��(�\��ʖ8�@{��(b�g\�aV�Rw0e ��ev	$�+�5���K��?
m������P��C[�V*��c�D�3��bR<���7Zd��F�&#�i�P�#ϫI��gu6u�|�pi&�V��2��(���w��Ҿ��ȩ��`��d�T:�:��s�d~��	�	�ؚV�q������*�L�&�P�V����K��!X�+Wi�8��k3q��������"F�jk^E��r��䌙K�!W�Э��j.Ҙ���^u\���,9��Y F�p6�eL*Y�>̫0k�4����6����>�L���Q^i�K.���C�+�?k���P�`�{e�zE�+��5�s�(�Eu����QI��'kӈ��9�[��Zg%w�J�\�_C�S[�;hRД����l�c��
��	M�Tr�<[/ÞϘ��B�[`V�} M<ځ���._iSz5wW�H�������]�)8V��7�jB�0c�7EQ�#fʩ�I��%����j��K���*I�ܐ�V����5�f��T�O�|�#��T�5[��˩��bQ]�˩F$f�X����sǊ��E�yi��n
��?�c�m�=Eq��U���B����A'���o4g8iv?���]�m��k-\�#h��h�F裦s�7�o$����b����@��;����aYZ��+�VH�u�yw���|R�և�����t�W&��!�}���� @g����)M�ݜ�!GS0���6�{�c�)��ү`�D�)��d�L6��1dA�f��	�?�C�e-�s>
\�SG5��=ZN�����'U@���S~Os+��N��3?���Z��/	���{�%i]�?��麣����l䖐��1��7K��鱈�7� ��6���3�1�(�]|L����cT�ږ..����K���S��"�ڵ,���`@��Հ�ܖ#��!}^9�'kU��0�򱐣�	�Y��S����@�Ìi�v���G^�f�5���A��b�u���|#Ø�Ѣ]I��F�bR��<����P���n�N��4-jal�D��j��Qa�;d�����7�����R;HTکf%W�j���!�d?2T����ΓP���kec�����BN(3�ݜ�:��=w�6���~SGi>��O�yj1.T�ڳt��5E�:U+�>tY�{$�J�n�N\l���~
�B��Y8:�
~�(jBF��I��F����<���Η�G=n��i��.����M��8;�s����#P(62�C�h�3k�;d��c�Z��&���4�84QP���\ZI�/0�U�j�h��<+��Ր�UT�>m��R�^ �҉C�}��XKc�[%-�h?��7S�u2���U���seMY�E�d�K5�Q̌2�͡$wN|�<8'+R=_�`*��u��5�I���C�O9Y'Қ��\m����b��ֽ�̯��t� �Gu��x�lZ���U�}I�k�������)�z�$��A_�I�Xj+���*��k2s�J�#s��ؙw�4�~o�Ba���ú*���6	}�|�)�:�w�"�70�<�SN9�:e��}���:ާ�jh�
 o����S�I�Q��6V��f9�=��+�!k�]�����c��	$��n�N,ty�ϋ�>��N�n�I�w�͒k{�4�6�/~�)W���;��=`|���lC��� �|�sv[H6Nk(*���6[=�i���/0�A�:��'�W\��ܯ�� � %-Q NQp�Ġ;��������׿O��tW)1�]��WQ�kC��P�MR�g��]G�H�ֱY�h�i�_m�Au�y�1�^�6��$D"��=������E�tb�kBg_U*?%��J��*������;��H f��Q����8�Pze��'��X��� |��X0�$�s�8.����/�����BP/�˕~ID�虄u��%�p�b� �8�C��(|�,zS�؇Ԉ��4p۵lӧj�*�bDUIeቇ\����?;3=�xЊv��� �T3�9�I��a���R��8������(���pd8��9���']9a�uJ��G+��Ѡ���ț�Wj�'�n;�L��?Ԧ,ע������4]��^w�i1�c�@�� eZ����wS�!u�R �pc�y�*��%c2�d=��E�F��?��H+h���{��i������p��- em�Ћ��Y*V�`�Y�����=6ۣΒ��J=��{E���İ�.$��
h�0��V�A�"{4��>���Пn��-K�QԺ:��ӸX;~�������̱����yz�DV�cS8���z��!�%��T`QI��ڰGS�Q�U�e���"V��?�b^���W?k�Ud���JִE�N
ifq��fZɅ��I���$m�k|�9'�6��i�m��9�?�F;*�3�c� ��]؍N*=��
�K�*Q��:��H�s�3�fc;�T����,V�2�2�T��/~%�D� ��4t�]�^�N����oC.@w:�~t�;e��#{��1z~ӥ�"�M�̾	� չ��X��*�����;�"Ȁ�W��3R���������ǅ^I]Œ%��#��s�h�!�������k���P⤖��ZS�B���bֶ�T�C���bc�p���0�����U�YR��Ԟ�Gms�<�Fg=꫎x�:�0�y�k�\�׬l)U�o��a��	^eF��0=��W�;�N�Hd��@6(%�SՇ!����F���|� ��A䮈o��/ϑ\�^{�-�-y{�  �Aqb�i�X�l�����kg ��;�"qUs��i���x��[�3�}Bퟭk�jY�a4'	9g� jf�y �x:gtۑ�<��#���r�i�L�z۝�l��1���Eư���}�|�O�b���AO`���YA�?9C<
��p3��/�B����يB�ד�j��H�R�j�	��^Ӧdi�[�\�g\�0y���qzʇ�Hx��������l��f�%���� ��6��];s�-*��i#S�"B�j���%/�Pa��uф��Ψ[�+<s;    �"YH��:��0/]'���2�$/(�K���b7�i}�0}��%�_�߄��:�
��8����Y��2U�D�s,���9���P���N+�乑���N����)�:�ˮ�]Ξ#=�r�$���E5���
Z2=r),��`JX�]X��\c�{V�%C~Ɲ��n�wxyk>ظvq���
��:�R��k��9hI����ٺ�� 
?a��;N�\eb��ѭKᆪ��c�S�1��pdx%-���b�pH*+�cC���1~_�����vjg��Y�1�������b�v�G�����{�]%Ek}}P}!�cW�j��~i�LIu���X������n�Քv��L8Zew�)PR�2DT渒�J�w���˅R,�>q��uS�*���*�i�cs������0Jp�3ҕ4g�g7�$�Yh�AcG�UtJԦ1񧑓���z�C�C�o�1'�b�Z~���B�02�\I�'4B�Eh�rR}�гzm��;G������>�X�K@���Я4��\J�`�t�0Y{`����T3X�Kg>���_���gjݷ,���E�,�g������cp���fKR�q%��|�������5��Ip��N.�m_#9+Da�A��yx�$!���ع��|�[���Ϡ���������c=��3l`��(��w�����O�.vʳ#�ȳe��n��wV�h�8t���5h�,a&���0	h�"i(l	?��9T�)*.����sz-
x�l6`�2~/�<�`��Kq��0�}�����	 rkY_e��fd��I�h�ץ�V�����U޲i���ǆ��ĭ�5op,�i��x�6�s>�WmD��o@�����S{��E� �1o���kѼ~1OVkD��
�
08WC<m���zZJi�Tl,���1�=Dݰ���nnM���h V���i�bݑ�aU�D���R8�|�+G����C��p���b��`r�W�\���:J%eŮ.��� �2I�0V��ّ��-�;v�!@�1᪢b�V�ϳ�uʭ��I�첼�WS��~@�І*�����RE*x8�~��,N�Z�"�)2�!%�r�����f�S�Zys0�a9�����\�Ò�Mp��-���Pl��x�+V��U���2��W"O!��طT��=+�cK��h��O4����X�	��=,Qfb�q�M4��c,��1�D��t�Ǐ��eF_Ω����������Y�+��G��E_l��l�����$i��Ƒ���GɁӂG8G�n�lIPM$"�W?k����$_R�+t����Mtz�̏2Rs�UeUG�ynG�ƕkgqQ)�{�Γ�p� �Y�۾_A�gJ��z>��`�튦�"��>P���%*̌`�z�j��DL���+��a�����ߺ�G�U��v�����@
�R��Q!rY����ρ������It���w�y4tB�J�(�ܳ|�u�]�}N˒K�4ߨ��̼���2�%���1�����H38&������ʯb����<v6{h��Z���O���_i��4��|��l��
$�x���%���[fC�7AW�������$�B����8�T�.�2�J�[��7ϼAT�J(�ݴ�(�v�\�T�U���\�S�����Qt<x�Z��BE��i�$� y��$��5�ʙ�V1��r-�?�_�̐:�BY(p}_����^A��\WQ�h��s2Is7{��f�ix�yY�Dw��|3���r y��!ˊ��J�l�)�2!�Л���
P�; �`��l�|6H�ב�Oง��|���@<R=\wj�^���v[���y��Y��2�����~�)� d�D^����Ϭś$�z���^P���g�#\l�Uf����j���y*<%+5�@ߛA�`/}��q7�(��˃h_��(�U˞���3+X� ��ߎ5������L:��'\-�(�O�2���e��br����N�h���g� �����,+ē$em��V&�՚��z�\'T�^-����Jj��x����*�H��k�>G�(�	�F�[G�3�%�k5dvt�x��CLИ,M1�����:{�����uo�ui��Ғt��TsdU���f�o5erAz�{%sb!9_��;��*�	��$^�b�l��b�R�$�Q(���p��_��@F^O�j+�!a�M߲��kB�K���]���B�Yz@[��E����9�-�Ƿ��'B�s�џ� ��?��9����k� �"?�D��{��Z��
`W���8�J>%�"1
�U����j `�����j��@�"F�b�4n�r��QV��CC�.���x��A��sMZ�
;<̅"J���Gy,��(�k~K���F�zީ�|�kO֮j�����か���/Uh��1`x;L�w�Օ5f�`���z�}Į'�f�Zxm�A+�֯
u2�q�.F�P%�Y�^	t5�5�G�����/�.�;�*�H��� j!���-��� |�Bs�y:s�p^*�E7`��&��*w���ۿ��ofw~�����7w7ß3�&��+`9=�E��s��BޭI�(4�5̨}���ѷ�ù�7�0b�#>P�`.��DqI�!��J`�����4�F�t�X��h>*5�W�)�BFH�>�9K���s�4J��мS�?I���i��}f��b��ۄ�9�7d��Y���΄��\����:��)��X/!�T{.ZҞ���(�D��G�%i�^o	!&UZ���/��e��������Y�h�̪.;�Ӳ���(`���f#e�����6ME��W�����;�ֵ&�@x�	���ĸu@�i<�"��m9\�d(,���ʲ�^3�n�~\����Y�|k��3;�+k�{��g���)�����pz����~�B�ҩK~���3�n���'@-=Y�z�[p��$S�S��S��}�-9-���t'�EJ��愋 ~��y<$�Lf~h2O���ʬg�}������:e��L���	]@�c`�ty�"̏O��\W�H�&����� �3�ٕ�_;�5���A���7H@ٳ�Ѫ�\���>�NO;�ׂ����� ���0Z�w���+����i�+��)���\I$�?B,9)sB
�F���_k �Y�.�1Y|y<�R�寁� �+�u�ʜ�p��,#ܚ jcG�|s�ڭ;&'��E��9�̾Rφ�N�����5��rT�\��XN���uEǂQ���2ie�ٯl�Uh˜,��3�eZ�S��(�9�׳��P�u9����:o��1�/�SU��7�O�a�Q/�8Q�;���u�5�7xAD�Y�����2���z��1�B������)�H�-7J����M�4Ų7k���lh��E���&<�ԃ��N=3q��������nɝؐJ\�\*��zͪС�����LCk�d��
I�n�:�5��J2z����c�iۿ��60)��!j�2b<�a�Es�>����3;J:歽��+��F�q��vE��,���t�IN�۲uʨ0o� ���\���)��??1��&�>L<M�8�a~��W�z�0o�<�R+�^B=�>�V���6d��0�u��X\3�����6D�2���[�����#�Y���9��,��d��I8��_L�l���q��_L�|��UF��R��WBN�)�r��~�a-u	X���*���\G�J�Um�y�i��Ʊ��t�P��(��1�<�0�Q��1�.��2$m���$�w���N�&�ܑf���쀴��C�*/���]���9��!�8��5E�**�n#��C��T6��1ڷ;��U�Th���숧-�K-�!�J	�M0t��|��僑ǫ1\��H��$���dæ��{�Aĝ���.uW�a��'�i������yr�Hd�D���6K�D�*ˆ-9\�
���5�d�V�Zv�{�m�Э�5���0�_�>�l�y���S��0v�]�ta"���	�!�]���HN��G�M�?�o֡�T��V�iJ�(�����AQ"6[�-m��f�����DY2���$�^\c�+�����W�-    $E�M�h�>��Ʉ50w��Ja�x������<S��0�A}�(}��Z Xn�0C,}X�����0��D��Z��x�&OH�rm��Ģ��r�	���)yh�_���ԕY���7��-$ϧ�ֆe�,��b���05Bӗ
����^�ھPO#!�/�V4� �؈��,]m��м�vx��_�[X._��,�j�s-��Y�VNeV.� "��3"D������zHI�|��� va 7du��T/ ��Rd�K������`�>'g�Np�Ck����M:4g�w�M��&9J�@g���<}�2O9�!y��4#kW!���8P��_7�DE���5�D;� ��d�ڵ(�/i�#��V�!�O�����љ�h7�6Xl�SF\��\�e�X[+J��w!�uG�����`=�`rA4-�M�G�%{%Ǵ��Xۭ��SDkC�9��9�@	YX�u
���?<	6�T?���O����bj��m��o|�b�r��_�dD}��%����k�\�"�S �>��G1�{3l�)�b��j����o� g�6��
a�U>v �y�|j�-|�k7�ǬC�� #���Ę+�H+n�����P�I�/�h���`��ns.߶������ -ZU��q`�-��U+��`���@�,5u��Qd��;q�v���\(��J�Bc rA�妆�vD��J�xl̪\������g�r�m߳�&�	��M��ȅS��Z�p�&3Z����,���{-E�k:����|��t��h�~M��,G�U0��� #\ߊlT��dw�h��#���5��F�T��9w;�s���o�e�'s��aH��>T�	c	�ЈAU��b�qJ�z�c�>}��z#*
H�S���d�L#A�m��b�a\@�mX�^1��7����I�^�A��!$�*E����Wj�5*���@Z�3�C��2"h�.V���^�`�o �I��׬�����9�Pm�źmB�m��<ap�G��D���Κ�!�W�X������ܑ8��2?�\(�����PG'�b�KZ���[o��=�,�g	�Ƽ	,6��w���׫2�\3��:�C'U椖F��]�S8��P�]��]��ǔ� ����o���讁�5����ȉ^z ��A�	j��S���$ѾaĿOI*s�������&�����ht��I~���"Js�Q�+�e��/��KT�ĈkVqR�yK<��A	��s�e�a?�������f	����4�G�ą�*?IO�v��i�^����Z��\��N}&�L7V�BHC�M�KJ{	����_Ce� �D$JT$����e��݇p�6�{ۥX�߯�#.�:���0��U��1����D��z�����kj�21�t�����6�!�Ҟ������<X�$�$+0�~l�v^#>��Χ����&I��L�茵�ə��F����F./yDP��
�=���A���y=�����^��������ڍ�0.�&��L�R����ɻ�\@ߧ��;�*�)����&⻽���D�����J���W���վ}h#���3�=P⎤--�Uڞm�۸I�NQ�:��	���+���|�2������=�-�&�g�D��u��U鱚)��1Kq�\��X��p�Hh��/�i #/���t<A+硦�g
�n���֨�4J,��p��%@-+�wf��9�p	��!M�H���FZط�+��B��Zsn�(U��\A�%ƀ�Mt��� Z�=��§�	��8�*ʖ��a���y�����y+��? G�P]���������&3"w�����:�4��)�6��{R	CZ�B7���O�����]�J��(i��Glٮ���� �2�`'n��)G��х��-Yn���P�!~�	�:���?����M�(�dђA!��2x�	ϵ��ֿ��)��]���9�s�>����W4c���#��������$���!�=� �Z�۠�.;"GM>?�Cc� P�E�,*���HKr��<6����%�^�w�s|�./̍m� ��F&�̊L&*'%׶�IW޸o�����?����9�ek�z�_E�v9{�t���1־�^M�)�ް����-���Rct���H����qz��#mi�5U�G�.s;3'x�x���[9�12�?���mk��C��gH{b������`�&嫹���R'��&]>�Ƭ)��o~�_�l��R�K�7M"G���Ĭ�I��i��LV��<`��&ݢ�����3�D�_�68�N��82<��]`����Z]�ut��q�:��o*���g|s%Y�_ٹ!��"N�	�}��_�>���A�vY��Dʤ�c� ��ޙ� /��p� L~��FI_ӣ�UO��|9B�M=[g��%�-�VPӾ���+�<����hF^"튱V�����;�����a��P��B�3�$����k[3���lI�H����C��Of�!rA��fR��%�<��UY8
��D��j��J	 !��1�u����*U�ג��P��p��@^�BBBh���+%��|�ֈI�{=�#�]$�`�t�Z+V�/!ƞ�H㬳FǵV�>�ͯQ.$���q�kC/�+��<f=­r�D��
~z�-%�:�H,�uP��L�R*��0>��z�碂���А��Z��xD&�/�c�L.���@��G��G,���V�QzM.�ά�r�*(��C�i�C`��Vy�Ӫ��uc~*/�3A֚b"`{���V�Z���k!��������:XP�!�zl
ܿ��_z�.,���M�j�B�wu])k�$n�5kǅs8�A+|?�"�0�z�ԭ����D�P�z)�N����5�量�h�P�u�M�4(=���mPVSG���S����Tą�.�\,��m��Tr�t�G�[f�N�����J��8d�Z�x;B?��Q�Z��4(:�����W1e����Ŏ��y��&��l�\(U�
S�A�f4O�?���J���r�����s�Ŏ��ٶ\�1S��2Y�9��K�qa[Q���n��ccT�/�b���⚬5j�Ƕ��"��oa>�e��9�ii��W��C$߁����5U��h���_�IܱnT$6�p�3$*\��>l��ځQQ]��४C<�������өGy����Q�@o��Rg6�g�p������I3�n��Ԑ��'���Y_a9x�j;�$j$����q���lᡗ
:�Hծ`sM�S���9�uKp��["|�m�n-��>%�>�&2Imd`�|Z<*��G2�C�}Ǆs`������k�]�V�=`��Y�I���w�B~K�u��.�i3v��1��/���3̄�z���4S�ʃ�9��~~j�� �@�HV2����P�D���$�2t���D��f��C�{�J�b�&�?��_� GY�f�6��jz!�r��Ik��LN������ҝT#l2m;&V�/y#GS�j0��K}<J����l�:���!(�c����,�,���PS�I�I�O &���ߩik*�(��;� �2�H�����P�s��	b*�<-���՘pUF���t�&�|E�R�P1J\�̑��s��z���Iɲ�֑9Vl���d���5�d��5Ƅ�r��ӏӆޅ�����]h/ч���U���ʺeA�]��C���c+B|_��s/���Uj�)���W�Z�^�bn\c���}��vA�8�W����&��FM�Q"�5^�y|nv�5
a�>�ߙ�t5^��T�U�`D���l�,(ٚl��jK`@�D+����kq���a�M�ϥ���M/�%��FS�0ۍs�6B£�ֵ�̯�Ï�(�q��TwWS��pX�d������9�CW<��=1Ym�."�toF�Fu�Me���O�T}�p�QȉS���Ut]%vm4���o:Ԟ}�pS��9�J�&����8MMp���r8	�[v����+�ƺ:��MvDG:&a2>�4��2�;���HĺS9
ؚ+��c-��G��?��j: +  A������ٓ��.��������D�|���pFZ�fu���eM(��Hӏ=��?U[4��*j�F�� ����I���G>��br��GGn��FU���@g0���9RNa�4�w�����/��YB�s��3������;����]��F	�,�����X���Ċ!2��{���ZND��;U�~�d��<o�I+��"��3T����Jcꪆ���U��]~�����NZ¥��m\2���ʌl���%� P򽩂����-����|�7����#��b�-��`��t�۰2"�G��^���~o>M��;	��!���i)@]�z��(��G��,�+�����Jd]s��c�Β��BiҖr].by��9����=�3W�^2jfw����t{�9F�j�C�.A��7���܀F��.˴o�\�CVإ� CnX���������{9y����d�a�P�r��U��m �8����_?Ww�S��jK1��Z��G�C7\� ����{�)��˷��?����3:����J�����>�xг-��C9�l���	��'�>�F��\��$�e�D�%Pm�>�^�X`aG�=Z��)�j@�U�c37|	�-3u�!`�q�h���Y�51V/T`�\���}[�om�����G�'��ޚ�,P׆_P_�6�bEp�@��l�y��9�m��RuM.0T��В�����@� 6�� ��JTx�������p�	�R-�P��is�����\Z{�N�=���0j���Z�oO���J�Y�J�G��<�m�yAR�����Q��壭���ft���0*�qI.T�Q[��)��*�����G����6{��y�N��<�78v�����r(G�5���2o� <CX��@X�m9E�p5x�)����D�P���c|RͫR,�9X�'��x #�>w�WH����|\dj�W4nȌQ�����lh��l�Q��sj���(ˁm(H��v۠�+��*�>H����/�̭7%�����ҵݡ}���t��G;R��Q9�e����"���ُ��� 
����V�d�*㚏��{�w�G�<�AKF���+|U�v����&�� (S����e��D�'ʟ ��i7����\�i��X��C㏲�e������i��p0]�w�]f%�2���P�8�>�W��^��ny}7!7�9��|��>u�˃ k�i���Cf���oʳ�c����4i�rg����2�-'{^x;����Ȯ0���i��M��>@QR��h���	11��E�R�V��K��.IFQ�ѹ���Q�rsZ0/
H4���{�Z��W͛�l��A %ui5�Y
���φ߂�P��E^?d��;�bR����Čc��̸��Go�l����v�t���~Z�z��U?+(ƀ�T���LJ2�$4�8�~�Kg�Y���p�� �����6uP��V��� �|Cf�+	��0�d�;�����=]!�ŞF��KP?1Lu��{N�L�N���\��~2�Z��%�W��v1�˂��v�*��U#w|�������������4�L�      B
      x�u\Y�����L-��f.o��L؀"Ҷ���!�!i.�o|��5������ϴ$=EZN!�>�e'��AYC��� �;E�@�#��c�B������sP�$:��{j�2	�O�j� ;~�2PDc"��FO��0uMe1����4;�;��pXr
���	�Mʙ�bT��/��I�DɎ��87�\W7���ѡ���ѳM���.t!�����Av���B��)V��L�P,K�$�v�li���V��x�DGzNa(!�:I5H*Eڄ�P�e3���@˴V�Ѯ���;	��)�dE�tTb�Ԁ�5��@��G�
���v��Z����X����:u\����p��w�n��� Nkq�i�$c/ɠ�tO1X��DZ��V�P)e�#Hd�2�`���U�s`��I{i�u<9�P^��+z�*҆�ګ3щ.�~������]������hER�d+���})(C���<�5[`t_��Gm��,�x*�Y��ې�{��.c�i֬�M�Z�{>��fစ6�Z3��y�1/�D[�Ƅ�k��O8�yjO���ls+Ut���d4x��c���a������F�ݭ&��<��`V;��t�O�l���i3T�f�`����e������cLZ��-��� Ğ�v�Y�`p�l6Vܶ�Y���.����z�z7�*��N@P�%5d`5ց�6#&h�8�y�Vk��	��1Q#&�YE�s�!��H	s�a}���$�P��y�$��6���B4��k&E��0ڜl3WL>gN~N�DL�ȫ�C�0-����7�
T�р�n�V���R�{-�����Ek*D��=cw�I�F�0o+
�Cz]X��j#0�fޚr�]�V8sM�kǶwp����Q�L`h҆F_u�~I���������n/G����#bsGl���!?�p7{�'�h|5zM8<��j�JK��V�	vC���I: ���S��J��T�(��1��%�ٗcYp,��ht�8(�� ���AY����n,|`����J��`i6Kkf��������@�
���l�zEB@_�B�s���H�?�^�\kK��mgԻ�$h�	����R慎)=w����A49MFlm��X�V�l�4�f���W��v!X�t=��n|�ч� < �̕X&�<� �Dx�du_�h���L҂V�I��ӊ$`K�ƚر����|g�n�sNaݶj,8FN{���2N0�P�	���3((�X���.�̑�mu	a�j�<5;b�e(���lC��l�? �U�P 2��r���3(𐑯J"��������⤕�
��gy��������80�߹9��]շ��hs��|:�dU�K	]nJ���})�C�7�*8e �(��G�]��$`8�\�J^;�C�H��K����x�Ͱ�j_B�/�ǃ����k*x����ی�e�D���+0�Μ˰�V;,X�p�#�<�\;��6	#��>�����@��͞�:ֺ�־��o2�8�Y�ɉ��2t�Kw�M�m���,j�Dƅ*3�sʇ��ؓ ����0UxIeYH���� 1q_廃"�J����vyo�ae�_uf*݂�]���`Zkg�	'?5y&��h�&�"E1衹��boN�:��vl�=���l#��r�֩��r�6�N�A4�b���V�gd��������%��䃬�̜J�N��%�.v�m�����=��Xa�j�i�k�e/�~
���� �D�,�-3af�|�/�Gz���
�K�I�ɩ�:y8�(���(����\�h]T��T�NZ�&�r�y/J�SiME�pD�}� :����Ō�@W8tm�> Z�t'�_�(���]�3_�i���&���P��rK��Q�SI���d��PHPwyi�������H? 0���}C�w�1ԫ�룲���+܏��8��%��<5��z6Y ��Cs�T��r�V-���i��-;�8&k�v^0�{<�Id�e��3*q�!o.��\T�R�J���?�	����	Lb�I��U�(ey;)YO	fi;%!�2r�p��j�,�'/����c,?f��t����p~�.�����~����;}�, ��͏�	[�}��c��(\�UA�ud'N��] }��~:��&GD����/M~DK�Q���h/k?a��3R��4�x�������L|�~ΤL$.���6M�'q�x���������KQ�0u�"I�v��G"��8*�?b	W�?��n�h&�������?�^z���˩{9�'��tt���.=L�KG'l�oE���!��Ji��݁�j����5�����)�G��ї"��l��I'��T_�n2M��9���c�o}a�:��y����)R|WDzW)�`w��p��8��R4I�F��kd/ TO���ɨ^@.�����,��_�9��y�\��l0t0�&�h����I~7�p��t�\L����n��ا�'�͠2#?j1|z�Bw�F�p{��Iu��u!')�\�H���o��1� ��8	�����f}�˖��Pc���b�?s�s�����AB�P��
����I�����V6U��}?j=cLXmr�Sm������͟�Hy~�ʑ
�J�h�h���ý;�5Gҫ�N�(���7�o0�Q~�&��i��o4��g���*W�;9(W,

��i�0�*�f6Q��pFH�Ҿ�o���'Y�e�4s�f�NۀX��P�_te" �툔Bv�ʟ�ތzh�Y=�O�DZ�w�C��G�~90$�4�ӓ!r��Q�fI;��	z�+���L�0�����*s���ɉi�"�?E8��&�H J+O��P��%� ����*MPD�4(	F�;�G'��a�q��o/���~tR�=�	�iK�a !:97B����$2��g���G~S�<�C�7�߲�=%�-�L��\�%�a�gC˲�l���7�%�,�s-;��z8j����$ ��چ��TYM�'�
(Z���R��������Z$`%+����,/TnH���[ ��À@fej�2�W�U"Q�����W�7�h�i��O_:lW?ǁ�c#��D��3�l���Q.�a�K���9�!�1�A�BIT��eʩ�����!�;d_ ��ZeGv�(�^�j�TX��*i�SX��^�p����	>���QviD'י�Le�&�#{��P"�ħ6��;�����:��$Ų��S��W3_��W�Mvq\�MAI׳g�&"���wġ��cR����ڪNA�ևU�*�g�e|)�'&5{T�\����t�̺�,JVK��j·�Iو2ۣL����%����-��I���-�ˁ�SSH��,�� 7=�v|?Y�T(ѩe����L5W�#T�#�T�G�2�N��t�IJ]���cts�J�p:�Je����Q��n���~Jpe{�L�2w
�H2wÏa�̞μd�X�.�a���q�  M����L�g���h[��u�ߛ$е֜�:�#(�)z	~n�<ޔ����{���f�.i�R�VU($��Җ��'�<�db�y)�>w<?�I�殺 ^Uޠ�/1sM
��R����szj}N�Nr����dg��U.��*���s���օݪ&tv�Mϗ���@�*e�3�Uq� 8N��^G'&�{x��I���ö��Ɏ�04q����K����vY�o}=4�mR�IY`r5�62S��y�Mn�i�����f\���Q���'��nH�e֚6���2��uE'*3c>)�/����b�$|��g?�_QG�Q���l)E��"�?�V�:����*mD�ݥ :���]l�>75�&2]���PX���1<������9Tf:J���m-Q�ʣwѬ=ul���*Oܞu�μ@_l��t`'�(��>��P���W�b�؈��F�l��ר�� �K����jnᡞZ:wMy�/OT@�<��ּ&�m�n9kp�K*�-`�%����%ع��{�	�>EbDn�"���X��a��;��V�,l�(�:IbEJ���Dap �
  �&���4F��5�BO��]\�=�@K��
��O�l�a�.k��|������FP��ѼĐ'�~yU )�_��&�l�H\���A'�UR��$�Q(h��S�j� ��v&8�#�&`x�cՊX9k2
�h�D����_4��Ƞ"N�%��%��u��]
���hy�-�˿��ı��yp��?��pC�jJÎ�V+�/�A�Ȳg�+���,ʵH~͓�0��z1�A!�hu�����X(ٜ�H�]�>�Gl�e�"�U.#o:Z���
�6��yMv�?���b� "������T6a3�T��0��b��hn�;O�Ai��y"A��T��v �잏���w�ծ�����֓��h��<sj�u�8t6���^�$�2��H"PN���}CI�"멽0����w��4 �Uc!�N�VZ��ʪ{͇�\���[-���+X WR'���Anr�+Ʒ����"M�R��A���ۄW;�N"��/x�rߣ�RX���RlW+�93���z�����7Ŋ�_�,`��ꎻ"�T�V�_�X���a���y֩K����Ǫ�"~�)ZA�6���NzF��7��"�<�j�	W3O���ɢ^Pp�wq�!��f'!�=� ������pbj-B�#��ph�;�:��
Īq�`�!ы.���/
#�㸅8�S$h��2���oѯ���PѴ�J6<D"Q�;N���T�����ȗ����=������B�$��v?�U�0*u����Rw\8�O��k��h`�:N�5���w0�˛DcjxE��Y�^k�g�D�ʫ��t��� ^���⁑��Ve�9Jaysw�����>F�6R�-啅�2A�I����-�{��gu3Lg=�����mn����.�7�=�D($��Z���'���b��T������P]�G�xީc��HP��@v:�DgH4l�Z��O+;�q��A����w�,���X�o0�Ww=�D�oBR�݋�� D�j�!>Z_�_��z ȭ�RR����R�M�S�����?�jy7��A�d�q�*�L���&V3�������K��}7s�}�~ �ӷZ!G�� ����	A}��\^�[�h��U�t)�Q�u=���-�羋I ���Z2H�9� 뺼�_gg-G i�LD���:	���1�w����0�ݏ�0P�֮<���<�zM�z�E/w�rN��&�jMo�AM�Քa��v)��WD)=L?63a�S�r��i���|�iݬ�'���1|]SE�׵X,Zz�y����-ݭ�E�i��L�i
4�]�E������4P#����6kb���*���/�=�)�][��P���wM.�A�����y\C!|���f>��*�p��zl'����\ڱ��|U�*��^R>�B�*���dH�\ɣW}������K��ZKwe�4����K�\���x�gp�R:8���9Jr��A��z<��<�_=���~�'Kѧ�c���yh}]�8TU�:��Ũ>4�xچ��x@�����j�w����
��.��:ہ�� ��o!`)<.�6��{>�uN���\�,�ֺ��K�v	i�������\�:�� +9�X�&���z ������0�~5J3._<��6���՚ E��y9��3�X���t��5�g�)�Q�߳}^N�� �<���"�h���7�Z��[�iהo��FeV��{���a�ۍ7�oC�;�Y��ذ��`�~
��w�G�Qt.�Uc�#~��	qś(q/x�]�����+pv�!�@�q�캻0�py�`�(#�x.��߾F��J�`��ٯh�;z�[/��4�u�vic����C��=�^��Y`;/^"��V�5�Ȟ%);M"�>�D#�s�x�F�j�-�շՑ
/+���W�7�/��""�?���)G4�Ѥu!/?�-��	JXB�q��z���rּ�6��Oo|1 O���d�Pƭ�#E@
/�l���[�6.�!�>K9��s��$z"ΨӴuN=<��6����uR�ҾJxD����	���S>�R*ܺI5�|��$IGa���U�TD�6��f�E��)��Vۭ4k�Tـ��(�W��W]��䊨��:�@�-�{K'-�ϸ�����qZ�!��Md`32�(bC0K���9cø7,��-�e��Wmc�K1��cj��L���i�-��N	�F�\�T����0��%aCd�UwB�]B7�\5�DF;���� �"~6�6�_���Rco�{ ʫk�N��{���i a9������?����g�o���)�Ei'��!�=9��DA߳����QR�B_d=�ᨆ㫶Hn�����^_~i���K+MI7E�k�����^�e	�ۗ��׌�U��@��yr�K1{�ọ|)yu���m�/�A2��9�7c]��}�4ԫ�"]�xU�CT�ד���z��/��8d��2�v/v&�iY^7��'c���Wi3��w����ٓ�!��z�g�R�0�6+v�=�V��(_cq�s8�ٝ��[ނ�D��|i���:b/r�?�7�½���|����=�{�=���Y��}�:ҕ��|ϕ�^��F6_��+�5�h^L�U(+��k�đoc_jv�:oq��Q(6z����;�3nyQ��g�2_~�]�U61��K�w���9_�ǹf��R�w���-�y]U�k���G^1h)�*�ǝ�;����`�O�z��^o���~+e����P?��+ё�e^��F��P���?��������9�f=�Cq�쭼���f������ߟ?�TC@L      D
   �  x�}��J�@�ϛ���X�=����ͥ�e���&�4����衂� jiA��Bj?�a�|gk�6����n�����L�@Y��bSF�Cb���SuJ��%�3�w�l�DP������Q��0��L��e˄�lbؓMYW?ɉW�0n�.̴B��T������AJC%�����MԆ�����s_m�@/X���g
5��W#r\^�3��9�2oS�{�U=���`������ŜR��-�	�kQxE�r
Fse�:��m����k�#0B'GNQp�"x����`��vl C���5���`�N`;�`W�R(�q�:\��WG-�B7y�jUfU���v�A5�IQ2��|SM�-�_]�z��?s� T�ٿ48�m���f�U��'Yb����/L��g�O$k����	!i�-      E
       x�3��pa�]6pe���q�b���� nS      G
   b   x�3�L-���{aӅ��^�uaǅ�!4�kYj^v&�gqb����.6_l��F&f��(h'fg$jrs�s^l *i�+	*-.�L������ 
�5      I
   !  x�E�AR�0E��a��e;�3t�[S�aX��*�ɢ��;�7B����9�����S9��8R�1T.�T�����ITY�,�\�hE��;����"�$w�� lS�`F�@;O�z�H�V��>C�TYn=�G�����f��$�>�3l���<�ص�S��HN� l�#�,�����%��s��Shj]I��5S�z0���3�\�ɮ�����]*�@�&�2��ʒ�i3&�͘UP29�%�v)Y��6����ˎv/���듼��v��=J��k�y{��!��      L
   �  x��V[NA�^�b>��Y�k��7�	8�I�d�	I�D!H��(~����%N�s��$յ��3XV�!۳������`�ʍ4�/�<����pKO�H�ȭ��k��\�C/��^e��ʽ4]�U݉��V�؇uӸ���uw�x�dv$qU#��dJ��9#ߥ��H��}��V��+� �@H�B)X<�
�cd�O�$�c�c�RP�z�Q��[b+����<.�yO>� ��q��<��!ˈ�Q:��M����e���:�'2��"�'c�1���1b���^PR���A���1�T��\$�w�X6��1p�d0U	=��t#_��I�Xa���!�A@�"� (P�#Xhf R�m�
�Cf�[��:Sy)�5�	��<�����_�b.`��Ք�;Y">�Tc�����B��|@�������� �I�jꐜ�E�ex���7��S�34���T�����BU���Lb�[�4�RN���ϰd��G-�^{C��������ι�M@O�5b�zqu����5��y!���޶b�.��(�� ��*�Y���mDZ�ђ�7Z��
vVm�T�͕z���hQ�]|I�^�n�EM�����d]�p+DS?�������K��b�2a_P_nYh�:������|c�9�eކ�НjKU�tq5����R�/��fgu}O�eB-�t�U���F��'U`o�C�q�쭬rf��T�3����P����8^�sr��ђ}q=�7�)������'��)�uW�6���doj��xm��A�z��Ah�|�S��f�m4��(L�c��M:Xr��'�Bum�6����x�����E��t
xL�@���nrE�tS"���*N��+D�/K�}��,����u�������Ϧ;l �łݴ����C*���(�=x�g2��"?(      N
   `   x���@�7-�����:y0�-,YjV�M���s$�h�
2��ܘ<��f������F(SY5v�;M��š.u��!�2�^�����x�      O
      x�3�,.MKˬ������ ��      Q
   5  x��T�n�@}��
bC��)<l�M��^[��[z��Z)�BL�:qa��8�XP�i�"l�Ϝ]Ϝ9;=r�����rW�tg�_e�ع�ڹ�s瀧�aU�0���\�2
�J�L���~Ev��j�e�2-��#|@���K��KwN�4�<����ׄ�ֶq3{뮑7ֶ�a�)=2�����X��+0w��i('F>�-�{�_�%�)�Lr�Q��v�����5�F2T�����������K]��.�\��슱xI�
�љ���$W[ �:�W^� ���\��D�|�� -��&�������pĜd��<��)��YxYk��^�(��#�Z����� 4ޓ��8�r32I,:B���z��<C�nS�o[WuE^�i��c��x�s�,`�5��2-�n�e41'&�lvYz��|�2V�,Z�4�L�o`I�z�=��8d���ؤ����~Zw}-)Mr]h������]�x�M���lE��#�8��̊�H܃��8�����&��8���n;_�Q�f�l�Y`Xy����x��hg�3-SC�)���>,~�����      S
   <  x�UWɕ@);�f6^ ��?��-�U}�����?b�I�H���i�/�o[M��v�����v/X�>��)w��TK>�����X?��E����� N�����:�r�=�U�����}��y�������s�s~�����3vqyYk�-KfT,��Bq�~�׉󥶵U�u��O���:����L/�q���-%�,<�\���s�@��������W�k~��ҪT+L�-����2�����[�k��b��{�.�C
a]8G�T��נkaͷ,�cFU�*�{a~c�o�����Y�K�Z����1�z-���tv�s����4j�S�갟z��u~���7�ֳ��SJ�/��='�`=Ṉ�^8�^B�y��8�$��yr�[���&��~_��6F�������!h�y�����8m�����s&k��@������~G�Ǡ[��L���">L��k����އ�mD�g��ص1ǿ��2�s���@�~��A�>l��~��}1��q�H]��o*�7��H^}�u�)�	41�1fǔ�	ދM�k?8���g�E���-��
��~V�n�>�~b <-�[MA��Z�������sҝ��F{z��G5�T�t���a�wqAZuAx� ͸���ý��;���k���wߣ��NXֳ�5�M1�U��N��q�2�t���J�Hk�AL0n~8~�����筇��p��_����)/U���X�7A
ź؋�>c#<�i*:uu�G8���]`���Y�,�u7k���"�����8�����W���wռ�ڝL[����fa5�3�9/9黽��y����&�3���~�+��������is��gӂ��:�(�qT�`�#͟�2t�,�wZ������$�4|������)�5�����
�������*3�����$"�IOY;]��0����N;�N��x'���{��KZ4XzlZ��>�Ԟ-$�Z�C�-
{sN��@ݐ�ٹr�~Br�1
�l�K�.ʘ��E$D�� (�p��im[gd7Od-��qП��a1��r�:���`A<JLlp�2-�,�Hn�G/V��,�y^ �c�I�߼r�<�0�=�Ķs���`�"����&�X��?8o�A#����/��HJ����5	e�j{��:\�,jP�2$��츜󌿙�J8��Jx�]o{=�z�����>WBp��96.ܔ���g����>s��)4QNm����8����	�S���3�@��%u��'c�h��"i�g�_��]�1'�(����V��5��y�'����T������T;���a����|C	��<YZxC�ߧ%�p���$�B|�����='�~���#�N|��ީ�3Y��In�䄱�'iY�~s�-o�-8=3H1K�'�.	`'��T��pu�O	TT��� O��
������&��ЖA��0"\��6�5y�=��k��wɔe�'PK�酠���k����������c[�r��Gmp�G�C��g=��([���SG��'�L�m�eN��&�a~t�ɂL��*���vǤ���t �0�cN��T����}��)Ғ      T
      x�3�,����/������ %�      o
      x�ͽK�ז8��+ά%�t;v�5 =5.{Z�m��(T���Aϒ�bQ2ER�T.5/I�R	�5�u����yN��Y�佾��s�$��[.�*�gŊ;�^{=�5���������x6.����ý�E�����������o{�����%��4_�}���������ߏG�;�c��|<[�O�������Z�W�r<���j<�\2�=!�.�)��(U���R�Uʊ�:���o9���Ԗy�����%&�l���?��^�m�t�]��~ �a��]���tuat���j}�g�fc��9�o��K+���z��/r���^/2�|��x��oh0C̿+��k�ߦA�s%�9��~0^�Z��=^�����F&��W����Lv���7>�M%n��Wa����� ܲ��H+,5&��������|�ߞ����<�<���I�/�/�����'t}������?'�<�<�~��C��bE7^�i4��U�y�2����^~�U�#z�'����|���|=ǲL�rJZ�ye?���9�)?�������&w���_c�����a��B� ߕGc|�9&�p��7�%h���*?��s������r/��~��{�8��je���z'�3�߉A/궤�~8��pX��b����M����I�����=�}���+%y������c��c,�%�����%z��z�׋�o�͏>�p[�"����>�ϼ�ms�_t�_�ƾK(��+�V���~�`����m`�<uG�$�Y�UWּ]���l��FԴ�1zY?]��	k<�Ԧ}�[S�zo~��K�2�nqI������_a���_��xfA�aO-��a	~�̓�'/O-^�vLC�W<Ƽ��\��X|t����8]�t:R*�)���kbx�?���*��x�~�<��4��Ӽ�i���y�7�g,ز >���ʹ�N��Nl���
�AK��%?>f�@�0���'-��,���hG�0X�O�Wʊ[F�?mS�L������~K�[�{mf�w��KZ���: 4Z�m����᷸@|�Wb��� Á0cO�l�yOn��-i�����8����G�'V��ˮ���$�cy��;�;�q�k����S]O�p~�]WO��[��T7u�z���6���НwY�c}D����9}���:�U���2��rs�j!I���>�;p�m���T�2r={����5���_��/ߒ��@��?�����T��[H���77f?��>�ߐ������S�[������pt��:ϼ�/[�mM��0OЉl�%Dwަ�|�5T"���EC/B:�c�Z���x�?����PI���e�����F��������_�o���j#�a�*�� �
�����u+���m�7�/z.��i�|�gj}Y2�{,�~����6Hp��KՖ�dZթL���
ODԞӒ��� }�'Aҩ�`9��TR<� �����_��r�V�~'A'��>ˊ��#Y���9���K>���*�zƇ�ճ� _������譪���2�-�Z���嗤�N��Ď��w$�K:�;ڡ?�;敐�@7NV���OP�׏na8���}�Ζp���IIS��`��R�/�6:�ήק:l^��/�����zW7��br�j�8�eO��2؎����.��sj�X)���IvC�<u��_�:=�L)� A2���!���5[�u^�|�ߺ�e��)	����x�ң�����ua���3�'��W�/��}1�,�$~�N��X���lV���a�%��!��A��{�ƒnO�+:v���q�@��d"��Wߥ����ii�Ue"}�ǼH��;x�b�Pc�2%�{�o9q���.���'�wr�/Uc&�q֧�����󮟲L�� +�!9wt�I��5��8�3?b��,��"�W,��Y������\"[�v�]cۘ�@����Y�gx2Vp?�z�B�c�r����������8��c�������+=v�ɽNHKR��04E���+�D�s>��?J�nz�v"�϶.=��.7m��l]�����!$c�@�\��g���yn�t��eZU�*�i<��H�:K��j�}������Y��c:�2��,g����6�}����b�_�΃C���{�~�S#kN�/�j2��Ke5���t
p	�[�blI�c��*[X�`����I�����3W\[d�]�/jE��۬gҳ��lF��Dmgɫ�<$�:G?$�Ϸ-��휡�u�_��H��1k<����ZFn6G�*��J�x�!۔��D�`8��(�k�ҡ�X�]1K��!��rjJ�X��L�7_�]��Nw��,���d(2b� H���7r������1�7|�zu}�=/�{�`���~~�L����،{�Ľ��{_�볲��u����1ܠ_�Ŵ��<����,oA�z(=��C���ϙő_�jj^ʢ�a���g|�s1UȗAV��"T��_� u aҟf�|S�G00��s���W	nn�;MWv��o�w�h�<���x���,,ň�{թp�k�y��3�Wy��|G(��@��������%Kv���9H��֐e8���)ڙ�/H�K+v�~#"�	{��37@I�n�c~6!O��͊�Q��(!� C�xh�����Ɩ�����S>tf�w
��D4�q_QY�ŀ��
���W���콽ݛ��P�]����(7���l~�0���/��)֨�ٶ&%?��߉ES�Hh�1~��a��#�.O���2�\KE��6Ψ������u����:˜��͛B1�%
������1ӼN�7Co��@V��igo��A�t�JKP{|��*���6��}d��c�@��ŭ��d�N���=Gضz�!˂���Ҫ��-̕C��K�����*��/h�b��>�J����;&6��?�n�*�:�t��˧�� R[u&U�
yS	�2��]��&r�9���S갱������ſ��ݾV����B�
�58�D{�T�-�yN�s}<��� �H,�^||X^n�R>kU2��%:�L���R���7잀|�d+���t�<9M�?��������B��%��_���q��"��&�Tu��5fh��Oس�m�vP�vi���YB6@ٺ�e������
yѾe6��lg�\���ρJ��a���^�-])=&�d�8��w9A�S)��l#p�Y�{��+X5A',�",@�N^�(6}�C�k�{Ɂ�@��=4�&�K^���nuzw���V�{At�.�K��ODg=G�̩L�V)1����ܫ�;�9m�躀��ł�)~��G�}�}~��᮸�Q{8��ģ�ۜ�}}�Ju�g�26b�?ဒ��O��x`��ٰ"a~�|R�Ϡ ���m������j2y�O�,�+,�e�����;\p����{��ϭ�$\�Oŧ�aߏ&Fw$X�-3c�1���
){g�o�����BfR�7N���u���tC�k��&�PI?�V%e�P��p��dr'ʬ��T�z0WgS��K���H�Qz�����p�{A����;�b�����0>ŘIk�m�t�W0��ɞ��̯#>�?�8�pWV.�V�3�M�I�W�gl�����>]*���^�UZ�*�J�<=&����*��t���*�R��y�PO�^�Zb�l�M�s�:����0�	?��U�5
CI�r6��j�V^���C��.���_���j~�ץ�2�Y!I����O��;pn.��D/
Y'P6�#�7�M����'v ��j!��S�Ե�9��d�j�MB�3�����7�����)���]1yl_������O����b^�]JZ��c��x���MӘRm�������T��	]��9�g�&|�Vh��ͩ��8���-].o<�|�³����ˉ��Ǝ��T�����@gҊt�t$��*<�s)yEkM[�vg�Jo����֢�,��s��L�N�	�<��C��b�?�y'q^.�-�b��5F�ʹ����Q(~@�X2���8)�Z�T�{s��<�I��.���?���B�?�=N�<�1ɦ�Dg8
F};�    �>�)l��e��zK�l�6tr<����ՌM�k��G�m<K_�%�=�M{�v���k��i��>K��̩*���
V���v�TY,]��;���S�)�8�W��E�}�ʺB���'�5��~�7�2�?g#;��Y�7{d��ׁ��,_���N
��;��=�&?钄킧U�*�b�ʁ��n�J>�ӓ���&��i{�y��Ey��@��#M!�%u��ceI&8R�F@��3�s������E
��l`7�@�/;r7��n�q��s�/4�g�
8s�p>'�2�{X�v�KƮ;�A53���+�C�'�c/f�&�ܯ$\@�$�ћjK2�*����+�,�'�Ju��)XED��T������6���`D� �r�"'��;���1Y�'�{�$S")�dp���bߙ]�Ѥ�s�*����|�h�_�hjg��/.-�	"�gL'��Ԙ�[	�x�~̔}'�SZ:0��M���l��-]�Tqܛ�b�{X��@t�4��TF�������kMkɊMQ� %�]�i+�3�=v�.>�\b���k��|��$l�?|6���ZYv��#��%�Ь=�r2N8q����|�S��	W6IsO����x�C�E(ޚVVX-�Dw���O.U�/%�����V�	�M)�K�f���{x87��
�n�]��G��W��_�c�o�(�b};�����i�8.�<y[�|a�Y>��kh3+Ǖ}Wڿ�������U��S��a���Ӑ�蹞�tV�a�>X-Ij*��ֽ������>��"�C��n��}���Ԥj|�~Q��H���(63;�ܤ���H�R.(]�e�¶��N���5)kR� ��&�h�����Y1i�_O�:�����`��$@�	�o��zhA>�ds;�%���Fub��]�g��e(z��>r����0��{o�`l��ա��/���.�w7��o�H"����'�E�L�5iț������ü���z}���CII$n=���j��Ly�6���{�+l|t�t�fޢ+�P��k�,����S���5o)]����[�����~'�/K�j��e4g[���r2�w<	1���J"T��kۑ{�Z�lJ�j���lÃ��	�5��'�+̃/�.8Y���$����^�w���'�%��
r�<k�I��+�Tn�hK�kl�Z��hIΞ 4�̱���$.e8��Ut���%(���:�TN�h��y��� ��fc�[R��#ǔ�AE�ל��֧��>_!-.�D�L�2����К������SFM>��)��&��h�î+����v0~b3��x��H k����Z�ů�|���>�bC%����CE�&PB*2Z���z!͞��e*��튬�o8�<��;��\@��l���U\��@/pz�d@$��#N᧏7L�䮭��d��[�.A����4N�*�r��s��i�6�ܬ�K�	�>]����i]7P�����ͷ�;q����3��Khm��$�$�3h8ۯb-���>ci^>p`s�4�_�F,(P��j���a���������U;^4��.�D�\�u,��-:u�v�*Dt5��6!K���ڢD}�����/]R�C	Q8���� !�O��Rٿ5$DWj�N�Q�8��%-*��l��&��Vl3�Z2����M��e��{�f�%�B����W��:��>���w�]�����2�$����gÂ� �Pt�E~��ʧ���a>�Q��VaeU�l���ٟ�e/��F�b�+/e�g44���ddϰw��$=]@��PQ�=a�~��l�������Ex[*����jNk���:d��ߘ��*�����S�-�ʥ�\&��!t>K�����IKn�!���h<5�[%i�ߐ�9�p���iؔ�z��
��������<]
'ўC�v��);���������I@�w0��On_���kd�#���M#3?�+����
�,'��ރ�tI8��{dR��a����R�
��S�G�Ԟ�w�f��tǬ�e�P�����!3��#��������Q�"ub��)�2��y���RR��[��V��b(�qG�c��-���(�����	l�c����^�����y$z�a����8N��C���ڛc����BʝD{��͔��iѽi����N�|i0=�ŚY~��a�[.7�e��.P��>B6�d��^)��XC�y0��2�H|!��n��N9�I���t%C�w�`��v�W�:�$�O�q���cLvm7��Xa��Nǘ����4�-���c��A�`=�p��*���6<��N6�Z:�e�}�E�t��Q�%Tj�d�Y�"�����3��~Ʒ9��]əƔ��E*�PR�:}�@�;]�tK����?����Y�=���ߙ��@�L��n���YL��P���F���Y!.�b �X���]��<K����7FP�����:�U'6�t�AU�R�Z�� 7ȝ�ﬂ�; s�>{!��x�SN���Xq ��:1����ꢇǓS�����7�䢋,�tz�T�ӷ�3�ޛY�A��cfW��U�Y^I�(�,��U��v+��*�1�8��7AVjJӰ����&��$�1"�T�[�$i3�
V'�`HT���9�I��1+�j��;�v��ùq�r���[�,D�odF��,T\��$b]zvh��vp�Y��Yz��Y�ԩo䜣Ro[h�$�:jP�2��j�i�sY��(�Bӷ�|���Y�\D������H� ��eN�w*��=1�����c��z1UX�;Op�S��ꭼMwh�ea�����|r�JS�X4ׇ���Y$�nhC���&�$)��%��	q���>P4��aZ'�s�v:K(�K#.�(Z�r��!C��m,���ӥQ^N�ޡKN�&T3K�-�v.}��X� ���/~=V���
ۯ���@ɺ7z�oP"�J�e�)�輿7�i�L4��7?W�
H�򪨡J�x\]�j9X1_3��`�:����iÝ�;��Ԣ��N��Ȭ��1�*�T��3��k����O��)�;���֋�c���������v��@����i�u���]���@1�IL�k�S������K�p2F^��ߘ�Ի=4�Uz�\'^�P��ڦ�8�������?���Ϟ�'p�|�̖�4E=Dy�$0��Q��'e*�
\�Bࡖ��_X�O�Bx��0��I��ߣC>ƃ9*$t9	�O��}������N�̭�ݻ�@�����M�T�{s��	�8�]��%��ѧ3Û.�2�v�Y��<��	�����H��i=`��� �*v�\O���Iu�7�Sgc0������r��^QV٣��M^�|T�����Q��W���뇺�F�?���~f�����箆����䚢�e�h�̥�t��G��mGZ>dcEvkA^/Tp�傛[��½�M`Ho/�$W6�+>�1ġ/ 
�Jl�O�������f;K�[�� ��t�nZ�+�m�)��Ñ5�q᭞�����N���N�E)���
���~L����c9-�=phH�y��g8s��-U</HC�v<7W�=6��@��B�0�`~����?]h���3�������>h).ո��k��cx�4���Z����i�8�,I�6�K�jThsZttv�^�
�X��?��cj��@vrZCdM!�di�M?~'�R�i=R��ѣ�F�!�.L���0tK+�@k�$�JI�Ar�P�4�b��,�=M�Y諷�ͧ��Dڂ}1�z3.�}uw�_�PQ�@EX��\�tK�j:�8�����*9�NG�����tɣ�,�tu��F�����Vxp��	�\�_hL� O����$�x0�[T�K�ex�O?�f�hiK�"�Iwm�e��v�2%��KG�9[�_���.��������1Z��9��&%�xm5�޿�������������w��?^���x���o9�b4��ysk��/��j[E�r�������d�l�}?>�I�U~�*}&���e��S�hzf�hzF���+T����#c�Jm,��y)��R�¿�qm�:@���Zp�NB"2�U�i��d8�    "��&h�j�1�4��ā$v뱷5�똶�G$"?��-�)#ɼ��ʚJ��H���"��gK��IjRj���l��
�u�[aV�D+j6 ��'����u�O�8��?��\��z��: >�B��.�Y���;3i��`�'��z����w<S����7�h�YnW?ą�簤4��r̐O�L��Qj���x�l��������:0Pj�}�˛�V[Y �NGt�:be�'�~.v��b�y�Q�4m�C����O���d6�J�o̵ֶ���(��Zkp$-�/$ʇ�W��/w��훭������/p=���h�Sx���D�|�1��}gn3A�%�.��$Y�����O$���Wwf~����)1��Ώs�����cF��y���=�t�
 vVG������6M��P���bN)��M�&`-5�^��4�~���Oq޼���e��E�އ�.��A*D��[��2d0R�`�xT;�L]%�y �֣@U:#?�t�AW9�U�
4�+:F��w�Ҁx��C/�`d�gY~��/ݑq(��l3��O���?yί*�oD�M��U��pE�87���&�%[Œ�>��/N�(��J��U@n2S[�m[�`�\|��3o�|��������?��k�QWI!�o ��b����$4��/9qv���M>���|�ڃ�<�V���v$��ߝSj�^k����\�y	����56���	������qy��3O�q`4n7�2%�Ǐ1���Ҕ�ǌ�O��vlr#&�@��70�;]2�ͻ�U.�cU^)j��Ҫ�&J�)+a�%��=�#�
��e�d�����&�pRlأ�7���_����)�o��XZ)]I*ӷ��0\܎�<Am^�Ǖ���Q��1�QR��[�5b�� �2�C�+0��Jr�'"�,A/����c���I�����xj��3C�1��z������AJ�Wq]�ԇ��{7'��ܻS��06%�*Hrpΐ�"4�������R��*�oEj=�X��︒��L�׼�R��%c�seg����55�9)�R��ʑkݩUi�TBAX2�=��{�FEP������F6�r$F<��[�=]y@v�Ƥ\��7`.W)`��y,�x�I��rW|܆1{���G�>����g�gOf��h|��`b�C���,t����H�s�=w����+�qƈ�T�9- �@F&�=�3�[k�%�
�n��vʹ��뉸/e+�Q>��`h3��Ӭ]��+(r\��7����~�|�t{T���J�rV=��4,1l=v= �п6��@B[K�ӣC�	'�ҒԖo���U�/���.��!�h8�0��$�3Y��0���~���>7��BI�I�(��H1����_�E�"��ǘ�zM��+0�WsJ�BlA��
��%�
g��l*]�1�+:���+r�Mn�ƶ-��N]Ճ�CU�zm�m���ԺvHJ�0X���{X|�a�����ypΡy~�'�K~<��e��ҁI2DI�ržR�ʋ�U~�T����o<o�h.mm�Ս��o$ex�bۼk�$�GN��~�����}����Z���c��jтP"��q�H*���%���PK̵u�1v#�2s�Y?oȕB&��*=Y�P)������xhnF{�'��Vԁ0�e`�s�91�/	3i}���	�`���"�ػZ�� �.x��z��ÓS��kH��5st�}���U��3���|�U˘��)G��2����[��)����Ȟ )���,U�����r�P�i{���A���L:��1e��s�l&48�L�~ ~�nU�����p�}��K�pqc�}X����0��l��
S��DHe6NC�Jq��9#ْr+1��P*S{�%]��t"�c��Ip��;9�B����������!:�zI]���.����'K�7��+���x�]�-�P�������~�~k��|��B3גz��ʘR������b�K{��.���%�%A�UY|ΕG��e][U	}���3�����3�����������_V[M�<�����B�!?JL�h� ˯~� 5aY��3{ns��M��L�u��(����W��э?�y7�Qx˳�L7U�k�>�J��˸�u'd]�P��&dC� g|�/����ǿ�������dQ�����n�P��UI���������^�n�L�kZ��h��S�N�����([
!G�^7��9BcU��k��EuR�=��65�Z�Uoɯ�6� &2����t	:���-vmȦ0"�}�Iq��(�+X�+nH�A���SlV��]0�T[�U���V+.	�ig�������mY}7=k�p��RP���͸-PS{>�.���f�p4&2���`RZw�E;���p�J#b� �����0��/�H�u%T�����WY]+�H�?�X.���#���1ĕV� �Rt�b���.A�!�̈́����~�x��'�u�%��T�$��8_�l;4���������!$��ﷳ��R��Q��Kl�����Z�:hE��8c����+_T\�|�i�$�Bݛ���!07k�Úm�uG�pԢ��hO��Gl��/���ߍ�����P�S����WCg�]��KH�k�}£�%�1uJԆ���M�	������G跶�S���@B��g�Da8�?�b���l��* �">�.�U����nв8H�0ȻZW�?�@�L�+��A��Ǔ���oEf�����i�L̥e�.7��]��������V�tˀ�9E��b�����l���Ri'�.�\L�L���T}]�*�ݦ
�Y鶱&2�~ܩ��Z:�⟠u�S��q�r�4��~M�!^�.������J��*��9I"~5Jo�ɔ��ĩb�!\��w-�.'��a�]��%��$��(}9�6�*��"�h��H��0���q�F'4�\B���B����:V����'6"N�ฆ�~����|���5�V�W��?
�`g@�=՞�4J_�P��u��Ql	D�rp<d*�5��~�?j_2��98�Г��q�	���P���p�H����<㸼�+�x�#شdu�W�\��T"Wa�5�vԦΩ�b�J�1��J8���� ����2X���e�� n�sO���>��r}��wj0 H���(����4(c��Ъ\!_HL�Ly����o���I�r�9�����Ԣ)p�$��0Ø.�(�C<:��)K��%�A�4F#�t���%��v9�J�gY���z�A'筹�U�SL��7h<����D�fKv��,ԑ���9	�d1�,;[l�Z��HdԈ�4u�����S� ��Ѝ�,xU��jĩ�����a«YgwY�F��fO���74��!�O� ��~J5ٻ~*�7��O���p*����*=jw,��tZ�Љ��t1�q1$�Q�3���L˺J?�r���������:Y'�m��뤬/��D�o�n����I|O 5�u_��&����-C������ӳ
��M߅����ĥ������"�����ħ�i ��e�;�#p�jաJWZʅ3�o3�q�8 Τ�� `�v���El"Y��#��8��z��.�X��6�[��π�T�tix��R=RQ`;W��5�8��q]I�Ξ����9r1kO��Y�ՠ���a
I�>g\��Xh3r[����sC�ra�=��"/���|V_B��W��
$�̅D�	X(xG�B�~���SwC�(�.����;��I��ү�$�(:F(]�U�,�x)d?�Ǹ�YP�;�.�*��*��K�X)�opPW��	�v�F�+�u!ϛ�4��? 
d����~�ч�@yz"�i�K�+S����;ix���G@`�����?���ApI2��i�~��} �%�P֟�g�yh7�!�z�� �l���3	Ѯ�SI< e�����7�Whf�o����}hY���E,)+��Q�Ž�E�Y�V��	[I�E�48��O�3c;�HGQ��=~fX�1��s����j7��޲�P�4�%ʹ�9����Qá�$�ƞ�n?/��?�    ʋb6�_�u���h��QOn!Ta0n��'i�p8�u�zJ��R���5�?�'x� ��#�ιC8@����^ƇO\o%�sQ�(�W\�#F���7ҐN�ںj�$�e|"#���O�N�P�y���K�%��a��81`r�R �L�nݞ��˚y��(�N�ǿ��킥���o�!����B�	�IJ�Ζ������eZs�sv�<-�����ek��2�)M{�	��>���4fp���[Х� �m3'�m�v`�3���_o�^�_%A�\
G.ࠛO�����ż�[q�N��Y_yN��HN��4Y����s�is��Mԧ+�z_ϷS��_O����,��t������An�+�V�����t���;�[c�[��1Dz�d�ub�6�k)������+e7����*M�-��A���,vϮU�*��u�ɯ�cG3 XP��q�RՖ��&ߖ����N���Q�%<l��YϴIjG����ܜ��,7��0��^�18���j=�No߲N/kq�p�Q��P�g�`�<��?:891�'�Oڿ��em%��1�+$�EU�"u t�v��wT� �,�~I�] 	�G���Gͤ���Ұ�!���T�.8>��@d����3��H�5qˌ7�r5j_�H߈��h���m��W7��6��؇�������\��~����'!Ź���Rk�r���u���~�*m�B�	����vfg�=���Zo�8doMY`��ѱ�F�9�,3�{'�ޠ�P�����jǎ^��?�����|ԍ�h45�s%��\������_�mb5��T`���8��'�`����lb���K߮�v���;k�/��� p�1.�����
ep:O\$�㠔�I�[�X�U��R��@��tWjF����r�Nkb&.���](&a��G�a�j�	[�!��+Sڿ���I@18��&^�* X�͐��BL���R��ZjN�Z����V��e�+�����P�8�'�.�>�~��($º�l�'��ϹFᔫ���V��R�ǜ�c�,�Զ�	2:�ڕsv�cY���vO�����e��`�2L��z	���X�����r[��o���<���ެ}%(b��M��^���,��I��u�޳�i�F-G�k���Gf�AX���

G<s��X��O$o��xhS8��G���S���2*�+*��F�����d��)��]P���h�y���&�!C&�S6�ie+�M�����L����8D>CR���[a����&��Ә��³z����,OP'���SMUH����S�=���i|�x|*��>|�F�"�'�,�4^>Z;�T�A8�Q<d'�J�=jOE�Z"����qv���.�^<"�mݳ\S��Sq�zzG�Y?��p��B��*c���l�ԇB���N�sk�vE��.�x;yre<exX
����1+�m
���ԙ$��?3g�:�Zu&��Է�V��E�gr�hY95��\ZO�=�y*;�[5u�.Rcx]�&׮D���I���O�Z�R_��9��#����;d a|�;XVF�_�������� Jv�McuK�mc�f�-&�$�Z8!��o���A����I�� ��(�����«�}��*!�T�}E�N��c�9���B�\=�J*�4�}M�b�(�M���]+�	�U>w,*@��i�j��Sd��J�]U'	[]�8۴��vf�T᪒�����8)Ҡ��,����R]gU%�7TA�̆1+�J�$A�ъ���ex��8y-��.�+/�`K�!%����l#w��5ɤB���n?�Z>�$��U#���Z�FH/��������a����]~L���ġ�}�-/�LX��)��~�ك���}Ƨ�^��R����J�g��"W��'l:|�'�4PL��<n��y�V��d����/r�:|����������R���=�Rk��l�ٍT4vCoX�@�WEk�iObyx�!�,�{ƅ�Y��P�� �oY=�5�Zy��6�]#���Rqv���R�ƷU��)R���h��w�f�J�Z�'��3��Ɇ]|g�W���[�HN\0m���� c���%{�;�֩-�/�Æ��.���#���l	uѪ�!T��-�V윾�+|]��ꢷ�M?��5q��1"���	�u��P�J��;�ڎoD�uE�(n�(����Xع����:.Ƈ{#)�lZy�	���ݖ~[����mzzg/����+�JP�l`2�n�q��޾��o�s��4�:)P��� Q��])ո�]ܓ�q���-��X��A)�ٺB�������J���]�R'ްkJ-�}���#����]vs3]��	 �������s�d\����f�UT�R�ש�]�2����2�����f�d#:B}����� *ԕ=�e����-�/��l.��Bߌ�ך7��M�c�:���-�k�;���B�$ҙ��LN��B��S
~��C�ORl��
%�N��}��x:P݆�u�{�-�/O+*�H�� ���-ܤb�Z˜���)��3e�nu� ��)�x/�S�.Nc����՜���.U�q���T�m�6C�I ���
�I�Z�9�&�#�m�{G�w����.�7�����˿�Ln����٬��Ů#�h��B}��GKC��i�@P���??Ճ�m�#�2����
���7TV�T�&�@S��_��^��Ȃ.�N.T�#�t���qF��>D
vm��[��?�x�p(��=5�����NM��!H�v_l�BL�V����c�'z�Q<B�؎T'����w��%���w���v_E�@��%����D��d�N��/�͞4�W�ѥP�&ib�C�Х�L���te��бid��]�1�冻�+Ø�Y�Gv/���t�u����%#Y�)v��+�D��B�엮
T�SV9������i��V�s�T�PI��)��y�"]��v�B:�>�b��8>����G�sQ'���A!F�y�OW��ݕX����L�2�w�Udv!�@�/o|[&V�8�{��OY'����;v��w��Y�{�+�;z�%�N]���!�n�1��ZM�B�,8I1j��;\�L�S�?�$���ʣ�f��<s�櫢�9ې����-}�FB��sh
m�IWz���j��#%GE��~諢�tJ|�nOI�D�d<�QaU�7�:ե~ҁY'���0˴Ia0�8/v�w 8SB��x�������$ó)�􆮘Ul8{3ff"5fp��N���"��'��:�k����+/G};0��O��+K���ɳd�|%�#�|6�Es9�vG����,S�cL�<�!xr�7�\?5��xWR�.��RU.��@h�.�l��<�(����������"�aiSY�3]J����v#��%�h�M�އS
����g	f~���9Û�V:z9��I�߆U�SN��Ư��x^������p?j�'����E"��Ӛ�d�Ī�j��=��y���\E���$o��;L�N9�o�f���.�qg�{c�5��L�:�+��b���qV?]7���p���T�� ^%���ר���ָ%g'� ���%P��Me�C�>��Ի�-��� F�&Op���=�`���vE��	�����Q�r=-4�>Y`�̩s�z_jQ]6�g�tj�2/�6>���6>��=��k	ٻʗt�����昙w����n�ъ9��@~X����W�ɦ��QK[�R�o_��/���Mޕ!I�-m�c����*�I?�Q��y��ۖ�����Y��s�N���u^�J�Bw�N�֕.�j�ȷ3$_��i���q��4W~NO��K��#g�;M���y�T��S�d~nZ,İ�"�K7�y�x��`��^�K��5@�xvUj`��8Ms覽X����O��(n���q�]��֦��>ǔR�,�Ĳ�3��o�0ԙ+�1ao��X���[�B9x��gǟ	�%9yCk=-m�K"Hּ�u��1������\7�f��id���*Xx�����$���O�x�k����ԉ\���P�FۇI�[���Ὑ��    Ŝ.�f�s���z�ԙHWF.��7_'&�i���.�KA1T��p|��vp'cP�gz�5|�$�H��3e�jҥМl����*4�6}v��m���٨p �I�]r6��˕$Ǵ�����B�r�q
�и˔�`��H�h)�tu8-�@�	R~����^Nx�^)��;Gm��; ��p=J��o��z�8j:Ɣ��]�t	�dr�S��F��I���nDw)���t7"�Rur�8��Z;�,�N#���u>��$��xz�k��|��j$�6�����9�i�S��~wh힇����}��䎜U�4ж��Q��q��)�����# 9� �;�{ʴ`����0�^���s�����F]K�)|Wai��cߧ��������Ej���u�D�f�峧��g݄����vwၶŭ���~k��ً\7��n&n�5UD�s�	�	������"���")d�?��^�/'m=�"��\_���2�D�s)�8D�4�c�7�m��x����c���)��ڝ�M-P�~�E	e��ĥ��`6{��FK<��d�M��D<����/�g<kF^cQL��&��k��IC�J�J/�sJ-� A�6��'��.�����ħxA�8Ӑ��x!��'�����κ"����'�>;q���-¶@�/
����

�d��o8)$�-t#��9ݬ��.B��l8��Z�T���\�v��u<��"v�ô$���� 7�|-ߙ��p
$7.�O+���vٖ-GNo �K��9��@] �*FM^G���"ƚ�̺�~��!on���R#��B��F�D����2y����l�>+q��Ic����I��H��@��2�d���-�c����҆S�fruP7s�m �3�Y����y�Q����T)���^�!����P0A�h�� CIݥ���ߝ�AUU=s���AyGVF��\��l����^Y�xZ��%��Bwx�=^�M�|`\I�wXz؁.�8;qIz`Q�0s}�R���Z�[��^I_����(�Em,f!9a�rȯs��ˬ�{O���|���嚽!%���!IZ3��ص1�)[�_��56CM�bK3sNou6#�D��ap�)��7�"���!9g~���Ɂ)�Ӳ��Sh¶�'��~�&�ȟ���O�'��|���rTZr �����qY�9�C��*��ƝV��`����ޝ����q��V��ӄ��{ex�q�Uq3�y����R=�ϒ��>�i'A��������9mcxZ��^{k8��t�@��H�:��,he0z�m��ܩ[V7�e�3N��������#r�������m�+�׷M�R�'m��l�G��n�@���O�vS�P,*cR��3��z��;�{d�^�Ϻ�H���Ձ:F�L/��ja�g��v9o��Z�ԜE�G�=��D�*�z�O������� h� P��G���-�G� �X�$5Ij�����6x92��*й�dhq?xU��.�brZ7�{�b�%4WH�nx��Tce�:�i�zĘ�M�6t��ɜ~.)<�^xQO�v��r
�8$t�V�EW|�۶�Zh|_��ST�ց�蒒���ƶ̭����q�,�I}?������ym�Zo=�T�����{5�R
^�OPz?�\����C��+�y�f�Q��]f2o�������R`���>���`��KcF_�a�N\R[x︦.�}Y��?�<ٶEak4��6�����E��ZԞ.����j_j���g��=D��w�������Tڦ�$�*�Z[̚C|s��	Ӷ������Y�mk�[�,'���-��d��n{���}�a[R��$Ʌ< Y������⹶]�Hû�k[���C6_h;KJ(.�*toUT�)6W� C�P�	����l�`(��?(�Tfe��K\䁒޳J{h���L��sթ��we��{mER3N�'���9f(�S0��E`xǰ���R�b~�S�Z�l�
���&����h?Lz]��Ao;k!N�vϵ������aS| ���>a_v�S��wd-Q�<l@=}@@?����L���]�w�D=5M�\�&�QM�l�J�#\�W7�j;�]�@O�7�x���ƨwFh�13���!ޔ��-E����\�~AClT��Y ��R'�^��w	!��S���M$��r<�ޔ���fwq��RZ?���O}�� ?���J�9��!�	E[�|��|��i�d�k2]�����lC(i��`����[6���P^DK}3p�j��@���#M�愹�ٶ���ގo�%Lpf��nh�\y�y�h.��C٭��%�G�k��gP\Y{R�'�������B^�a��� ��g�����P�"����$�2W��P��k��[�������4w�o��c�S#൶�R���`W`��>ߣ1�l�l����y��}�'�YWh����%6�4hܸ;_��$[�m�cj��	�\�O���^g^��d�3�[W�	��:xiȐ�H��Ʃ�P�ڪ��%�N�W~��T>�PA̻,P��g�e����*��,��N�e�(e�[��$����}�.JNt�dV��דh����{�i>L:g��������I���Iq'I�)4��W��4B�$�ע*�Y'}����&/w~{��R��C�+���ܷ<�(.�洩�bO�MG�I=h���.=��f�HC�B����$c�7>�:�O�+���˛�">ɽ�:0F`��"�=�7�0���ch�p�#>bDu��`�M����R5Zh�͆�(l�.	��9i��4ؓо�]x�;��Cy�k-DW�#�kjm|�j�o!��T����3���1�k�<�:5�k&��]��-��x���-�c\3��mĠ�&*�8��,�֪rچ��vο ���}.C���p�kب���8g���rd�?V�-�蒋UUv���0}�:�
7�ȝ3�n�dr4uU�6���(NE��|Vߓ�t>)gS?tL����Y�K�Nn�x��w�"Y�=d8�IQ�Zm�4�$�L,G��;��PTJ��"�?3]2f���c18 6]ݴ��P�N�*�������(�5�#�0#S���&��]�tiT���P��F���v��Y��f�5^����w�~9^~�-��&��	���r4D������ �D�Nd:z&�ĺ�>て���|��u񓚎�g\����������O��H5/�w��B�C�b>T��.� ���(�������uh;���Mk� N71\�ְ��a0���Y�S�!��'O"$���ܦ㤏�Ӳ������dz���;T����Ӭi]�J��|���ҥ��.*Cd����$�c���~�n��0f���}V��@��	��蚠����B�R+�'�ũ(�]ʣ-�Fi_�TX�]��'�?�����7trH`�RXNnB6��ol�Ο�7� ��w�����5�Q��͞-Ƽ��?r�]^/�T��S[,a*���i>vЅ��Q~���2��SǞ�)���'4C8l�J��x`FĠ����pv��$�b�,��YO�?|�Y��[�.GaE`�ѾğQGCc+������*q�� ��qw�?�k�\ù���ݚ J�A���*)���\�1�b��_7㌴!���1=�.q�����x�t����ppPPa��D��5�+���춴��V1��e3-z�]���K���MGZ����L^L7os��f�ո�u3���Be��ғ|���������B=tew�4�08���R��{�:�J;_�ٻ�F��cl ӻ�Ey����N:S_X�ޢ���p*��2��	�bY]N��J�����Zd��:�vq�nƁU�3|RI��7p� IQ�k8>p�Y�`s4܅�ʘݰ��^�4�2��k� f+nX&���P�Z`�ܤ'��{�$�x��`i�T�W��\c�ڦ`�����f?ZsJ�jJ�y������b�������XMһy��a�^��^F��3d�!� ��a%��F�s-7�*����x���"ԋv	n�n
ѡ1}5��VԶ(;��
d,�.L�0��%�j�| �  �gz�bj�z�0M��vE7a3͙s�	G����dB�p�(�K!�?��ǁ��ͲU�#M#
�P��)%Re�iC����;��d�n��C�9�����0!�Z��\W��D|B��ޤ^��sX�����Y�Y�{��̞V��jLd�,�Ȯ^�1�4Tv�%�N��'��)���9�c�C�y��F�o(ӦM6Kooe�1(<��u@��{a3Ҭ)��9�p.t��C�r6�\3=�źD�����z��K!6�0S�*zf�do�#�Z����y]~'+gi��H������TS��p8+��G�eGAd�YP$������|^����|��yd�M	�?p@��j�5μZz��1���?��bVk�WX���s��^�q�B_9����*P����'ޞm\��¢��~��_�� L�$�      m
      x���Y�������s�-�\���q30O�g�/�k�o����n����?����_��w�FtF��*�t����ц�� �?]8܊ \;�Qh���/�V����?�[��2����@GS��/�g�~9��J�/|)�v-��u��:��2i�2c�F�=�O��8��k x�:�W�/�!ݴz�6��Н4^�:*/�)k��qyڳ$��`VZ�,ru@8�j[D���L������A}����;@�o�u0
�v���WY��j`=t�gKp��\/�:\P��o�JtE�Q�5�`�ģ���%��i	u��Od��	4�@�B[+̎��FRa�ibi�Gל#�b�ښ4�5b
]PK���#tE=����!:�B�賮���5��%)�Rp��k�_"�˔^9�2�(Ԥ(4��Rd�L�
5��l]���z"%Gt0'*��h�����7�W�����Z��V7�J�%�h�؄�roH�,J��RGP:KJ��C]��4�5.b�_� %IRҬ4¬�DӸ��6¨+���\�'���m����p
9�f�S(�Y*�#jSk�HBk�gA+;w��II%�i#���(D
b�¯���)�fp�M��B��(σ&��
J\��% �� /�?���Z�m��DE�SQ6�l0��i�!)%%Y#�h-���h�k$!�=��D�6�ZC��V���=��#�.��"�,�)��SJ\��"nc�c��.�\L������G$����
��&
��[*ʌ2�Ԡ'G.\�D'z�=�I"-l����[|;����>�A�]'RB����z���d��t�-���+����{�����uZ^kgy��9N�@�7�z��֬i�G�9�휹��U=�Z�>N�fTQ��Q��+�$��?-o��<AM���N�b}�E|�b|�f|	U�,8r�J�����	Ar!��z�7Q�ο���f��K�C��A��ͱP�T�#Jx�GJ��1�C$��/�����W�Z���Ū�?����~h����5��b�����E44����������ا�.�H�q"��t��⚉4
VZUP^���F~g�̘���>.uM��s�0�%����~���������1�62�6Q͌�-�7�
"
Z�������跏~Yn�O���� Q:{�Ξ^^��,7鬕d'��U�p�m����W0r�}�+4�򢕫���k��vE␘W7����&Z�3�cC�d��>��3�N��`�4���h�\q.� uf�ú�h�O��	��_\�_4gJ���`0���Hގ�N�`���������������4�Ѱ$�А�&�a�Xe� J���0�14v�[e߰c�.�(W=֬ ��cU1٣-�mLsh;��(�{&$;��h3ևހc�	��<���J����Iز�a}�kD�(R�-4�p#&�!3�����7�"a�~&�0��<��݌��5wһ���n���rr��pA9�.��g�D���[�����}�_^�%>��:�A��?�j%B �$���b���lN�J]g�:F��8�_1FP=F���k �������s�u���]7�1}����J�=J�eG�Q�,O1V���ߐ�,xk��-9�/�kH�J������n�l�C�c[��Z{�����p�z�ݎ�]��P:T9�oa^a������tS�hIz#�`� ŀ"Cb�N����C���5�ߣ�^��;&��%�c٭
�oL"�����5b���'Z����0�r����������lz�W�����O����s���R�݇����^��|�0ĸ�qR�_�S���)G�֊�qtk�
��O�O0p#���F����꡽&F�g;�_(VۀÃ�|��Bi��y�_�K�;�{3���ղ{��.�o�׊�Y�2	�z����tk��rG�l|C����hs��r�/�m��h�[�I(�L�k����/d�l��r���q�k�Oӷc*�����;Re�{��ט~��J���wbX|zXܫ��p���[)����eA"�����@��]�b1�!s�0��ۿ�g����!���z����V$��:��Zb����EGX���~�7�Y9Zr��]��E+6��@A7BС�Y�#�^u�2��<CO������rr��wtO{���މf�������|�puk��+b�Z�(O5��#XN��蝄�5d�Ah�	�Q�A(����M�yL�������Q؎����W�Dk=p�U<�Å�go:g���to�Y��K9���n~D���o���m厔�f�T�?:Cn��d�������j����V�h�l�����F+�ԵF�\d��%�;`졄�����+�vZN�ȶε;��\>��<�?�ڈ�7���q�B:z��B:����?����g_�lsp>*���? �I��I��Pp��A��/��������L�^��|�w�VGs�c�`G����h5�[�KN�񐎢LR�l
D����m<����V��w+44���$�����ۥh���vŷ�
u�©u�i��_v�S.�{�nw����[w��e�xCcn7��3�U)n�a��1���|�a��QG��E�ݢ��F%�F�f����_��O4;f9�+:����'�9P�w�lS�4n��{�S�q"}>����iLt���ў�F�W�n�-Z�����Q���X��J���� ������i�qF{��Y_�ӫ�I���X<������]�.G�����@-�J��4�ޘ����"_jƥI���?�W�/9��y��u8��p��Č��7P���A�`w�ƽLݯ}�C0�H������yoP'�J��/]�pCma�-���J��z�ОU�!�`�cހ�ew��X&�=L丩���E���4e3����/��G������7�Q�^.�ǔS�6M;�r�i��Ɖ��Q�`��Jv�/��f��m�=+*Q�q���VA%P�a~a�+���4��5�ḅ��� �ѣ���O�cWKT��C�>�W�C�7�)�<b���l7��vn�*�~�l��(�N�cphxt�n�����P�[�i���=��'㛪�_����?Z-ܵ5��D��$$	"^�q*:Z\��Gݹ\&�����<�_��7\e�Un�����l����ٰ�ռ��C;(����P�|z�~����'z�sYv�F�sL�z�d�٭]��Kd��Q	��ٱe8�����+'�a5��:�{��cEd��:�������*�'&�0X�j��Y�����_��s|��d����%N�3���뾷h�Hˠ�C���4���Jl-JlNO�E6���\���P�҃���ިKf�}Y�-K�+���t�9�y�g�³[�� ��[7��a�0b����-�
��G_�E+��+�<�a��+ֆk��v�#H�F���z^o�d��,�ghѪ�rbQ�����b����ޥ�O�|KS;k3"��������OMճ8������&������ ʐ��>�M�o��e��0%��9}����|��$�%�}g1�?Ǚ��#qk��ǃk3H�<�贁�͕��~�t`�!�(�]��� �_���xz�[8���cMJ���:�Q�.=�[�˭V���<�3WNWh�ki9��^wƏ���ʳ��L��_>9u�zo.�?p�ۅ��o(������� �&�������"�^���h{����(�\���� gz�r��_V̎���=D�p���:pA�NV�1k3O����Z-�XJ�v��q7�1�	�X�摏�4w�)�2��U����|�'�Q�ӵ!�8<#_���Q"���i+���ygw:���.��N2�6t9��5w�	�R�ա����\�+���'1t���g��g��x�Cچ�.뉜�m��9�,9�&��<>����W��h�'i��	V#�ș3�Y��AC2p��GFu�E9!�*$
�@���y��Kp=C.��,*�)sD6�O=Ҹ�o�m��]!6��k�\�+o���(�7_�,�#vz���T�!:@��3�XM�xF|\�7�jm߲�Y-����S"q�
���жH�N \  ?L?�!�I��Ԇ��6r�h�����9o (��#��1�ʕ��A�#ҩ~��3e��˼/8RҁwDQO�o%V`׶&��h@��gÊ�@���i5����N	b\h,	3�+�$� ǮR��|^l���hHf6OV�HK��.�Fx�B�����ڹn��Bl,t�%�����AP*L�E�Ε(
�/�L���I�0&���2�8��ܑz9��:Z�\��"Cz6�!��Ɔъ}b�04Ha�i4�.�x�~���8�e�Ƌe�E�����p\���	��	���W2�N>�J�*�;ʓ�|+�\[�;x"���`�5���e��G�k�S���2P:�˘h�]���p�]�DM�e��������+�+].>ܪƓͨ�tk3��cRc�h 蓉F���A�t�%�{C]ic��k���޾��|�h~/���ihٺ���lI��|���?U��n	�3�}��W�%�o�ŗ]��\��߻�+��Ʉڮ��[l����G'[���ӕpzǠ����P�X
��*m��E
�v��GQK��q�{�����׈i
�wӢA�F�C�����}�-�m��3*|ʷ�h�0��<���~���pXf����F����Q�ӡ�bዱ���=KT��2��4z��nض�>$ʥP�@@�G�w9���SM[ٰ}���G|1�?5�h�M�9`
}���r���b�PY��
�_ �P�ȹ}s���,�]x:�~����&O(�%;4�#�}���<���B[~հ)*�U�3F�4Rz*��A�6Rcm��KFc���5<k3��E{!���<L����,�Br+oGmɵ�����4X�MW�
�x�o����R:�b�Z��Z�7�W�6sw���j��ս���2րΛJ����=tF��؋D,��!�Z�ibx��Of��Tl�<�]���c���Z[�ܢ�=���C�-
[Oz��q�����Ҟ���dу����lh�m���2Z^'|O������)�JT��t��Y�C�!���y��x��,��($�[vHq���H>13K��g(��G��w ��dC��f��	�^Մ�1���9��`rg�3��/����Z��\:�#_*d��&Ea|J���ũ��N��ZQp���4��	��=�`H���)��$����{��$���w80\�o��h �=�^�/�4P�_t?޲Õ(�����ƈ���6�h#&�ˁ�ruQ���&��O��Q3�Q{�9Z�6b��hh�������G�˲A}8�1IEs\[d�J��ɞ@	%=��PƭLNV.2��Z�U��*3Ң����Vb3:NCrd��oO���w����ֹP1魢��h��c����R`��5T~�0���C�kQ<�H�%TL�W���y��S*��*�@"�Qh��Y�)�JB���t/8;�u.�b}�s�s��i���2S8��i���zq<͠��c�(��/e�.�����F�A�.�ow�/��T���Co��?��䓵\��H�����	*�|���|OPP���E�{m���pMX>d������LER�$C���'�0ޒ����kw�� &hg���Є^�l�Br[�8/橮Wo1��wY���=��T��1�~=�̗��kׂ�M�wO*|j>��0���]ڎ	�~=��'�Z z�f���~B˷W*45�3h���]@�#���#HO��W+�[���:��5V��d����T���R<	jI-�НZ��KeM��r7�dM��%p�pH���h|��7P�[�y�U�����z��j�^���x(�FJ����f��ì�p������}�рK@�ga1K+|�i1�>�K��S�E����P:jJG�0A���ʷ_˹R8
:RR�)�+����H��*S��� �zX�����1�P���T@N��ʏ,��,��Q����c��!�O�x�b�C}�tfIg�S��\�$�HK@0� �<��8�(�d�'ڰX��+�|k��|�'�s�%��乨n��8��!�z�~=���z����������02�L�ݱ���ۡE�����u���h���LaVD��`ji0�Ny~5(FK��H�r����|hn�O=�4�z�C|�C��wG)�"Y��tN��Q �G�ּ6�h>�FB����K���l1e?�����*�+�fO�D�����Y������W�F3�to�l��������Vy\i���l�̧FcM�x�)6���Lc�a��e���&��ʽ������t��؏s�����U1���??�u�G�:��j�j�W� _�f��Dr�o$����3~�������28��i�W�?o[m�E�G�t��']��zD,����{�����o(Y�^#<mC_#bq%���h0p
㿦�^{�-�23��؎�x�:AU����m�B�uE�`f�*�B��zj�=�oO~�����n�&�-��u�	p-��W�`Nn�ܾ�;��PQ\�b��ۆ���&�}��-S�F��{����Ne�"�j���:M�p�<�����67I�X�������\;_�/!�+�>�HyJ<�2�t�%�{���m�8B<˶���	}�|t����~�Xn{�u#���)4mE��r���o-��h�Gx<�(��6MD��h�n�*^ȉ�s�sFjQ�B������bU�B�9�>�4��ny��Xꎥ�4#:nry
�}�&�%��a|����.�í�zM�>t�B��$y~Z�K��m�%�|5�c}�v�r�r���X׃�h����?H%�ǧ"%HIQ@��M)��>��=)�1��p�b4���z�~���aJ�o���{ti���#+f8p#'P��W�_~�!4������kDZ[�+h��N�����������      p
   �  x�}��J�@�ϛ���X�=����ͥ�e���&�4����衂� jiA��Bj?�a�|gk�6����n�����L�@Y��bSF�Cb���SuJ��%�3�w�l�DP������Q��0��L��e˄�lbؓMYW?ɉW�0n�.̴B��T������AJC%�����MԆ�����s_m�@/X���g
5��W#r\^�3��9�2oS�{�U=���`������ŜR��-�	�kQxE�r
Fse�:��m����k�#0B'GNQp�"x����`��vl C���5���`�N`;�`W�R(�q�:\��WG-�B7y�jUfU���v�A5�IQ2��|SM�-�_]�z��?s� T�ٿ48�m���f�U��'Yb����/L��g�O$k����	!i�-      i
   6   x�3��pa�]6pe���q��8/l��(��37�4�$13S�+F��� ��$      j
   x   x�3�L-���{aӅ��^�uaǅ�!4�kYj^v&�gqb����.6_l��F&f��(h'fg$jrs�s^l *i�+	*-.�L��2�L*M估(�p���Ң���=... !E�      n
     x��X�n1}��A�{!�S~��7)U�U�ҦM+U}�JHh���H���/�Kzf�`C�E��U�z�3���3c\M���#�ӈR:7��t����t���F�>�]|=	�����ΊӴs�9K��:��:�����oB�����#8��Ei��,�b�0�A�l�$,b��B������,::�4� �k(װ��&M�9B���a�L"�����vM嚖Rb���k)ײ�N�M�f+t$�;,|,K����w�ehd�܀�n؃�.���b���	g^H�X< �Q��@�}U���S��1���s9"̈.�9���;�n`V��G���{>�C^Ώ#z���3�;�w��/�H\�N��b}�` ǋ�����ӷ��򑥗,*�%�ӻ��w��kʳU�z�m�}�>�d�O��$Ǐ��3��+_��yy�X�W��'����i���6�ʆ?CJOd�����9/8��8��N�g�9�"�uxվ�|���>���g=�D�ґ�3r`Ǘ�|;^�o)߲�N���X,�)V�"1�@>���9:���9��9|!	c�8�aτ���/��7UGUA_V�P�c����.RgYj)���j�����	���n"������k�P�age��	a�ZU|'zyB�	�o���:�h�+#!�B���@���YR���f+�Z\����G�Q��U�k��">��)��4mv_1֚n<����cV�vMvD7TG*���9[ٖ4+�"4e.��0O%�0*R�6\��r(�k�uz�5U�6{3����]�gڬ-l�z�뺪/ޓ&�4���bX���0nP�2)���\'Ч)�e����rQz[m_K���bs~{������y弝�dV����*���b�j\�A����BK���c�p�f��Hn�cJq�H[קS���x*�|���T��R\�lt�T���!ܜf?�L:�U4�v��jY�U���M���?v�pVY�ckWU������'tS��K`������J&      r
   �   x���@B�PLf�������#�S��G�P��]N8�͍��������ޤ�>%�Y������7��C5�]����MyT��0���t!�}�S7���2�i>�F���'[3�����7��Y��e��dU�k����?9�#�      k
   5  x��T�n�@}��
bC��)<l�M��^[��[z��Z)�BL�:qa��8�XP�i�"l�Ϝ]Ϝ9;=r�����rW�tg�_e�ع�ڹ�s瀧�aU�0���\�2
�J�L���~Ev��j�e�2-��#|@���K��KwN�4�<����ׄ�ֶq3{뮑7ֶ�a�)=2�����X��+0w��i('F>�-�{�_�%�)�Lr�Q��v�����5�F2T�����������K]��.�\��슱xI�
�љ���$W[ �:�W^� ���\��D�|�� -��&�������pĜd��<��)��YxYk��^�(��#�Z����� 4ޓ��8�r32I,:B���z��<C�nS�o[WuE^�i��c��x�s�,`�5��2-�n�e41'&�lvYz��|�2V�,Z�4�L�o`I�z�=��8d���ؤ����~Zw}-)Mr]h������]�x�M���lE��#�8��̊�H܃��8�����&��8���n;_�Q�f�l�Y`Xy����x��hg�3-SC�)���>,~�����      l
   5   x�3�0�b���;.lR�0YO�� �ta��F���[/l���b;W� Qm�     