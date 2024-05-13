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
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: clarisse
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	development	2024-05-06 17:31:37.658788	2024-05-06 17:31:37.658793
\.


--
-- Data for Name: equipes; Type: TABLE DATA; Schema: public; Owner: clarisse
--

COPY public.equipes (id, nom_equipe, nom_capitaine, telephone, email, created_at, updated_at) FROM stdin;
20	Clacla la volleyeuse	clacla	03284924	clacla@gmail.com	2024-05-07 19:29:07.451376	2024-05-07 19:29:07.451376
21	Polo apprend à jouer au volley	Polo	7042659257	polodu69@gmail.com	2024-05-07 19:29:29.648004	2024-05-07 19:29:29.648004
22	Lobna la photographe	Lobna	84270567206	velobna@gmail.com	2024-05-07 19:29:56.079123	2024-05-07 19:29:56.079123
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

SELECT pg_catalog.setval('public.equipes_id_seq', 22, true);


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
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: clarisse
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- PostgreSQL database dump complete
--

