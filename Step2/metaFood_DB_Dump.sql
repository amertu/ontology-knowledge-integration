PGDMP     '    %                x           saiks    12.2    12.2 #    *           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            +           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ,           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            -           1262    16661    saiks    DATABASE     �   CREATE DATABASE saiks WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United Kingdom.1252' LC_CTYPE = 'English_United Kingdom.1252';
    DROP DATABASE saiks;
                postgres    false            �            1259    16824    cuisine    TABLE     c   CREATE TABLE public.cuisine (
    id integer NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.cuisine;
       public         heap    postgres    false            �            1259    16822    cuisine_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cuisine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.cuisine_id_seq;
       public          postgres    false    205            .           0    0    cuisine_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.cuisine_id_seq OWNED BY public.cuisine.id;
          public          postgres    false    204            �            1259    16850    menu    TABLE     �   CREATE TABLE public.menu (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(500),
    price real NOT NULL,
    restaurant_id integer NOT NULL
);
    DROP TABLE public.menu;
       public         heap    postgres    false            �            1259    16848    menu_id_seq    SEQUENCE     �   CREATE SEQUENCE public.menu_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.menu_id_seq;
       public          postgres    false    209            /           0    0    menu_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.menu_id_seq OWNED BY public.menu.id;
          public          postgres    false    208            �            1259    16813 
   restaurant    TABLE     �  CREATE TABLE public.restaurant (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    description character varying(500),
    price_category character varying(255),
    breakfast boolean,
    lunch boolean,
    sandwiches boolean,
    city character varying(255),
    post_code character varying(255) NOT NULL,
    street character varying(255) NOT NULL,
    number character varying(255) NOT NULL,
    number_addon integer,
    phone integer NOT NULL,
    url character varying(255) NOT NULL,
    latitude real NOT NULL,
    longitude real NOT NULL,
    delivery_charge real NOT NULL,
    min_order real NOT NULL,
    payment_cash character varying(255) NOT NULL,
    payment_card character varying(255) NOT NULL,
    waiting_time integer,
    delivery_time integer,
    delivery_postcode character varying(255),
    rating_value real,
    rating_count integer,
    data_source character varying(255) NOT NULL
);
    DROP TABLE public.restaurant;
       public         heap    postgres    false            �            1259    16811    restaurant_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.restaurant_id_seq;
       public          postgres    false    203            0           0    0    restaurant_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.restaurant_id_seq OWNED BY public.restaurant.id;
          public          postgres    false    202            �            1259    16832    restaurantcuisine    TABLE     �   CREATE TABLE public.restaurantcuisine (
    id integer NOT NULL,
    cuisine_id integer NOT NULL,
    restaurant_id integer NOT NULL
);
 %   DROP TABLE public.restaurantcuisine;
       public         heap    postgres    false            �            1259    16830    restaurantcuisine_id_seq    SEQUENCE     �   CREATE SEQUENCE public.restaurantcuisine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.restaurantcuisine_id_seq;
       public          postgres    false    207            1           0    0    restaurantcuisine_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.restaurantcuisine_id_seq OWNED BY public.restaurantcuisine.id;
          public          postgres    false    206            �
           2604    16827 
   cuisine id    DEFAULT     h   ALTER TABLE ONLY public.cuisine ALTER COLUMN id SET DEFAULT nextval('public.cuisine_id_seq'::regclass);
 9   ALTER TABLE public.cuisine ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16853    menu id    DEFAULT     b   ALTER TABLE ONLY public.menu ALTER COLUMN id SET DEFAULT nextval('public.menu_id_seq'::regclass);
 6   ALTER TABLE public.menu ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    16816    restaurant id    DEFAULT     n   ALTER TABLE ONLY public.restaurant ALTER COLUMN id SET DEFAULT nextval('public.restaurant_id_seq'::regclass);
 <   ALTER TABLE public.restaurant ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    16835    restaurantcuisine id    DEFAULT     |   ALTER TABLE ONLY public.restaurantcuisine ALTER COLUMN id SET DEFAULT nextval('public.restaurantcuisine_id_seq'::regclass);
 C   ALTER TABLE public.restaurantcuisine ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            #          0    16824    cuisine 
   TABLE DATA           +   COPY public.cuisine (id, name) FROM stdin;
    public          postgres    false    205   p*       '          0    16850    menu 
   TABLE DATA           K   COPY public.menu (id, name, description, price, restaurant_id) FROM stdin;
    public          postgres    false    209   "+       !          0    16813 
   restaurant 
   TABLE DATA           J  COPY public.restaurant (id, name, description, price_category, breakfast, lunch, sandwiches, city, post_code, street, number, number_addon, phone, url, latitude, longitude, delivery_charge, min_order, payment_cash, payment_card, waiting_time, delivery_time, delivery_postcode, rating_value, rating_count, data_source) FROM stdin;
    public          postgres    false    203    4       %          0    16832    restaurantcuisine 
   TABLE DATA           J   COPY public.restaurantcuisine (id, cuisine_id, restaurant_id) FROM stdin;
    public          postgres    false    207   A;       2           0    0    cuisine_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cuisine_id_seq', 18, true);
          public          postgres    false    204            3           0    0    menu_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.menu_id_seq', 73, true);
          public          postgres    false    208            4           0    0    restaurant_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.restaurant_id_seq', 17, true);
          public          postgres    false    202            5           0    0    restaurantcuisine_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.restaurantcuisine_id_seq', 47, true);
          public          postgres    false    206            �
           2606    16829    cuisine cuisine_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.cuisine
    ADD CONSTRAINT cuisine_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.cuisine DROP CONSTRAINT cuisine_pkey;
       public            postgres    false    205            �
           2606    16858    menu menu_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_pkey;
       public            postgres    false    209            �
           2606    16821    restaurant restaurant_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.restaurant
    ADD CONSTRAINT restaurant_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.restaurant DROP CONSTRAINT restaurant_pkey;
       public            postgres    false    203            �
           2606    16837 (   restaurantcuisine restaurantcuisine_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.restaurantcuisine
    ADD CONSTRAINT restaurantcuisine_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.restaurantcuisine DROP CONSTRAINT restaurantcuisine_pkey;
       public            postgres    false    207            �
           2606    16859    menu menu_restaurant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.menu
    ADD CONSTRAINT menu_restaurant_id_fkey FOREIGN KEY (restaurant_id) REFERENCES public.restaurant(id);
 F   ALTER TABLE ONLY public.menu DROP CONSTRAINT menu_restaurant_id_fkey;
       public          postgres    false    203    2712    209            �
           2606    16843 3   restaurantcuisine restaurantcuisine_cuisine_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurantcuisine
    ADD CONSTRAINT restaurantcuisine_cuisine_id_fkey FOREIGN KEY (cuisine_id) REFERENCES public.cuisine(id);
 ]   ALTER TABLE ONLY public.restaurantcuisine DROP CONSTRAINT restaurantcuisine_cuisine_id_fkey;
       public          postgres    false    2714    205    207            �
           2606    16838 6   restaurantcuisine restaurantcuisine_restaurant_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.restaurantcuisine
    ADD CONSTRAINT restaurantcuisine_restaurant_id_fkey FOREIGN KEY (restaurant_id) REFERENCES public.restaurant(id);
 `   ALTER TABLE ONLY public.restaurantcuisine DROP CONSTRAINT restaurantcuisine_restaurant_id_fkey;
       public          postgres    false    2712    203    207            #   �   x�-�K
�@D�݇'�KM~�� n:�1C��tO��Π��G���i��b7��4��s�Ha�]W����a�y�4���"bY� �>h�ptO?z��@�bS�d�Z7�HS����ά�&����Km��y�T��*hy��Eb�M��҉����;�      '   �  x��X͎��>����C��H�A��g'�?Z˰l��"[R[M6�ٜ��9���o�O���IJ3�� �e4"����端��;��Vj��d��f�RV|k��y�>��Jn�|gMS�<۫�PIQs�ok�JQ��A�=�+�ɚ�����o���#^�Lq-7����Y���ŉ�*�L�,��R��i�={)�ë�;Sg"�5YSl���`�"nJeʈ[��zK�(2��OLz��,L�?6p��`���=�湕u��]�&�<��tiY�;��t|�؝�l}vIHT5��c�C#����(f�\J�m�u�]Q�ڜ�{�%o-�a3#4�@> �bsɀ_���	�Uƍ��Z�>�i�<e�*�;�|�,��g#(���^�G&T
�oU���b����%�gWw�~gl!v;�^��:�~�,�$!?����hMR�M)�ɕ��YD|z��$���p�e_2�EI��f���U�%���dF'�]��Cq�O��dȞ�,a���9u^���?��K_5��b�$l��h�[�ck��Z�jqo�G9�N�h��읰�o�n7<���T�[��0*�tJ��ɢ��qzC�@ѩ6ߩ��f��̘C24�иB�����#CL��ߩ �*	��步1n#v�F�s��nﶍ��b����z��>J�����8t��;7$���[Lz����y��Y+֖����S�1�<$�Ǖ~U��d��g����3�.\��6�_ Py+>C?b�p�*K
�ӳ�`#��l�����!�駾�7�%2�I�Wg�4|��0[�5�i_~55ANM�] c	�(�{��ōny�Z����T{k5��;���(6ܚN|4���e�0щ`�؈#�� �+_��R����d�� 9�_I��M��|�[���zk�3U��
?1PpWMT��Dn
_oft�wI��� �J�z�5<\?H颲qu'0aoh���^|�_�2e-���j�2�ˮ�myQTA|~R	�Kѷl襶�Gq�f�tqvQ��4���w�&80~"L����D����w�ϫ�&��0����ĸ�5�#�
��y{�0��G�B�?� ޜnZ7j���p%�w����Z���t!�Н�%L�k�� n	?�	UJ}���3 E�r@���
Ăz*�Έ�~c���H@PSoyt[|�?�G��4'*�Vy(�,L��4�<N��}���ϊ=*����.���A�L�H\x�5�`MU�n�$����>�B�F��`��x%O���6�v�ƙp���
ӛ�$�U���GS�B�᚞N���OΊ/=4����<r�u�^��Et�j���,�k��
����b���zv� ?o�m�x=��ʦ19G��\�SH�����Â��P;E�!�O��A'j~�7��1�J5]u�!
v��O��t������ў"͂D��`��d�d��I
�C�#L�8��cK}��f�t*����� V�ip�a�Ĳ�n1>.d��؋Nٟ�K?VW�
��4����v;"��0��A��(Zw��xކ����B���S�@p�g���?���i��UդjF�Aӂ}s�-_
��Y�+cQ����[U�E�����5!���V�Ց�ʜ���M>�՟'2�Z�ɈRΎ�u�&	�f�m�h��J]LřO�S�m�1%�7b_�J�"k��� �!��%�K(�
��5&�4F���`2B6�VrS��@� �֓�,��x���#�Zk#j,�4����7kk�&hY�0Z�J7Ջuk�N�w~���:Aj�B%ޚ���<�kK4lG��5a����uL��(ﰚ'�D;,�=C��z,Lƃ�b��Np�z(��ؕWhF��}T�C���׺i��W<_Z^��|���p���L%c%��ú��9���hH(�M�	�۵�ӟ��&>��m[�6ف�2ف��/�|�����G�`%���+kn�J��쥮�]����
�fFK�U2l����d?��˅�����+y ��MQi�G�t�8j�����=f$�-���⌽��F�;S����'����C��{��-�r�g`�)�h�� ������EZ�V�wx:L��e�U��������t�4���Wp�e����J�y�2Hf6$�Pд���>�����Fp�&3y�N�>��������f	�� ���m�?~؃���t��_���#Z[l�e��u�h����Z
�x�x0�����6V�(�$�1��S�*A?ND�Tȉ��3��U��<���a�~k�O*�l0��?~@���`0�7��k�      !     x�ݘ]o�8���_A`��rQ��7��M�6n�ڞ��`oh��	�R@Iͦ�~_R�,'ng�]������y�����ˍ(2U:�+Q�J�iS�B~�U��EV��l����_�V�~� }����RT�*�8Ry.3:ݩ�^�[<kU��j-�kU�d5ZH�)��ҿ���x��K�+d����"�����%��)M�wdQ�����s:��ߋ� �y�����v��u9n���q�~�o�Xz>�	'Ww����k�ϫa	��exr@�4w��O&��~T_�J���3�i��mز��925�Ր�׈�2�&���M
�Q������En��x��2�|���~˨��hn��v��]Y��Y�Je`I3uo�ժ�W��⦺�O_������`����Rք�-� �X��Ž0e�IdQ�,e^�&�{���UEoU��ɂ\6�X�jM�b�D���-���c�ԏ��<���F��.��X!it:|��,�x>�(����7�6��տk+A���;r��Ng�a~�H�4I'+Lc�&wOc֊��ԋ���$�U8N��Dm^����?]k3qX�zGWYtu���"��0m�z)��$!+�]�K��>O[m�(�(�n���p@��IyX�G,g1�i�Ӯ�0��ҏ�P#�~J�_N�Fkp���V����2�%p�WE&��U��8���ߖ� ��׎�3\���z?���+�Ͻѧ��L�o���pGo��f��%�D_��\Y�(Z)�y�Q��z��#I�t���R���w�FG�jIX�=��c���Fz�f��C+�ie-�E�\�r�	�����;r'�1�y)2Bä��8�8��O�%!j���#���l����1�w�b2:��4oV/���{Fx2��v�%_a�,'T�����Q���=��v�Yc:�y����Paxb�E��r�<͑�ѹ���.`��*��Kб��KM򳹠(�����i�ʏ���#�-Zߘ@���q��}�6Qߛ��e�[��:� �e�#��'��:�AB����������?c�t��{��m�FԵ{���.D.�ꙋ�|_���3C�>����Ef)-ɨu�������b��z5F��Zp<H�$���\��N]��(�o���c��7&>��'����b�g�n�#o�l#@J��,�D7z[��8��l��ә.��b�f�9���ܵ���X�C��G�]�簆^�J�������bgt��'7�tyyk��Ѣ;�;vfvs���m���U�1���+H[f����_XO��N�Q�j#ֵ�ql�EQK����`2{�Mi��a��ċƼ'o���{1Ҷ-%����������	 �N�e��e����`���D������S�Q6����O�b�fE��^c�O��Ki2��i�g;�We�۝���d�8!�7��L�XSx��m�i���ldN���5�o�O�FT���)c6��ɂ���L�ur����nm��]�vy�r��}�E�06*R�e�{�\�T7עw���36��&���q��<FN�Ϛ�6��N|88��b�	Jz����d�[��7����"F��c��!�܉�F�?˰)vRd]�Ӊ�U�M�ɫ2R~��6yF�B��O[-�2_A���S�qPY�Bo$�a��=�B�[�i��G�e����K�ӞV734\�B�4�t�d8p�B�)6х��Ecx(�zp��N�dv�D�[��g���MMס�缟���W�$�ɧ�C�m���	C��^��m�9��l� ��ƕm�B���0<�����իW���      %   �   x����E!�L0[D�\~�qlÅ�r77WXP�-�%uۦ;�TVԋ2�Ф��8Ӗ��6���78����.�g8\Ň' °}���4n>�O�a�E��m���.��V�jrSNӇ��b���^���O����X�7�[���ǜ&z�(���i&f)��i&g��'�?�0�     