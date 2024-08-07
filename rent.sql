PGDMP                        |            rentacar    15.7    16.3 '    "           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            #           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            $           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            %           1262    17435    rentacar    DATABASE     }   CREATE DATABASE rentacar WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Turkish_T�rkiye.1254';
    DROP DATABASE rentacar;
                postgres    false            �            1259    17446    book    TABLE     \  CREATE TABLE public.book (
    book_id integer NOT NULL,
    book_car_id integer NOT NULL,
    book_name text NOT NULL,
    book_idno text NOT NULL,
    book_mpno text NOT NULL,
    book_mail text,
    book_strt_date date NOT NULL,
    book_fnsh_date date NOT NULL,
    book_prc integer NOT NULL,
    book_note text,
    book_case text NOT NULL
);
    DROP TABLE public.book;
       public         heap    postgres    false            �            1259    17445    book_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.book_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.book_book_id_seq;
       public          postgres    false    217            &           0    0    book_book_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.book_book_id_seq OWNED BY public.book.book_id;
          public          postgres    false    216            �            1259    17455    brand    TABLE     [   CREATE TABLE public.brand (
    brand_id integer NOT NULL,
    brand_name text NOT NULL
);
    DROP TABLE public.brand;
       public         heap    postgres    false            �            1259    17454    brand_brand_id_seq    SEQUENCE     �   CREATE SEQUENCE public.brand_brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.brand_brand_id_seq;
       public          postgres    false    219            '           0    0    brand_brand_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.brand_brand_id_seq OWNED BY public.brand.brand_id;
          public          postgres    false    218            �            1259    17464    car    TABLE     �   CREATE TABLE public.car (
    car_id integer NOT NULL,
    car_model_id integer NOT NULL,
    car_color text NOT NULL,
    car_km integer NOT NULL,
    car_plate text NOT NULL
);
    DROP TABLE public.car;
       public         heap    postgres    false            �            1259    17463    car_car_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_car_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.car_car_id_seq;
       public          postgres    false    221            (           0    0    car_car_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.car_car_id_seq OWNED BY public.car.car_id;
          public          postgres    false    220            �            1259    17473    model    TABLE     �   CREATE TABLE public.model (
    model_id integer NOT NULL,
    model_brand_id integer NOT NULL,
    model_name text NOT NULL,
    model_type text NOT NULL,
    model_year text NOT NULL,
    model_fuel text NOT NULL,
    model_gear text NOT NULL
);
    DROP TABLE public.model;
       public         heap    postgres    false            �            1259    17472    model_model_id_seq    SEQUENCE     �   CREATE SEQUENCE public.model_model_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.model_model_id_seq;
       public          postgres    false    223            )           0    0    model_model_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.model_model_id_seq OWNED BY public.model.model_id;
          public          postgres    false    222            �            1259    17437    user    TABLE     �   CREATE TABLE public."user" (
    user_id integer NOT NULL,
    user_name text NOT NULL,
    user_password text NOT NULL,
    user_role text NOT NULL
);
    DROP TABLE public."user";
       public         heap    postgres    false            �            1259    17436    user_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_user_id_seq;
       public          postgres    false    215            *           0    0    user_user_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.user_user_id_seq OWNED BY public."user".user_id;
          public          postgres    false    214            z           2604    17449    book book_id    DEFAULT     l   ALTER TABLE ONLY public.book ALTER COLUMN book_id SET DEFAULT nextval('public.book_book_id_seq'::regclass);
 ;   ALTER TABLE public.book ALTER COLUMN book_id DROP DEFAULT;
       public          postgres    false    217    216    217            {           2604    17458    brand brand_id    DEFAULT     p   ALTER TABLE ONLY public.brand ALTER COLUMN brand_id SET DEFAULT nextval('public.brand_brand_id_seq'::regclass);
 =   ALTER TABLE public.brand ALTER COLUMN brand_id DROP DEFAULT;
       public          postgres    false    218    219    219            |           2604    17467 
   car car_id    DEFAULT     h   ALTER TABLE ONLY public.car ALTER COLUMN car_id SET DEFAULT nextval('public.car_car_id_seq'::regclass);
 9   ALTER TABLE public.car ALTER COLUMN car_id DROP DEFAULT;
       public          postgres    false    220    221    221            }           2604    17476    model model_id    DEFAULT     p   ALTER TABLE ONLY public.model ALTER COLUMN model_id SET DEFAULT nextval('public.model_model_id_seq'::regclass);
 =   ALTER TABLE public.model ALTER COLUMN model_id DROP DEFAULT;
       public          postgres    false    222    223    223            y           2604    17440    user user_id    DEFAULT     n   ALTER TABLE ONLY public."user" ALTER COLUMN user_id SET DEFAULT nextval('public.user_user_id_seq'::regclass);
 =   ALTER TABLE public."user" ALTER COLUMN user_id DROP DEFAULT;
       public          postgres    false    215    214    215                      0    17446    book 
   TABLE DATA           �   COPY public.book (book_id, book_car_id, book_name, book_idno, book_mpno, book_mail, book_strt_date, book_fnsh_date, book_prc, book_note, book_case) FROM stdin;
    public          postgres    false    217   �)                 0    17455    brand 
   TABLE DATA           5   COPY public.brand (brand_id, brand_name) FROM stdin;
    public          postgres    false    219   g*                 0    17464    car 
   TABLE DATA           Q   COPY public.car (car_id, car_model_id, car_color, car_km, car_plate) FROM stdin;
    public          postgres    false    221   ?+                 0    17473    model 
   TABLE DATA           u   COPY public.model (model_id, model_brand_id, model_name, model_type, model_year, model_fuel, model_gear) FROM stdin;
    public          postgres    false    223   �,                 0    17437    user 
   TABLE DATA           N   COPY public."user" (user_id, user_name, user_password, user_role) FROM stdin;
    public          postgres    false    215   .       +           0    0    book_book_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.book_book_id_seq', 20, true);
          public          postgres    false    216            ,           0    0    brand_brand_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.brand_brand_id_seq', 51, true);
          public          postgres    false    218            -           0    0    car_car_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.car_car_id_seq', 46, true);
          public          postgres    false    220            .           0    0    model_model_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.model_model_id_seq', 82, true);
          public          postgres    false    222            /           0    0    user_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.user_user_id_seq', 1, true);
          public          postgres    false    214            �           2606    17453    book book_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.book
    ADD CONSTRAINT book_pkey PRIMARY KEY (book_id);
 8   ALTER TABLE ONLY public.book DROP CONSTRAINT book_pkey;
       public            postgres    false    217            �           2606    17462    brand brand_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pkey PRIMARY KEY (brand_id);
 :   ALTER TABLE ONLY public.brand DROP CONSTRAINT brand_pkey;
       public            postgres    false    219            �           2606    17471    car car_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.car
    ADD CONSTRAINT car_pkey PRIMARY KEY (car_id);
 6   ALTER TABLE ONLY public.car DROP CONSTRAINT car_pkey;
       public            postgres    false    221            �           2606    17480    model model_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.model
    ADD CONSTRAINT model_pkey PRIMARY KEY (model_id);
 :   ALTER TABLE ONLY public.model DROP CONSTRAINT model_pkey;
       public            postgres    false    223                       2606    17444    user user_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT user_pkey PRIMARY KEY (user_id);
 :   ALTER TABLE ONLY public."user" DROP CONSTRAINT user_pkey;
       public            postgres    false    215               �   x��ѱ�0��<E �پ:
Z���ȇD+03d<�Dr�(,�I�8�+>jX��6x{������O@��w$��D�j�<��������;(��e�	I	���0^mƓ#��c���;>3�S��IQ��*���O�cCb�E��#�B��ʧ�R-U6E�TK�MٗB�7�3��         �   x��KN1ׯO�@3�'�e�E��(�`æ7���F�8(���b�]���3��$�i����L��_�����$߮$^�X,��d:�h���<H$3�A/:2�6]�9�|�\�=_��6�R�'���W3�N� :�5�K�*Z��1��O$�a���)��o�z%;Ö���]�g�k����5�i�����Ar`z�#�?�6A�         �  x�]�Kn1D��)|�@����҈�Ab��&�?���-�����{�"W���~���I���ןOj�;�п�2F�o��F�ߎ��B�l,䃞��?��{3��+������:76�yVP<f=�ƃ��
��8#��B�
�$#��AaW��D3���YA�U�E�l�
�)bW�|W�)� Y�
r���
��� J�O
ٺ(�Q�E��� 7
�l�uF-*N�_#���� ��,M&�\��l�oY�sbˡҭ� `�Q��� �e[?����鵧&��5 ��~���R��B��׍�L�։�;_�B^�u��ʎ�k���^���O�ܼ\��o�k@�k[0Ŧ��B�-�n��Mov?��-X��5����/������         6  x����N�0Dד����\�v��5�"}��;6Q	�RD����I�LC�f��\�A�^�rdnh&�HL6MG���,\H��AV�|�d�0�̥0��4���\-75^�}2����Or;L����y]�\\���md�X0t.�Β�Q!���.��n�`��_���?	�`�M�/?`Ѥd������q��r��b���+�(	!b�˚�{�
B"���cn)"�WE9Ⱥ+���ۧ�ժ�������^�6Pa�Ԭ*�;Q���U���5�8y��˧@��W�e~�5o:G���W~��^�W            x�3�LL����44261���b���� U{     