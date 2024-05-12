PGDMP      4                |         	   MetroCard    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16573 	   MetroCard    DATABASE     �   CREATE DATABASE "MetroCard" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "MetroCard";
                postgres    false            �            1259    16607 
   ticketfair    TABLE     �   CREATE TABLE public.ticketfair (
    "TicketID" integer NOT NULL,
    "FromLocation" character varying(250),
    "ToLocation" character varying(250),
    "TicketPrice" numeric(10,2)
);
    DROP TABLE public.ticketfair;
       public         heap    postgres    false            �            1259    16606    ticketfair_TicketID_seq    SEQUENCE     �   CREATE SEQUENCE public."ticketfair_TicketID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."ticketfair_TicketID_seq";
       public          postgres    false    218            �           0    0    ticketfair_TicketID_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public."ticketfair_TicketID_seq" OWNED BY public.ticketfair."TicketID";
          public          postgres    false    217            �            1259    16616    traveldetails    TABLE     �   CREATE TABLE public.traveldetails (
    "TravelID" integer NOT NULL,
    "CardNumber" integer,
    "FromLocation" character varying(250),
    "ToLocation" character varying(250),
    "Date" date NOT NULL,
    "TravelCost" numeric(10,2)
);
 !   DROP TABLE public.traveldetails;
       public         heap    postgres    false            �            1259    16615    traveldetails_TravelID_seq    SEQUENCE     �   CREATE SEQUENCE public."traveldetails_TravelID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."traveldetails_TravelID_seq";
       public          postgres    false    220            �           0    0    traveldetails_TravelID_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public."traveldetails_TravelID_seq" OWNED BY public.traveldetails."TravelID";
          public          postgres    false    219            �            1259    16591    userdetails    TABLE     �   CREATE TABLE public.userdetails (
    "UserCardNumber" integer NOT NULL,
    "UserName" character varying(250) NOT NULL,
    "PhoneNumber" character varying(10),
    "WalletBalance" numeric(12,2)
);
    DROP TABLE public.userdetails;
       public         heap    postgres    false            �            1259    16590    userdetails_UserCardNumber_seq    SEQUENCE     �   CREATE SEQUENCE public."userdetails_UserCardNumber_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public."userdetails_UserCardNumber_seq";
       public          postgres    false    216                        0    0    userdetails_UserCardNumber_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."userdetails_UserCardNumber_seq" OWNED BY public.userdetails."UserCardNumber";
          public          postgres    false    215            [           2604    16610    ticketfair TicketID    DEFAULT     ~   ALTER TABLE ONLY public.ticketfair ALTER COLUMN "TicketID" SET DEFAULT nextval('public."ticketfair_TicketID_seq"'::regclass);
 D   ALTER TABLE public.ticketfair ALTER COLUMN "TicketID" DROP DEFAULT;
       public          postgres    false    218    217    218            \           2604    16619    traveldetails TravelID    DEFAULT     �   ALTER TABLE ONLY public.traveldetails ALTER COLUMN "TravelID" SET DEFAULT nextval('public."traveldetails_TravelID_seq"'::regclass);
 G   ALTER TABLE public.traveldetails ALTER COLUMN "TravelID" DROP DEFAULT;
       public          postgres    false    220    219    220            Z           2604    16594    userdetails UserCardNumber    DEFAULT     �   ALTER TABLE ONLY public.userdetails ALTER COLUMN "UserCardNumber" SET DEFAULT nextval('public."userdetails_UserCardNumber_seq"'::regclass);
 K   ALTER TABLE public.userdetails ALTER COLUMN "UserCardNumber" DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16607 
   ticketfair 
   TABLE DATA           ]   COPY public.ticketfair ("TicketID", "FromLocation", "ToLocation", "TicketPrice") FROM stdin;
    public          postgres    false    218   �       �          0    16616    traveldetails 
   TABLE DATA           u   COPY public.traveldetails ("TravelID", "CardNumber", "FromLocation", "ToLocation", "Date", "TravelCost") FROM stdin;
    public          postgres    false    220   R       �          0    16591    userdetails 
   TABLE DATA           c   COPY public.userdetails ("UserCardNumber", "UserName", "PhoneNumber", "WalletBalance") FROM stdin;
    public          postgres    false    216   �                  0    0    ticketfair_TicketID_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public."ticketfair_TicketID_seq"', 8, true);
          public          postgres    false    217                       0    0    traveldetails_TravelID_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."traveldetails_TravelID_seq"', 4, true);
          public          postgres    false    219                       0    0    userdetails_UserCardNumber_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."userdetails_UserCardNumber_seq"', 3, true);
          public          postgres    false    215            `           2606    16614    ticketfair ticketfair_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.ticketfair
    ADD CONSTRAINT ticketfair_pkey PRIMARY KEY ("TicketID");
 D   ALTER TABLE ONLY public.ticketfair DROP CONSTRAINT ticketfair_pkey;
       public            postgres    false    218            b           2606    16623     traveldetails traveldetails_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.traveldetails
    ADD CONSTRAINT traveldetails_pkey PRIMARY KEY ("TravelID");
 J   ALTER TABLE ONLY public.traveldetails DROP CONSTRAINT traveldetails_pkey;
       public            postgres    false    220            ^           2606    16596    userdetails userdetails_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.userdetails
    ADD CONSTRAINT userdetails_pkey PRIMARY KEY ("UserCardNumber");
 F   ALTER TABLE ONLY public.userdetails DROP CONSTRAINT userdetails_pkey;
       public            postgres    false    216            �   u   x�]�=@0����c�j�v0�M���U��������佻TG����Xj�� ƅ]�ԍv �A8jG����&ײ�� �D�n]w�8�9Scߣ�>����R�g/FɎU�[ �?$      �   w   x�3�4�t�,*�/*�tM��/J�4202�54 "NSS=.#���w~ebnRjJ)�*c#�*cN#Nǜļ��"�ʌ��� �A��,*�M�KO�I̅�4D�4��4]S]s��=... />0�      �   X   x�5�K
�0E�q������^�d�� �Iwo�ț��e�-p�����(�@��E-Y�	d�v���?��s��=�ڱ�M�H>]">BG\     