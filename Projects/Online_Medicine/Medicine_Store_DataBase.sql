PGDMP  ,    2                |            MedicineStore    16.2    16.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16624    MedicineStore    DATABASE     �   CREATE DATABASE "MedicineStore" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE "MedicineStore";
                postgres    false            �            1259    16660    medicineInfo    TABLE     �   CREATE TABLE public."medicineInfo" (
    "MedicineID" integer NOT NULL,
    "MedicineName" character varying(250),
    "MedicinePrice" numeric(10,2),
    "MedicineCount" numeric(10,0),
    "MedicineExpiry" date
);
 "   DROP TABLE public."medicineInfo";
       public         heap    postgres    false            �            1259    16659    medicineInfo_MedicineID_seq    SEQUENCE     �   CREATE SEQUENCE public."medicineInfo_MedicineID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."medicineInfo_MedicineID_seq";
       public          postgres    false    218            �           0    0    medicineInfo_MedicineID_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."medicineInfo_MedicineID_seq" OWNED BY public."medicineInfo"."MedicineID";
          public          postgres    false    217            �            1259    16667 	   orderInfo    TABLE     �   CREATE TABLE public."orderInfo" (
    "OrderID" integer NOT NULL,
    "UserName" character varying(250),
    "MedicinName" character varying(250),
    "OrderTotalPrice" numeric(10,0),
    "OrderStatus" character varying(250)
);
    DROP TABLE public."orderInfo";
       public         heap    postgres    false            �            1259    16666    orderInfo_OrderID_seq    SEQUENCE     �   CREATE SEQUENCE public."orderInfo_OrderID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."orderInfo_OrderID_seq";
       public          postgres    false    220            �           0    0    orderInfo_OrderID_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."orderInfo_OrderID_seq" OWNED BY public."orderInfo"."OrderID";
          public          postgres    false    219            �            1259    16635    userInfo    TABLE     �   CREATE TABLE public."userInfo" (
    "UserID" integer NOT NULL,
    "UserEmail" character varying(250),
    "UserPassword" character varying(250) NOT NULL,
    "UserPhoneNumber" character varying(250),
    "WalletBalance" numeric(10,2)
);
    DROP TABLE public."userInfo";
       public         heap    postgres    false            �            1259    16634    userInfo_UserID_seq    SEQUENCE     �   CREATE SEQUENCE public."userInfo_UserID_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."userInfo_UserID_seq";
       public          postgres    false    216                        0    0    userInfo_UserID_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."userInfo_UserID_seq" OWNED BY public."userInfo"."UserID";
          public          postgres    false    215            [           2604    16663    medicineInfo MedicineID    DEFAULT     �   ALTER TABLE ONLY public."medicineInfo" ALTER COLUMN "MedicineID" SET DEFAULT nextval('public."medicineInfo_MedicineID_seq"'::regclass);
 J   ALTER TABLE public."medicineInfo" ALTER COLUMN "MedicineID" DROP DEFAULT;
       public          postgres    false    218    217    218            \           2604    16670    orderInfo OrderID    DEFAULT     |   ALTER TABLE ONLY public."orderInfo" ALTER COLUMN "OrderID" SET DEFAULT nextval('public."orderInfo_OrderID_seq"'::regclass);
 D   ALTER TABLE public."orderInfo" ALTER COLUMN "OrderID" DROP DEFAULT;
       public          postgres    false    219    220    220            Z           2604    16638    userInfo UserID    DEFAULT     x   ALTER TABLE ONLY public."userInfo" ALTER COLUMN "UserID" SET DEFAULT nextval('public."userInfo_UserID_seq"'::regclass);
 B   ALTER TABLE public."userInfo" ALTER COLUMN "UserID" DROP DEFAULT;
       public          postgres    false    215    216    216            �          0    16660    medicineInfo 
   TABLE DATA           z   COPY public."medicineInfo" ("MedicineID", "MedicineName", "MedicinePrice", "MedicineCount", "MedicineExpiry") FROM stdin;
    public          postgres    false    218   �       �          0    16667 	   orderInfo 
   TABLE DATA           m   COPY public."orderInfo" ("OrderID", "UserName", "MedicinName", "OrderTotalPrice", "OrderStatus") FROM stdin;
    public          postgres    false    220   �       �          0    16635    userInfo 
   TABLE DATA           o   COPY public."userInfo" ("UserID", "UserEmail", "UserPassword", "UserPhoneNumber", "WalletBalance") FROM stdin;
    public          postgres    false    216   l                  0    0    medicineInfo_MedicineID_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public."medicineInfo_MedicineID_seq"', 5, true);
          public          postgres    false    217                       0    0    orderInfo_OrderID_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public."orderInfo_OrderID_seq"', 2, true);
          public          postgres    false    219                       0    0    userInfo_UserID_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public."userInfo_UserID_seq"', 2, true);
          public          postgres    false    215            `           2606    16665    medicineInfo medicineInfo_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public."medicineInfo"
    ADD CONSTRAINT "medicineInfo_pkey" PRIMARY KEY ("MedicineID");
 L   ALTER TABLE ONLY public."medicineInfo" DROP CONSTRAINT "medicineInfo_pkey";
       public            postgres    false    218            b           2606    16674    orderInfo orderInfo_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public."orderInfo"
    ADD CONSTRAINT "orderInfo_pkey" PRIMARY KEY ("OrderID");
 F   ALTER TABLE ONLY public."orderInfo" DROP CONSTRAINT "orderInfo_pkey";
       public            postgres    false    220            ^           2606    16642    userInfo userInfo_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public."userInfo"
    ADD CONSTRAINT "userInfo_pkey" PRIMARY KEY ("UserID");
 D   ALTER TABLE ONLY public."userInfo" DROP CONSTRAINT "userInfo_pkey";
       public            postgres    false    216            �   ?   x�3200�L,NI�442�������������%����!gIb��H�*g�k`����� �n      �   i   x�M�1� @ѹ�P����\
4q@1������_����k�F�`	\O.9�6���)qT�1kN	���H���q����S!�K>C��W�[�M?:���')
      �   H   x�3�,�L�u��03CbYX����r�pr:&%�8� �,͌-L��M8��@
c���� `�d     