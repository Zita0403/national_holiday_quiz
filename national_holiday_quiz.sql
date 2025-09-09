--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2025-09-09 12:55:35

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
-- TOC entry 217 (class 1259 OID 24825)
-- Name: answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.answers (
    id integer NOT NULL,
    answer_text text NOT NULL
);


ALTER TABLE public.answers OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 24824)
-- Name: answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.answers_id_seq OWNER TO postgres;

--
-- TOC entry 3349 (class 0 OID 0)
-- Dependencies: 216
-- Name: answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.answers_id_seq OWNED BY public.answers.id;


--
-- TOC entry 219 (class 1259 OID 24836)
-- Name: question_answers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.question_answers (
    id integer NOT NULL,
    question_id integer,
    answer_id integer,
    is_correct boolean NOT NULL
);


ALTER TABLE public.question_answers OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 24835)
-- Name: question_answers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.question_answers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.question_answers_id_seq OWNER TO postgres;

--
-- TOC entry 3350 (class 0 OID 0)
-- Dependencies: 218
-- Name: question_answers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.question_answers_id_seq OWNED BY public.question_answers.id;


--
-- TOC entry 215 (class 1259 OID 24598)
-- Name: questions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.questions (
    id integer NOT NULL,
    question_text text
);


ALTER TABLE public.questions OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 24597)
-- Name: questions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.questions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.questions_id_seq OWNER TO postgres;

--
-- TOC entry 3351 (class 0 OID 0)
-- Dependencies: 214
-- Name: questions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.questions_id_seq OWNED BY public.questions.id;


--
-- TOC entry 3184 (class 2604 OID 24828)
-- Name: answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers ALTER COLUMN id SET DEFAULT nextval('public.answers_id_seq'::regclass);


--
-- TOC entry 3185 (class 2604 OID 24839)
-- Name: question_answers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_answers ALTER COLUMN id SET DEFAULT nextval('public.question_answers_id_seq'::regclass);


--
-- TOC entry 3183 (class 2604 OID 24601)
-- Name: questions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions ALTER COLUMN id SET DEFAULT nextval('public.questions_id_seq'::regclass);


--
-- TOC entry 3341 (class 0 OID 24825)
-- Dependencies: 217
-- Data for Name: answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.answers (id, answer_text) FROM stdin;
1	Az 1848-as forradalom emlékére
2	Az első magyar köztársaság kikiáltására
3	Szent István király államalapítása miatt
4	A rendszerváltás évfordulója
5	II. András
6	IV. Béla
7	Szent István
8	I. László
9	1000
10	1038
11	1083
12	1111
13	Egy középkori fegyver
14	Egy szentelt kard
15	Szent István mumifikálódott jobb keze
16	Egy keresztény relikviát őrző templom neve
17	Pannonhalmi Apátság
18	Budai Vár
19	Szent István-bazilika
20	Veszprémi Székesegyház
21	Új borokat
22	Szentelt vizet
23	Kenyeret
24	Szőlőfürtöket
25	A honfoglalás
26	Az államalapítás
27	A tatárjárás vége
28	A Habsburg-ház trónra lépése
29	A Szent Korona
30	A koronázási palást
31	A Szent Jobb
32	A Történeti Alkotmány másolata
33	1989
34	1990
35	1993
36	2000
37	Új kenyér ünnepe
38	Magyar alkotmány ünnepe
39	Államalapítás ünnepe
40	A köztársaság kikiáltásának napja
\.


--
-- TOC entry 3343 (class 0 OID 24836)
-- Dependencies: 219
-- Data for Name: question_answers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.question_answers (id, question_id, answer_id, is_correct) FROM stdin;
1	1	1	f
2	1	2	f
3	1	3	t
4	1	4	f
5	2	5	f
6	2	6	f
7	2	7	t
8	2	8	f
9	3	9	f
12	3	12	f
13	4	13	f
14	4	14	f
15	4	15	t
16	4	16	f
17	5	17	f
18	5	18	f
19	5	19	t
20	5	20	f
21	6	21	f
22	6	22	f
23	6	23	t
24	6	24	f
25	7	25	f
26	7	26	t
27	7	27	f
28	7	28	f
29	8	29	f
30	8	30	f
31	8	31	t
32	8	32	f
33	9	33	f
34	9	34	t
35	9	35	f
36	9	36	f
37	10	37	f
38	10	38	f
39	10	39	f
40	10	40	t
10	3	10	f
11	3	11	t
\.


--
-- TOC entry 3339 (class 0 OID 24598)
-- Dependencies: 215
-- Data for Name: questions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.questions (id, question_text) FROM stdin;
2	Melyik királyhoz kötődik az augusztus 20-ai ünnep?
3	Melyik évben avatták szentté István királyt?
4	Mi a "Szent Jobb"?
5	Hol található a Szent Jobb ereklye?
6	Mit szoktak megáldani augusztus 20-án a templomokban?
7	Melyik magyar történelmi esemény évfordulója esik augusztus 20-ára?
8	Melyik szimbolikus tárgy kerül körmenetbe Budapesten augusztus 20-án?
9	Mikor nyilvánították augusztus 20-át hivatalos állami ünneppé Magyarországon a kommunizmus után?
10	Melyik ünnep nem kapcsolódik közvetlenül augusztus 20-ához?
1	Miért ünnepeljük augusztus 20-át Magyarországon?
\.


--
-- TOC entry 3352 (class 0 OID 0)
-- Dependencies: 216
-- Name: answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.answers_id_seq', 40, true);


--
-- TOC entry 3353 (class 0 OID 0)
-- Dependencies: 218
-- Name: question_answers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.question_answers_id_seq', 1, false);


--
-- TOC entry 3354 (class 0 OID 0)
-- Dependencies: 214
-- Name: questions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.questions_id_seq', 1, false);


--
-- TOC entry 3189 (class 2606 OID 24834)
-- Name: answers answers_answer_text_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_answer_text_key UNIQUE (answer_text);


--
-- TOC entry 3191 (class 2606 OID 24832)
-- Name: answers answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.answers
    ADD CONSTRAINT answers_pkey PRIMARY KEY (id);


--
-- TOC entry 3193 (class 2606 OID 24841)
-- Name: question_answers question_answers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_answers
    ADD CONSTRAINT question_answers_pkey PRIMARY KEY (id);


--
-- TOC entry 3187 (class 2606 OID 24605)
-- Name: questions questions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.questions
    ADD CONSTRAINT questions_pkey PRIMARY KEY (id);


--
-- TOC entry 3194 (class 2606 OID 24847)
-- Name: question_answers question_answers_answer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_answers
    ADD CONSTRAINT question_answers_answer_id_fkey FOREIGN KEY (answer_id) REFERENCES public.answers(id) ON DELETE CASCADE;


--
-- TOC entry 3195 (class 2606 OID 24842)
-- Name: question_answers question_answers_question_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.question_answers
    ADD CONSTRAINT question_answers_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE CASCADE;


-- Completed on 2025-09-09 12:55:35

--
-- PostgreSQL database dump complete
--

