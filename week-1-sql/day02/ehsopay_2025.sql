PGDMP  -        
            }         
   eshopay_db    17.4    17.4 t    p           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false            q           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false            r           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false            s           1262    24835 
   eshopay_db    DATABASE     p   CREATE DATABASE eshopay_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en-US';
    DROP DATABASE eshopay_db;
                     postgres    false                        2615    24836    hr    SCHEMA        CREATE SCHEMA hr;
    DROP SCHEMA hr;
                     postgres    false                        2615    33027    oe    SCHEMA        CREATE SCHEMA oe;
    DROP SCHEMA oe;
                     postgres    false            �            1259    24844 	   countries    TABLE     �   CREATE TABLE hr.countries (
    country_id character(2) NOT NULL,
    country_name character varying(40),
    region_id integer NOT NULL
);
    DROP TABLE hr.countries;
       hr         heap r       postgres    false    6            �            1259    24867    departments    TABLE     �   CREATE TABLE hr.departments (
    department_id integer NOT NULL,
    department_name character varying(30) NOT NULL,
    location_id integer
);
    DROP TABLE hr.departments;
       hr         heap r       postgres    false    6            �            1259    24866    departments_department_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.departments_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE hr.departments_department_id_seq;
       hr               postgres    false    225    6            t           0    0    departments_department_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE hr.departments_department_id_seq OWNED BY hr.departments.department_id;
          hr               postgres    false    224            �            1259    24908 
   dependents    TABLE     �   CREATE TABLE hr.dependents (
    dependent_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    relationship character varying(25) NOT NULL,
    employee_id integer NOT NULL
);
    DROP TABLE hr.dependents;
       hr         heap r       postgres    false    6            �            1259    24907    dependents_dependent_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.dependents_dependent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE hr.dependents_dependent_id_seq;
       hr               postgres    false    231    6            u           0    0    dependents_dependent_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE hr.dependents_dependent_id_seq OWNED BY hr.dependents.dependent_id;
          hr               postgres    false    230            �            1259    24886 	   employees    TABLE     v  CREATE TABLE hr.employees (
    employee_id integer NOT NULL,
    first_name character varying(20),
    last_name character varying(25) NOT NULL,
    email character varying(100) NOT NULL,
    phone_number character varying(20),
    hire_date date NOT NULL,
    job_id integer NOT NULL,
    salary numeric(8,2) NOT NULL,
    manager_id integer,
    department_id integer
);
    DROP TABLE hr.employees;
       hr         heap r       postgres    false    6            �            1259    24885    employees_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE hr.employees_employee_id_seq;
       hr               postgres    false    6    229            v           0    0    employees_employee_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE hr.employees_employee_id_seq OWNED BY hr.employees.employee_id;
          hr               postgres    false    228            �            1259    24879    jobs    TABLE     �   CREATE TABLE hr.jobs (
    job_id integer NOT NULL,
    job_title character varying(35) NOT NULL,
    min_salary numeric(8,2),
    max_salary numeric(8,2)
);
    DROP TABLE hr.jobs;
       hr         heap r       postgres    false    6            �            1259    24878    jobs_job_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.jobs_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE hr.jobs_job_id_seq;
       hr               postgres    false    227    6            w           0    0    jobs_job_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE hr.jobs_job_id_seq OWNED BY hr.jobs.job_id;
          hr               postgres    false    226            �            1259    24855 	   locations    TABLE     
  CREATE TABLE hr.locations (
    location_id integer NOT NULL,
    street_address character varying(60),
    postal_code character varying(12),
    city character varying(30) NOT NULL,
    state_province character varying(25),
    country_id character(2) NOT NULL
);
    DROP TABLE hr.locations;
       hr         heap r       postgres    false    6            �            1259    24854    locations_location_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.locations_location_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE hr.locations_location_id_seq;
       hr               postgres    false    6    223            x           0    0    locations_location_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE hr.locations_location_id_seq OWNED BY hr.locations.location_id;
          hr               postgres    false    222            �            1259    24838    regions    TABLE     c   CREATE TABLE hr.regions (
    region_id integer NOT NULL,
    region_name character varying(25)
);
    DROP TABLE hr.regions;
       hr         heap r       postgres    false    6            �            1259    24837    regions_region_id_seq    SEQUENCE     �   CREATE SEQUENCE hr.regions_region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE hr.regions_region_id_seq;
       hr               postgres    false    220    6            y           0    0    regions_region_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE hr.regions_region_id_seq OWNED BY hr.regions.region_id;
          hr               postgres    false    219            �            1259    33028 
   categories    TABLE     �   CREATE TABLE oe.categories (
    category_id smallint NOT NULL,
    category_name character varying(15) NOT NULL,
    description text,
    picture bytea
);
    DROP TABLE oe.categories;
       oe         heap r       postgres    false    7            �            1259    33033    customer_customer_demo    TABLE     �   CREATE TABLE oe.customer_customer_demo (
    customer_id character varying(5) NOT NULL,
    customer_type_id character varying(5) NOT NULL
);
 &   DROP TABLE oe.customer_customer_demo;
       oe         heap r       postgres    false    7            �            1259    33036    customer_demographics    TABLE     v   CREATE TABLE oe.customer_demographics (
    customer_type_id character varying(5) NOT NULL,
    customer_desc text
);
 %   DROP TABLE oe.customer_demographics;
       oe         heap r       postgres    false    7            �            1259    33041 	   customers    TABLE     �  CREATE TABLE oe.customers (
    customer_id character varying(5) NOT NULL,
    company_name character varying(40) NOT NULL,
    contact_name character varying(30),
    contact_title character varying(30),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    phone character varying(24),
    fax character varying(24),
    location_id integer
);
    DROP TABLE oe.customers;
       oe         heap r       postgres    false    7            �            1259    33049    employee_territories    TABLE     }   CREATE TABLE oe.employee_territories (
    employee_id smallint NOT NULL,
    territory_id character varying(20) NOT NULL
);
 $   DROP TABLE oe.employee_territories;
       oe         heap r       postgres    false    7            �            1259    33044 	   employees    TABLE     o  CREATE TABLE oe.employees (
    employee_id smallint NOT NULL,
    last_name character varying(20) NOT NULL,
    first_name character varying(10) NOT NULL,
    title character varying(30),
    title_of_courtesy character varying(25),
    birth_date date,
    hire_date date,
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    home_phone character varying(24),
    extension character varying(4),
    photo bytea,
    notes text,
    reports_to smallint,
    photo_path character varying(255)
);
    DROP TABLE oe.employees;
       oe         heap r       postgres    false    7            �            1259    49413 
   location_x    TABLE       CREATE TABLE oe.location_x (
    location_id bigint,
    street_address character varying(60),
    postal_code character varying(10),
    city character varying(15),
    state_province character varying(15),
    country_name character varying(15),
    country_id character(2)
);
    DROP TABLE oe.location_x;
       oe         heap r       postgres    false    7            �            1259    33052    order_details    TABLE     �   CREATE TABLE oe.order_details (
    order_id smallint NOT NULL,
    product_id smallint NOT NULL,
    unit_price real NOT NULL,
    quantity smallint NOT NULL,
    discount real NOT NULL
);
    DROP TABLE oe.order_details;
       oe         heap r       postgres    false    7            �            1259    33055    orders    TABLE     �  CREATE TABLE oe.orders (
    order_id smallint NOT NULL,
    customer_id character varying(5),
    employee_id smallint,
    order_date date,
    required_date date,
    shipped_date date,
    ship_via smallint,
    freight real,
    ship_name character varying(40),
    ship_address character varying(60),
    ship_city character varying(15),
    ship_region character varying(15),
    ship_postal_code character varying(10),
    ship_country character varying(15)
);
    DROP TABLE oe.orders;
       oe         heap r       postgres    false    7            �            1259    33058    products    TABLE     _  CREATE TABLE oe.products (
    product_id smallint NOT NULL,
    product_name character varying(40) NOT NULL,
    supplier_id smallint,
    category_id smallint,
    quantity_per_unit character varying(20),
    unit_price real,
    units_in_stock smallint,
    units_on_order smallint,
    reorder_level smallint,
    discontinued integer NOT NULL
);
    DROP TABLE oe.products;
       oe         heap r       postgres    false    7            �            1259    33061    region    TABLE     s   CREATE TABLE oe.region (
    region_id smallint NOT NULL,
    region_description character varying(60) NOT NULL
);
    DROP TABLE oe.region;
       oe         heap r       postgres    false    7            �            1259    33064    shippers    TABLE     �   CREATE TABLE oe.shippers (
    shipper_id smallint NOT NULL,
    company_name character varying(40) NOT NULL,
    phone character varying(24)
);
    DROP TABLE oe.shippers;
       oe         heap r       postgres    false    7            �            1259    33067 	   suppliers    TABLE     �  CREATE TABLE oe.suppliers (
    supplier_id smallint NOT NULL,
    company_name character varying(40) NOT NULL,
    contact_name character varying(30),
    contact_title character varying(30),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    phone character varying(24),
    fax character varying(24),
    homepage text
);
    DROP TABLE oe.suppliers;
       oe         heap r       postgres    false    7            �            1259    33072    territories    TABLE     �   CREATE TABLE oe.territories (
    territory_id character varying(20) NOT NULL,
    territory_description character varying(60) NOT NULL,
    region_id smallint NOT NULL
);
    DROP TABLE oe.territories;
       oe         heap r       postgres    false    7            �            1259    33075 	   us_states    TABLE     �   CREATE TABLE oe.us_states (
    state_id smallint NOT NULL,
    state_name character varying(100),
    state_abbr character varying(2),
    state_region character varying(50)
);
    DROP TABLE oe.us_states;
       oe         heap r       postgres    false    7            ~           2604    24870    departments department_id    DEFAULT     ~   ALTER TABLE ONLY hr.departments ALTER COLUMN department_id SET DEFAULT nextval('hr.departments_department_id_seq'::regclass);
 D   ALTER TABLE hr.departments ALTER COLUMN department_id DROP DEFAULT;
       hr               postgres    false    225    224    225            �           2604    24911    dependents dependent_id    DEFAULT     z   ALTER TABLE ONLY hr.dependents ALTER COLUMN dependent_id SET DEFAULT nextval('hr.dependents_dependent_id_seq'::regclass);
 B   ALTER TABLE hr.dependents ALTER COLUMN dependent_id DROP DEFAULT;
       hr               postgres    false    230    231    231            �           2604    24889    employees employee_id    DEFAULT     v   ALTER TABLE ONLY hr.employees ALTER COLUMN employee_id SET DEFAULT nextval('hr.employees_employee_id_seq'::regclass);
 @   ALTER TABLE hr.employees ALTER COLUMN employee_id DROP DEFAULT;
       hr               postgres    false    229    228    229                       2604    24882    jobs job_id    DEFAULT     b   ALTER TABLE ONLY hr.jobs ALTER COLUMN job_id SET DEFAULT nextval('hr.jobs_job_id_seq'::regclass);
 6   ALTER TABLE hr.jobs ALTER COLUMN job_id DROP DEFAULT;
       hr               postgres    false    227    226    227            }           2604    24858    locations location_id    DEFAULT     v   ALTER TABLE ONLY hr.locations ALTER COLUMN location_id SET DEFAULT nextval('hr.locations_location_id_seq'::regclass);
 @   ALTER TABLE hr.locations ALTER COLUMN location_id DROP DEFAULT;
       hr               postgres    false    223    222    223            |           2604    24841    regions region_id    DEFAULT     n   ALTER TABLE ONLY hr.regions ALTER COLUMN region_id SET DEFAULT nextval('hr.regions_region_id_seq'::regclass);
 <   ALTER TABLE hr.regions ALTER COLUMN region_id DROP DEFAULT;
       hr               postgres    false    220    219    220            T          0    24844 	   countries 
   TABLE DATA           D   COPY hr.countries (country_id, country_name, region_id) FROM stdin;
    hr               postgres    false    221   ��       X          0    24867    departments 
   TABLE DATA           N   COPY hr.departments (department_id, department_name, location_id) FROM stdin;
    hr               postgres    false    225   ��       ^          0    24908 
   dependents 
   TABLE DATA           `   COPY hr.dependents (dependent_id, first_name, last_name, relationship, employee_id) FROM stdin;
    hr               postgres    false    231   ��       \          0    24886 	   employees 
   TABLE DATA           �   COPY hr.employees (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, manager_id, department_id) FROM stdin;
    hr               postgres    false    229   i�       Z          0    24879    jobs 
   TABLE DATA           E   COPY hr.jobs (job_id, job_title, min_salary, max_salary) FROM stdin;
    hr               postgres    false    227   ��       V          0    24855 	   locations 
   TABLE DATA           k   COPY hr.locations (location_id, street_address, postal_code, city, state_province, country_id) FROM stdin;
    hr               postgres    false    223   ��       S          0    24838    regions 
   TABLE DATA           5   COPY hr.regions (region_id, region_name) FROM stdin;
    hr               postgres    false    220   í       _          0    33028 
   categories 
   TABLE DATA           R   COPY oe.categories (category_id, category_name, description, picture) FROM stdin;
    oe               postgres    false    232   �       `          0    33033    customer_customer_demo 
   TABLE DATA           K   COPY oe.customer_customer_demo (customer_id, customer_type_id) FROM stdin;
    oe               postgres    false    233   �       a          0    33036    customer_demographics 
   TABLE DATA           L   COPY oe.customer_demographics (customer_type_id, customer_desc) FROM stdin;
    oe               postgres    false    234   5�       b          0    33041 	   customers 
   TABLE DATA           �   COPY oe.customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax, location_id) FROM stdin;
    oe               postgres    false    235   R�       d          0    33049    employee_territories 
   TABLE DATA           E   COPY oe.employee_territories (employee_id, territory_id) FROM stdin;
    oe               postgres    false    237   ��       c          0    33044 	   employees 
   TABLE DATA           �   COPY oe.employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) FROM stdin;
    oe               postgres    false    236   J�       m          0    49413 
   location_x 
   TABLE DATA           z   COPY oe.location_x (location_id, street_address, postal_code, city, state_province, country_name, country_id) FROM stdin;
    oe               postgres    false    246   �       e          0    33052    order_details 
   TABLE DATA           Y   COPY oe.order_details (order_id, product_id, unit_price, quantity, discount) FROM stdin;
    oe               postgres    false    238   ��       f          0    33055    orders 
   TABLE DATA           �   COPY oe.orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address, ship_city, ship_region, ship_postal_code, ship_country) FROM stdin;
    oe               postgres    false    239   �      g          0    33058    products 
   TABLE DATA           �   COPY oe.products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, reorder_level, discontinued) FROM stdin;
    oe               postgres    false    240   ]Q      h          0    33061    region 
   TABLE DATA           ;   COPY oe.region (region_id, region_description) FROM stdin;
    oe               postgres    false    241   �Y      i          0    33064    shippers 
   TABLE DATA           ?   COPY oe.shippers (shipper_id, company_name, phone) FROM stdin;
    oe               postgres    false    242   �Y      j          0    33067 	   suppliers 
   TABLE DATA           �   COPY oe.suppliers (supplier_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax, homepage) FROM stdin;
    oe               postgres    false    243   �Z      k          0    33072    territories 
   TABLE DATA           Q   COPY oe.territories (territory_id, territory_description, region_id) FROM stdin;
    oe               postgres    false    244   @c      l          0    33075 	   us_states 
   TABLE DATA           O   COPY oe.us_states (state_id, state_name, state_abbr, state_region) FROM stdin;
    oe               postgres    false    245   �e      z           0    0    departments_department_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('hr.departments_department_id_seq', 1, false);
          hr               postgres    false    224            {           0    0    dependents_dependent_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('hr.dependents_dependent_id_seq', 1, false);
          hr               postgres    false    230            |           0    0    employees_employee_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('hr.employees_employee_id_seq', 1, false);
          hr               postgres    false    228            }           0    0    jobs_job_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('hr.jobs_job_id_seq', 1, false);
          hr               postgres    false    226            ~           0    0    locations_location_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('hr.locations_location_id_seq', 1, false);
          hr               postgres    false    222                       0    0    regions_region_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('hr.regions_region_id_seq', 1, false);
          hr               postgres    false    219            �           2606    24848    countries countries_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY hr.countries
    ADD CONSTRAINT countries_pkey PRIMARY KEY (country_id);
 >   ALTER TABLE ONLY hr.countries DROP CONSTRAINT countries_pkey;
       hr                 postgres    false    221            �           2606    24872    departments departments_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY hr.departments
    ADD CONSTRAINT departments_pkey PRIMARY KEY (department_id);
 B   ALTER TABLE ONLY hr.departments DROP CONSTRAINT departments_pkey;
       hr                 postgres    false    225            �           2606    24913    dependents dependents_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY hr.dependents
    ADD CONSTRAINT dependents_pkey PRIMARY KEY (dependent_id);
 @   ALTER TABLE ONLY hr.dependents DROP CONSTRAINT dependents_pkey;
       hr                 postgres    false    231            �           2606    24891    employees employees_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);
 >   ALTER TABLE ONLY hr.employees DROP CONSTRAINT employees_pkey;
       hr                 postgres    false    229            �           2606    24884    jobs jobs_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY hr.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (job_id);
 4   ALTER TABLE ONLY hr.jobs DROP CONSTRAINT jobs_pkey;
       hr                 postgres    false    227            �           2606    24860    locations locations_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY hr.locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (location_id);
 >   ALTER TABLE ONLY hr.locations DROP CONSTRAINT locations_pkey;
       hr                 postgres    false    223            �           2606    24843    regions regions_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY hr.regions
    ADD CONSTRAINT regions_pkey PRIMARY KEY (region_id);
 :   ALTER TABLE ONLY hr.regions DROP CONSTRAINT regions_pkey;
       hr                 postgres    false    220            �           2606    33079    categories pk_categories 
   CONSTRAINT     [   ALTER TABLE ONLY oe.categories
    ADD CONSTRAINT pk_categories PRIMARY KEY (category_id);
 >   ALTER TABLE ONLY oe.categories DROP CONSTRAINT pk_categories;
       oe                 postgres    false    232            �           2606    33081 0   customer_customer_demo pk_customer_customer_demo 
   CONSTRAINT     �   ALTER TABLE ONLY oe.customer_customer_demo
    ADD CONSTRAINT pk_customer_customer_demo PRIMARY KEY (customer_id, customer_type_id);
 V   ALTER TABLE ONLY oe.customer_customer_demo DROP CONSTRAINT pk_customer_customer_demo;
       oe                 postgres    false    233    233            �           2606    33083 .   customer_demographics pk_customer_demographics 
   CONSTRAINT     v   ALTER TABLE ONLY oe.customer_demographics
    ADD CONSTRAINT pk_customer_demographics PRIMARY KEY (customer_type_id);
 T   ALTER TABLE ONLY oe.customer_demographics DROP CONSTRAINT pk_customer_demographics;
       oe                 postgres    false    234            �           2606    33085    customers pk_customers 
   CONSTRAINT     Y   ALTER TABLE ONLY oe.customers
    ADD CONSTRAINT pk_customers PRIMARY KEY (customer_id);
 <   ALTER TABLE ONLY oe.customers DROP CONSTRAINT pk_customers;
       oe                 postgres    false    235            �           2606    33089 ,   employee_territories pk_employee_territories 
   CONSTRAINT     }   ALTER TABLE ONLY oe.employee_territories
    ADD CONSTRAINT pk_employee_territories PRIMARY KEY (employee_id, territory_id);
 R   ALTER TABLE ONLY oe.employee_territories DROP CONSTRAINT pk_employee_territories;
       oe                 postgres    false    237    237            �           2606    33087    employees pk_employees 
   CONSTRAINT     Y   ALTER TABLE ONLY oe.employees
    ADD CONSTRAINT pk_employees PRIMARY KEY (employee_id);
 <   ALTER TABLE ONLY oe.employees DROP CONSTRAINT pk_employees;
       oe                 postgres    false    236            �           2606    33091    order_details pk_order_details 
   CONSTRAINT     j   ALTER TABLE ONLY oe.order_details
    ADD CONSTRAINT pk_order_details PRIMARY KEY (order_id, product_id);
 D   ALTER TABLE ONLY oe.order_details DROP CONSTRAINT pk_order_details;
       oe                 postgres    false    238    238            �           2606    33093    orders pk_orders 
   CONSTRAINT     P   ALTER TABLE ONLY oe.orders
    ADD CONSTRAINT pk_orders PRIMARY KEY (order_id);
 6   ALTER TABLE ONLY oe.orders DROP CONSTRAINT pk_orders;
       oe                 postgres    false    239            �           2606    33095    products pk_products 
   CONSTRAINT     V   ALTER TABLE ONLY oe.products
    ADD CONSTRAINT pk_products PRIMARY KEY (product_id);
 :   ALTER TABLE ONLY oe.products DROP CONSTRAINT pk_products;
       oe                 postgres    false    240            �           2606    33097    region pk_region 
   CONSTRAINT     Q   ALTER TABLE ONLY oe.region
    ADD CONSTRAINT pk_region PRIMARY KEY (region_id);
 6   ALTER TABLE ONLY oe.region DROP CONSTRAINT pk_region;
       oe                 postgres    false    241            �           2606    33099    shippers pk_shippers 
   CONSTRAINT     V   ALTER TABLE ONLY oe.shippers
    ADD CONSTRAINT pk_shippers PRIMARY KEY (shipper_id);
 :   ALTER TABLE ONLY oe.shippers DROP CONSTRAINT pk_shippers;
       oe                 postgres    false    242            �           2606    33101    suppliers pk_suppliers 
   CONSTRAINT     Y   ALTER TABLE ONLY oe.suppliers
    ADD CONSTRAINT pk_suppliers PRIMARY KEY (supplier_id);
 <   ALTER TABLE ONLY oe.suppliers DROP CONSTRAINT pk_suppliers;
       oe                 postgres    false    243            �           2606    33103    territories pk_territories 
   CONSTRAINT     ^   ALTER TABLE ONLY oe.territories
    ADD CONSTRAINT pk_territories PRIMARY KEY (territory_id);
 @   ALTER TABLE ONLY oe.territories DROP CONSTRAINT pk_territories;
       oe                 postgres    false    244            �           2606    33105    us_states pk_usstates 
   CONSTRAINT     U   ALTER TABLE ONLY oe.us_states
    ADD CONSTRAINT pk_usstates PRIMARY KEY (state_id);
 ;   ALTER TABLE ONLY oe.us_states DROP CONSTRAINT pk_usstates;
       oe                 postgres    false    245            �           2606    24849 "   countries countries_region_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hr.countries
    ADD CONSTRAINT countries_region_id_fkey FOREIGN KEY (region_id) REFERENCES hr.regions(region_id) ON UPDATE CASCADE ON DELETE CASCADE;
 H   ALTER TABLE ONLY hr.countries DROP CONSTRAINT countries_region_id_fkey;
       hr               postgres    false    220    4739    221            �           2606    24873 (   departments departments_location_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hr.departments
    ADD CONSTRAINT departments_location_id_fkey FOREIGN KEY (location_id) REFERENCES hr.locations(location_id) ON UPDATE CASCADE ON DELETE CASCADE;
 N   ALTER TABLE ONLY hr.departments DROP CONSTRAINT departments_location_id_fkey;
       hr               postgres    false    225    223    4743            �           2606    24914 &   dependents dependents_employee_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hr.dependents
    ADD CONSTRAINT dependents_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES hr.employees(employee_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY hr.dependents DROP CONSTRAINT dependents_employee_id_fkey;
       hr               postgres    false    4749    231    229            �           2606    24897 &   employees employees_department_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT employees_department_id_fkey FOREIGN KEY (department_id) REFERENCES hr.departments(department_id) ON UPDATE CASCADE ON DELETE CASCADE;
 L   ALTER TABLE ONLY hr.employees DROP CONSTRAINT employees_department_id_fkey;
       hr               postgres    false    225    229    4745            �           2606    24892    employees employees_job_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT employees_job_id_fkey FOREIGN KEY (job_id) REFERENCES hr.jobs(job_id) ON UPDATE CASCADE ON DELETE CASCADE;
 E   ALTER TABLE ONLY hr.employees DROP CONSTRAINT employees_job_id_fkey;
       hr               postgres    false    229    227    4747            �           2606    24902 #   employees employees_manager_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hr.employees
    ADD CONSTRAINT employees_manager_id_fkey FOREIGN KEY (manager_id) REFERENCES hr.employees(employee_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY hr.employees DROP CONSTRAINT employees_manager_id_fkey;
       hr               postgres    false    229    229    4749            �           2606    24861 #   locations locations_country_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY hr.locations
    ADD CONSTRAINT locations_country_id_fkey FOREIGN KEY (country_id) REFERENCES hr.countries(country_id) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY hr.locations DROP CONSTRAINT locations_country_id_fkey;
       hr               postgres    false    4741    223    221            �           2606    41229    customers customer_location_fk    FK CONSTRAINT     �   ALTER TABLE ONLY oe.customers
    ADD CONSTRAINT customer_location_fk FOREIGN KEY (location_id) REFERENCES hr.locations(location_id);
 D   ALTER TABLE ONLY oe.customers DROP CONSTRAINT customer_location_fk;
       oe               postgres    false    4743    235    223            �           2606    33156 F   customer_customer_demo fk_customer_customer_demo_customer_demographics    FK CONSTRAINT     �   ALTER TABLE ONLY oe.customer_customer_demo
    ADD CONSTRAINT fk_customer_customer_demo_customer_demographics FOREIGN KEY (customer_type_id) REFERENCES oe.customer_demographics(customer_type_id);
 l   ALTER TABLE ONLY oe.customer_customer_demo DROP CONSTRAINT fk_customer_customer_demo_customer_demographics;
       oe               postgres    false    234    4757    233            �           2606    33161 :   customer_customer_demo fk_customer_customer_demo_customers    FK CONSTRAINT     �   ALTER TABLE ONLY oe.customer_customer_demo
    ADD CONSTRAINT fk_customer_customer_demo_customers FOREIGN KEY (customer_id) REFERENCES oe.customers(customer_id);
 `   ALTER TABLE ONLY oe.customer_customer_demo DROP CONSTRAINT fk_customer_customer_demo_customers;
       oe               postgres    false    235    233    4759            �           2606    33151 6   employee_territories fk_employee_territories_employees    FK CONSTRAINT     �   ALTER TABLE ONLY oe.employee_territories
    ADD CONSTRAINT fk_employee_territories_employees FOREIGN KEY (employee_id) REFERENCES oe.employees(employee_id);
 \   ALTER TABLE ONLY oe.employee_territories DROP CONSTRAINT fk_employee_territories_employees;
       oe               postgres    false    237    236    4761            �           2606    33146 8   employee_territories fk_employee_territories_territories    FK CONSTRAINT     �   ALTER TABLE ONLY oe.employee_territories
    ADD CONSTRAINT fk_employee_territories_territories FOREIGN KEY (territory_id) REFERENCES oe.territories(territory_id);
 ^   ALTER TABLE ONLY oe.employee_territories DROP CONSTRAINT fk_employee_territories_territories;
       oe               postgres    false    244    4777    237            �           2606    33166     employees fk_employees_employees    FK CONSTRAINT     �   ALTER TABLE ONLY oe.employees
    ADD CONSTRAINT fk_employees_employees FOREIGN KEY (reports_to) REFERENCES oe.employees(employee_id);
 F   ALTER TABLE ONLY oe.employees DROP CONSTRAINT fk_employees_employees;
       oe               postgres    false    236    236    4761            �           2606    33126 %   order_details fk_order_details_orders    FK CONSTRAINT     �   ALTER TABLE ONLY oe.order_details
    ADD CONSTRAINT fk_order_details_orders FOREIGN KEY (order_id) REFERENCES oe.orders(order_id);
 K   ALTER TABLE ONLY oe.order_details DROP CONSTRAINT fk_order_details_orders;
       oe               postgres    false    4767    238    239            �           2606    33121 '   order_details fk_order_details_products    FK CONSTRAINT     �   ALTER TABLE ONLY oe.order_details
    ADD CONSTRAINT fk_order_details_products FOREIGN KEY (product_id) REFERENCES oe.products(product_id);
 M   ALTER TABLE ONLY oe.order_details DROP CONSTRAINT fk_order_details_products;
       oe               postgres    false    240    238    4769            �           2606    33106    orders fk_orders_customers    FK CONSTRAINT     �   ALTER TABLE ONLY oe.orders
    ADD CONSTRAINT fk_orders_customers FOREIGN KEY (customer_id) REFERENCES oe.customers(customer_id);
 @   ALTER TABLE ONLY oe.orders DROP CONSTRAINT fk_orders_customers;
       oe               postgres    false    4759    239    235            �           2606    33111    orders fk_orders_employees    FK CONSTRAINT     �   ALTER TABLE ONLY oe.orders
    ADD CONSTRAINT fk_orders_employees FOREIGN KEY (employee_id) REFERENCES oe.employees(employee_id);
 @   ALTER TABLE ONLY oe.orders DROP CONSTRAINT fk_orders_employees;
       oe               postgres    false    4761    236    239            �           2606    33116    orders fk_orders_shippers    FK CONSTRAINT     |   ALTER TABLE ONLY oe.orders
    ADD CONSTRAINT fk_orders_shippers FOREIGN KEY (ship_via) REFERENCES oe.shippers(shipper_id);
 ?   ALTER TABLE ONLY oe.orders DROP CONSTRAINT fk_orders_shippers;
       oe               postgres    false    242    239    4773            �           2606    33131    products fk_products_categories    FK CONSTRAINT     �   ALTER TABLE ONLY oe.products
    ADD CONSTRAINT fk_products_categories FOREIGN KEY (category_id) REFERENCES oe.categories(category_id);
 E   ALTER TABLE ONLY oe.products DROP CONSTRAINT fk_products_categories;
       oe               postgres    false    240    232    4753            �           2606    33136    products fk_products_suppliers    FK CONSTRAINT     �   ALTER TABLE ONLY oe.products
    ADD CONSTRAINT fk_products_suppliers FOREIGN KEY (supplier_id) REFERENCES oe.suppliers(supplier_id);
 D   ALTER TABLE ONLY oe.products DROP CONSTRAINT fk_products_suppliers;
       oe               postgres    false    4775    240    243            �           2606    33141 !   territories fk_territories_region    FK CONSTRAINT     �   ALTER TABLE ONLY oe.territories
    ADD CONSTRAINT fk_territories_region FOREIGN KEY (region_id) REFERENCES oe.region(region_id);
 G   ALTER TABLE ONLY oe.territories DROP CONSTRAINT fk_territories_region;
       oe               postgres    false    241    4771    244            T   L  x�5�]n�0��ǧ���r��@~��/�����#
���%�x���D+D�f�%��h��?{G�!��Q�7��[���
#G7ӈ/���*��3�o�����1���8��]K�*�8ŘmK�G�d����<�j��đ=�ȳ��֩i��#nĥ3h[���khOM`�s��DV�t����	��'��k�̗M�����U�@�����,�b��ؚN�c�lRl��\RQ�.,�)�����D� a�r�����^�P�vO�KU�(Nd� ��#Wqɗ;	�+�[�|�	��y�|_S#�z����Dcb���{޳��](������om��      X   �   x�=N��0�O��/0Apd��`b�ѥ�Fn,������bt<�#��{r�ä��2�㨦�	��5+��;�g&Y
�c���l������K���l+�q�@&�⊛%�	;Oq"�h�M�d�`�6:z��̰#���a�F�!��r]
!>v�6�      ^   �  x�E�͎�0��ç��b���f7H�E��@�c��PE
d;E����|4?���`/A|<���j�o`�)Y|w�ol���B�AE�|��%�jA%���%	;���QRa���źm9edh�����^�l�C&�fxL\���2X�߸�[���,����F�R;N�sݐ)�#��w��-��5ƒ1�!)b��\����q�A$$�v�d&x;��������xw*6`3���[��
���X�Ѝ^J2S<$ip7���}Ef��|���}6��1sܫ���$䋙bFf�e<`é�zq�u�OC���L���%k�\IX��LJ�kQ��6ƜMEv��f�d׌I�)�������fd+�䢚6�4�qޜ��NÏ�$���]�3l��|nY�53�7�G���C׉�7T���Ԛ^ꃤ<��Ҥ��嫏�1Φ��+�O��|      \     x�}��r�8������#RG�m�I���i��Mo��T˔W����Jv�$�g<��3� �� ����­��������l���S��^S,c!U(�8II�,]�B���� @��L�B�>[�]W�<759Vbӫs܌�z腒�L�ė��n�ozg_]㨴��ʾ�a��j@u��B�/ACz�q+[�U�rE�x r������&}�+J@��M�--��]��=�²}��q� �MɉzfL�̾X��iG+�xq��᳦bP�lJM�)˂�����2�g-vG}�0;[
N��N�]aP7Um]��V�D٫Yn<DW{n�\5�f�ٸ�.k�ؽ��:�b}�3���-����S�%��k������mhV���y��JF5�y��S�;z�����%����:<��L=J��l<�[��^�����p����	Z��ƾ�5���zk�g�l����d���� �r
qA�䂐n���/�nG%,��u.oCMH���C8�jv9Bp�Z=�l�X�'���4�m!��Q\�U5j�sl�����!�r@�F't�[~|oL�2�x!�Y�Æ}�ಊ����]�6%}���P�B�^��FCI�Gl6�ft���vuE�� ro�C�}H4��#�)RӵA3��U�Ű�mC>���9|2�	�x|<���nM����~آih�+���8�?<���H8�8M٨&b�%�^�-}�T��)؜E���F�W=z�=R���6�C�Cy�Rl9��/3na�R=E�(3�ZC߫���x)���EG'�e0x��StB�.K��fS�O�
*�Dl���\᫢�M��`�c#R��(�{�׮i�8��Y��{�O�| Pq�(oh�Po_L�:[�m7�b��|�a<!�	�s��+G���.�Z�^�0}g�_���L�)}2��{�iA�-ʓ�GF$����a��b0rc���|�5�&�R�e�{�NC�j�1S�x���^.{-~��%$�ZL�L��ݙ���3ݰ)�_�3�OH!�4��Hl�G/���������s[�ż�׳p5�S?�B��z����:W<`0��1��A�G���S|�eZ�R���%�Ԓ�]�8��c���'"?���c|N�߷�Qn���b�9�Ӵ�n�O�$��P$Ir�_��wwSv�ah1]��rk�5�z�Bl��u2�gؘ��R6�.�"P#���g8H9����"�gL�&���M����ky��ׅk��ky�y=O�`LWO�GN]B?
�q��K,��Wb�j�,39����?������ĺ      Z   %  x����n�0D��W����U�z���^\�"`���n���DMO͛���q�쌊+���N�N�%����-�(� ��ie��y�R�ν��ONNf�q�=�\��fptڛ�Fcnb��z7J�?.�#%GO����Xi1����ͽ��I�avJ{<�8�a�/�t�f�x��q��1�DNu8��t�����(A�P���	=�Iw�R+
j!�'E�S�^:�ZH$�ɶ̺���j��Z������< w�r�J�C}1���T�4��䐰�)�Le�����EQ��7��      V   �  x��YKobI�^G���zQ���c	?���e�j@$�p�pŽ'������g��^�J�E�W�����3k4R�ӂ�8q�߉�#�c��G�JL��>��j��s$~����e!V���/�d?N>�q#��K]I��-y���Y�a�H�����
=S�̰�(�gc�NA�x�-�sI�噟�l"EU�=�r���2�	d�O�\i�;Ɇ�=)�3��ʰ���a�·��8�c�em��b?ݰ��s(�o?^�C���Bjޓ����-%}��s>�)�g��
�b��9�?uY���RCw�̖OBWK��ee�<�B�e^�lXk5[����:�N�B?H��-%���Ik�La��E!���:tH�,HÀw	��fyy!���%�����^z���(�u��3�Ʋ�������ͻ��������K����˽�?�yO<�J�k�XE����̬�&��i�)�b{02�]+�*�� � �ٴ�\|��u���s
��{�[KmJ�QV��Θdv�m~^�����gb.xg1�U����������iU¨� F9�o���ϟ|yۤ�EMI�C�/TQ �#��v���LX�G�Y�)%�;�V�#d_�B/��PSS[��^�*Cy�&��r!J�&� Xxnų��);��,����=�l"��imGP�Ƶ�W0�q��J]�8X�壐X��_dQ4���	������k�)k� #���CD�H��F���N!�Ο�y=�w���+Ox��̋�,m5���.�ܲ.y�o�~�w-}�� �	�p/N¨�ߔp%:��E�!���,�V��l,K��=��&�`ݠ.wC��� $� �E��!�|X��̈́Ư~��r��E�E�\�db'�3�b&��)Iʼ ��ɍ���^	-�Y6���%�B#�����zt��n�6��\�ϊ`E�wP���=(;x�V��~#��(�ZY�|W(w��ZQ����=5i�Y�f�~D._�C���ߕ��V�+�.8��0b/��n��3�>�y�-r���jˮ�	O'�T�u�3�v*����/S9ۋ,
�U�@�M�]�W��ݠ��_D�Fu���GbEb�><�����1�L�A�{�*�-��������Y�'�?MIP�z��KQɊ��c���L�^���K�ׄK�d-ea�EԙQ��?�e]Al�b�E���L�+9����h^6_rv-�U]�DU���ǘd�(�^��>�	���*���}(�E}D�O�J8R0�,����(��ȯ�0�E�S�p����S�{�O��]�ԥtx�$t��O�g�lD�Bw�iT�Ҙ�3Z�*�B܉;e^��(]��$'�`��c��P���d�k�CaK���ʚ��	,`:�.(��%)Y>��.��/��C�����N�F�A�`9��t�p��ځy�C���Q�4#�=L�Ш��q��rN�ď�4��]�������L�b+Y�P�!I�~���{{J�\#�`A�X��ș~C�BУFhl�`=߁!�{_���A����mW"3)�#ALp��� ��c�2w����&̖�.��/�w4S���ɘ�W��"{�Yi�)K�%D���\ۊ����j��[�\OQD�r�=�,�1c�a�6P(���/��,��0������
aQKf'�#;)�<$S]Ua�p�1���2F����h�裂�gԤ�4g������q��WG��K��~}�oɥ%����$�Hq�����+$z����@!��A���A�B��>k�-D�̑���"w��_[��*�zj�I?�����/������yfԫ�|�\�.�˵�s�Z��� ����/K*�#~�U�n��+R:K���\���j�O͓F��9}�3�z�� ~���K�'&�T��d�J+�l8:��'�.hG%.����S[�)o��S��(h
w����U��Q*t��9df����ʆ�ӥP�_� 4�R���4v+��?�+ͱ�L�*yW�tS��fF��=ay�'�*�A�֦���$b6*1(wuK����Rk���.ݢgZ�����9©-c7 �,9���f�p����i�̕��#����E�w�+9p�=*߄������`�]�0�S�ߟB�U ��U�3��U��Ac��a�XѶ��/���x�X��T�����ʘG>V��:�����O�@[����>�̂OVD	J�� �>�Y>��s����B`��H4���1w=ߨ&p*au��(�ןGd<�E��s���������&��������
������+�{�v���O��:$��-:gQ�#��+>�WN��V���"���B<�Z���%�zZ�f��*[��[4;AF��
І�40���|��l���X0rĊ�O̭�a�h��c�@};����=�{�G���%�$vnm���)+� G�	���}���>X�cP�o�I:6��X��>�ȍ�G�X�G�)7�?Qrp��Vg�}��ݟ��#�ص(�1d+8ؤF1y�|��JNM35t>���DXt�I+�"�v��O��|A洰�=��@ �M$vR��ji��Q�G4�~�����&	v�s�w��q�{��~+�%QC��w��Q?V͙̀�D���i�+L{�@=���JoVX��n���>����XKvz��?�HHY$9\�gHs'��Htb�i!+J��R�=����~�b����l�����
bʾ��b4��,�Q����
������3��"~1)~eR�������%q+���ڀ�څaaZ��F��`���p����N�[��ղ�5��"�w/����%t-�P>ª3�����L��rDc��R��ϟM���fY�D�0��������z~.��VbA$�1���F&��n��֩�����e+z����Y"�3Y�ԇO�#�n��6�s=���5��Zb�R�=Y���&5,O�^���h8<�Y�)V����'>���d����ޡ�����{�a�!{�&Um�Si�枑
~��Q�m�y�aw�е���d~ʇ��Z���{@��?��/��$="��+�v��?��;�}gX��0��(���i�]2�g��,�AQ֋r���I�4�����E��9�9E���`�����AD3��n�cr���.��B����)W��g�Yx�AlA&��yy��D�+z�C,���%����}��,ڼ�����_ОW��Pz5~'��%�sUЫ�����y49}�8��9���j^C'>Ͼ�2g��B.�f�y�J��oC/��s���7�Ds����wf�>�1�n��h�1�&��K"s��cȓ��w����=G�$i}8�3o=�cj�G��Jg琮_`�ۛ�bz��`B9_���j����(�yz{��<��_����3P�e��iЙ?��������da��7Jyr�������_��	��,�7f��%�]+�$�>�<���l�h�hI|�3\���>��v�ہ�����L�,���C����~j����-f      S   ?   x�3�t--�/H�2�t�M-�LN,�2�t,�L�2���LI�IUpM,.QH�KQpL)������ �~�      _   �   x�5P;n�0��S� E��;�:0�5#=%B� 崹}i9]D�|?ꉶ�B��]���YZ�C �)`{�X��[���6�������(u�|�r�2��/���N'����lN1W��E+����RUHYb6�S=U��^��h^�d?;Kѝ,�=�}	Ǥ����w{'��������*���\6C��"7|{��*�A�#��h� s\�?�S�f��I;p��/����	�u�l��|���      `      x������ � �      a      x������ � �      b      x��Z]�"ɕ}��!Yڙ�&�?�*h>t�{� �!���r~TM��߱k���miV#��������H(��,�07�=��{�5ku>��7o�'���,�G�,�\	��,/7,�|*sYȴ�z��VTi��<{�m�/���t����#�i���ه>��
���y˶l��cF�ю���-�eU�v�U+Q�G��$�I�l"�\-U�gj�X�g��x��Y[�*3�8kU2�
+��~�2-��9}N���-�k`z�u����E�����m�^Z�_f[�/�H�0[�rWm��E�T�2��H�l(��_^�Ha���V���$�Ç�J�(�6��I�{7��&-��L�fCIo�o��"������9f`��x2c�M��(*	�nT
óOX��u��S���cY�y��k�<��+ϞU��y"�3]�n��������x4�v�Y˗rŻY���
�I�N,d��<{N��<�z�	v'�Ln���29s���Y��q���adEs,�7n�q����b���"�J~#�����͞d��e�(�`cL��x�U���|�݋����\s�b��Z�g����d��3m�j�Nd���ً\;�Q<۸�0��Mŷ؂��B0�{���| y�ʃ����+�S����HK�����@{�뚦Y;�d���f���9�?��ZF'��;�(q���4��R��q��O���x�O.x'38������_ܴ��l�8�CǔS�N�%��Qd¦yJ=G/�#�7k���0f.v4]�c��(�?�������S���mo6��~�0�Z
ރ��3�,7j�A�̚q��(���4���r�U�E���G`�"ى|'�w<���\�h-vh:.�=
��o�z�<r�랆�EX���A����q��"��YR|�t�S���������ƷB�ǒ���!�s|=��K�\tv�ٴ��E�g���^FL�x��r�?���-�;yA�W;���2_���.k����z�Y#t]�y�Xd����Ł��02n�񨯗� S�|A�0�8~x�
�!�#�D�;���#=Vh��w
�0j�a��^�]Ϣ����ӃA8��b������ܳ�f����<��i�"`�Z�ݴ-�;{6�ȶ�}Vr��h��j�%'/Á_���8�aFA�R�"����Ȉiv�2&�"��-��Fah���3����?L{-v[с��R$p.a�D�Ze�g�I�����J����=�Um9��<+�6�c��"z!�56���Ht�s<�a{X�����w�s��`�|����&!]��_�l��Ϊ�tȷB<�U.���Tl	}���I���J["_�$K����t�Pt���p׃y�Gd��4��7���V��%r6��yH��"�O���/�<7�`J	;{�f�	ѧ�w-����un塍�h���~�tF췕��;�n���܏}�O8��l� ��Dl%�^�H����� E�Od|"�$c�	r� ^�*v��H�, ~��Mcρ�S��&�T<�Uӗ,�Ȗ�J��W	����V;�>TI�/��M,tQ���9�c�!؄} ���ENt6t|
ˊ�i�O�'@��p(K�S"`���J︂��S�|��/pJ����B_VyƦ�w D��cs�{$��g�⏝v}��H���'R�_H�1+�Ʈ|V}�L�:H���)�����>��6�z��Dz�9-�2f�Ao
�IT��0b�߿���%88o��<KE>x掓��[�O��l@���m�8#B����C�l�{ș�eGƼ�i��|C�����j�G��@�/?�����v�pB�F���Sa�����im�M۞�i� _H3��[����u���.yA|�>]��UYJ6�#���	]�?x[H��:D� b��|�t�<+����?3�U�H) ����L1p���+�M^�K�-j\�\�}����}�6@�bDt΀����Tmԕb��)ȒO��IH`0=���	������iH� �#�m~#>*��J�`&0�}4�1�4i9���4��m+p�R�q�z�^&��k
����3!k���V���i%t���L�M�v+��N opNFq˰�c(��}���ߐs����5�"O���dI�7��BB�O<�y�L���xWo����>�۾RpX0���3�ژ��#�f9�k?Ɋ�[��
L%'u��wɁm��g��4m2-��� ��j�7�@�Q�ˈn2�΅68��*��K�����;Rj�������KB�v΄j=�$�2���;�
�^��(�r�>C#:�-vX�q��K�a�HW�[SR��أ���w�*Quʴ��gۘ�@�NϤ�}��~ݍY�J��?' Ƥ1R�My�Y�Q��=-�2��.V������[� A��P����˥;��\�~pH��~d�ǝQ���K�:�r�-'l��k[��iF�Er�qp������ 8�Z.E!��N�� nB��'�����-�9op8�9��^�B$��R�y�M�ʳGK"ߤ���u̦E�B!���ED�	��aܣ�l�"�_}J�<��]�Jdy����qR��l�8�
��dU!k�?�ܷ�A��+&?=��mc��gl 7��>I�`_Jae�KQ���ߘa(�@��tyP��2�huYć����l�}}	 M�7��]׿�T������*U�w*{�
�@
@y%g�T+DH�Jt�p�w���V�{�=�e1O���;XOov��q��g�9SsH���Wf4�Qoy�4ZT0���[y��<:B��!�S&kUmٷ�MLق�#mw1��d�Fk<��m�2�6n2��*�J8��,I�!���y!�Iԧ���:f�6�۷<��U�ط�y�n`GgCBK�M�={��-��*wCU����ǟ��t�,����$���r�-�v ή�U�|78�(Ǹ�����
j<�U�}�%Z�W��L���
G�W��U���qb
��t���`��e"/�
�ۖK����J�U�rm�}D(��P~#��'v�*D�nډ1q���id�������A��,}!*�u؁cC�j��ϾS�Se�]�y��K5c0�x6e�
N7�E�j��%`��	5����5�')[�J����P��[d��<�r�_���ˇNÎ<�u�8`�H��#Ȕ.v�S>:���n����?�����T�8�\hfJoŉiF�i�O��[��� K�:�G�x���>�2O��V�Q|&�� � ����ߛe�"�����?��9�v�+ܚ��Zn����|f�����<�6d4G���1����_�HN��)+6
�T��U4o�_$���B;�=ˇ}U����څB;x�B>!�ih;02�]h�f�x�z��=j) �VM�$u~��u�w)��2�3!/� ��3�?'y���MƎŃ���4�_x�{��"�~�k!�V��������м-	^��y�H1b�uQ,�=>�("�|��Q�DŴ6���r�o}�u�uxh���ç>ִ{�}�'wƹ�'E<
�R&W�c� 5�_b�|N
d�{�P5�^5�����Gf���l�� ��x`>#PB	��#>ۀ��p�	�&���{B��?���{_[)���A���Z����4h�'L��Ƭ:)�cX�e�n��Qu�P|+�,�ZY���	)�7>�7��2���3�^![�I��؈*�3��=�j����ȹ�xX�h|��A-�%�,`�[<?"�v�q�c��}�r<���x!���9�5��@CrU
6�� �}P̅V<_<r��$��A�4�o��`<�L�1 ��3�%�W��4�XV:c�aD�&�g�\U��7�+zӑ8�C�%�ض1�܏�8Y�{lp�_C���g���)z;p�~N�JQSN��$���[:���XC	��=�aH�,�5���]��O�֭�;YT��!+��'ҕ~+��$y����Iq ��Ni�`�V��G"
 �G��Y�h<��؈z������m��B��F�8��׵�b���E�gvpk��e�'���l�C�    C�;񈍗�/��q� �D{�J4٧'�2Q�{Ip��U{�	���?eǿ��=�Q�l6�����{��m�9��^���R��K�s���EW���io�Y$��T�C��&���8 d`R����9;�V��]���0@�&=��q�	��2ɔ��/��U��R�I~W��������RWOħ���V���p5\*����M�m�v��/ǁ���Ƥ3��A���yj~/q>�"2tW�@̷�����{!-`z�
l��}^�=�.z�vM���}���iLz���M`5�8B�oay�{�p��:`_��TEB�N�ے�QX{T�>�}Ϸ�O�����L{�� Η��WP��T�&��G�5�+�u��
��;>�Z���H �~��T
�5�xp��>�r
MU���/}���J� ��'�r�n��9m�<���F���Yw�ዾ;�R�����NU �\Q�����E]}��kA�҂�~qQ��Z���)��n\�`��P+9�B��5�0g��ue	��C��78Ƨ(��
κ>������9�?4���� ���"�y��l���"�^���m��׺&9�C�[ܺ���J0���G�VF�3���"@���X,�{d��njL�z����z*��?9�2��U�h#/�rl�F�$P4��z#���bQѮ���	�%�	�gל򖪢��W"NS�Tj	a�Rc�Rײ~�l]h	1�x4��t�X���?��W���� ��YA�+8�"�����t���̓����ݕ��������S6}�iyM�:{������w�Z�_��zY(�t_��m��|8ےn�=��=�s8-Il?��+@E�˻����X�.�@�b�Qs w���oH!�����\��86�-�t#��յgZW!��,*��YM�m�^:����m�1�LA߆��*��a�fѲH��*]o�E���	�9�����cX����[m�U�x�E����Pvlj��t�aJ���)S_7����S�Mm���պSQw �IO���d�k{�٨�N+�6���)7�Ek�@eI6�%H�,����;�T�r������T��m:����(h���"���x����3����F�����<���+��r����/=�W�=��o���HW�Cۘ��HJ��;Q���(42U�gB��;��@����T�B�x:\�69��g(f3 I��ӳK`�Ƭ�3�;`m&1Y]0(�C�����˙�#s���9C
����YwG�7���z�W+�4f��U��/�� �_45�{+���/,�����'��~���F<թ8�;72%����f�n%�v	#��1�t�78�3>�W��`Lw5�M����z�W�?��-_0D��!M��g^���'2f&S��z��������O��+Œ�8��%���Z땬�]�;n#����]MU�}��S���o;�ΐ���;�Kfd���لͳm�g�rW��'ѧ{<�
wq�:�kR`�Jn��Q�:��	�q�G��,ۋ��T7�%�~:�@�p���#ݜI@��T{Y��K��J��T�W�1DT��MDL"�c|{�a���2�ჰ�h��[��9�l+�E�������M�= ��>�a�à��t�����S���^{���o��K�vp��Y���}�伳pL;�E��@/���G���.�Z��6C�왼�q1�3�@*(ɋd�eIA7�p�t�AT T�fYy����x�M�X�	���z�e�݆�pv�vx����5��xtӧK�t��.a��@�����4ѵ�+81%:�{��,~���G�����E7s�:<;^}ԍ������ ��PA
��g�֑\�w�~Vq'd�*�h��$��U��'Qh5�H}���#��m��>�W	��"��W��x�˲J�8���|ߗ�CU��p]�*}�1n[�{6�ٰm������9l{<�!f�8����G�[�/�N>@�Qq'S%��rw��*i�[� ��u�`�b'���_0�EwP�����w�w�F`������7~�4�� �͊      d   �   x�%���E!е3'@xB/��:&��
G�h_�ٶ����˲�Ɗ����~%��;V �]������l.G�_c���=�Z��p��#�~F]�p�db����d���\M�Y�����,8|l�~�ȫ�<��	�3���J�D/I�r�,�G�j^/�ci^/N>�c̾T��󿿽�?��@      c   �  x��W[S�8~V���Ǝ�˾�KoKX���a+�����dh��~G�IBK��tA����9Nعx4�2�J�bǌ�7rk����%[�!K��l�������F	�GS>���W|�(��bx�[?�邭���n��$M��Ղ�MG�w<���|�OY�M����;�(��͕.궔�~��o|�vEej���5?�g+J�W�O�5Z���'��h����\����4�ZzY�[|����5���]J~&���Ź�#�<HK�n�p��l�?k�С@QY�*��/��I>��N1;)��2�9|h�oR���ki�B�V>�U!�5�U%�=�F�sK�� 4$�[ ���h��(q�����ر[��h�_ ��R6��h<�[YH�S�
�;�] �����]�����|Hߩû�F�o�+���t��s`(\�l� �O��\�-�H_�RU8�3n�������m��O�g�F�t�&����G�<�O���b�Z�m����/B���8��G�~�cO���]
��r�":�^(�
��e8���oL�K/j�B����*�?tqƂP ]�B�U�oT�?7[c����Ah�����Z)]�٥5Xa�����v2&5�G��22�4M��8�A��i�X���~�Qg��h<~!�q�@Z�<�
G�*ps���X�,*�(�mg�S�<��r#�[�#{י3<}lP�i=AD��+�vm��E7�&�W���P)K�t��2
s�^H�XUA���>K�>�{#��0g�AOaN�����Ѽ3�8�eI2�� �nd�TzV��)�� ��'�I �?�#*�}x^�M�\�k�	�Zه�.�-�8�'���a [,�~_@� E#�W��$��'�����Lzr��6:BM�\�&�Y�Ɉ^��Uu��/->�ʚvS�+���[���A�Nۢ�84[y��ٳi-�9K`��d4H�,��Ga���T]�X(Yqu��ٗ��o�v�DгY6����9�?�C�e+H`�R+(4F�;��*�'�!�Z'����F�	���^��$�߇b'��c��RLM8��Ψ�Xc��^�XGOY�\�ڎE� �״��}#\1���GI>��Q�s ^��3��-
�����Z�Q�&G��(�_mC�T�CWP�ӄ�ڝ@�]*|+���XX:=��)?��IEK�6\����Yʧ/�5�N��,z:��Q�-�ުuN~?l�o��.�M�
wB�x���wlL=jm���A��A��/O��3�a���O���7(㐥e[{5@ @,`b%���V5G�����ښ5��#Տ|};��P���~y����~�F�nZ���v�ǐxC��ِ6E�C�1���v yDI��Ц.J|_������<��;̮���1�k{�o>&|��>b:��3�MbK��s��;ii`Sc�+4�ڭ�tZ��J.�{�*Dp>H�*{�&d�}��]�s��Hej#�>@h�N
KI��PFsҚ�xp�����T^/:��f+C.QB�ڭ���5���Sg��y�K2t+�z��3C�Ial7��aO'�a�M�	�f����^_��`�qN�ٜ��,4���3�ko0?rp'\�|H��磈1v|hh�ץZ|(���q�y��ٹ)�U��A����	��N#|I2Hr6���%F> ����#��������0�ķ-��r��>��K�Dw�����������O5t?|�����g��      m   �  x��Y�n#�]��� /��~?�$�)Ҥ<��)�5d��.���j��H8�"0�E�U�c9���H��0#̈�ܺu��}׋���-eQ��1b&Y�����E�	n���fB��]/f^�{�+V��n���Y��Ϊ��%��	',vb>��^�9C4H\'`�<�3Ն��I�l��yW�a��=��E>���������I�}���F�"��;�&��;1��&�.�=�tQ��ݓщ���F�U����l�|.3�WSiJ1׆���\�uX���.xGY�ooY�����	���|��UQ��ƹ�L�O�$�#Uh�9��oS���J�}�� sc����g���<?F�%���R��
~���yN��n����ܳNEi�)(���,�X�O�6n�s%�H���N���̦�2�5+�!�'*"��l��D,!�/�x�v�,Iޑd�.�*���n�B����qZ�ES8a�J�k��Y��2/x�{��r��1��e�s�2[�jͺg�KYWW�ܒK���	��g�V� ���0�4Z5������D�p}O��?����.s� �[����2�&#�!Uƺ�N��|�c���\G�� wu��Z���Å�l>��$~�$����gcYHI��i��U��	I�=�,������X�L[K�f"�?]���ʜ_�����B{z#fb
Όb�x~��>V��p-r� ���Kxd/;4��amꑵ��+�k	|����|dD�%{l��vl�����&�� ZI�6�7Ư
�!������Zq��XoP�ŧ6#_<��⁪#?t�;�'����{��AE�ر^�`.s�� �a�ބǓ�MJٺ܉��˥d_W��r�����`�龨z�t����:Ui�?��8=�Ŋ��ν���LW[��OMpC7�g��7B楑����}Q>��-+e�}��q��2_�mNiz*�0+vzC�1��Ţ����t��Ͳ*��	����t����*Vr*V+���K �?nSv#�UU�DY�)����Y���5�*�#��
�H�;�R+�'�s.VYՔ$Of��������f#enD^�&�c��~'+0�[}�����}�:����
iq� 2pN����9����\�~V��L1{�*X����QE�$8�g�+�5�	>�R�w:oȇ`% ���'�`���a
���41b^p�7��o2�â�n5�H*hR-��u����'v�f��)r�k�h>�b+s���Wg����Po`�PO#�2e^XE�������:���pJg:;�B���T�&���=ݥ���*d���R,`O`�uK�jb�BA�띀�_�FN�t��o4�"�BQ�e:��j@�
�?�e������� !�5[��(�?X_��
�!��2"��-�ۜHE�"'D���}eJ.ڃ6a.�Y�|�Ni�1@��Y�6zm�������?���(զ ���'%�C���1j0-�LTT)��˘h R�*˅0e�ؠO�5"D����u� =�`�G�ȍS֗j�w-�/�!WawG��^�F#�KCw;����-�=7�eG�gJ���q�'�t6N�������'�2F�(92.q����?�q�"6D���#�z��ϜcY����$tZ�&p�^����edSh�6r�����'�q̇%��&~�Tao��H�U�[P�4�#�% �K|�rԢ��LOc��4+���H�֯(�#L�"�@������*����-Q�¶�cWD���Qk$�d�낂I��n0�h��Z������ș�*Â`4e�g��R�׍#��S�)'<�B���sy�ОB�D�"�`��:��l�)b��'�,��F{�tkU���lX`P���؈�]�H:f`�_��P|P�XBi?Y}�j�?��F�M��`��1C"G�����s�X���o	Dq.ڼ�Xʙ�����`}c)���H�k�aK�Ò���[���L�i��Re5S��sʫ�v_ׁQ�.`��nD�x���|�x��(\i��c�ۆ� 8��ޱw�+l{��૆�`�}B�jv�'+bY_� �, :4�^���Pm����*d���h�h��_|����C�B8bU��˰�=��:n���=8�#�7!F�V�����.�)���pI�>��i���X�e�j�:.A���Z�m
Y����`�ga)b�	�/�|�>y�'��'�
�K��b��mU�3����
k=�D�s�L��?E�&�� �t]x�� ����;�1⻊�	(.���5�Tأ�>�o�a��X6�~F���A��
��d��`���g��Vɹf����-�*�[�/��Q�G��`�y�!�͋0֘kX Q^�m.�ȭ�g�O�c��m��O	Ǳ���0�$����jÞM(璄݈����ǰ�OZ~��/��*�T��(�N��vJt�I+	�t����J~
H�Do���`�P�9�LJ=[-u�n�\�Q�4�k"��u|��|���� U>ֵ�z���)"�#qw��W�}i�)kb�2���=TsS:x&�[�*�zg�䝭���<��۵@���)��3���9zS.+�Q���}�Р�@>C�Y=�)��j�ɒJ/iaG����������l���-����U!e�@�4G�g;"R��U������v[��b��T�bf��̮��?�S�/���&��h,f��bsBi��p�RcIlZ	��b[�-�rYk��3)1��%:�gU4b�>�B<����'^\	|��T>F{�^g+���,�c��-��:}&�P��z|�v|$�����e]�d�w��}��{*��y��}�u݀8P��,
5�r�]���}d��%k]����vc<�2kܖ�^���n�P�Ҙ:HW�����==u�I
�1����M&E^���Sbzs��cs8��� %ǃb���Iz�%&���q#�����L'&[�@c{a"v�č� Y
صO���;,/��nϞ�Z`��<�x���ۼc�ڱFzG�		b/��O����M>����%)��Y̰}ש{0�樍���"0bb^f��Y�o����
����s��>Gϱt��R=u��`�,$��<ɬk��=�
x�^잒��C*3�ICv.����g�J�YU������;�G��$��$zSJ1�42�4;~I6���nJ�����c��_���Ӱw9�<����	������0�ܻ<9�8eg�\�5��2� ��Un�Y�U�������d��N�̗61{��[7��m��4�@�o(�(1���������brxe�52�t�_�=�#nu1���H�W��y@�w����B����� �@?�����wy<�F�0{�
���߫Ų��!�I�W�\z"5��_���[�ٱ�0���[(ɞ8+
�ᣆ���Jfr�kc葞�
�ߺ<:~Y;��%���|�t\�������� ^��J�)HB0���;~�@~���/�WC!(      e      x�m�[���D��Sa�0�;�q\2S�u"��Y{�BH�\�OJ?�������6��g������5������g���>�[*k�OM?�w�E/a���75��~R�_4��|h�C��׵�wwUQ� ��o�&[sX��E�y��Eԟ�<~�����dm�X��oY�Ơ�C�'��b�Ї��ކ���9E:���h��ۤ�O��z�����T:j9j맾�����ۮ��nа����}0������4��.��Xi���F4��M6�N�5��.���.Oo���xl��.*����n���w���c�ۃ��orH��;���B�4��4�%æ�]��^{�hf��?V8�y�^1z{t��3_B'+G�3��EvI껥%Y=6����J�s��d����Q��������� ���4u}��w���
d�5�}��������(���;P{��#a����r9˓K��9>U���@lv����=z��z�R��[[���}#�\Ch� iR>)�K�U��M��z�4�&��O��iI@HǴW�#����A���r���as�2�d.,�����H�=Bo{����+��K�xO�
�,��H�*�?^�q)�1���"T�\e/�D�*��[5���/���+�k(�h��ߦ�KҐ/���'@��"�9�F$=�\�tS��N���_Z�iO���ݰ�=j���nS�g��&������������j������L�[o��	�3 m1|(Q���2M@��DsM�Flh�DuIQ'��u�D ��U9��'#ae Q�$9IB�w7�0�շ=�_��x�^-�g����?BQo�]�:�^�.�k��Y�}7ZZkN�m����w�;[��Vy��Dr���(kث#)�)���@�^r	�Vc���qP�����ԁ�������q!�XhA�����]�Y� l�#��]�.3"g����[֏�C�.t+/�&��*N��{%�~���%7���)��]�- >�UD����&�O�_$���HC�����F�+���t�"C����h?;1\g"#|� T8j��M�	˷�)��R��2x��F�Q
�;��A4��M��= UD''�*I�#�Q��ۤF�_�a\z��%K&�v�c�)��\GX#0,U�����Z UD'�.Yk|l�G3����S��K�yI����l��6Sc��k]Y˴5ȟ���s�����ݘ-���)#���j�iN��ͻ⎪�1d�� ]���0�`Es�>�1ϳ�Y�/�|��~*�k��`�ʇ~��h�s�5&W����F�b�6.lgF0�����x~�W�5�M�=8}oa-�|u�����4~ӶԳ�y���|A����Ƿ%hK�Z6��Xy�k=�ˀ�$�"��K�rïްr�7���d{:�̣��B(c�M'l,�W��\�)/��>uH�&Gԭa�U?�W�s����L�!đ"dN��Z)���{L��}d�;��w�K�غ�x�2hnޏ��%�����C���т>So><6��ms�ۂ������A1�ϠDB�}�<q�>��-vNj:�bo��������I�q,8@�-��B�����ɸj���q�^w���H^�AO^	�W�B�����#�A��I�zֲ��6����b�?.^���~�ƫ;8�겛��N���׺�����K���҅�WN��)�`"�yv@��f`	�+�/�v,��ⱅ=6���3+��B��O����}����)��~g	7P��US2�Ee��W�RSKn����m潦�8��mȀ�;e*��;�ǏǑp��T� cQ�J߾�Fp���ȁ�q`OL���}���L(N��U>F�R~!@�c����͛�>!߃>����B�l��k�_r������=F{@���h�����E�K��m=5�{8��`�8��H{r.w*w!mMMH��?x��z �]�a��qf�MOF�<���Gݶ��+�޼u��� ��º^~��Vâ��q��:SVc��V�r��xd?س�5�_�%G	ޙ5�Q�qs;��Щ��t�`�x�Y�����W�4G�ԞU[n�h���	]����K� q�������W5���@�;[P��l0Z�"���P�*a)�r��b�7U�����7��kCt��S^�M���r;l�Ѩ�z�?����S��G��gz��¦�� 4��2te[S�d�R��M�
mf2 tP3��C�~^�\m�~	�|�'<bH�k�!��zZ�Lr�"1VXM��k�xj7��E4��5�18p{d\���$�>������y��g����U��������m?㚌�h���"3��� �"�U��eq1����H���(xZ��*p$��\�]rhP�
����[m5F)z9P?�c�_BCy��;��U�6y����v���Ra-;S�)��Q% O8O%��y��Go>�a	�g���t�n�`�a�ض���@���V����MyD�S����9�M@�9�j�ׁFGG�7�U��L�j�8��a8���r�\�����K�xX���8A?߾0�狨zt��H���ȨF�/�W�3rNqڛ�;U��t�� 5W-q�O�_��+f�� �#$�jB\�S�Z�>�OFnu���I��������t���(���?�s���	)V�Ρ]DV���*tn�|7��x���=�* J�0+��qԘ�7���kzL�#�"e�<��4��|<_����d��T߽E��]gp .��� 7��)],>V:�c�Gπp��6��~m~�m�>�WC��4����h���}`W�[~�_�+p�L;c��Y
=��g���f����y��J�	��:{��W�h3[Q����Ztl�uor�����,JC�7BV;[�^�>�{O�r(p[�!, =�=�3E>�)�L�19r�}C��\�ʿ�P_�	�O����������mS�<��i6�!k��<���2�+�)��JBw�@���a�*a�rJ�����h@�^u�-�nD*��a���u��[}�BWc���7�\D��q��w6�-r9��L�lU��Y]g����Y�ﭬL�:�x�̩���h�?���areW��7�Y���ᙡ��W)��%
78:+���	|��1D�i��N�6NO[O��/yH�O�Ӽ��4�'�b �����ܻp�Z)�=N��#�A0W�$�bA)v�!=럣�jR?N�#w̥��@l��-b����7»��{��6��g3���E������:[��_ܞ��v&A��(��wv��}���=��_��jĂ�YG)#}�f�g�Xs�͍n�v��r�}��w�����s�v��J��Y�Z�63H�zWH�{l���g$�а���t����;څ�m��[1���@�>��wL�vA���v�뛹���axC��q�#e���޳օƞ���W��V0��z�%D�qt�lio(sG^H��1%�G��q�����p�-=7\���j�fԔVvf=2�����Y��Ě�!V���m�ZP�a�{�7����c��;FRU>���Bo����3͹��}6+)���Έ�G�0�RI-?����pU�琰G����8�E}/u��"��K�GD��[�l��;�A�(��ܸͲ�m⣟D*EtR�|]��MՂ:!�w��F��xڡ�T,��ʏ��ϥ)m���Ш~�A^�M���ǎ��Sg�E��/����E��<5p~�����em@8u�ټݲś'��h��P˖�����	���/A 8��xm����0GdKQ�B��}_~!���k�>E���a����v?Lh�uV��ut�OE;ʘ-�8��'g͖��Ѓ��cw�p���ֹ7��u4n��7H�Q��X�e<�'֑ީb֭' �T'��@Ӫ��<Lh�ܷ�MN�]�Z�8��rϨ��K�!cz��{It����n�1�~����|\�j���uk���B�U��0���"b��F)�����6�Fl`+v��f[gh��K�����ͱ��|5�r^
c�x�D��U�p��Bz�ȻK�	m����:���Z�ܽ	�ψ�iW䨴LM6db�N	3N���عv�����4    �A��p�������q>o:v.cخ[s�Y��M��*��-�Ϳؙ�u#��ѯ�$hN�,���M����i�_$�?��2݈�BG)a_k�%��(M�Q�s�`۠{{�dOh+7����t�7��9,Xh��v/i���̳^%A<��[�k&��1��������|I��v�P�ѳ9��(Bi��HQ%X�^eb�]w�,��_��&�ղ�$�������6+�{4rX���=j�'k��ɉ�|�4:)��@{R�X�d�?���*"�V$���cȈ��.���B���ϼ؟��5:^��@�`��v�]�cP?q�f�� 4������GHoƯ�'L�K�|�V�����X�`8)9�����%��"(�`�&�+����u�`$�������=Z�;��G=��7�0Ts|Fsr����/�I7�٥[x:��#|n˖��V:ff��(Y��2ZY����޵@y~;�g�3��;���"�w�U���"X-�KP���u�o���ްx ����Xz�M	�qY�d�:�p��5�f^>�(4�3�������ϣ��"�BY%��{�h�����Ch�ԉ:%x�<���K���A�B@�_Ɛal�;�m\���s8����ѵc8�4WvP�?�ȭɍP��K-�5<MHO樭�؊��J K��'%+����w�Ҋ�5�����2~d<��k�����r�U�L�$(:��9ME+@Un�U��n�|6��a�X3��&�^yl�J�������P���ʘ4<ljL9O�|g}�!��5���XL4�� �1't*z�Q>s�*�[JC���cǦ��`�q�e�t(��6=u�L��װov����s<�����n����vd�Ñ���(��͐uV�޵�@;����J�|^T���-��j��'@9��l;KD�_C�JQ���r7�j?��U��r�?yh ��]W����/���';.,�B}�T���)�v�0�Aߢ쫺�?��^��Q|x��R���nx4R����\�H*���W����ftGV���-,����˰ .�=��W�G:���I˖T>�T�yd������W!B�:7�W`y.���rW�7y�P#&DG����x��4�������:�A��R�(��w���|�io�h��H�xP��%W��uT��r >HBl����tJr�j�R��~3��hȰ���H�Rm�Qe 
�&��6kLZC���=�&�k-�#j�޺��Nu&�����1z�1e��I(ZsQ�)����-�'��W��Gfٗ?��V:5�Θ��i���Jo�#n��_P���������m���‮T�!�-Upj.$l}b���gK[	�ھ�ON��=++��^�xٹ�����о�:�����{��>�m�?�k�@�b� BG��O�e���ʏ����h�w��QoC���#8'�=F�7�Mƹx���2��\g_�{R����s���b�s/q�3�5���3A�Ɔ�ٙ\y���ۋ�HeU�Y�^`�3xGGCV'�B��3��W�\�>;��nsحRN����;Gs��D ���h$ ���	!'6��a��N_�`7�S0��-{[�óv"�DW1�0�+���O�3<]Em��
�*;�&(��{�啞�&p���<�島�ʌ��=��y�_#�w+�+�Ku8>M�l���{X'U�\z����τ7,�����{�HZ�������C��<�v<�:R�#YFHM�S��T��o�X����b�*��n��k��`��*Tu:�	^�4o�<�SK�F�๘>*SgB�y���:��0�����
�]( ��"���=
|��.�+�*9g����9�1T�:g/�E������*������H�>0y�]Ǵ�:���򙆡r��o4x��>V�#e����h"����+���R��F~j�^��\�>��a���]7`zs�=<�3�+�����tO����˟]y(A9�8��Ү�8cJ,�E�wܮ+#�	��v���t�c�6�$r�#D��e ��zd��<' �Q0J�
��kXq���1m�z1���^���f�d���I:1+��>��F��2ռ����3J�	�����c���p���?�T���2�r3��/���i�ڕ+�X���7���>�� �Yv�2d�( �qt_���Q���OFŔ���]�B�oB]V$xv=Y��l99'hvdģ2gH]�X�٢�sp�Ue������i��ʃXW�����n�{���%KAJ�[��3��'�tk{���[1*(kw������|����v�ԩ�i�j�a9��D��	(�V;�#�X�+*ꡲ�Ax?�r,�O�s����Q��
Y6��+�1��ZG\�W;�3�`Ox��Ɣ��Iݗ��.BSr[�=����J�v�v/_G�a�[=�䴤8k����~4�~�_�+���F��e�ū�_ã��>�>��=�.�o���E�������;�����K����8�s�P�U)�>a�"1�<����R�����3hw�qA	eϐ�l=�H��C�iD��Y���a 4v~oQ����c��{'�P��I_	�czn�ԛ'��{z���0���=[9�;:�\����P����W�)'Coo�ԉ�9%ox�&�h^�`E�ɸ\\a�����1ǁԏ�2s�4	K�s�c���ϵu������EOWR�����Wz���8�|��*�<pC[������Ac감�����e�:b��o���I0�	�-��>(�q1~�ղ��QD!BV­�8�+�~������&b
�B�!��3�>�	c�-�pFqv�}�����!0�ط[d�6��8�Щ�
�#ū����MȺ'����P�U����	Z	�柵d��%�a����y*�ai*�U������̞�r��m��}&R6�e�c��Lů�n��r/6�^��H� �x
~�)w��^�%7��5HG����0Ӹ�����Uc1��k�����><��|��C�ρx��v�͜��[����s��H��9s	��L����|�T+$ճ�o�@�{B7t~n���s����o(,�;W�7f����Dh����䯯k#����x��H��o���G�AVD��{��m�ی�CE�3���^f���Ж|Jkj�LE�tyD}�����'������9�Iv�g��?
�ޢӺ��D���YWY��U�y|.M�����V/�^��Wr���z�x[�����c%И#t`�����'܁ J�k���6*I��e���!�6/n�B��2C�G�V�%Wum�2"tZq��g��g5ˈ��J�rR��5��fp�����;7�{���V�!e��Sgs�(5l��.���x�~����R�e$���X#qR�� �gKQ��I�ԣ�`�6({��,��n�&D�5<����w���|R���*{��?��f�W���4�i����m|�\�̷o���2�_�P���BY�~PGͣF�G׭��s]������]vp'_Ξn��&�4���ѩQ�[{��ً_�����뢐��o�Rփ�/�k0α���9�=2m^a�����M�z&�]7���!u֗���al�dWy����*õ�r:v�;�J�/��	:�laɏ�/z�Or���L��~v�|�C3G��/s�*1�i��������V�!��}�|��侞����7�m��I���� ���]щ9�)��d>����o�X૔���Q��f��ʚ�$cQ���:��L��WŀۭA�_��"�f<e���L���h0����3�}��Ӑ��q���w����ŏP���q��롚+}�gpV�G*��^D���H��R=՜����c���k*���)�sxzWRS�Ok��$��>%��Pצ`��a�G��Ȋ��_���)�둑Õ��t��>�&K.*��VpQu���R�`�s�c�oje���	�Ĵi��+>������3�n=3��� "d�]�w*�}ٌ�֝� �� �  ��&>w�Ҭ4@w6���@����m|�V$&/��L_�)��{�?Þ���5ݴ�Sk���l׺�q�x�s�v� �I��([	���cF��t�R��@�R�����B֨&��`�r�FWη:4p� �\t�;�F��ૐ��t��!ec�o^�n1���ȥ�"���W���|\�+�˽d�p�Ҋ�u���ϋ���>
�,G�
?S�����ovd�;vS\��SCZJ���!dTQ��������D��
T+�	���8���1y9\1;ˢ��0��D�G��$����c3`��R��Ŀ"����#�za%��yU��Ю�x3v9� �ފ��T�@�͋r�_*����K�Me\/KH�f���{��x�vF쩢�O�7»t��^un�2W�?l��t����〗vy	�UyU�"Z���XՃ�\Ԗu���b��#�����U@��!�M�)ԅ�,��J� ���Li�J\h������r��[-��@[��J��G+�1OrѢ�8k��b��s�E�ޗ�E.��QR�'��9�?�{��'}R�ڙ�O)�������ߏ��',b���_q>=�Mo�ߺE_{�&G�^�).]ţ�6��oM�����I�:��%M��hH8q�.����Zy�K��\㛒��턴2�~��c0@a5�|r@֨���x=�������]��Qqp�� >��j��#Y��1�^,~2��zڏ:�����'��XC��ȸ�KI�T!e�`��s�����v�m����r������6��k�ל�yuK)D��<��d�~S_���5�!4��CE�U��-9:T���h��R��w~&�U���=QpwM�r���A�~k�c�M��O7�̏ͼ�¶�G����G{��#77�m.����VH&
6����'����K^rk��=\��`��N��0<��h~<dF8:C�Wmp��\k�#�ʨ5�nt��y��n�FA!;����([�#�	`�+ o�`�g�m����4�tQD�[�mt΄,����6�2�*�=�zH�����a�˷��������U};`ӳ�����Hxx�r�	��1�aLmX�Nz�n������]oAJ�ݼ(�I\��=���#h�_!�e�8/�Ϫl"�HH7�b~a��k�,~4�!ݶ9:��H�R��I��6�����ym�\�ύ���]��S�|j�|�p�/�-���>	?�k��1�j|��"Mm ���NRU����7-h����Ƿ�������x&9��$H�{4H��^0������rM5 �9���>޵��Et�<t�����9��ǫ������F��Z�0�w�2��$�	�mv�ɿ�kc�K��Dv�5���<CsQt;���h���w��@6�E7�.�'� ��nG�����Y���^���?�Ή�!���]U���U��r_� �K�5�@��V^|/�ѹ�ɝ����	��8���Z�8��u�ۨ�\_S��_Ӄ��F�t��9������O�A�͏reH=�Wٴ�`� �>�!��Rm7J�!�|]�>~�篔`�����W��s���ᚓ�q���z�t��C{�V`�	tT�mx$m�y��rL�<���LJ�`[Wh�;���]���opT������3Ӏ��d6&|��Jz�� ��ct'�nt}����/	mB�m�B�H|�����F��s���s����#~�x���0:�����f8.�z��0Zz���ʩ3��0/�!�_�x?��b$��!�j�>���#�q�,��*��U{�s��%�c���]3���7���"C���60�#|���Q�b0H�v�\KR�8���F�;��J��%\�%�����}���c�
�\̑�&5T���!�۰gxYW���Z��qZ��ո9}<��F^ԧIa��{{�����!�#�+1���������V��v      f      x���KoI�'~��,�})儿ݏ$EIl�&U���^Bd���T�&U������ ���j������򋭙y<�#�̮����JU�/����~�rQH���.O�f&!�g�{V��G����
��Lɉ�?0���j�����b��O�ٴZf&��M��U��wG�ߗ_�캚~Ze��23BE�bY�o����W7o2�!�Yt�+�>CL���.>����/S�[?�e]ͳ��tU�W��$��\<��>�.��^V�O��B�"{utyt���w���@�Lf�L��^��r9�O��Zeכ2�[�oʇ�X|�[�]O��ߗ�j�\d׿�
��~�͎��/��哷���{���L��Ұ˷�M9��*��y�Z/n?f����d��S�����/�9�ֆN��_#����\?�&�_�5���l>/��	 �~�Moa�ǋ�Nwy����m�˥1��}��U��q������}�n>���Y%gX�(5�)@��F�f����zsÄY�nɾ��RN���,>?[m�/ �S���S6��$OJ������ ���y���Z�����������,p�i�?U�
�'J�Jn�A>s�k���uv�.�����Cn@Z���
!����C�������Zvid��V(�$��]5�M�֋y~���b�.�˲��"���r��װ��]�������3e�^8���,9���$)����A��������Dx��	/�e�K����TM��g�؋��Y�^W��ϔ�n�y~����_β��~{?�/7 �Pͫ_6լ�/�����ͫL�h�L��D���K�9�]5�^O����ժ�m���'��ۣ��4�����	߀��N�$����;��������V~��]Ç*�И�r�r����C
Tد��.������{Q�o�W�"�z���5���b3�)�w3c& �W��4�*��l�(΋�~yڹZFa�!{��f$�p*p�	��ߟ>?��
<5��PTϫ���`�Q�J�����[��(r�[*�Y�%��x�6�sk�C��p�`���z�s^~�@��%a����K&�p��t�W��r���o�mS-���E������#�V�h�D�jh��5Px��T�o-���������ò�b ��:��b�1_���?>�%u�=�׏��C��[�x��ۏ�Hn�y�Q���\���Ɏϯ.�d�o]�!��2$}v<[�z���cY���q:[eR����U�z���{��7k�������%W$f߂;�~��i0٬9p�D�)��]�\OaY���Ǐ��ӏ�z��/r��m&xf/��FS�]]�[";����B�L~J?�c5�	��5��As��~3+׿�Z�{q{_����$w�g/��n�������R���Z�R��Џ���]��_W��������u#j����gy[���/2Qx��A���^��51|��`�M���5����=�-`����j���Y��\��}���IvS�}��˂ `��pE}���2i|����N�Jr�N�]:?��� �@an>���_��W�����
�L�&���Ϲ~�ۺ���1��1���5
�&��!0鑰!�B��p@��������2���W�"���?��f����-7 ���ˇ�V����l�����tA!T���N� �\���3@#���dG/��`��:���J;A�X~(�e:��A�ᚯ�g��n���>���7w���xN�҂�Uv�Z���Aj���u9�k�@A��~�1_���kA���&^���7ʜ�ף���I~�˺�-���4���u&ܹ������l��Ȕ 9U �Z��b��"r�U�6󻏋�:{U�����~�eJz���%܁?�~y�����S�ʃ��6����*�~������L���i���_�k���U�44�x�����7����HPU�*�U�:���A�P�'���N~JN��j���DprAl����j��+��yd��������yb�%P�'Ag��.�/�z�	���y�����=�U�-�w$����w�F$��d�5q$A�y(8�7Y�
(���z=�]�?�,2�H/Z��0��x�!p��?Y�,��T�"?/��q	�q��K�^���_������e�mBw�5AӋ���(�ej��O��vv^�L�WC4��5\*?\��`��c�a�y�CZ{t��P��{��+��&�F�ՖK`�Gw�[r�W���->�����w��M�����`޾����˗'�\e�3�V�u��D�>| ��
Ɣ�PdK0s�^�t��/�)\�%%��M��n�OȒcl�U�z)Q3�nxP�p�^����#_�p�7����9=���|�}��`�'Wg|�;(uo�aⲓŧ�_�Iq��M�}��ӷ��|W�`�pg�l��#�7ZI0��R����}�ca=&�2{{}��;��v!wDo�L�Ns����W�N�D1;�?��x4�>���rj��Vi�F.f�OD�Ë��11��6��G�OΥ�W�fN���k7��ɻ�v�$���G�����2��lmF��KQt�|��Y1Y�6V$��
.�͇qS�;���	�����˗W|GL�#����Pï6��/���3p�g�.��׵ �2��~q���y~�(�@[,?�?P��g˪�S!�j�]u��3g���al5�`3"��B��k ��7~=.P v�.�w���O�p�6���*G������gG���p��٬��  7��z�H.b:T>������aD�ݏ�T/h�q"�
������%׭�K��p躼\�y9����ۇ�}���N�9���w9趛�'�(�9�{�y�
�(U��w���Hwت	�1����tu���;Z��t�g����.�X�?���2��jU�3 �
�r:��߬A��o�h쳣�Y�R�zUp��_Ζ�]*�@�Yv�斣�Z���=��H�2�hD
�}�jh�p��f>`�\.V����I�� 5Evu�'��kV賣ˣ��Yr?w�KI��vG(7�Ϳ�����\.�;���{�E���ECR���
��7�Ӈ����b�{GH\���*eJ���l_(�U��H��W��gL�dw��]����ʏ�Жb�	��Տ?4X�w��f�a9�?��@��qu���2�-1o+5�����&�o��l"������6x��5y����U�F�vK���JSrinw��,4�@�e��MXLr	kQ%_;:.��@J4.����KGsz"���\ݳ��Yr�-��m�@�|�B!��G��^�U�����f��\�����\���
�y�/~�ߡ�go���ݛ�GR�p%����<��@q��7J�S#��j��Lц5F�jpK�3��	��ykLJ��硶��F�D�- *b�Čc$e���;S�)��Cb�
�B�^�G	�>��q��ÛSpv��6�H$�V� ����-V^ ߞ��og���b��5J2؈���9�p�f�����e�Be&~���3�c>v>� ��}~J��E�y_�(�}iP���5� ���i1P7G?�e�_�Ѥ�I
M�f�S��|6[��|�w`�~����	��S0Zg�3�\�3Q����=�TgR4����������s���'-��%HP�n�<�}6Ӝ��e	NЩ=Z��gTt��^Si|/إ���\p[X��$8����*P|/��>;�R��/7V�F�lԋ���1��}�ɫ��r��K>�e�{�O�O9n (H��|B��O���/�3�/A�]%�o�#L��D)��9�3p
�^vf�%��9>���o0PXtuy��*�e�VR��c�3��ϟ��\���)A[�*����b왻�rqz6q�b�&J�㒘������C��}AP�.������b1_/~-g�6���^����D��a-
A�-� :�!�CdHo�p�u�b7��K���x~�2�He�)ej��NKv�Lm����d�1Po��.ϲ��4GZ�}��2X���'��2?[��!���{ N����[���k�����`��EV���U
�KdƢ�����Px�D    �5_Z)SHvH��*�G&����#c0kǺ8��U���JQ���NP��#��n�.���@��Ë*����f
dp���b������l]�s�����}��<
���j�Ŋ&��GuFW�t_���0��$���(��R-h�	���>�u]P��[|�)R/V���QڤL�;���":�R�8�uuC�_N��lMVP���H�O�1]����Zu��&"{QR�50��aQ�E]-���.�����2��(�����]���#gn���n��d;[P�A����������,�\VZ�����x�`����S9�����V�*���f��zv�X.���������h�����W�>-h=��п�TRY{Ý���R0eG���G����ޜ��\��l���\ ������v1[������%��t5C]D���/�1�L�k��|�N!�c�Q�U�+������o�TX��HL��.�:P��n�b�1Q.?�[��Xޑu�s@*?�E�����\����_j��tq�#n? ��%��ĉn�q5aR�� �4��1��߆���G��$[�|����?�z�k�����]s���_��p�M���`�Vu�
x ����,�*��&ח���ۢ��2/U��l�tB��'E���U�<�L��+le`����F�5H��~Io����F���G'���v�W2�#6����������͚�c�����%�3����q��,�$fBxzt�ŗ[P�Ub�1x��������d1�W��)��2�k� /+�bLx�����w���|{u�w��`�K�&p�Gs�[��f��"[����vr]���Ḱ��Iqu��>:?}δv�T�:;B��&���rF`9��*f�?���8���2��������T�j�Q/���j�&He]��ы�َ`���\ߚ	����f�
[]���O��l�.���uy��|��pG�M�3D��K�Xd~�ٷ���_�6�9�����\Q��Y~�[8�H�2n@+�KU�؇��:F�14��Xvz����5"*�-��|�?l�
o"�����S��,(���r� ?���{�[%wĝ��0Lј�;\�z C¢��0��������
�պ����i���_�_��l�� ��\�\� l�@��R�\F����͢E���e5^DS�^˂��d�e�2�M�@3e'�5��j��$��,�/j:������t�\��i[GD�^y��N�c���0VDĹ�i�������5�虇Z�2�L���лPWS&B��y�<A�Dj�zJ��&1 ٳ5�c��&��.R]�}�D{�;[7	�9�^֖I'����1n4���v��U͋�\$��M��� M��"��^���b!!�`���7�Afο�`�=��x�����֑���s��"ʍ��a�X��K��K����_�N\P�)��_�@*@8A�f��X~��9(�*�����v�d.�\,.�A�U��J��`�?�p�A�+ޯ޾�`�Dv��ܘq,e�^/>={�@��F9��߮� "ȏg?j����${+_��B3����Z.-6#X�"������~E��DG큡�S���`��cD�o`�)��w#'�#
�N�'�Ec�8v�Q3���~p��3����WztgHD�F`!i�A�o���z���8�.fH��ڝ��A]e��aX�HrL)�]�L��RQ�x)��k�����}��>`����jb���M�N�v��qX}q���+�`v&���Uy��G*4�լ��)���͈��0�h�$��	��w�df�8�օ���=�#;BG���h�U�
Ս��q�
t��(�W��Q�v?�砦$.�<k3��D�*2��_�_�MY,�j���l���u�]n����t��\¯t .����� �|v]w�̛!=Yx*�F�5`�i%r<7P,����������K.о5����R�
���mq�،����r�Z=�JmNo�_��)��:�jBQ�8j����7��+!�,�Ưn�;�9Z��}�F);_ߕ��l�a���.�x����7��o�+���Qv���p*G�e,�t�Q|=�����v���'~�KT0�c9w����a��;p��xز.]J廑���+N�A�����S��60�,QS=՘�a{c$Cr����p��!-�c@���:H9z K�}��be�J��9Wv������p��p�}ZO�A�$���ւ�t[���1i�e�/�n%c�1/�:����i,3練��'1A����kj��M���W� x9fhN�X-uî�d�U��5��Y2���i~3�<9����!V���@�B)�/��\�~�_�g;���^�gI�$��9�.�A�bW'�a��Р@�~��dE�F�>s��U�:��v�ʄ���c�H�e̓U��|G&�FE�襏��e��K��]���J`�ʈ�=`1��4���i%PE]в����k�:#P��8=��d�2��K����23�p�E��*�h�b��]����$���E	�{
�Z�5&�r���#�;���E��h���\�T�Hw��V�����<Z�B�f����u
LP�ȀĐ�yrũ5�<�3}��L{a�+p�;��w�����V�6?V��K;�VpsrP���H�yLA���0���+g�jM�Z�ш�:v���\�U{Z��p��.��a�7x��=&_�M�m]���"2��-糍d�tQ��4�h��S�Q�N�:8̦��k�w�&�L4����GW#*[�E�EJ�F�E}��ժ6g>��m��
V�3g:I�=�N�X��68W�����ԞH]5PCjL�|��D%|5�P^��x5��3M�TQ�b"tܙ&>���W�:� �2���k�����9��=���%�C5���<:l��ּ$��\p���G�����[)�Qɏ��o�k�oi#z�9�dv�fd
�!��q�:)^�\�F2�k������6MA�ઠE�f&����@]3�4*��2tc�kp�Cketbbc�-U��2�K�wP��u�!Ѱ>em\�(��1�*������!�g�\$���|�q�ij����i�]���&�U	�����ZL��b��4ı���<�����h.����2Yt��b�����X�:��
<�E��],�F�oM����Q��䟀�\ �����sӂ���.�`����4x.qv���"�����F�q8%Y�>pA��G7k��Fe��u_��>� bHy�Fm��39*:H�ϖJ,�zmծ�$�|O�lU-Җf��������}p�� �U��S�d]���a�X�	B$�T�i��C#hDr3�6IE��A�1g�h�4�m|�0k�2^M���
]|VT�!���;Dr��"��;�z��+�؁ww��3�M|�z-��x�3�UP��$���%�o��E�t4_{���o�Ny��R��ep���8�F��k3J�F[����;Jig��Z?�k�&��5��"��?��u��Ji~�7t��?/����_�[/�ԙsp®�D����7��߁>(s�'ِ���͎��p%{۠�ohƍ���%Q{@���bI١��7�V�E�a���'���+��K�m��N�S7�T�o�弫��_�"+s���7�Ĳ���XN�e�2��������c��<��<$?
�<���b1mN�Uq&Է9u8�ȉ��O��h�KctZ�cג4f�t�̍�Gf�{FJn�f1��k�v�hF��A���c�qȳ�~���Y����_��n~4|멳Rc��y��p�	8�[������ T����"䧳O����P6p-q�P/r�Z���p�|��M��d��w�O����3����8,L�#�4NuO�\F��=��}#Mꈕ�w����P�"�zts�I��E����?É��1����w��E8�{r��}�T�?G�x��C��ViWЋ���K0XP>�c�2��Ǳ�����G*��ia}��w��r�
T��?@��?��D#����՘"���:&&@��z�����;���� �8�{S4I�0�!    +��$�6�p�}ងԱA�C:c���+���\�� o�#���}։�h�Lz�hp��Y4e��l�|lj �.v��4B�"���Q��!��𐠁������-^'�1��|fp����N��\"����|]O-�0�g=˴����.\`�Ft>4�Ĉd�_J�w�Y c2V���FE/�a� �
#���O�����~{�7u���?�D�y	������Y�g��:�
��']�_N�n��w.��1�o5�Dus�t��4�QxTc�T7p#����e��qכh~��c��2v��D�5p��Q-�rC;�)�4�f>�)c��
����s_p�v>�rvR-���"�y�{�\>s�Mٔ�[M���`o�� �tE��n�~�pQ���0�){��FI��_rpՖ�[�Fצd�$;MU�X�t�h~#[E�!S���Θ6�V��.����C.J���Qׅ��UbG��+�q�\��
%����]�d�)	��#8)1�q��c�bk���n��.���M�/�,�#\D����������>�?;�\��q�����,CL��yBǀ4�3^��d�&�:U@Eph�̀"���nZ�� �u[+q�b����~���W�J���7��ci�#,��4r照F�%.Fi�v���{�T�;��U�̾�$4��*����x����_^.��B�q�c,��myb71k$ݎ�����˘�a٩D�To�w<��S��GU-�K[�n�e�N���b邿���ۃ�xo�P~({LS]]g�I@S�s<R`X�rR.��k�ߔ����Gv$�6��w���h�\IM��̗Ǣ@�20���Ǡ}r	H�X��ڲoBԺ~:J��2Eo��I�<e0�Hi]��NK2I�j],Ē��uX�X8 ���pLO:�ۡ���SO����:���~�#Q�c�oܰ.�kߏ�R�s���!QN{pۘ��ʙ�{��V+&5�����i��I2<��`�m��7�N	#�<�L�cwW�c��PR~�<�1ͫ7;h����u�R�C8��u�T��bY`��� �1�h%�?� �K#qyG+q�MR��s�������wI�i2~a����s�����vF��[����ɍڮaL���^��T��@�8�?kFz\�	�+`��sf��/�=��A�#;������"YL���.)Gm��t�YK��Agn��m��o̚5c�����跈��0�=N���M�����y�T���ۑRu����6:���p��d��K�Ӌ}�T��P������h�*�=�{��3�Ϋ7��I5\�Zx�|	�0�+D���03�������X�����{	�\���]��~{�	L]���(��8��
��dx0٩^�"�M2M&��.-��4�!���k'8앛X,C��~�/��k�#Qi����F9p5��?��㱰��R�A��ZP�W�/_3��?N�s�{�p��� �1D��Z��\��٫���0�QM?�2%������:��(Yw��d�(��.2J�k�h��6��-�Z��y��hV%;�!;5{V���l���ۛ��e�o��ֱ]�ajhH����X"��o�1A��{�$���tu��N`�@ݚ�g�=��x�㫥̢3XE9�.xQ���>P�W��D��.�`��� 3yƾ�*9|��1B��GII�����A��a�>��axSObs\XvX�8dV�5k����C"4��l�X���Fs�c���.X�$����4�8�}���q������J>���d*L�>��8�}h24^�	����Z2�X�qL��[��8p�t2��+�5A��C�yκ	H��(E�&�^13#@�c���Z�͒�����ݸ.�C��d���w�3����R�m��[3��է�Jw�q<�E�lp�ip���GA]�R�����r�G�<qF�<�s���T�H|*��}�D��}�7٢������u��k,j챴�������"#u�F-_,����9����Cբ-To>����g_����)ۢ�� ����Q���d�:r��W��r�0^%�-�����s�K�� �����>q��#�Y�@\�6~�M�-�c���Q�00	h��=����.��ܥ�c����&��Nz�B��Z�UÝL���Aj�_�I�]�/V54�ѭh�a|��r��T�s�c�"����>XPP`0���������x�Lp����H�ZC�D;�-R����F�,2;b�~����c[�Dׂ�|wv~���n�t\�����t:]���u���Y��𪚭��4�A��ù�C���z�EJ��y4j(�`�"��J?
��F�B����#4�p$� B/���V�>��g�9/�J�XYԭ���d�l�&I���ZM-��8�E�'�@����X���IF�BG�}�5��3?g�
�XƐg�T��$���8?���I��݈��=�}�;[��Z��7���/�̾�o��#��o@{fo3�- ����X	z���˵��.p��$ �,�l7�
b�Ѡ�岺�Mο�������6l��2��z���N�>�.w�D궠���|Ʀ��2>�@���R�t=;�e�90*��=�`��LC��Sa�(s�/��48ڂ���P��7��!�P_ZF�hc��h%�ZX�U���12xL �(MpMG�𔬛��������:��g�\��m���Mx��ƹ�g/���D�ۡ��ō1WȂ4����I܃��Z�;Ϫ~c`!	E�xZ,�8 maU3@��#0��7'F� c��☟�/tq�Pw���:�9?V�^�����Vћ���,x��� ��A�+�3BS�բǝ������t�mؓ�uu�{��B�����ɂgtt���٩�K�P��~��7ˏ�	�l �ّ�E�+�h�"$�{�&=
��m�Y±rui55��V7�*]��4�o����^��o�(�����-��s�"(��4�ނ��@�ſ8 S��&���$Ba��ܬ�	t���4�
�o#dt9$�X&�6ZS����"�ށ;��X#z�P�t�}A���Ď�J��_��A�Т�i�c��e�����8t���1�s9�Nך�yyOEL�"�L��ܥź��#�3���Xc{=�Fp�(��P��И�q���0�K#���	M���#��ҋ��z"��ThM�\���������,�da�m$�&��c�ѕ"s�� t��	��q�񬡕uS�ڇ�)	�b��:��!HoM�'5+�s�k�)�/u:b0�0vJg��^'jj��4��N�8�����cv��n��$V�*��[pGҘ�c�M�sqHL SPd��%-J'ӱY�Ɣ��a���GQelDU8�k:pX�)&�/(RrE/2�N�5�U��BvM)2ش���Z@i���^/���}"�֮�]����Xv#���ny�!�6.Ӧ"�O�CSdN���AQ����Qs�[Q�L��ݥ�DQ�{�5E�2�5"��P�Ē�1jԭk��m��{�����X��:�%��b~�.����=5�t��ТD�zr�8�{�Q��A��Y�=��pp��Zp���͔k�rY���RO�zYӓ�QAI�}#J�WuqJ������t��6�7-��)�����6`�� X�8}�,��b{M*�������X��M]q���X�j.״���^�a��@Z�y��ו�����zt��^�;�VG{��i�$C��-rs��)��P%�SN+q��'�DZ�ψ���U�̼(�4c g�R�m��-���FfV�����݁Q�м.��!S	�����(�������`�"���P��1A=d_��)��=G��X/^��`�4�1P�
Jќn|9q���4�����K,�0��Ւk��$o�3��6BK'q@�o'���K�j���%��g�����h�B�Ț�8�	t�H�{��R&���,0�0�EqŶ&���N���J�҃4�+�y�/��J	߹�5d6�+t�O�3%�Nw��+L���[p�u�e�F�s\    �� �),~MBC�Dq p8뜆��m�ľӄ9)p���CX���:=>�R�Ԉ{�J���R]���C~r_��_��W�P-1���
���][�P��/�0�,R�>;������Q'���N���ͯ�He�B�O�}�M���Kq��]X�2_4�6�̊����p�,�G�C�胵&ܜ�5w���У/����p'TZ�8sj�et3����Uoo�n4�a�z�$('���*�mc�$���wp����9-<�B��K�/.����O���C�����V'|Z���{jj)}�
Z:��щf���wFP1��!(P�@��2�X��+�ǫ�pR��9c<�b�!v��:��;��d�9�:p=ԃ/��&r�C��K-]�(�@���d��[�i�v��\px���D�S�m�i|��e2gF���];�=�v�3��Z����h����hh�ƫ�p����N�o�E,���X5��,CMh�.t�Ƨ�i���b�N5�8.V�^�!!,7��r|��������>���ޚ�P8��Jl�cpĄ�A7hu�Bd�Yv�*�>�(��1��m�VR� �G�}EKk��Z�N���hmpsǰ��W��ͫ䁒��'cF��~8�<}��=���?0m�¼U9�],f+�U?�3Lv�PX>������
t���oF��p
,�ӓ�Xvj���yv�<�z��]�eʴd�D�F������L
���z�j(Mr�;�r������)zbi0��96���R���U��8.��u�{����O��P��H�:�#��bS�ς8�iZ�#�^׹��t|P��q�y�*��;L��y�4r�pgY���}eβ�����b���.}_�q8j�ݛCӃN�^�Xt!���hZ?()p0 ��T�<�&cK�ȲF�I�X74%F��&��D��䌨+�vĥe
�u�*���|s ��14�$��o
,���˿o�2;ߓa��-�3���@�b޸�pΘ�D��e�����b�7�#�ߜ�]3�!;u��N8�#�o>���_�͏+��+��7�+|��9i?�*���A���j�%�vU%{�����Gw�e��+�tn��i������8����|;[�]1��v���Ʉ�'�6�8+ҁȜ3K%�f�'X�;� /ge�IS��i����N�J��n�e�ݏJ�*���h��]g�?�?�M��?�5�D-+�!!I#�Z�~p�@�I�-=�p2=?a�m`h�������󽨱W��%�|��' �{�u6��C�K�B�+1���\�M�K7�W��!��<���y�ȉRĶ9�o���S��D�z�Ș�/�a>�k
�|r�S�h^.t�B&��)�ǟ#���L��J�����܅�9�!v�t�\3��y���MH��b���ӵZ�=�-�Mr���T��G���/n�dݯ����g�`zhk����q�%�����A���1ńH��Q�����|�~�_��ߍ�y��X���'� �?�@�!��
�����d��S�P��7�E:��%��0ՠ�͆�>�zY?n�'�}��b����Wi�}˵#��K�]�TY1�v�iۇL�vV���ڰ������ݟ��� �?=��m!���5
�9l����^.�{T���6�)�/[g���F��$U��3^�
G��H ��9OQYk*<>ȵ��?�vف�(�3��P��O�5�7��b��(~~(j�a� ���;N�&��$���F1�F�X���*d=�S<��l���r0����zˎ��ĉ¦*3��M��Xҏ�l��X��Ø!��r�>֜b�����`�jO�˝s�%YǶ�oV�\�����y�B���
8�u��0����f��0}W�V��vع���q#��ً��T-6���b�N�����
���`<�[;���c�8=�*��Cq�<����1hjN�sm��ɒ�?�}6����:C�#�;Z�����+�(��;�<��5���u���͔���Cۧ}��	K��T�d��~7k�F��1�IG�����]j�=��f"V(�#y[x��G5�F��#���ZD��~�K5�Q�W'<��إ��A2`��w��\H7[g��{���K>O����/G�\���}�,V���� ���y�퉲��y��kT�y���EtL���
�h���v(�����cN��m�����;E㟇�na�У��zb��)0ߎ/g�zf�U�#�&���{�j�Bm�&���8Ua'p�:8��" ��a�c��0�����z`a1�"�}=6Э+��aWc�M�W�H3�s9���@�G�#4��,>��O {8��R�݇F����J���/�D7m{��!+KO�~����Mp�����i����Hj�$��D]�"��&/-)��#h��E�~�� 8�,�d�m`�#O�p���%^���'p��ru��.�t�xٔN�N�Y1�h4���HN=�'{��ip"Vt����J�㑓$E��o�M�T�G�8_��>�C�
��������Ru�sZ*E���ڽ��)�=����|�S6u������KK�X�z���|r�GD�q�=,��x��|��S0�2���}>�p�����b��z��-J�ޏ��B�5�.�-��_�:g_�(%��}���b�oa�͢��N"eL� ����kY�L��A2�1�1f�y8���v��]��*u(�Ӻ.����4H����m��N0����'�Ĕ��	0�o��I~Zy6�+n���d����ВSh��'2��4z��'W����)�ˢ<������uu�����Џլ��G�hr�����g�Y��Q���~��$D�|=S��Л��)bQm��*^�X�ތ����l�qJ�-��o��`��~��ʴȚ�Ɓ#�fp&��y�;�^v���3
=����I)8����p�~��%����O��,G���+�E`s}0g�=�n�#+��5��q��p���{$n��.�����+��Ցi�����p�X����|J�$MU�9o��N7���
���*�rj��)0�ϋx
���D��'��}�:��dӫx�_oo2l�A�	5��K[�6z۔��mP�)1m+h�M/%�6yj�վ;<VG�[��o���V��'��Q�b�I�-����2�Wh������ _�Z�E{����Oa�6q�3rߑ'P��#�I�1�{��s	����e�C�@c�G+`�8����f|�9�����vE]�������ux���&1
a�(���z�Q �2��;Y��h��ŧ���yѷ#��Y�1u��U�CG\z��׶�&��2~��L�
�^��'ˉr#h,�%�q��5P�+ ��F���K?
G][{PF%.y ����+�z�Y|�f�~��E����>�����7��/�Ԑ��<q�	^)�ސܐu"tG�Zu?�f����A��E	Î3Հ	��X��>��K�XF�G���_q��ރKY�P�4Q�Y����S�>9N��[>��Yۖ3�@��F�+�.����s~�;p�*�IΗ�%�<R��Ŋ�����2F���l��?Q9)L��V�ż�d5p������@-|*�!u��C�u8dG������?)�8>
��`��P�b�8���VB�v��!>���(\+Hޗ�W`��ڗ��_OC�,(��e,�vSoc�A�OCbo
�6q�Znk��>4Ja[�C�~{|+���cjaXD�^Е�y=�����&��lA��M���gW'�G�L^%s$�c|�����W,d9Z��.��"?_ߕ��l�a����,����+��L�j�����?`�C����"��8�⛔�`�E�o��J�V���5b+��B�<�@S�%��|�N(����/����f�x��h:wT�(�#�
�R�q�ջa����uP�B V�.�[��o���Ѥ���͵Ж��4"i�����Ttgw��X;�0���p�c��N�Pj�V4&}�z�P4o��=�1���p�AEI~I�>�x�<� ���d�v�>(� q  ?�o7�������+*pZ�h�4�����>��[��i���A$�?47�E�~lE��7��F���yC/�s��>�9�Xs�Ζ��8�c�����*lD��8����p:����`����&�D�=�4M���M��[�#3�`G�'L�^	X�R�$aĲ&�k��[$�cf�x�q���� �w�:��,v%2V'���o��_ii@�(�f�h��Y"e1��h5H�癴Z��m��t=\���P���H��ݰ14�Q
e�]��X�	��f����������ū�*�?[�G�;J�؜x=2��%9bl.��'#</��jX�C ���5nf{�_��7 q��(�נ�I�;�6Ujb��Q�Dv�k�L�Ňd��`�ṧ�����#���Q��1��!(���6���\�(�w~�dP�w�?�K�/��1��9q�}��`�&����.;ra��R4�g��TP��QL�uׯ�b58�U=$�T�{"�>8+��U�'2�b���8��O�Rt���T?�Y������{ТBv�/ ������vuA�ϐ��8�ld��!/��|�J�K~2]ނc�ժ����\���A�P$zhQ��o���X���4DNock^ �<�"��r��q��<�i׮>�)E���:@������ʣPqx�[ѡ��sN㼗�D���|[�$��7Ì�����a��QG��ؿ9�_2��ɶ���4���d���c�	ѧT���@��H���.9����.�Z�\��:�F����U��0�n���No�X3F�@�3K;��TuZ�0Ⱥ�Mj�4�I���$���~��d0������i�#��������-��Ϸ9"+���������g�ǋ9[��{>�g0^1��ơ��_�g;2�)���$��m�`k���rv_n�*���i���{`��O9r��b��Orl���/����m>�qɺN��Dn�$Fc=M��%�M�ώA���}3PO8�v`�O���9�I�F�&4?'�>~{u�&�ܴ���Nb��,>���\���/kX���Ŝq$���!���R�@y>��)H}�F5�ruqq�D5������ï�[젚�0&%I@p�7���� =���o�wpE=�/p��"��y>g$�����.X)ңR`������s�{��]�*� /p�Tn��S;�A�8"���1�d���ݨ�!���iA牆�]h�u�)Ң��qh�k����6��"�d
�b綼U��B���2X{>�]u�.�{�dݾ �k`�\ ��&�>��� P��� u���k.J�!3�űK�/z�Њ�I�,IU��������"� SFc�z���Uodޣ�4~	߃ч��|�Z��ٔ�S!������^ʣh�G
���CdM~z|�Q����	���Ĵ�wt����2��;����}or�cpTUevu�S�(��ÿ徕ƎR,yo�wE�"%��b�">��@ⷫ� ��������a]�ChW����p��������uX=�I�c�a���2��>��qb����E����볓L�b��@
�m���-�i��[P�)�ZqR���+�	�#&@��5[������ع�O�WW�'�h{):�1&�T+~������_�\���.1��6��\�d#�xӶ���΅�"���%��� �k�(�X`]��� 4�'n2d�&��;�#3����@S�cZjZ�P ����i	���Ć�h�����}o0M]�,�`�#�6�T�H���G�L����ʃ� �eo��.�����MՒ,$�z���^��٪|_����{�����q��[����$�!2] _��������><F�p̫��1'��C����W�1�X*~xv�\Θ�ߑ�5I���^�}!ce�]��:����iiH�N�^OG�h^h##���S7ʐb5�Tu���#�N�˝J�J�Y~9��&����·��EcǷ$L5&��l�!C�i"���XE������/k�r�8L"]�3c �]G_7��=0T,�ܚ1��8�-;J�T����������"�!�t�Z�#2��W��&������$E���'��5�=R%�����۸	妌��q��AU7 ��H��:h�&7�i̖� 4S�0i���8S$���0	8�?O����v��?�}�s�>��&9��o7V�`��Y~�N��K*`}�fyl���1�tq{q|ʡyL��ӒIF%�K� ��q>����@sG�z���9%7 �
h���Ш9��������_{wQ��^�!�_��	w����&�(��`c����F3P��h�a��ҍ ȶ~{b�rSdz�V�#������$�E�&�ɠif ���{�(5�X����=�>x����r��o���\���&�Kx�}C����U�`1s&�Us9D�b�W�]p<&-$F#X�E�ڑO��ux5`��\ �8,Z����F-��J��h$����|c9	ڂ�|���+�5�ث�|Z��f����gG�`�&��+b
7k �pcִ��� �G�I��Ȅ�D����"�<ܹ�MO��h:�tI��������T�V�I�����)zU���y)��X�!Y��V�>)=YwQ�4�ke}tux--=T:
3�~A>	\�8���� L��^��Ȣ��%����������Q�m�"�Znp�W�6�ç�^j=�4��,��X}u��0.���~���.��dHE�ԯ��r}�ϰ��}F��*UQ�T
�z���%�7�\.���`��T�>f�PxI<��zj��Ƴ�#���dԷ+EQOA�1s�9��T㠅�ˇ�p+�\2�q�&�~��dV�����F{���1,��ϓ�j��(�ݼ�85Z%����/�`"��U9���Γ�}0R�X|�m���V��n���ġLݺ�#�,ʈd}���`َ9�ۘ�գ�f��PC��>j�Ra&X޾<pG��ۙm1��%(��vv@�\���
�Y�M��4&G���)b���'E@���'vW�7��<��� ����w\�Z|�	<�{ 1u<mGJ���ݰ0Z;�\?�o=�Û���5.�)�E[c�����?��?�?m���      g   ;  x�uWMs�8=ÿ�9�%��:z�co��D�٪��@$L�� -?;fj�rعo�47��}���)WR�e��ݯ_�n�l����,d�o�����:�,Z��bᙠ����L������/���F�쒅�L$8��;�J�~m�=�0�?�I���h��#�9��Y�_�ޚ:��O��k%;k4<��s\���'�vL�D�Βo������[����g�DD��@�)�j�)w?��N��j�W�޷J�,��Ώ�� cq��n�F�v�>��4��i52�Wt��+B�l�����Ep�x\g9��m��lm����
u���" �����n����(~����.$��łW��e��r�>?�C+q2�W��+��;
鯿<�σ�,�i%U+�Q�kwm $	~���b<}+M�U��7��ˮ����E�,�	����>g�\�Z� b|M@�1{���=�� 9�ID�1���^)�@��^�FxƊ��yz��Sv/��,� �s��6aĉG�U\�ht���Ѓo0��k���G�s������5�AW
Pg�:��� (�)�%{P��;�W[[�F� ��A���vE�Z�r�K�X��-�dK�^��[��d#K����~����h�}���حk�w
�pO>GD�Υ`WC��G�]��עV���V�%�v%8%� щ�V{�9���LNh��p>ÓD�~���ߺ^�	������]H�"�b*�a%��p�������W��)�G���s\5��(ɘe�UGuՀ���$2;M?���[1����Fa���"c�bk�Js����$'�#�=�q,Y��]����� 9�֭z�6��t
�Vc�I J�S� ���GUTۮGO����s�)K��{�����!:+;�!@���]6�O��*��:)�.���$ȗ�a\�gЖ+�V�|A��A5�X�6En&>M�;�Vv�l��"
�Ѷ���w���0%yE��[J�T����aH��o��Zv�d_l�E�j��9�s6	[�J5���-�=���ϛ��id�٨���f~���{!�qz`Fs�Y���/�"�wSJ$J���8��A4J�F#_�0vF��⨂"��loI���[5t�?��m3�W|�x[�u:	( �(C�0�6��EI��ń�S�0�����8d�E��S��O�1%_5rG���T���d
:z/�4a�<E��k0Q�-���u�1.�$�U�pL��O��;$�؇���}|��C��	d|�Pᴮ��ǷP�����O0�B-�ܘ�ŇO�R�J���$��~,Q��(�O�l�W�:���,K���+q��)���U5Ԉ��o��s��M�0M�$��
4�A�P �n�]C��Fb�@��IΏ�s�H����_dS[Ms��FJov��G��fw�L|HB�1Oz7��=�b�w<��JA�OX�Dcg9[�.u3.}1��t.��>��cL�� ��-)�;Hi��7A>+_B�������V�}Jw���/�C������buӝ?��q-�� -I�O0S�-`�K͍5Fr�`A�S}��'7>G�2�I>�&b��Tc߱
��{�9��D��}�)V�2��:w��n�Jg=J��������`TB���gO�}�i��4=�@��ܩ�۞�k�v<&sM[;������F잗?~��@v0��q�8Y�D�t=�J���d��,Zg�5F7/���s�_T��y�w��Vo
-u3կ�4��4��?�n�e�W��>4����MZ:��:c9,�m�X<p����5�2��/`��$����0�Cd�7�_L�E��Et�z��#�w����������i�n�P����NO�el�I��1��������XSm�?m�s�����͡����z�u�l�yd�v"T4n4� ��q�7� �)�q���tB6�J����j�����WS�'`3l��٪r����x(��C:�x��hg+�5:T�'�>t��KA�#���|�~T�=z���  �؏3�8��hk�:���v��bbBc$�F�t�=���u-]�o�&���,��I6u}��������4�#��������"���:>��)5�_�����r�      h   ,   x�3�tM,.I-��2�O���9��J2@L���R3F��� _�!      i   �   x�M��
�0F�{�"����j3
*���%��6XJH��-(��[�w8|b����J�K�)�D$]m5h���^4�{��W��Ρ����$�S��.��P�q�b�;�*�hY+%�1RU���m�j�����z��$�V��"~ �{+�      j   �  x��W�n�J]��� ��>Erv���I�ǵd�"�RGT�n7)G�� �,&�Y�N?6�)�Vn���a�I���ԩs�;��kY�P���Ҳ�)7��kA�Z/�aW�)��J5�s�����SӨ��P�R+�����N����U���$I'ď���b/d�.M%��t̿4�ND%'�ڲ�TT�XQ�13�.M)�ʹT�ֆ�G�.=�믔fy��ņ=��A����b��&v�mb���}���>���El`�*��#���ҙ�[^�k1���yc�ӂ���+T�k������;mJ�.=�S�zf����eq��&~D��I%;�(�s�C�>��J�Ñ�e��v*�O��#�z３�H��K�r<�t7۸�1{�\�W>�Emp �>a�j�,8���h�Ֆ���al�=@6�VR�vE7���KQ�,4��k9��g�����bv���Ԭg��HnY�~�F.q�<yFi��x{�.�]5sy`��r���?Dm����i�;��]Z>�n�$N� �R�4KSw�1�Ҋꩠ[m��n%�����i]/�������7���V��^��yQkK�|m�|�-����Λ�����]�e�����5(�;J/+��J���J���s�]�{���ƺ1J�Y \�Y�'�5�
˶�qw�(��W�$��`��U���hdm�G�5Z�VV]�;�Ü��@疯pfUL]7�� ��cCw���ٶ~9���{��^��ج���!7�ڠۀ�	����Ҽ�k@��?k�ޙ��F�(N��܋R(�zy�R7A!wW���^�U�E����[~8遗P0K'�?�P��ң��� ���g#��7�ް)Y��Y!�M�wc�9Z��E���������������C�p��f���|��L���r�]���0`̦��,aa�\�P� J��Y�O�CvU5�j:c�2���jb���|��̠ݽ��yS_`߷
�P(�V��L&�c}��V�A��8�kL��u�8�w���a�4I���S�=M����*��"۹�u��<�3H���ĭ*\�w5o6Z��@��)��� z����M׺̦s#J�+Arv�|�B�Z��4N��L�4Dͳ4�vq�̰��O&�� ���g��c��n�}v��t�Q�#Jv�b�V��u��m�+�;�����K������7���X�8����~A#����J����K�r�r# �����w��s�0��I�?���rr�uM}#�](7'����
V�|��V�(t�j��Ǣ���CY=�rm�{�%A!��U��k���l\3�6��ѣq��]��F_�?�0�I̹`<}\4/�Z�@���/��]�!6պ�Mu5��MF�xԛl{�i�6�S߯�E������?,\�Ƥ ͪZ�G	�Х���C?:���y�%�P��������_�E�4�10��4����"���n��u�(oG�S5�P;!GMJطR����1��5��-2�1�$��UWF�t�8�J�� ���W��i��L��{��h;�t�t;΄ kge�t.Ō�Ӎ�A��
C����^�	2p~d>�	���і�����1q���W\���8Rl�R���ʪd�,;5y~� (p+>��`��N+��D�9:��Qǁ�m?I-d�8�M0Yi����$Ō�H3�aSLk��p��ݍ03�H����R�9~��'�"j\i-��O�L�}g᷇��f6ð�r#��3!g3��1
[6E�棺��a̋�
�כ�)
P�7R����_��I�ۘJ�:�v��-��Gx�z�ⅮR��H�NK�b	J����@nԖU�F�R��ݢU`��CN��s���*��hs��$��L���m,'L���^���^*:�p���5�oZ�]��q7��)��\�ڬ���Ѭ�E�΂wG�Ifh\o5�~+�Bl���S��@B��ٔ��/��U 3x����Iu�ԡ�I&�w�%��w�8�v�_Vi{���ڂ���-t�Y
�|u�cN�{Gc�_�.<"�<���8��@�o��`�Է,��i��Թ�[��,�����s��[=}xI�9p�S�	脵W- Î�E۽)��)\�yi��3��>N�I9̝���˃���U�g�+*��K]�YOZ+C��/��*�.Q:�~�x�cl�]��(������?io�      k   C  x�U�ˎ�0E��W�
�l��&�Z4m0`P��Vad1���ӯ/e��.���%o�w7�=&^1�%����Y)��a:���B�-�p�);X�q��pt1
V����[H�$l^��b?#�T/��@�4��S�F��SA��4��p�����S�T�6#c����Osg�w���Ꟙ> ��k�a�B��P��J5��Og*]@�����;�p>yK��NsY����L#���2�Z�|�4l��>
�pN���":��1\�=eT�dR��5�b-����hO�t�#Q��E˖ix�㹄+&��ox�ӿ��V����@]���b�|��,�0����{�.�M�%\�i%�
���^�P겛F*zx����HL���[j����������tHe���hc�8e���8����{{D�Z�rM.Җ�|�ҍ�
lv*�h���e�>�4������%J`XǺ�-&;`�;'���iW�Jt����h8�z�y,U�#K��F�@r��#�뭥�)�/q�S���S_Z��L���.j���[����l�,]�dX1�����-��F�ì9��yn�ח���A��      l   Z  x�E�ݎ�@���O�l�ǿK�3#��DY7{�=��'�8���[H#		�WEq�N���b���aԥ.n�̉�
Ri"-�)I�����ȉI����n��U�Si) M� T�ҬP�M	I��Z����a�+ve�c�Ԣ9��Z��P}����A�avFx�Ң`x�;^��GJ{	:�bI���2j8���
�gQ��GTUB*a�{<F$���(����J{4Ū�j��V\֗�t����c�.�܋�;��1�#~�Sw"�V1Y ^�=�.1cX^^�k�8�=�"/őI�Q}�4k�j�8�蘨1���%o;	�;WM0����u�5޵�sgH����H��h֝�fdG�o���p��_��l�l��{��k�oH^-u�4�?"WHb[ĻӃ�'$��#iZ�L+2�~i���Ȃ�����ao��
�GS���6��?]�x�T�H7V�o\Js��Y��oA�;�M�
>��ݧMd��m3�^��
�]���@�Î7nα������f�~���f%ޭ!�{��d����)������ΐ12Bkj-��ϑ�{�H���A��	�+i�G=c�M���C[���`�U�T�     