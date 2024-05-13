--
-- PostgreSQL database dump
--

-- Dumped from database version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.11 (Ubuntu 14.11-0ubuntu0.22.04.1)

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
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: clarisse
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO clarisse;

--
-- Name: equipes; Type: TABLE; Schema: public; Owner: clarisse
--

CREATE TABLE public.equipes (
    id bigint NOT NULL,
    nom_equipe character varying,
    nom_capitaine character varying,
    telephone character varying,
    email character varying,
    poule_id bigint,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.equipes OWNER TO clarisse;

--
-- Name: equipes_id_seq; Type: SEQUENCE; Schema: public; Owner: clarisse
--

CREATE SEQUENCE public.equipes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.equipes_id_seq OWNER TO clarisse;

--
-- Name: equipes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: clarisse
--

ALTER SEQUENCE public.equipes_id_seq OWNED BY public.equipes.id;


--
-- Name: poules; Type: TABLE; Schema: public; Owner: clarisse
--

CREATE TABLE public.poules (
    id bigint NOT NULL,
    nom_poule character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.poules OWNER TO clarisse;

--
-- Name: poules_id_seq; Type: SEQUENCE; Schema: public; Owner: clarisse
--

CREATE SEQUENCE public.poules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.poules_id_seq OWNER TO clarisse;

--
-- Name: poules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: clarisse
--

ALTER SEQUENCE public.poules_id_seq OWNED BY public.poules.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: clarisse
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO clarisse;

--
-- Name: equipes id; Type: DEFAULT; Schema: public; Owner: clarisse
--

ALTER TABLE ONLY public.equipes ALTER COLUMN id SET DEFAULT nextval('public.equipes_id_seq'::regclass);


--
-- Name: poules id; Type: DEFAULT; Schema: public; Owner: clarisse
--

ALTER TABLE ONLY public.poules ALTER COLUMN id SET DEFAULT nextval('public.poules_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: clarisse
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-05-13 13:33:50.218241	2024-05-13 13:33:50.218245
\.


--
-- Data for Name: equipes; Type: TABLE DATA; Schema: public; Owner: clarisse
--

COPY public.equipes (id, nom_equipe, nom_capitaine, telephone, email, poule_id, created_at, updated_at) FROM stdin;
21	Asul 1	Fred	0604023849	fred@gmail.com	\N	2024-05-13 15:44:42.166061	2024-05-13 15:44:42.166061
22	Asul 2	Paul	0604023848	paul@gmail.com	\N	2024-05-13 15:45:02.391245	2024-05-13 15:45:02.391245
23	Asul 3	Laure	0604023854	laure@gmail.com	\N	2024-05-13 15:45:19.353191	2024-05-13 15:45:19.353191
24	Asul 4	Marion	0654023849	marion@gmail.com	\N	2024-05-13 15:45:38.768023	2024-05-13 15:45:38.768023
25	Asul 5	Gaël	0604063849	gael@gmail.com	\N	2024-05-13 15:46:03.676231	2024-05-13 15:46:03.676231
26	Asul 6	Adrien	0604023099	adrien@gmail.com	\N	2024-05-13 15:46:29.910592	2024-05-13 15:46:29.910592
27	Asul 7 	Thomas	0604093849	thomas@gmail.com	\N	2024-05-13 15:46:53.984156	2024-05-13 15:46:53.984156
28	Asul 8	Lloris	0604001849	lloris@gmail.com	\N	2024-05-13 15:47:24.223719	2024-05-13 15:47:24.223719
29	Asul 9	Igor	0604023800	igor@gmail.com	\N	2024-05-13 15:47:40.675815	2024-05-13 15:47:40.675815
30	Asul 10	Julie	0604023811	julie@gmail.com	\N	2024-05-13 15:48:03.725606	2024-05-13 15:48:03.725606
31	Asul 11	Pauline	0604023822	pauline@gmail.com	\N	2024-05-13 15:48:22.793333	2024-05-13 15:48:22.793333
32	Asul 12	Emmanuelle	0604023833	manue@gmail.com	\N	2024-05-13 15:48:41.898349	2024-05-13 15:48:41.898349
33	Asul 13	Rémi	0604023844	remi@gmail.com	\N	2024-05-13 15:49:09.800432	2024-05-13 15:49:09.800432
34	Asul 14	Elea	0604023855	elea@gmail.com	\N	2024-05-13 15:49:28.363842	2024-05-13 15:49:28.363842
35	Asul 15	Stéphanie	0604023866	stephanie@gmail.com	\N	2024-05-13 15:49:53.721708	2024-05-13 15:49:53.721708
36	Asul 16	Marie	0604023877	marie@gmail.com	\N	2024-05-13 15:50:15.42131	2024-05-13 15:50:15.42131
\.


--
-- Data for Name: poules; Type: TABLE DATA; Schema: public; Owner: clarisse
--

COPY public.poules (id, nom_poule, created_at, updated_at) FROM stdin;
158	A	2024-05-13 15:31:57.961685	2024-05-13 15:31:57.961685
159	B	2024-05-13 15:31:57.993257	2024-05-13 15:31:57.993257
160	C	2024-05-13 15:31:58.027097	2024-05-13 15:31:58.027097
161	D	2024-05-13 15:31:58.05942	2024-05-13 15:31:58.05942
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: clarisse
--

COPY public.schema_migrations (version) FROM stdin;
20240506172845
\.


--
-- Name: equipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: clarisse
--

SELECT pg_catalog.setval('public.equipes_id_seq', 36, true);


--
-- Name: poules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: clarisse
--

SELECT pg_catalog.setval('public.poules_id_seq', 161, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: clarisse
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: equipes equipes_pkey; Type: CONSTRAINT; Schema: public; Owner: clarisse
--

ALTER TABLE ONLY public.equipes
    ADD CONSTRAINT equipes_pkey PRIMARY KEY (id);


--
-- Name: poules poules_pkey; Type: CONSTRAINT; Schema: public; Owner: clarisse
--

ALTER TABLE ONLY public.poules
    ADD CONSTRAINT poules_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: clarisse
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: index_equipes_on_poule_id; Type: INDEX; Schema: public; Owner: clarisse
--

CREATE INDEX index_equipes_on_poule_id ON public.equipes USING btree (poule_id);


--
-- PostgreSQL database dump complete
--

