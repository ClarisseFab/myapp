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
    updated_at timestamp(6) without time zone NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: clarisse
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp(6) without time zone,
    remember_created_at timestamp(6) without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.users OWNER TO clarisse;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: clarisse
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO clarisse;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: clarisse
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: equipes id; Type: DEFAULT; Schema: public; Owner: clarisse
--

ALTER TABLE ONLY public.equipes ALTER COLUMN id SET DEFAULT nextval('public.equipes_id_seq'::regclass);


--
-- Name: poules id; Type: DEFAULT; Schema: public; Owner: clarisse
--

ALTER TABLE ONLY public.poules ALTER COLUMN id SET DEFAULT nextval('public.poules_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: clarisse
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: clarisse
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-05-13 13:33:50.218241	2024-05-13 13:33:50.218245
\.


--
-- Data for Name: equipes; Type: TABLE DATA; Schema: public; Owner: clarisse
--

COPY public.equipes (id, nom_equipe, nom_capitaine, telephone, email, poule_id, created_at, updated_at, user_id) FROM stdin;
\.


--
-- Data for Name: poules; Type: TABLE DATA; Schema: public; Owner: clarisse
--

COPY public.poules (id, nom_poule, created_at, updated_at) FROM stdin;
222	A	2024-05-16 09:03:31.865764	2024-05-16 09:03:31.865764
223	B	2024-05-16 09:03:31.915936	2024-05-16 09:03:31.915936
224	C	2024-05-16 09:03:31.962104	2024-05-16 09:03:31.962104
225	D	2024-05-16 09:03:32.014351	2024-05-16 09:03:32.014351
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: clarisse
--

COPY public.schema_migrations (version) FROM stdin;
20240506172845
20240516073045
20240516164613
20240516175248
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: clarisse
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at) FROM stdin;
4	clarisse.fabreges@free.fr	$2a$12$It6HK17SuuWQvT6LIfXgf.E7fuOkGJtMzI6pDbR6IPVle5Zzg9Ch2	\N	\N	\N	2024-05-16 17:56:02.276392	2024-05-16 17:56:02.276392
\.


--
-- Name: equipes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: clarisse
--

SELECT pg_catalog.setval('public.equipes_id_seq', 247, true);


--
-- Name: poules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: clarisse
--

SELECT pg_catalog.setval('public.poules_id_seq', 225, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: clarisse
--

SELECT pg_catalog.setval('public.users_id_seq', 4, true);


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
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: clarisse
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: index_equipes_on_poule_id; Type: INDEX; Schema: public; Owner: clarisse
--

CREATE INDEX index_equipes_on_poule_id ON public.equipes USING btree (poule_id);


--
-- Name: index_equipes_on_user_id; Type: INDEX; Schema: public; Owner: clarisse
--

CREATE INDEX index_equipes_on_user_id ON public.equipes USING btree (user_id);


--
-- Name: index_users_on_email; Type: INDEX; Schema: public; Owner: clarisse
--

CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);


--
-- Name: index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: clarisse
--

CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- PostgreSQL database dump complete
--

