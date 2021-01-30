--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

-- Started on 2021-01-30 18:57:53

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 207 (class 1259 OID 16612)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 16610)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 3166 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 209 (class 1259 OID 16622)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 16620)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3167 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 205 (class 1259 OID 16604)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16602)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 3168 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 211 (class 1259 OID 16630)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16640)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16638)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 3169 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 210 (class 1259 OID 16628)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 3170 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 215 (class 1259 OID 16648)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16646)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3171 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 217 (class 1259 OID 16708)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16706)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 3172 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 203 (class 1259 OID 16594)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16592)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 3173 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 201 (class 1259 OID 16583)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16581)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3174 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 218 (class 1259 OID 16739)
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16788)
-- Name: samples; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.samples (
    id integer NOT NULL,
    customer character varying(255) NOT NULL,
    retry integer NOT NULL,
    status_id character varying(5)
);


ALTER TABLE public.samples OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16851)
-- Name: samples_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.samples_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.samples_id_seq OWNER TO postgres;

--
-- TOC entry 3175 (class 0 OID 0)
-- Dependencies: 222
-- Name: samples_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.samples_id_seq OWNED BY public.samples.id;


--
-- TOC entry 220 (class 1259 OID 16793)
-- Name: samples_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.samples_status (
    id character varying(5) NOT NULL,
    name character varying(255)
);


ALTER TABLE public.samples_status OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16798)
-- Name: samples_status_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.samples_status_history (
    id integer NOT NULL,
    sample_id integer,
    status_id character varying(5),
    user_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.samples_status_history OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16862)
-- Name: samples_status_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.samples_status_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.samples_status_history_id_seq OWNER TO postgres;

--
-- TOC entry 3176 (class 0 OID 0)
-- Dependencies: 223
-- Name: samples_status_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.samples_status_history_id_seq OWNED BY public.samples_status_history.id;


--
-- TOC entry 2925 (class 2604 OID 16615)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 2926 (class 2604 OID 16625)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2924 (class 2604 OID 16607)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 2927 (class 2604 OID 16633)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 2928 (class 2604 OID 16643)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2929 (class 2604 OID 16651)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2930 (class 2604 OID 16711)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 2923 (class 2604 OID 16597)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 2922 (class 2604 OID 16586)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 2932 (class 2604 OID 16853)
-- Name: samples id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.samples ALTER COLUMN id SET DEFAULT nextval('public.samples_id_seq'::regclass);


--
-- TOC entry 2933 (class 2604 OID 16864)
-- Name: samples_status_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.samples_status_history ALTER COLUMN id SET DEFAULT nextval('public.samples_status_history_id_seq'::regclass);


--
-- TOC entry 3144 (class 0 OID 16612)
-- Dependencies: 207
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
1	genetica
2	hanoi
3	vanchuyen
4	my
\.


--
-- TOC entry 3146 (class 0 OID 16622)
-- Dependencies: 209
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	1	4
5	1	5
6	1	6
7	1	7
8	1	8
9	1	9
10	1	10
11	1	11
12	1	12
13	1	13
14	1	14
15	1	15
16	1	16
17	1	17
18	1	18
19	1	19
20	1	20
21	1	21
22	1	22
23	1	23
24	1	24
25	1	25
26	1	26
27	1	27
28	1	28
29	1	29
30	1	30
31	1	31
32	1	32
33	1	33
34	1	34
35	1	35
36	1	36
37	1	37
38	1	38
39	1	39
40	1	40
41	1	41
42	1	42
43	1	43
44	1	44
45	1	45
46	1	46
47	1	47
48	1	48
49	2	1
50	2	2
51	2	3
52	2	4
53	2	5
54	2	6
55	2	7
56	2	8
57	2	9
58	2	10
59	2	11
60	2	12
61	2	13
62	2	14
63	2	15
64	2	16
65	2	17
66	2	18
67	2	19
68	2	20
69	2	21
70	2	22
71	2	23
72	2	24
73	2	25
74	2	26
75	2	27
76	2	28
77	2	29
78	2	30
79	2	31
80	2	32
81	2	33
82	2	34
83	2	35
84	2	36
85	2	37
86	2	38
87	2	39
88	2	40
89	2	41
90	2	42
91	2	43
92	2	44
93	2	45
94	2	46
95	2	47
96	2	48
97	3	1
98	3	2
99	3	3
100	3	4
101	3	5
102	3	6
103	3	7
104	3	8
105	3	9
106	3	10
107	3	11
108	3	12
109	3	13
110	3	14
111	3	15
112	3	16
113	3	17
114	3	18
115	3	19
116	3	20
117	3	21
118	3	22
119	3	23
120	3	24
121	3	25
122	3	26
123	3	27
124	3	28
125	3	29
126	3	30
127	3	31
128	3	32
129	3	33
130	3	34
131	3	35
132	3	36
133	3	37
134	3	38
135	3	39
136	3	40
137	3	41
138	3	42
139	3	43
140	3	44
141	3	45
142	3	46
143	3	47
144	3	48
145	4	1
146	4	2
147	4	3
148	4	4
149	4	5
150	4	6
151	4	7
152	4	8
153	4	9
154	4	10
155	4	11
156	4	12
157	4	13
158	4	14
159	4	15
160	4	16
161	4	17
162	4	18
163	4	19
164	4	20
165	4	21
166	4	22
167	4	23
168	4	24
169	4	25
170	4	26
171	4	27
172	4	28
173	4	29
174	4	30
175	4	31
176	4	32
177	4	33
178	4	34
179	4	35
180	4	36
181	4	37
182	4	38
183	4	39
184	4	40
185	4	41
186	4	42
187	4	43
188	4	44
189	4	45
190	4	46
191	4	47
192	4	48
\.


--
-- TOC entry 3142 (class 0 OID 16604)
-- Dependencies: 205
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add samples	7	add_samples
26	Can change samples	7	change_samples
27	Can delete samples	7	delete_samples
28	Can view samples	7	view_samples
29	Can add samples status	8	add_samplesstatus
30	Can change samples status	8	change_samplesstatus
31	Can delete samples status	8	delete_samplesstatus
32	Can view samples status	8	view_samplesstatus
33	Can add samples status history	9	add_samplesstatushistory
34	Can change samples status history	9	change_samplesstatushistory
35	Can delete samples status history	9	delete_samplesstatushistory
36	Can view samples status history	9	view_samplesstatushistory
37	Can add sample	11	add_sample
38	Can change sample	11	change_sample
39	Can delete sample	11	delete_sample
40	Can view sample	11	view_sample
41	Can add sample status history	12	add_samplestatushistory
42	Can change sample status history	12	change_samplestatushistory
43	Can delete sample status history	12	delete_samplestatushistory
44	Can view sample status history	12	view_samplestatushistory
45	Can add sample status	10	add_samplestatus
46	Can change sample status	10	change_samplestatus
47	Can delete sample status	10	delete_samplestatus
48	Can view sample status	10	view_samplestatus
\.


--
-- TOC entry 3148 (class 0 OID 16630)
-- Dependencies: 211
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$216000$R3RasepHFzVZ$AUXQcxKovKUBKMYyWqrtlRIoPuTPG0b5cBovnJdW6CQ=	2021-01-30 16:29:59.835909+07	t	admin			admin@genetica.com	t	t	2021-01-29 16:05:50.664218+07
5	pbkdf2_sha256$216000$ybXhuGIkukui$f3iNWEvpFT3UHjCopFVE8fJvKW8i6Cp1C8G8ehq1q4I=	\N	f	my				t	t	2021-01-30 16:07:19+07
4	pbkdf2_sha256$216000$oEBVsLTvcHoP$zJKF3VsM5WS20yJRouoq07EEPMQCaod94SJzyIcES9U=	\N	f	vanchuyen				t	t	2021-01-30 16:07:03+07
3	pbkdf2_sha256$216000$GregazdqqDY4$TPo52ICySppqL3vLjWlTQh8I/qYJ2Pxw8IARYpIr/YI=	2021-01-30 16:30:38.728768+07	f	hanoi				t	t	2021-01-30 16:06:52+07
2	pbkdf2_sha256$216000$UBFrIeUt3rXt$xhMbeqfo9Vi0EKgEhkwfyeFd+/O3+2f87/jcnYNJ6ys=	2021-01-30 18:55:07.625374+07	f	genetica				t	t	2021-01-30 16:06:33+07
\.


--
-- TOC entry 3150 (class 0 OID 16640)
-- Dependencies: 213
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	2	1
2	3	2
3	5	4
4	4	3
\.


--
-- TOC entry 3152 (class 0 OID 16648)
-- Dependencies: 215
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 3154 (class 0 OID 16708)
-- Dependencies: 217
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-01-29 16:26:19.029681+07	g1	SampleStatus object (g1)	1	[{"added": {}}]	10	1
2	2021-01-29 16:49:17.602429+07	gesa	SampleStatus object (gesa)	2	[{"changed": {"fields": ["Id"]}}]	10	1
3	2021-01-29 16:49:28.952605+07	g1	SampleStatus object (g1)	3		10	1
4	2021-01-30 09:18:13.566393+07	2	A	1	[{"added": {}}]	11	1
5	2021-01-30 09:18:17.916252+07	3	B	1	[{"added": {}}]	11	1
6	2021-01-30 10:48:59.445496+07	A	A | Bắt đầu	1	[{"added": {}}]	10	1
7	2021-01-30 10:49:29.015192+07	A	A | Bắt đầu	3		10	1
8	2021-01-30 10:50:47.936705+07	start	start | B	1	[{"added": {}}]	10	1
9	2021-01-30 10:50:55.416203+07	start	start | B	3		10	1
10	2021-01-30 10:51:07.199376+07	start	start | Bắt đầu	1	[{"added": {}}]	10	1
11	2021-01-30 10:51:37.201481+07	GeRe	GeRe | Genetica nhận được bộ thu mẫu từ phía khách hàng	1	[{"added": {}}]	10	1
12	2021-01-30 10:51:55.036845+07	GeSe	GeSe | Genetica gửi bộ thu mẫu đến phòng lab ở Hà Nội	1	[{"added": {}}]	10	1
13	2021-01-30 10:52:16.895814+07	HNRe	HNRe | Phòng lab ở Hà Nội thực hiện việc kiểm định mẫu nước bọt	1	[{"added": {}}]	10	1
14	2021-01-30 10:52:36.157978+07	HNse	HNse | Phòng lab Hà Nội gửi lại DNA đã được tách chiết về Genetica	1	[{"added": {}}]	10	1
15	2021-01-30 10:53:56.334568+07	deli	deli | Đơn vị vận chuyển gửi gói hàng sang phòng lab ở Mỹ	1	[{"added": {}}]	10	1
16	2021-01-30 10:54:24.823854+07	MyAc	MyAc | Phòng lab ở Mỹ thực hiện tách chiết DNA	1	[{"added": {}}]	10	1
17	2021-01-30 10:54:53.634796+07	MyDe	MyDe | Phòng lab ở Mỹ thực hiện việc giải mã gen	1	[{"added": {}}]	10	1
18	2021-01-30 10:55:59.020648+07	MySe	MySe | Phòng lab ở Mỹ gửi lại kết quả giải mã gen	1	[{"added": {}}]	10	1
19	2021-01-30 10:56:12.171334+07	2	A	2	[{"changed": {"fields": ["Status"]}}]	11	1
20	2021-01-30 10:56:17.722018+07	3	B	2	[{"changed": {"fields": ["Status"]}}]	11	1
21	2021-01-30 10:56:41.785169+07	gesa	gesa | Genetica nhận được bộ thu mẫu từ phía khách hàng	3		10	1
22	2021-01-30 11:04:27.477989+07	2	A	2	[{"changed": {"fields": ["Status"]}}]	11	1
23	2021-01-30 11:04:34.093358+07	3	B	2	[{"changed": {"fields": ["Status"]}}]	11	1
24	2021-01-30 13:23:24.534416+07	3	B	2	[{"changed": {"fields": ["Status"]}}]	11	1
25	2021-01-30 13:23:42.062035+07	2	A	2	[{"changed": {"fields": ["Status"]}}]	11	1
26	2021-01-30 13:28:22.393526+07	2	A	2	[{"changed": {"fields": ["Status"]}}]	11	1
27	2021-01-30 13:29:10.813057+07	2	A	2	[{"changed": {"fields": ["Status"]}}]	11	1
28	2021-01-30 13:42:12.421584+07	HNSe	HNSe | Phòng lab Hà Nội gửi lại DNA đã được tách chiết về Genetica	2	[{"changed": {"fields": ["Id"]}}]	10	1
29	2021-01-30 13:42:19.119123+07	Deli	Deli | Đơn vị vận chuyển gửi gói hàng sang phòng lab ở Mỹ	2	[{"changed": {"fields": ["Id"]}}]	10	1
30	2021-01-30 13:42:35.713079+07	HNse	HNse | Phòng lab Hà Nội gửi lại DNA đã được tách chiết về Genetica	3		10	1
31	2021-01-30 13:42:35.718434+07	deli	deli | Đơn vị vận chuyển gửi gói hàng sang phòng lab ở Mỹ	3		10	1
32	2021-01-30 13:49:44.272765+07	end	end | Hoàn thành	1	[{"added": {}}]	10	1
33	2021-01-30 13:52:14.359068+07	2	A	2	[{"changed": {"fields": ["Status", "Retry"]}}]	11	1
34	2021-01-30 14:12:41.030851+07	1GeRe	1GeRe | Genetica nhận được bộ thu mẫu từ phía khách hàng	2	[{"changed": {"fields": ["Id"]}}]	10	1
35	2021-01-30 14:26:41.486393+07	2GeSe	2GeSe | Genetica gửi bộ thu mẫu đến phòng lab ở Hà Nội	2	[{"changed": {"fields": ["Id"]}}]	10	1
36	2021-01-30 14:27:01.384396+07	3HNRe	3HNRe | Phòng lab ở Hà Nội thực hiện việc kiểm định mẫu nước bọt	2	[{"changed": {"fields": ["Id"]}}]	10	1
37	2021-01-30 14:27:08.858236+07	HNSe4	HNSe4 | Phòng lab Hà Nội gửi lại DNA đã được tách chiết về Genetica	2	[{"changed": {"fields": ["Id"]}}]	10	1
38	2021-01-30 14:27:21.778196+07	4HNSe	4HNSe | Phòng lab Hà Nội gửi lại DNA đã được tách chiết về Genetica	2	[{"changed": {"fields": ["Id"]}}]	10	1
39	2021-01-30 14:27:50.7103+07	5Deli	5Deli | Đơn vị vận chuyển gửi gói hàng sang phòng lab ở Mỹ	2	[{"changed": {"fields": ["Id"]}}]	10	1
40	2021-01-30 14:28:15.902748+07	3	B	2	[{"changed": {"fields": ["Status"]}}]	11	1
41	2021-01-30 14:28:35.804545+07	HNSe4	HNSe4 | Phòng lab Hà Nội gửi lại DNA đã được tách chiết về Genetica	3		10	1
42	2021-01-30 14:28:35.812761+07	HNSe	HNSe | Phòng lab Hà Nội gửi lại DNA đã được tách chiết về Genetica	3		10	1
43	2021-01-30 14:28:35.812761+07	HNRe	HNRe | Phòng lab ở Hà Nội thực hiện việc kiểm định mẫu nước bọt	3		10	1
44	2021-01-30 14:28:35.812761+07	GeSe	GeSe | Genetica gửi bộ thu mẫu đến phòng lab ở Hà Nội	3		10	1
45	2021-01-30 14:28:35.816528+07	GeRe	GeRe | Genetica nhận được bộ thu mẫu từ phía khách hàng	3		10	1
46	2021-01-30 14:28:35.816528+07	Deli	Deli | Đơn vị vận chuyển gửi gói hàng sang phòng lab ở Mỹ	3		10	1
47	2021-01-30 14:28:50.162273+07	6MyDe	6MyDe | Phòng lab ở Mỹ thực hiện việc giải mã gen	2	[{"changed": {"fields": ["Id"]}}]	10	1
48	2021-01-30 14:29:17.837614+07	6MyDe	6MyDe | Phòng lab ở Mỹ thực hiện việc giải mã gen	3		10	1
49	2021-01-30 14:29:25.547436+07	6MyAc	6MyAc | Phòng lab ở Mỹ thực hiện tách chiết DNA	2	[{"changed": {"fields": ["Id"]}}]	10	1
50	2021-01-30 14:29:31.692814+07	7MyDe	7MyDe | Phòng lab ở Mỹ thực hiện việc giải mã gen	2	[{"changed": {"fields": ["Id"]}}]	10	1
51	2021-01-30 14:29:37.909796+07	8MySe	8MySe | Phòng lab ở Mỹ gửi lại kết quả giải mã gen	2	[{"changed": {"fields": ["Id"]}}]	10	1
52	2021-01-30 14:29:47.280655+07	MySe	MySe | Phòng lab ở Mỹ gửi lại kết quả giải mã gen	3		10	1
53	2021-01-30 14:29:47.288645+07	MyDe	MyDe | Phòng lab ở Mỹ thực hiện việc giải mã gen	3		10	1
54	2021-01-30 14:29:47.288645+07	MyAc	MyAc | Phòng lab ở Mỹ thực hiện tách chiết DNA	3		10	1
55	2021-01-30 15:27:15.214876+07	6GeEn	6GeEn | Genetica đóng gói các mẫu DNA vào thành 1 gói	1	[{"added": {}}]	10	1
56	2021-01-30 15:27:55.191063+07	7GeDe	7GeDe | Genetica gửi gói hàng cho đơn vị vận chuyển	1	[{"added": {}}]	10	1
57	2021-01-30 15:30:32.004334+07	8MyAc	8MyAc | Phòng lab ở Mỹ thực hiện tách chiết DNA	2	[{"changed": {"fields": ["Id"]}}]	10	1
58	2021-01-30 15:30:41.336699+07	9MyDe	9MyDe | Phòng lab ở Mỹ thực hiện việc giải mã gen	2	[{"changed": {"fields": ["Id"]}}]	10	1
59	2021-01-30 15:31:06.588284+07	aMySe	aMySe | Phòng lab ở Mỹ gửi lại kết quả giải mã gen	2	[{"changed": {"fields": ["Id"]}}]	10	1
60	2021-01-30 15:31:50.387399+07	8MySe	8MySe | Phòng lab ở Mỹ gửi lại kết quả giải mã gen	3		10	1
61	2021-01-30 15:31:50.39538+07	7MyDe	7MyDe | Phòng lab ở Mỹ thực hiện việc giải mã gen	3		10	1
62	2021-01-30 15:31:50.39538+07	6MyAc	6MyAc | Phòng lab ở Mỹ thực hiện tách chiết DNA	3		10	1
63	2021-01-30 16:04:24.481302+07	1	genetica	1	[{"added": {}}]	3	1
64	2021-01-30 16:04:37.615953+07	2	hanoi	1	[{"added": {}}]	3	1
65	2021-01-30 16:04:50.030773+07	3	vanchuyen	1	[{"added": {}}]	3	1
66	2021-01-30 16:05:04.3455+07	4	my	1	[{"added": {}}]	3	1
67	2021-01-30 16:06:33.863045+07	2	genetica	1	[{"added": {}}]	4	1
68	2021-01-30 16:06:52.473973+07	3	hanoi	1	[{"added": {}}]	4	1
69	2021-01-30 16:07:03.524071+07	4	vanchuyen	1	[{"added": {}}]	4	1
70	2021-01-30 16:07:19.555403+07	5	my	1	[{"added": {}}]	4	1
71	2021-01-30 16:07:55.76548+07	2	genetica	2	[{"changed": {"fields": ["Groups"]}}]	4	1
72	2021-01-30 16:08:04.079023+07	3	hanoi	2	[{"changed": {"fields": ["Groups"]}}]	4	1
73	2021-01-30 16:08:12.17596+07	5	my	2	[{"changed": {"fields": ["Groups"]}}]	4	1
74	2021-01-30 16:08:18.852164+07	4	vanchuyen	2	[{"changed": {"fields": ["Groups"]}}]	4	1
75	2021-01-30 16:21:24.715661+07	2	genetica	2	[{"changed": {"fields": ["Staff status"]}}]	4	1
76	2021-01-30 16:30:13.251029+07	3	hanoi	2	[{"changed": {"fields": ["Staff status"]}}]	4	1
77	2021-01-30 16:30:18.845003+07	5	my	2	[{"changed": {"fields": ["Staff status"]}}]	4	1
78	2021-01-30 16:30:24.032219+07	4	vanchuyen	2	[{"changed": {"fields": ["Staff status"]}}]	4	1
79	2021-01-30 16:34:05.463887+07	5	SampleStatusHistory object (5)	3		12	3
80	2021-01-30 16:34:05.471879+07	4	SampleStatusHistory object (4)	3		12	3
81	2021-01-30 16:34:05.471879+07	3	SampleStatusHistory object (3)	3		12	3
82	2021-01-30 16:34:05.471879+07	2	SampleStatusHistory object (2)	3		12	3
83	2021-01-30 16:34:05.475871+07	1	SampleStatusHistory object (1)	3		12	3
84	2021-01-30 18:55:25.428063+07	4	C	1	[{"added": {}}]	11	2
85	2021-01-30 18:55:30.004302+07	5	D	1	[{"added": {}}]	11	2
86	2021-01-30 18:55:34.153995+07	6	E	1	[{"added": {}}]	11	2
87	2021-01-30 18:55:38.686817+07	7	F	1	[{"added": {}}]	11	2
88	2021-01-30 18:55:44.816351+07	8	G	1	[{"added": {}}]	11	2
89	2021-01-30 18:55:49.949427+07	9	H	1	[{"added": {}}]	11	2
90	2021-01-30 18:55:54.669298+07	10	J	1	[{"added": {}}]	11	2
91	2021-01-30 18:56:02.681953+07	11	K	1	[{"added": {}}]	11	2
92	2021-01-30 18:56:09.165741+07	12	L	1	[{"added": {}}]	11	2
\.


--
-- TOC entry 3140 (class 0 OID 16594)
-- Dependencies: 203
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	samples	samples
8	samples	samplesstatus
9	samples	samplesstatushistory
10	samples	samplestatus
11	samples	sample
12	samples	samplestatushistory
\.


--
-- TOC entry 3138 (class 0 OID 16583)
-- Dependencies: 201
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-01-29 15:45:21.928218+07
2	auth	0001_initial	2021-01-29 15:45:22.012106+07
3	admin	0001_initial	2021-01-29 15:45:22.08401+07
4	admin	0002_logentry_remove_auto_add	2021-01-29 15:45:22.107979+07
5	admin	0003_logentry_add_action_flag_choices	2021-01-29 15:45:22.119963+07
6	contenttypes	0002_remove_content_type_name	2021-01-29 15:45:22.14393+07
7	auth	0002_alter_permission_name_max_length	2021-01-29 15:45:22.155914+07
8	auth	0003_alter_user_email_max_length	2021-01-29 15:45:22.167899+07
9	auth	0004_alter_user_username_opts	2021-01-29 15:45:22.179882+07
10	auth	0005_alter_user_last_login_null	2021-01-29 15:45:22.195861+07
11	auth	0006_require_contenttypes_0002	2021-01-29 15:45:22.195861+07
12	auth	0007_alter_validators_add_error_messages	2021-01-29 15:45:22.21184+07
13	auth	0008_alter_user_username_max_length	2021-01-29 15:45:22.235807+07
14	auth	0009_alter_user_last_name_max_length	2021-01-29 15:45:22.251786+07
15	auth	0010_alter_group_name_max_length	2021-01-29 15:45:22.26377+07
16	auth	0011_update_proxy_permissions	2021-01-29 15:45:22.279749+07
17	auth	0012_alter_user_first_name_max_length	2021-01-29 15:45:22.291733+07
19	sessions	0001_initial	2021-01-29 15:45:22.311705+07
21	samples	0001_initial	2021-01-29 16:24:43.737743+07
22	samples	0002_auto_20210129_1648	2021-01-29 16:48:09.635076+07
23	samples	0003_auto_20210130_0747	2021-01-30 07:47:53.956869+07
24	samples	0004_auto_20210130_0917	2021-01-30 09:17:18.722653+07
25	samples	0005_auto_20210130_1319	2021-01-30 13:19:22.240028+07
26	samples	0006_auto_20210130_1544	2021-01-30 15:44:18.40916+07
\.


--
-- TOC entry 3155 (class 0 OID 16739)
-- Dependencies: 218
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
tioood9ewgsq0h5veyodh7h89d8fm8t1	.eJxVjDsOwjAQBe_iGlle_01Jzxms9WdxADlSnFSIu0OkFNC-mXkvFnFbW9xGXeJU2JkBO_1uCfOj9h2UO_bbzPPc12VKfFf4QQe_zqU-L4f7d9BwtG-tsvdaQwESgqQLThAkMgY8SQVBW2uVMRUlKZkKYc2GrPIukdMh2MLeH8CtN1o:1l5lYk:d_aSErRYfnC6w4gWTorexmO6qKupg6YVuSaraLo6Auo	2021-02-13 15:24:46.839671+07
lclijgj8b3m5xsl3vasp2thh3wk96czm	.eJxVjEEOwiAQAP_C2RALuIBH730DYdlFqgaS0p6MfzckPeh1ZjJvEeK-lbB3XsNC4iqUOP0yjOnJdQh6xHpvMrW6rQvKkcjDdjk34tftaP8GJfYytoyE3hpyZMEyT-gUZZ89Th50ZuW0tXDW2SkADxkvZGJ0YDglr5UWny_17DgC:1l5oqJ:sC7ViSXORbI_4jhFHjUA2AoN2tXKuKampj319Kl-Cm0	2021-02-13 18:55:07.627368+07
\.


--
-- TOC entry 3156 (class 0 OID 16788)
-- Dependencies: 219
-- Data for Name: samples; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.samples (id, customer, retry, status_id) FROM stdin;
2	A	0	end
3	B	1	4HNSe
4	C	0	1GeRe
5	D	0	2GeSe
6	E	0	3HNRe
7	F	0	4HNSe
8	G	0	5Deli
9	H	0	6GeEn
10	J	0	7GeDe
11	K	0	8MyAc
12	L	0	9MyDe
\.


--
-- TOC entry 3157 (class 0 OID 16793)
-- Dependencies: 220
-- Data for Name: samples_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.samples_status (id, name) FROM stdin;
start	Bắt đầu
end	Hoàn thành
1GeRe	Genetica nhận được bộ thu mẫu từ phía khách hàng
2GeSe	Genetica gửi bộ thu mẫu đến phòng lab ở Hà Nội
3HNRe	Phòng lab ở Hà Nội thực hiện việc kiểm định mẫu nước bọt
4HNSe	Phòng lab Hà Nội gửi lại DNA đã được tách chiết về Genetica
5Deli	Đơn vị vận chuyển gửi gói hàng sang phòng lab ở Mỹ
6GeEn	Genetica đóng gói các mẫu DNA vào thành 1 gói
7GeDe	Genetica gửi gói hàng cho đơn vị vận chuyển
8MyAc	Phòng lab ở Mỹ thực hiện tách chiết DNA
9MyDe	Phòng lab ở Mỹ thực hiện việc giải mã gen
aMySe	Phòng lab ở Mỹ gửi lại kết quả giải mã gen
\.


--
-- TOC entry 3158 (class 0 OID 16798)
-- Dependencies: 221
-- Data for Name: samples_status_history; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.samples_status_history (id, sample_id, status_id, user_id, created_at, updated_at) FROM stdin;
6	3	1GeRe	1	2021-01-30 15:54:25.323219+07	2021-01-30 15:54:25.331244+07
7	3	2GeSe	1	2021-01-30 15:54:29.244848+07	2021-01-30 15:54:29.25284+07
8	3	2GeSe	1	2021-01-30 15:54:31.201797+07	2021-01-30 15:54:31.206093+07
9	3	3HNRe	2	2021-01-30 16:22:23.468232+07	2021-01-30 16:22:23.476225+07
10	3	3HNRe	3	2021-01-30 16:30:58.147843+07	2021-01-30 16:30:58.15583+07
11	3	4HNSe	3	2021-01-30 16:30:59.624698+07	2021-01-30 16:30:59.632651+07
12	3	4HNSe	3	2021-01-30 16:31:01.573858+07	2021-01-30 16:31:01.581886+07
\.


--
-- TOC entry 3177 (class 0 OID 0)
-- Dependencies: 206
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 4, true);


--
-- TOC entry 3178 (class 0 OID 0)
-- Dependencies: 208
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 192, true);


--
-- TOC entry 3179 (class 0 OID 0)
-- Dependencies: 204
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- TOC entry 3180 (class 0 OID 0)
-- Dependencies: 212
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 4, true);


--
-- TOC entry 3181 (class 0 OID 0)
-- Dependencies: 210
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 5, true);


--
-- TOC entry 3182 (class 0 OID 0)
-- Dependencies: 214
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3183 (class 0 OID 0)
-- Dependencies: 216
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 92, true);


--
-- TOC entry 3184 (class 0 OID 0)
-- Dependencies: 202
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- TOC entry 3185 (class 0 OID 0)
-- Dependencies: 200
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 26, true);


--
-- TOC entry 3186 (class 0 OID 0)
-- Dependencies: 222
-- Name: samples_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.samples_id_seq', 12, true);


--
-- TOC entry 3187 (class 0 OID 0)
-- Dependencies: 223
-- Name: samples_status_history_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.samples_status_history_id_seq', 12, true);


--
-- TOC entry 2947 (class 2606 OID 16737)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2952 (class 2606 OID 16664)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 2955 (class 2606 OID 16627)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2949 (class 2606 OID 16617)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2942 (class 2606 OID 16655)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 2944 (class 2606 OID 16609)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2963 (class 2606 OID 16645)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2966 (class 2606 OID 16679)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 2957 (class 2606 OID 16635)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2969 (class 2606 OID 16653)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2972 (class 2606 OID 16693)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 2960 (class 2606 OID 16731)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2975 (class 2606 OID 16717)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2937 (class 2606 OID 16601)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 2939 (class 2606 OID 16599)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2935 (class 2606 OID 16591)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2979 (class 2606 OID 16746)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2982 (class 2606 OID 16850)
-- Name: samples samples_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.samples
    ADD CONSTRAINT samples_pkey PRIMARY KEY (id);


--
-- TOC entry 2989 (class 2606 OID 16861)
-- Name: samples_status_history samples_status_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.samples_status_history
    ADD CONSTRAINT samples_status_history_pkey PRIMARY KEY (id);


--
-- TOC entry 2987 (class 2606 OID 16831)
-- Name: samples_status samples_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.samples_status
    ADD CONSTRAINT samples_status_pkey PRIMARY KEY (id);


--
-- TOC entry 2945 (class 1259 OID 16738)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2950 (class 1259 OID 16675)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 2953 (class 1259 OID 16676)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2940 (class 1259 OID 16661)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 2961 (class 1259 OID 16691)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 2964 (class 1259 OID 16690)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 2967 (class 1259 OID 16705)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2970 (class 1259 OID 16704)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2958 (class 1259 OID 16732)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2973 (class 1259 OID 16728)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 2976 (class 1259 OID 16729)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 2977 (class 1259 OID 16748)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 2980 (class 1259 OID 16747)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2990 (class 1259 OID 16854)
-- Name: samples_status_history_samples_id_2b1c011f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX samples_status_history_samples_id_2b1c011f ON public.samples_status_history USING btree (sample_id);


--
-- TOC entry 2991 (class 1259 OID 16833)
-- Name: samples_status_history_status_id_2d18aaff; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX samples_status_history_status_id_2d18aaff ON public.samples_status_history USING btree (status_id);


--
-- TOC entry 2992 (class 1259 OID 16834)
-- Name: samples_status_history_status_id_2d18aaff_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX samples_status_history_status_id_2d18aaff_like ON public.samples_status_history USING btree (status_id varchar_pattern_ops);


--
-- TOC entry 2993 (class 1259 OID 16827)
-- Name: samples_status_history_user_id_ea297973; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX samples_status_history_user_id_ea297973 ON public.samples_status_history USING btree (user_id);


--
-- TOC entry 2983 (class 1259 OID 16835)
-- Name: samples_status_id_8d7d0a0e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX samples_status_id_8d7d0a0e ON public.samples USING btree (status_id);


--
-- TOC entry 2984 (class 1259 OID 16836)
-- Name: samples_status_id_8d7d0a0e_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX samples_status_id_8d7d0a0e_like ON public.samples USING btree (status_id varchar_pattern_ops);


--
-- TOC entry 2985 (class 1259 OID 16832)
-- Name: samples_status_id_a2555d69_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX samples_status_id_a2555d69_like ON public.samples_status USING btree (id varchar_pattern_ops);


--
-- TOC entry 2996 (class 2606 OID 16670)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2995 (class 2606 OID 16665)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2994 (class 2606 OID 16656)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2998 (class 2606 OID 16685)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2997 (class 2606 OID 16680)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3000 (class 2606 OID 16699)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2999 (class 2606 OID 16694)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3001 (class 2606 OID 16718)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3002 (class 2606 OID 16723)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3006 (class 2606 OID 16866)
-- Name: samples_status_history samples_status_history_sample_id_47c23adb_fk_samples_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.samples_status_history
    ADD CONSTRAINT samples_status_history_sample_id_47c23adb_fk_samples_id FOREIGN KEY (sample_id) REFERENCES public.samples(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3005 (class 2606 OID 16837)
-- Name: samples_status_history samples_status_history_status_id_2d18aaff_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.samples_status_history
    ADD CONSTRAINT samples_status_history_status_id_2d18aaff_fk FOREIGN KEY (status_id) REFERENCES public.samples_status(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3004 (class 2606 OID 16819)
-- Name: samples_status_history samples_status_history_user_id_ea297973_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.samples_status_history
    ADD CONSTRAINT samples_status_history_user_id_ea297973_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3003 (class 2606 OID 16842)
-- Name: samples samples_status_id_8d7d0a0e_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.samples
    ADD CONSTRAINT samples_status_id_8d7d0a0e_fk FOREIGN KEY (status_id) REFERENCES public.samples_status(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2021-01-30 18:57:54

--
-- PostgreSQL database dump complete
--

