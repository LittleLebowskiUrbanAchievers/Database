--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: octagon; Type: SCHEMA; Schema: -; Owner: llua
--

CREATE SCHEMA octagon;


ALTER SCHEMA octagon OWNER TO llua;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = octagon, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: fighters; Type: TABLE; Schema: octagon; Owner: llua
--

CREATE TABLE fighters (
    fid integer NOT NULL,
    name character varying,
    dob date,
    height_inches integer,
    weight_lbs integer,
    association character varying,
    division character varying,
    country character varying,
    reach_inches integer,
    strike_offense_per_min double precision,
    strike_offense_accuracy integer,
    strike_defense_per_min double precision,
    strike_defense_accuracy integer,
    takedowns_per_fight double precision,
    takedowns_accuracy integer,
    takedowns_defense integer,
    submissions_per_fight double precision,
    wins integer DEFAULT 0,
    losses integer DEFAULT 0,
    draws integer DEFAULT 0,
    total_fights integer DEFAULT 0,
    win_pct integer DEFAULT 0,
    finish_pct integer DEFAULT 0
);


ALTER TABLE fighters OWNER TO llua;

--
-- Name: fights; Type: TABLE; Schema: octagon; Owner: llua
--

CREATE TABLE fights (
    event_id integer NOT NULL,
    match_id integer NOT NULL,
    event_name character varying,
    event_date date,
    event_place character varying,
    f1name character varying,
    f2name character varying,
    f1result character varying,
    f2result character varying,
    f1fid integer,
    f2fid integer,
    method character varying,
    method_d character varying,
    ref character varying,
    round integer,
    duration character varying
);


ALTER TABLE fights OWNER TO llua;

--
-- Data for Name: fighters; Type: TABLE DATA; Schema: octagon; Owner: llua
--

COPY fighters (fid, name, dob, height_inches, weight_lbs, association, division, country, reach_inches, strike_offense_per_min, strike_offense_accuracy, strike_defense_per_min, strike_defense_accuracy, takedowns_per_fight, takedowns_accuracy, takedowns_defense, submissions_per_fight, wins, losses, draws, total_fights, win_pct, finish_pct) FROM stdin;
230	John Lewis	1969-07-16	72	160	Lewis	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
16635	Tom Speer	1984-08-20	71	170	\N	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
95457	Marcio Alexandre Jr.	1989-05-03	73	170	Team Tavares	Welterweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	3	0	3	0	0
3069	Mike Thomas Brown	1975-09-08	66	145	American Top Team	Featherweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	4	0	6	33	0
354	Kelly Dullanty	1977-07-04	68	155	\N	Lightweight	USA	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
12078	Mizuto Hirota	1981-05-05	67	145	Cave	Featherweight	Japan	67	3.49000000000000021	45	3.25	53	2.16000000000000014	68	64	0	0	2	1	3	0	0
258	Alex Andrade	1974-05-14	71	200	Lion's Den	Light Heavyweight	United States	\N	0.200000000000000011	36	2.60000000000000009	53	0	0	25	0.800000000000000044	0	0	0	0	0	0
87012	Cesar Arzamendia	1991-01-31	71	155	Paraguay Combat Team	Featherweight	Paraguay	71	5.37000000000000011	45	5.20000000000000018	56	7.32000000000000028	75	0	2.39999999999999991	0	0	0	0	0	0
132	Matt Andersen	1971-05-29	74	230	\N	Heavyweight	USA	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
60	Andy Anderson	1964-07-16	69	240	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
186	Mikey Burnett	1974-07-16	66	170	Lion's Den	Welterweight	USA	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
180	Carlos Barreto	1968-07-22	76	230	\N	Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
56	Dave Beneteau	1968-07-16	74	250	\N	Heavyweight	Canada	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
174	Dan Bobish	1970-01-26	73	345	Strong Style Fight Team	Super Heavyweight	United States	\N	2.06000000000000005	44	1.73999999999999999	34	2.43999999999999995	42	0	1.60000000000000009	0	0	0	0	0	0
46314	Keith Berish	1985-11-14	72	205	Black & Blue MMA	Light Heavyweight	United States	73	3.58000000000000007	36	4.80999999999999961	62	1.76000000000000001	40	0	0	0	0	0	0	0	0
127	Jerry Bohlander	1974-11-02	71	199	Lion's Den	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
51	Melton Bowen	1969-03-10	72	225	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
207	Ebenezer Fontes Braga	1969-04-14	72	199	Gracie Barra Combat Team	Light Heavyweight	Brazil	\N	2.41999999999999993	50	0.419999999999999984	71	0	0	90	0.599999999999999978	0	0	0	0	0	0
211	Frank Caracci	1970-02-16	67	205	\N	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
131	Rafael Carino	1973-07-16	80	245	Nova Uniao	Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
213	Darrell Gholar	1962-11-07	68	198	\N	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
153	Kazuo Takahashi	1969-03-13	70	203	D-One Gym	Light Heavyweight	Japan	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
19478	Logan Clark	1985-02-16	74	185	Minnesota Martial Arts Academy	Middleweight	United States	\N	2.20000000000000018	54	1.48999999999999999	53	0.309999999999999998	100	30	2.10000000000000009	0	0	0	0	0	0
25	Sean Daugherty	1975-12-04	70	175	\N	Light Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
22	Jason DeLucia	1969-07-24	71	190	\N	Light Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2290	Ron Faircloth	1979-08-16	69	205	Dungeon MMA	Light Heavyweight	United States	\N	0.390000000000000013	40	8.90000000000000036	42	0	0	0	0	0	0	0	0	0	0
200	Hugo Duarte	1968-08-09	72	240	Hugo Duarte Luta Livre	Heavyweight	Brazil	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
46	Joe Charles	1958-07-16	73	260	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
197	Bob Gilstrap	1974-07-16	75	210	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
67894	Robert Drysdale	1981-01-01	75	205	Drysdale Jiu-Jitsu	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
36	Fred Ettish	1955-10-12	72	180	\N	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
48	Jason Fairn	1973-07-16	73	230	Fairn Jiu-Jitsu	Heavyweight	Canada	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
261	CJ Fernandes	1977-11-13	72	170	HIT Squad	Welterweight	USA	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
128	Scott Ferrozzo	1965-04-26	71	323	\N	Super Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
18	Zane Frazier	1966-07-16	78	230	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
124	Don Frye	1965-11-23	73	219	Team Frye	Heavyweight	United States	\N	2.87000000000000011	64	3.56999999999999984	37	0.910000000000000031	57	45	0.699999999999999956	0	0	0	0	0	0
196	Allan Goes	1971-04-20	72	205	Goes Martial Arts	Light Heavyweight	United States	\N	0.640000000000000013	52	1.35000000000000009	41	1.75	40	0	2.60000000000000009	0	0	0	0	0	0
129	Gary Goodridge	1966-01-17	75	249	Big Daddy Fight Team	Heavyweight	Canada	\N	1.84000000000000008	56	2.14000000000000012	48	0.400000000000000022	100	53	0.800000000000000044	0	0	0	0	0	0
15	Gerard Gordeau	1955-03-30	77	216	Kamakura	Heavyweight	Netherlands	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
146	Fabio Gurgel	1970-01-18	72	205	Alliance	Light Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
38	Keith Hackney	1958-04-15	71	200	\N	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
167	Tony Halme	1963-01-06	76	300	\N	Super Heavyweight	Finnland	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2007	Dieuseul Berto	1960-07-16	69	200	Tiger's World of Martial Arts	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
139	Moti Horenstein	1964-03-23	73	205	Moti Horenstein MMA	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
12	Enson Inoue	1967-04-15	70	210	Purebred Omiya	Light Heavyweight	Japan	\N	1.69999999999999996	63	1.87999999999999989	30	0	0	33	0	0	0	0	0	0	0
154	Wallid Ismail	1968-02-22	67	182	Brazil Dojo	Middleweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
27440	Maciej Jewtuszko	1981-01-31	72	155	Berserkers Team	Lightweight	Poland	\N	2.29000000000000004	45	1.3899999999999999	66	0	0	42	0.900000000000000022	0	0	0	0	0	0
20	Art Jimmerson	1963-08-04	73	196	\N	Light Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
137	Brian Johnston	1968-07-28	76	222	American Kickboxing Academy	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
55	Eldo Dias Xavier	1964-07-16	71	180	\N	Middleweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
71	Mark Kerr	1968-12-21	75	266	Team Kerr	Heavyweight	United States	\N	0.280000000000000027	41	0.890000000000000013	28	2.91999999999999993	77	0	0.400000000000000022	0	0	0	0	0	0
134	Koji Kitao	1963-08-12	79	390	New Japan Pro Wrestling	Super Heavyweight	Japan	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
181	Brad Kohler	1964-05-26	69	220	\N	Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
40	Christophe Leninger	1962-07-16	72	200	\N	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
220	Dave Roberts	1979-11-15	73	203	\N	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
210	John Lober	1968-02-26	71	199	Team Machine	Middleweight	United States	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
53	Anthony Macias	1969-07-16	70	170	USA Stars	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
61	Todd Medina	1970-04-30	70	205	Carlson Gracie Jiu-Jitsu	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
14	Guy Mezger	1968-01-01	73	200	Lion's Den Dallas	Light Heavyweight	United States	\N	2.29999999999999982	32	1.3600000000000001	72	0.390000000000000013	50	88	0	0	0	0	0	0	0
176	Harry Moskowitz	1968-07-16	77	275	\N	Super Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
44211	Pedro Nobre	1986-02-13	65	135	Rio Fighters	Flyweight	Brazil	\N	1.37000000000000011	30	9.16000000000000014	35	0	0	0	0	0	0	0	0	0	0
1015	Jorge Patino	1973-05-08	68	155	Macaco Gold Team	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
42	Roland Payne	1964-07-16	69	205	\N	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
221	Tony Petarra	1966-11-08	71	196	Shark Tank	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
1629	Joey Roberts	1977-11-11	74	200	Memphis Bad Boyz	Light Heavyweight	None	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
280	Mark Robinson	1970-12-31	72	300	Cal Cooper	Super Heavyweight	USA	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
885	Jack McLaughlin	1961-10-01	70	218	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
214	Bas Rutten	1965-02-24	73	205	\N	Light Heavyweight	Netherlands	\N	5.58999999999999986	61	2.06000000000000005	79	0	0	0	0	0	0	0	0	0	0
189	Townsend Saunders	1968-07-16	65	170	\N	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
133	Mark Schultz	1960-10-26	70	203	\N	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
21	Patrick Smith	1963-07-16	74	225	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
50	Joe Son	1970-11-20	64	236	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
47	Oleg Taktarov	1967-08-26	72	210	Freelance	Heavyweight	Russia	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
69341	Matheus Nicolau Pereira	1993-01-06	66	135	Nova Uniao	Bantamweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
16	Teila Tuli	1969-06-14	74	430	\N	Super Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
112	Paul Varelans	1969-09-17	80	300	\N	Super Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
171	Yuri Vaulin	1963-09-13	76	207	\N	N/A	Latvia	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
122	Sam Adkins	1965-04-26	75	225	\N	Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
49	Ron van Clief	1943-01-25	70	190	\N	Light Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	0	0	0	0	0
17	Kevin Rosier	1962-01-06	76	265	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
52454	Reginaldo Vieira	1982-11-26	66	135	Peso Pesado Gold Team	Flyweight	Brazil	65	3.41999999999999993	49	2.85999999999999988	57	1.94999999999999996	60	25	1.30000000000000004	0	0	0	0	0	0
31	Orlando Wiet	1965-10-24	70	170	Team Wiet	Welterweight	France	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
39	Emmanuel Yarborough	1964-09-05	80	600	Freelance	Super Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	0	0	0	0	0
229	Alfonso Alcarez	1970-06-10	63	145	Nickwan Kick Gym	Bantamweight	United States	\N	0	0	0	0	0	0	0	0	0	0	1	1	0	0
247	Jermaine Andre	1973-07-16	67	185	\N	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
720	Edwin Dewees	1982-08-07	73	185	Lions Den Scottsdale	Light Heavyweight	United States	\N	1.53000000000000003	33	6.19000000000000039	39	2.18000000000000016	66	0	3.29999999999999982	0	3	0	3	0	0
853	Homer Moore	1971-11-12	70	205	\N	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
886	Brian Gassaway	1972-08-07	72	170	\N	Welterweight	United States	\N	0.340000000000000024	26	3.64999999999999991	44	0	0	42	0	0	1	0	1	0	0
900	Steve Vigneault	1978-02-14	70	185	Tristar Gym	Welterweight	Canada	\N	2.18999999999999995	28	5.75	44	0	0	100	0	0	1	0	1	0	0
1042	Jason Black	1972-08-15	70	169	Miletich Martial Arts	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
1170	Dokonjonosuke Mishima	1972-04-19	67	155	Cobra Kai MMA Dojo	Lightweight	Japan	\N	1.06000000000000005	41	1.21999999999999997	52	2.4700000000000002	40	25	1.39999999999999991	0	2	0	2	0	0
1255	Yuki Sasaki	1976-09-12	72	185	Grabaka	Middleweight	Japan	\N	1.09000000000000008	43	1.19999999999999996	57	0.429999999999999993	100	66	0	0	1	0	1	0	0
1306	Joey Gilbert	1970-04-14	65	154	Gilbert Grappling	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
1331	Andy Wang	1977-05-28	66	155	Grappling Unlimited	Lightweight	United States	\N	3.43000000000000016	36	10.2899999999999991	62	0	0	0	0	0	1	0	1	0	0
1332	Paul Rodriguez	1975-05-18	68	155	American Top Team Orlando	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
1349	Yasuhiro Urushitani	1976-09-08	65	125	Tribe Tokyo MMA	Flyweight	Japan	\N	3.4700000000000002	39	4.70999999999999996	65	0	0	80	0	0	2	0	2	0	0
1398	Alexandre Ferreira	1979-04-25	67	205	Chute Boxe	Light Heavyweight	Brazil	\N	2.56999999999999984	60	8.14000000000000057	42	0	0	0	0	0	1	0	1	0	0
1424	Alexandre Barros	1976-11-19	68	170	Carlson Gracie Team	Welterweight	Brazil	\N	0.979999999999999982	40	4.04999999999999982	36	1.84000000000000008	50	100	0	0	1	0	1	0	0
1449	Chris Haseman	1969-06-02	71	205	Rings Australia	Light Heavyweight	Australia	\N	0.930000000000000049	70	4.66999999999999993	28	0	0	40	2	0	1	0	1	0	0
1542	Rich Crunkilton	1979-11-25	67	155	American Kickboxing Academy	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
1562	Rodrigo Ruas	1977-10-06	70	185	Ruas Vale Tudo	Middleweight	Brazil	\N	1.28000000000000003	35	7	41	0	0	0	0	0	1	0	1	0	0
1767	James Zikic	1977-03-31	74	185	London Shootfighters	Middleweight	England	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
1926	Justin James	1976-11-08	70	155	\N	Lightweight	USA	\N	1.34000000000000008	36	2.68000000000000016	50	0	0	50	1.60000000000000009	0	1	0	1	0	0
98151	Konstantin Erokhin	1982-01-02	71	233	\N	Heavyweight	Russia	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
3139	Sam Morgan	1981-09-28	70	165	Team Bison	Welterweight	USA	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
110	David Abbott	1965-04-26	72	250	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	3	0	3	0	0
1964	Sean Alvarez	1971-07-14	72	235	Renzo Gracie Jiu-Jitsu	Heavyweight	USA	\N	0.890000000000000013	37	3.25	47	0	0	0	0	0	1	0	1	0	0
1995	Amar Suloev	1976-07-01	69	183	Red Devil Sport Club	Middleweight	Armenia	\N	1.97999999999999998	37	2.18999999999999995	70	0.270000000000000018	100	88	0.299999999999999989	0	2	0	2	0	0
2093	Keith Rockel	1965-08-28	72	185	Team Elite	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
2095	Keith Wisniewski	1981-10-25	71	170	Duneland Vale Tudo	Welterweight	United States	75	2.31999999999999984	52	4.86000000000000032	42	1.57000000000000006	40	78	0.299999999999999989	0	4	0	4	0	0
2224	James Lee	1973-09-22	71	205	Mash Fight Team	Light Heavyweight	United States	\N	1.39999999999999991	42	3.7200000000000002	27	13.9499999999999993	50	0	7	0	1	0	1	0	0
2235	Eiji Mitsuoka	1976-01-01	67	145	Wajyutsu Keisyukai RJW	Featherweight	Japan	\N	1.48999999999999999	49	2.25999999999999979	45	2.29999999999999982	36	20	1.60000000000000009	0	2	0	2	0	0
2291	Cole Escovedo	1981-08-30	67	135	Pacific Martial Arts	Bantamweight	United States	72	1.82000000000000006	45	4.84999999999999964	45	0.550000000000000044	40	10	0	0	3	0	3	0	0
2295	Nick Agallar	1979-01-13	68	155	Agallar Combative Systems	Lightweight	United States	\N	0.689999999999999947	11	4.55999999999999961	42	0	0	0	0	0	1	0	1	0	0
78898	Teruto Ishihara	1991-07-23	67	145	Chokushinkai	Featherweight	Japan	69	4.62000000000000011	48	4.33000000000000007	59	0	0	42	0	0	0	1	1	0	0
225	Flavio Luiz Moura	1976-01-26	71	187	Gracie Fusion	N/A	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
2304	Wade Shipp	1975-02-09	75	245	Alliance MMA	Heavyweight	United States	\N	4.29000000000000004	86	2.14000000000000012	0	0	0	75	0	0	1	0	1	0	0
2327	Gerald Strebendt	1979-03-01	69	155	10th Planet Jiu-Jitsu	Lightweight	United States	\N	0	0	4	38	0	0	0	16.3999999999999986	0	1	0	1	0	0
2860	David Baron	1973-02-15	71	155	Pellegrino MMA	Featherweight	United States	\N	1.16999999999999993	30	2.10000000000000009	56	0	0	14	0.699999999999999956	0	1	0	1	0	0
3071	Leigh Remedios	1976-01-13	67	155	Team Quannum	Featherweight	England	\N	0.75	41	1.3600000000000001	68	0	0	33	0	0	1	0	1	0	0
3089	Tim McKenzie	1982-07-21	71	185	\N	Middleweight	United States	74	1.37000000000000011	54	2.95999999999999996	44	0	0	28	2.10000000000000009	0	1	0	1	0	0
3217	Luis Ramos	1981-01-18	68	170	Nova Uniao	Welterweight	Brazil	\N	2.39999999999999991	35	5.59999999999999964	42	1.5	20	100	0	0	2	0	2	0	0
3225	Nick Serra	1978-03-27	69	170	Serra-Longo Fight Team	N/A	USA	\N	0	0	1.72999999999999998	43	1	10	0	2	0	1	0	1	0	0
3263	Jeff Newton	1966-12-11	74	205	Todd Medina Freestyle Team	Light Heavyweight	United States	\N	0.280000000000000027	20	1.40999999999999992	52	0	0	0	8.5	0	1	0	1	0	0
3265	Eddie Ruiz	1967-06-10	67	155	\N	Lightweight	USA	\N	0.200000000000000011	25	1.39999999999999991	47	2	12	0	0	0	1	0	1	0	0
3363	Kristof Midoux	1974-07-30	73	220	Boxing Squad	Heavyweight	France	\N	0.699999999999999956	43	2.89000000000000012	49	0	0	0	0	0	1	0	1	0	0
3660	Travis Wiuff	1978-03-15	75	205	Elite Performance	Heavyweight	United States	\N	0.479999999999999982	30	4.03000000000000025	41	4.83999999999999986	57	44	1.19999999999999996	0	2	0	2	0	0
115911	Wagner Silva Gomes	1987-02-07	72	185	Tata Fight Team	Middleweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
3863	David Bielkheden	1979-06-06	70	155	Brazilian Top Team	Welterweight	Sweden	71	1.1100000000000001	57	1.6399999999999999	54	2.64999999999999991	63	14	0	0	2	0	2	0	0
3919	Zach Light	1974-02-06	68	170	Wolfslair	Welterweight	United States	\N	0.810000000000000053	33	1.89999999999999991	48	1.3600000000000001	100	0	0	0	1	0	1	0	0
215	Jason Godsey	1964-01-01	74	245	Integrated Fighting Academy	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
259	John Alessio	1979-07-05	70	155	Xtreme Couture	Lightweight	Canada	72	1.87000000000000011	35	2.45999999999999996	57	1.78000000000000003	36	72	1	0	5	0	5	0	0
264	Alexandre Dantas	1979-01-03	74	238	Gracie Barra Combat Team	Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
4000	Alex Schoenauer	1976-05-05	75	185	Xtreme Couture	Middleweight	United States	\N	1.21999999999999997	40	2.27000000000000002	42	0	0	22	4.90000000000000036	0	1	0	1	0	0
4038	Samy Schiavo	1975-12-24	68	155	Bushido Academie	Bantamweight	France	\N	1.67999999999999994	34	2.62000000000000011	38	0.939999999999999947	50	66	0.900000000000000022	0	2	0	2	0	0
4208	Lodune Sincaid	1973-05-07	69	185	\N	Middleweight	United States	\N	2.45000000000000018	44	6.70000000000000018	49	0	0	75	0	0	1	0	1	0	0
4371	Wes Combs	1973-06-18	74	205	Millennia MMA	Heavyweight	United States	\N	2.14000000000000012	48	4.73000000000000043	45	0	0	0	0	0	2	0	2	0	0
4388	Bill Mahood	1967-02-01	75	200	Revolution Fight Team	Light Heavyweight	Canada	\N	1.54000000000000004	85	3.58999999999999986	17	0	0	0	3.89999999999999991	0	1	0	1	0	0
4391	Victor Valimaki	1981-12-17	72	233	Complete Fitness and Martial Arts	Heavyweight	Canada	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
4397	Mike Whitehead	1981-06-29	73	205	Xtreme Couture	Heavyweight	United States	\N	1.62000000000000011	33	2.35999999999999988	59	3.58999999999999986	43	77	0.299999999999999989	0	1	0	1	0	0
4399	Kevin Jordan	1970-12-31	75	245	USCAA	Heavyweight	United States	\N	2	40	1.90999999999999992	55	0	0	77	0.599999999999999978	0	2	0	2	0	0
4555	Gideon Ray	1973-05-27	70	185	MMA Masters Chicago	Welterweight	United States	\N	2.08000000000000007	40	2.58000000000000007	53	1.48999999999999999	100	0	0	0	3	0	3	0	0
4556	Derrick Noble	1978-08-14	69	170	Minnesota Martial Arts Academy	Welterweight	United States	\N	6.20999999999999996	40	3.79000000000000004	59	0	0	0	0	0	1	0	1	0	0
4582	Joe Jordan	1978-07-28	66	170	Miletich Fighting Systems	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
121077	Alex Nicholson	1990-05-02	76	185	\N	Heavyweight	United States	81	4.38999999999999968	43	4.12999999999999989	50	0	0	55	0	0	1	0	1	0	0
4638	Rob MacDonald	1978-09-05	75	205	Franco Behring	Heavyweight	Canada	78	1.80000000000000004	50	2.04000000000000004	46	7.19000000000000039	80	80	5.40000000000000036	0	2	0	2	0	0
4673	Brandon Wolff	1975-10-18	70	170	MMA Development	Welterweight	United States	\N	0.469999999999999973	33	10.9100000000000001	19	0	0	0	0	0	2	0	2	0	0
4767	Alberto Crane	1976-07-14	69	155	Alberto Crane MMA	Lightweight	United States	\N	0.429999999999999993	25	2.60999999999999988	57	0	0	50	4	0	2	0	2	0	0
5269	Brian Geraghty	1980-11-04	67	155	Freestyle Academy	Lightweight	United States	\N	0.469999999999999973	25	9.76999999999999957	36	0	0	50	0	0	1	0	1	0	0
5358	Rosi Sexton	1977-07-16	63	135	Next Generation	Bantamweight	England	63	3.31000000000000005	39	7.41999999999999993	41	0.75	10	80	0	0	2	0	2	0	0
5434	Delson Heleno	1977-11-16	71	185	CM System	Welterweight	Brazil	\N	0.689999999999999947	75	4.83000000000000007	19	0	0	0	0	0	1	0	1	0	0
6608	Luis Henrique Barbosa de Oliveira	1993-08-21	75	243	Infight	Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
7110	Antonio Mendes	1981-04-19	75	205	Dragon Fight	Light Heavyweight	Brazil	77	1.34000000000000008	47	6.84999999999999964	22	2.50999999999999979	50	100	0	0	2	0	2	0	0
7127	Kyle Watson	1979-08-09	72	155	HIT Squad	Lightweight	United States	\N	3.66999999999999993	35	3.25	62	0	0	100	0	0	1	0	1	0	0
7148	Ansar Chalangov	1979-10-30	69	170	Legion Fight Team	Middleweight	Russia	\N	0.680000000000000049	66	1.68999999999999995	54	0	0	0	7.59999999999999964	0	2	0	2	0	0
7329	Joe Veres	1977-11-09	66	155	MMA Lab	Lightweight	United States	\N	0	0	5.54999999999999982	27	0	0	0	0	0	2	0	2	0	0
7358	Chris Saunders	1986-03-11	68	155	All In MMA	Lightweight	United States	\N	1.47999999999999998	22	2.95999999999999996	75	3.70000000000000018	100	0	0	0	1	0	1	0	0
7406	Luke Caudillo	1980-11-30	67	155	Grudge Training Center	Lightweight	United States	\N	1.96999999999999997	28	5.07000000000000028	55	0.440000000000000002	20	85	0	0	2	0	2	0	0
7407	John Halverson	1972-09-08	69	155	\N	Lightweight	United States	\N	2.93999999999999995	43	5.29000000000000004	47	0	0	66	2	0	2	0	2	0	0
7652	Josh Hendricks	1976-08-28	74	235	Superior Health Club	Heavyweight	United States	\N	0.979999999999999982	20	11.8000000000000007	29	0	0	0	0	0	1	0	1	0	0
7690	Fabiano Scherner	1972-06-30	76	257	Team Quest	Heavyweight	Brazil	\N	1.31000000000000005	31	3.20000000000000018	38	1.09000000000000008	33	40	0	0	2	0	2	0	0
7798	Jason Miller	1980-12-24	72	185	Team Mayhem	Middleweight	United States	72	1.83000000000000007	43	2.29999999999999982	49	1.31000000000000005	28	43	1.30000000000000004	0	3	0	3	0	0
8224	Mostapha Al-Turk	1973-07-14	74	245	London Shootfighters	Heavyweight	England	77	1.3600000000000001	19	3.60999999999999988	53	0	0	0	0	0	3	0	3	0	0
8654	Matt Horwich	1978-02-10	71	186	Legends MMA	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
8761	Xavier Foupa-Pokam	1982-03-07	73	185	Snake Team	Middleweight	France	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
1587	Assuerio Silva	1974-06-18	73	241	\N	Heavyweight	Brazil	\N	1.41999999999999993	46	4.20000000000000018	54	2.66000000000000014	34	25	1.80000000000000004	0	3	0	3	0	0
227	Andre Pederneiras	1967-03-22	68	155	Nova Uniao	Welterweight	Brazil	\N	0	0	0	0	0	0	0	0	0	1	0	1	0	0
4441	Paul Creighton	1970-04-07	66	155	\N	Lightweight	USA	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
8785	Roxanne Modafferi	1982-09-24	66	135	Syndicate MMA	Flyweight	United States	\N	2.85000000000000009	27	5.41999999999999993	38	0.969999999999999973	7	0	0	0	1	0	1	0	0
8845	Billy Miles	1978-04-28	70	170	Capital City Fighting Alliance	Middleweight	United States	\N	0	0	1.25	33	0	0	0	0	0	1	0	1	0	0
9024	Brad Morris	1979-11-01	73	205	Gracie Barra Sydney	Heavyweight	Australia	\N	0.5	62	6.95000000000000018	27	0	0	0	0	0	2	0	2	0	0
9062	John Kolosci	1974-11-26	71	185	Gilbert Grappling	Lightweight	United States	\N	0.209999999999999992	20	0.849999999999999978	50	0	0	0	0	0	1	0	1	0	0
9267	Jay Hieron	1976-07-29	71	170	Xtreme Couture	Welterweight	United States	75	1.65999999999999992	32	1.8899999999999999	61	4.04999999999999982	60	66	1	0	4	0	4	0	0
9512	John Polakowski	1981-06-21	69	155	The Pit	Lightweight	United States	\N	0.140000000000000013	4	2.04999999999999982	44	0	0	75	2	0	1	0	1	0	0
9534	Diego Saraiva	1982-04-23	66	155	Team Octopus	Lightweight	United States	\N	1.6399999999999999	32	3.58000000000000007	62	1.33000000000000007	40	0	0.699999999999999956	0	3	0	3	0	0
9785	Jeff Cox	1968-08-02	70	155	Strong Style Fight Team	Lightweight	United States	\N	0.560000000000000053	25	1.68999999999999995	33	4.23000000000000043	50	80	0	0	2	0	2	0	0
9786	Dorian Price	1977-08-20	75	170	Team Jorge Gurgel	Lightweight	United States	\N	0	0	0	0	0	0	0	0	0	1	0	1	0	0
10071	Lisa Ellis	1982-11-15	64	115	United Training Center	Strawweight	United States	62	1.67999999999999994	48	2.31999999999999984	57	4.19000000000000039	63	50	0.599999999999999978	0	2	0	2	0	0
10093	Julie Kedzie	1981-03-18	65	135	Jackson-Wink MMA	Bantamweight	United States	64	2.89999999999999991	36	3.18000000000000016	46	1.1399999999999999	23	78	0	0	2	0	2	0	0
10226	Justin Levens	1980-04-18	70	185	CSW	Middleweight	United States	\N	0.369999999999999996	20	3.49000000000000021	40	0	0	33	2.79999999999999982	0	2	0	2	0	0
11486	Donny Walker	1980-01-04	69	135	GriffonRawl Thaiboxing & MMA Academy	Featherweight	United States	\N	1.81000000000000005	37	3.85000000000000009	46	0	0	57	1.69999999999999996	0	2	0	2	0	0
11729	Abner Lloveras	1982-09-04	71	155	Gracie Barcelona	Lightweight	Spain	71	6.26999999999999957	49	6.87000000000000011	43	2	20	0	0	0	1	0	1	0	0
11907	Edilberto de Oliveira	1982-11-22	72	170	Champion Team	Welterweight	Brazil	\N	4.12000000000000011	32	6.79000000000000004	61	0	0	0	0	0	2	0	2	0	0
12096	Troy Mandaloniz	1980-01-02	69	170	\N	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
12116	Shayna Baszler	1980-08-08	67	135	CSW	Bantamweight	United States	67	2.49000000000000021	30	6.36000000000000032	51	0.67000000000000004	18	44	1.30000000000000004	0	2	0	2	0	0
12158	Damacio Page	1982-09-30	66	135	Jackson-Wink MMA	Flyweight	United States	66	2.04999999999999982	38	2.4700000000000002	51	2.62999999999999989	64	23	0.900000000000000022	0	3	0	3	0	0
12196	Takenori Sato	1985-06-08	70	170	Tribe Tokyo MMA	Welterweight	Japan	71	0.46000000000000002	33	12.9199999999999999	9	0	0	0	0	0	2	0	2	0	0
12234	Derek Downey	1980-04-27	74	185	Victory MMA	Middleweight	United States	\N	0.320000000000000007	100	3.35999999999999988	12	2.39999999999999991	16	0	0	0	1	0	1	0	0
12369	Jason Tan	1981-12-17	70	170	\N	Welterweight	England	\N	0.689999999999999947	29	7.37000000000000011	18	0	0	0	0	0	2	0	2	0	0
12553	Willamy Freire	1987-07-28	68	155	Dragon Fight	Lightweight	Brazil	\N	1.53000000000000003	37	0.930000000000000049	62	0.5	100	73	0	0	1	0	1	0	0
12690	Jason Thacker	1975-08-18	72	185	\N	Middleweight	Canada	\N	0.630000000000000004	33	17.0500000000000007	32	0	0	0	0	0	1	0	1	0	0
12692	Reese Andy	1973-03-31	72	205	West Coast Fight Team	Light Heavyweight	United States	\N	2.87000000000000011	50	3.5	58	0.67000000000000004	20	40	0	0	2	0	2	0	0
12854	Sherman Pendergarst	1967-08-01	73	235	Miletich Fighting Systems	Light Heavyweight	United States	\N	1.22999999999999998	36	3.08000000000000007	16	4.62000000000000011	100	0	0	0	1	0	1	0	0
12943	Scott Junk	1978-12-17	73	265	MMA Development	Heavyweight	United States	\N	5.12999999999999989	60	1.81000000000000005	45	0	0	0	0	0	1	0	1	0	0
12955	Denis Stojnic	1980-02-02	72	245	Golden Glory	Heavyweight	Bosnia and Herzegovina	\N	1.51000000000000001	23	6.05999999999999961	36	0	0	80	1	0	2	0	2	0	0
12961	Bristol Marunde	1982-04-20	73	170	Syndicate MMA	Welterweight	United States	71	1.41999999999999993	21	4.40000000000000036	47	1.60000000000000009	33	14	0	0	2	0	2	0	0
13093	Danillo Villefort	1983-05-08	73	185	Blackzilians	Middleweight	United States	\N	2.85999999999999988	37	2.39999999999999991	68	1.70999999999999996	66	33	1.69999999999999996	0	1	0	1	0	0
13270	Josh Schockman	1981-12-29	76	205	Dirty South Fight Team	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
13453	Jesse Forbes	1984-10-24	74	185	Power MMA Team	Middleweight	United States	75	2.10999999999999988	24	4.05999999999999961	53	1.79000000000000004	75	66	1.19999999999999996	0	3	0	3	0	0
13539	Tyler Toner	1983-03-31	69	145	Elevation Fight Team	Featherweight	United States	70	2.95000000000000018	52	2.12999999999999989	62	0	0	54	0.400000000000000022	0	1	0	1	0	0
13599	Dustin Neace	1986-09-12	69	145	Damage Incorporated	Featherweight	United States	\N	2.08000000000000007	32	2.66000000000000014	56	0	0	0	1.69999999999999996	0	1	0	1	0	0
13660	Colin Robinson	1968-11-27	76	243	\N	Heavyweight	Northern Ireland	\N	6.19000000000000039	69	7.91000000000000014	37	2.58000000000000007	100	50	5.20000000000000018	0	2	0	2	0	0
13848	David Kaplan	1979-11-16	66	155	Team Tompkins	Welterweight	United States	\N	2.87999999999999989	46	4.32000000000000028	67	4.87999999999999989	43	0	0.699999999999999956	0	2	0	2	0	0
14016	Chad Reiner	1981-06-29	72	170	Premier Combat Center	Welterweight	United States	\N	0.530000000000000027	20	1.96999999999999997	46	0.989999999999999991	33	25	2	0	2	0	2	0	0
14121	Chris Price	1982-11-09	74	185	Team IBJJA	Light Heavyweight	United States	\N	1.43999999999999995	66	2.58999999999999986	48	0	0	33	2.20000000000000018	0	2	0	2	0	0
2738	Seth Petruzelli	1979-12-03	72	205	The Jungle MMA	Light Heavyweight	United States	76	2.16999999999999993	41	2.08000000000000007	55	0.46000000000000002	50	47	2.29999999999999982	0	4	0	4	0	0
15174	Jessica Aguilar	1982-05-08	64	115	American Top Team	Strawweight	United States	63	4.66999999999999993	37	7.40000000000000036	55	0	0	0	0	0	1	0	1	0	0
5342	Solomon Hutcherson	1972-08-13	71	185	\N	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
15380	Jorge Antonio Cezario de Oliveira	1980-01-22	70	155	Renovacao Fight Team	Lightweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
15393	Wendell de Oliveira Marques	1983-06-01	71	170	War Machine	Welterweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
15806	Andre Gusmao	1977-05-19	74	205	\N	Middleweight	Brazil	\N	2.79000000000000004	43	3.2799999999999998	60	0	0	60	0	0	2	0	2	0	0
15833	Joe Vedepo	1982-01-01	72	185	\N	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
15855	Chuck O'Neil	1985-09-22	74	170	Mass BJJ	Middleweight	United States	\N	3.12999999999999989	37	4.40000000000000036	72	0	0	0	0	0	1	0	1	0	0
15907	Roger Hollett	1978-10-08	70	205	Titans MMA	Light Heavyweight	Canada	70	1.83000000000000007	47	6.46999999999999975	34	1	28	30	0	0	2	0	2	0	0
15932	Chad Griggs	1978-05-15	75	205	Apex MMA	Light Heavyweight	United States	73	2.66999999999999993	50	2.2200000000000002	46	1.51000000000000001	66	41	0	0	2	0	2	0	0
16459	Allen Berube	1974-08-25	68	155	Gracie Tampa	Lightweight	United States	\N	0.92000000000000004	80	0.92000000000000004	33	6.87000000000000011	100	0	3.39999999999999991	0	1	0	1	0	0
16556	Dan Lauzon	1988-03-30	70	155	Lauzon MMA	Welterweight	United States	\N	1.34000000000000008	25	4.08999999999999986	61	1.62999999999999989	33	80	2.70000000000000018	0	3	0	3	0	0
16696	Danny Abbadi	1983-07-03	71	155	\N	Middleweight	United States	\N	3.29000000000000004	38	4.41000000000000014	57	0	0	77	0	0	2	0	2	0	0
16858	Rob Yundt	1980-05-05	73	185	\N	Middleweight	USA	\N	1.37000000000000011	41	2.54999999999999982	31	2.93999999999999995	100	0	0	0	2	0	2	0	0
17004	Joe Soto	1987-03-22	66	135	Central Valley Combat Academy	Bantamweight	United States	65	3.37999999999999989	40	5.58999999999999986	66	0.82999999999999996	18	44	1.89999999999999991	0	3	0	3	0	0
17016	Joe Brammer	1983-08-30	68	156	Victory MMA	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
17355	Byron Bloodworth	1983-08-16	69	135	Iron Clutch Fitness	Bantamweight	United States	69	1.82000000000000006	28	5.17999999999999972	50	0	0	0	0	0	2	0	2	0	0
17389	Jesse Taylor	1984-01-02	73	185	The Arena	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
17393	Shane del Rosario	1983-09-23	75	250	Team Oyama	Heavyweight	United States	79	3.93000000000000016	60	2.9700000000000002	54	1.19999999999999996	40	16	2.39999999999999991	0	2	0	2	0	0
17577	Joao Zeferino	1986-01-15	71	170	Rangel Farias Team	Lightweight	Brazil	73	0.82999999999999996	36	2.60000000000000009	48	0.5	5	50	1	0	2	0	2	0	0
17591	Nissen Osterneck	1981-05-01	74	185	Relson Gracie Jiu-Jitsu	Middleweight	United States	\N	3.14999999999999991	58	2.89999999999999991	41	0.630000000000000004	12	42	1.30000000000000004	0	1	0	1	0	0
17717	Tim Gorman	1983-04-29	64	135	Des Moines MMA Academy	Bantamweight	United States	68	2.72999999999999998	31	5.57000000000000028	46	1	9	33	0	0	2	0	2	0	0
17786	Carlos Augusto Inocente Filho	1986-05-29	75	205	Blackzilians	Light Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
18106	Julio Paulino	1975-12-04	72	170	\N	Welterweight	United States	\N	0.969999999999999973	27	1.87000000000000011	48	0	0	37	0.5	0	2	0	2	0	0
18184	Douglas Evans	1980-10-10	69	144	AK Wolfpack	Featherweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
18304	Shane Primm	1984-07-30	76	205	Gracie Tampa	Middleweight	United States	\N	0.82999999999999996	26	2.25	62	1.78000000000000003	20	0	0	0	1	0	1	0	0
18533	Ryan McGillivray	1986-09-27	71	170	Jackson-Wink MMA	Welterweight	Canada	\N	1.27000000000000002	20	2.20000000000000018	52	0	0	44	0	0	1	0	1	0	0
18590	Anthony Lapsley	1980-02-13	69	170	\N	Welterweight	United States	71	0.530000000000000027	34	0.57999999999999996	66	0	0	20	0	0	2	0	2	0	0
18887	Rin Nakai	1986-10-22	61	135	Pancrase Venus	Bantamweight	Japan	60	1.57000000000000006	33	3.89999999999999991	60	3	18	75	0.5	0	1	0	1	0	0
19390	Motonobu Tezuka	1987-08-29	67	135	Cobra Kai MMA Dojo	Bantamweight	Japan	66	0.869999999999999996	23	2.79999999999999982	51	1.5	11	0	0.5	0	2	0	2	0	0
19726	Paul Bradley	1983-05-17	69	170	Alliance MMA	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
19761	Ryan Roberts	1978-07-16	66	155	Disorderly Conduct	Featherweight	United States	\N	0	0	22.5	45	0	0	0	0	0	1	0	1	0	0
69624	William Macario	1991-07-01	71	170	Pejor	Welterweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	3	0	4	25	0
19854	Roger Gracie	1981-09-26	76	185	Black House	Middleweight	Brazil	79	1.78000000000000003	35	1.79000000000000004	61	1.87000000000000011	53	60	1.89999999999999991	0	1	0	1	0	0
33084	Darrill Schoonover	1985-06-18	74	257	Red Spider MMA	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
21887	Todd Brown	1976-12-13	71	205	Bulldog Fight Team	Middleweight	United States	\N	2.14999999999999991	45	3.85000000000000009	48	0	0	50	0	0	2	0	2	0	0
21962	Anistavio Medeiros de Figueiredo	1988-05-01	67	145	Pitbull Brothers	Featherweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
21971	Josh Bryant	1980-04-23	72	185	Absolute Combat Alliance	Middleweight	United States	\N	1.10000000000000009	20	6.09999999999999964	43	0	0	0	0	0	1	0	1	0	0
22105	Josh Clopton	1981-07-11	67	145	Skrap Pack	Featherweight	United States	68	1.60000000000000009	64	2.87000000000000011	50	2	66	75	0	0	2	0	2	0	0
22127	T.J. O'Brien	1987-01-01	74	155	Des Moines Jiu-Jitsu	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
22197	Wagner Campos	1981-07-31	66	145	Fight Only	Featherweight	Brazil	\N	1.54000000000000004	41	2.5299999999999998	51	2.70999999999999996	100	0	0	0	1	0	1	0	0
22677	Shunichi Shimizu	1985-01-31	66	135	Uruno Dojo	Flyweight	Japan	66	0.140000000000000013	33	4.67999999999999972	30	0	0	0	0	0	1	0	1	0	0
22732	Steve Bosse	1981-07-29	71	205	Tristar Gym	Light Heavyweight	Canada	72	5.99000000000000021	52	5.37999999999999989	50	0.92000000000000004	33	100	0	0	1	0	1	0	0
22791	Frank Lester	1984-06-10	71	170	Jackson-Wink MMA	Welterweight	United States	\N	2.18000000000000016	36	3.81999999999999984	53	0	0	0	0	0	1	0	1	0	0
6541	Ross Pointon	1980-02-18	68	205	\N	Light Heavyweight	England	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
22873	Quinn Mulhern	1984-09-20	75	155	Jackson-Wink MMA	Lightweight	United States	76	1.47999999999999998	28	2.08999999999999986	51	1.3600000000000001	20	33	0	0	2	0	2	0	0
14266	James Giboo	1978-06-01	71	170	\N	Welterweight	USA	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
22955	Chris Tickle	1982-02-01	69	155	Adrenaline MMA	Welterweight	United States	\N	1.07000000000000006	40	1.12999999999999989	43	1	25	20	2	0	1	0	1	0	0
23108	Edgar Garcia	1984-02-22	70	170	Arizona Athletic Club	Welterweight	United States	71	3.16000000000000014	29	4.23000000000000043	60	2.20999999999999996	57	50	0.599999999999999978	0	4	0	4	0	0
5739	Brian Cobb	1980-09-03	71	155	Team Pain and Suffering	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
23219	Neil Grove	1971-01-18	78	265	Daigaku Karate Kai London	Heavyweight	England	\N	0	0	0	0	0	0	100	14.3000000000000007	0	1	0	1	0	0
23271	Jorge Lopez	1988-11-21	70	170	Wand Fight Team	Welterweight	United States	\N	2.4700000000000002	59	2.56999999999999984	50	3.5	41	81	0	0	2	0	2	0	0
23326	Razak Al-Hassan	1982-05-14	75	205	Roufusport	Light Heavyweight	United States	\N	3.27000000000000002	39	3.14000000000000012	60	0.650000000000000022	14	57	0	0	2	0	2	0	0
23437	Alan Omer	1988-09-14	69	145	Stallion Cage	Featherweight	Iraq	71	3.49000000000000021	55	2.20999999999999996	64	1.68999999999999995	42	66	0	0	2	0	2	0	0
23736	Nick Penner	1980-03-26	72	205	Frank Lee's Muay Thai	Light Heavyweight	Canada	77	1.25	30	4.59999999999999964	38	0	0	40	0	0	2	0	2	0	0
23841	Amilcar Alves	1979-12-13	72	201	Nova Uniao	Light Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
24057	Ricardo Funch	1980-08-14	70	170	Team Link	Welterweight	United States	76	2.60999999999999988	65	3.56999999999999984	40	1.23999999999999999	18	60	0	0	4	0	4	0	0
24217	Rolles Gracie	1978-07-14	76	242	Renzo Gracie Jiu-Jitsu	Heavyweight	Brazil	\N	2.29999999999999982	32	3.37999999999999989	55	2.29999999999999982	10	0	0	0	1	0	1	0	0
24948	Josh Shockley	1989-11-15	73	155	Duneland Vale Tudo	Lightweight	United States	74	1.39999999999999991	33	1.75	60	0	0	61	0.800000000000000044	0	2	0	2	0	0
24952	Estevan Payan	1982-04-03	70	148	Arizona Combat Sports	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	3	0	3	0	0
25320	Eric Wisely	1984-07-25	68	145	Team Conquest	Welterweight	United States	\N	1.41999999999999993	47	2.08000000000000007	56	0	0	27	0.900000000000000022	0	2	0	2	0	0
25476	Pat Audinwood	1986-04-16	72	155	Team Bombsquad	Lightweight	United States	\N	1.16999999999999993	12	4.30999999999999961	41	0.800000000000000044	50	0	0	0	2	0	2	0	0
25491	Fernando Bruno	1982-02-24	66	145	Nova Uniao	Featherweight	Brazil	70	1.75	39	1.78000000000000003	48	2.02000000000000002	22	56	0.5	0	1	0	1	0	0
25524	Mike Wessel	1977-12-02	72	260	Westside Fight Team	Heavyweight	United States	\N	1.82000000000000006	56	6.42999999999999972	22	6.29000000000000004	50	0	0	0	1	0	1	0	0
28181	Felipe Olivieri	1985-04-12	69	155	Nova Uniao	Lightweight	Brazil	72	6.67999999999999972	58	4.59999999999999964	57	0	0	71	0	0	1	0	1	0	0
28185	Hernani Perpetuo	1985-05-24	72	170	Nova Uniao	Welterweight	Brazil	74	2.72999999999999998	29	4.37000000000000011	55	0	0	37	0.5	0	2	0	2	0	0
28286	Nandor Guelmino	1975-12-20	75	230	Gym 23	Heavyweight	Austria	76	3.62000000000000011	56	3.16000000000000014	33	0	0	42	0	0	1	0	1	0	0
28788	Stephen Bass	1982-11-14	69	145	Mad House Gym	Featherweight	United States	\N	4.87000000000000011	52	5.87000000000000011	55	0	0	0	0	0	1	0	1	0	0
29111	Bubba Bush	1985-07-24	72	185	Brazos Valley MMA	Middleweight	United States	73	0.630000000000000004	55	7.00999999999999979	25	2.81999999999999984	50	60	0	0	1	0	1	0	0
29129	Steve Lopez	1984-07-30	71	155	Syndicate MMA	Lightweight	United States	\N	1.3899999999999999	24	2.68999999999999995	62	0	0	37	0	0	2	0	2	0	0
30320	Damian Grabowski	1980-05-12	73	241	Lutadores Opole	Heavyweight	Poland	\N	0.790000000000000036	33	9.14000000000000057	50	0	0	0	0	0	1	0	1	0	0
30396	Ulysses Gomez	1983-05-25	65	125	Marc Laimon's Cobra Kai	Flyweight	United States	66	2.7200000000000002	25	3.56999999999999984	68	0	0	0	0	0	2	0	2	0	0
30564	Davey Grant	1985-12-18	68	135	North East Top Team	Bantamweight	England	69	3.58999999999999986	53	1.37000000000000011	69	1.28000000000000003	30	64	0	0	1	0	1	0	0
30943	Tommy Hayden	1986-03-11	69	145	Team Jorge Gurgel	Featherweight	United States	72	1.47999999999999998	27	2.04999999999999982	55	3.41999999999999993	33	66	0	0	2	0	2	0	0
31092	Steve Kennedy	1983-03-07	72	170	Kickass MMA	Welterweight	Australia	71	2.2799999999999998	35	5.51999999999999957	45	2.50999999999999979	33	0	0	0	2	0	2	0	0
31110	Lukasz Sajewski	1990-11-27	68	155	Mighty Bulls Team	Lightweight	Poland	71	2.06000000000000005	35	3.87999999999999989	57	1.01000000000000001	25	66	0	0	1	0	1	0	0
31151	Kamal Shalorus	1977-08-27	68	155	Kaizen MMA	Lightweight	Iran, Islamic Republic of	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	3	0	3	0	0
31897	Rodolfo Rubio Perez	1987-01-29	65	145	Entram Gym	Featherweight	Mexico	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
32445	Besam Yousef	1985-03-25	71	170	Gladius MMA	Welterweight	Sweden	71	3.14000000000000012	53	3.97999999999999998	38	1.33000000000000007	66	50	0	0	2	0	2	0	0
32446	Mats Nilsson	1983-12-05	73	170	Rumble Sports	Middleweight	Sweden	74	2.99000000000000021	39	5.62000000000000011	63	3.87000000000000011	83	44	2.29999999999999982	0	2	0	2	0	0
33115	Nazareno Malegarie	1986-05-16	68	155	Team Tavares	Lightweight	Argentina	70	3.87000000000000011	34	3.27000000000000002	69	1	33	0	0	0	1	0	1	0	0
33343	Rodney Wallace	1981-11-21	69	205	Team R.O.C. Charlotte	Light Heavyweight	United States	72	1.12999999999999989	46	3.43999999999999995	45	6	54	28	1	0	3	0	3	0	0
33523	John Cofer	1984-04-29	69	155	Hardcore Gym	Featherweight	United States	73	2.72999999999999998	41	3.43000000000000016	62	1.21999999999999997	50	64	0	0	2	0	2	0	0
10334	Gilbert Aldana	1977-08-25	73	250	Brausa Academy	Heavyweight	USA	\N	2.91000000000000014	54	6.25999999999999979	26	2.56999999999999984	40	33	0	0	2	0	2	0	0
34073	Cale Yarbrough	1986-12-27	74	185	Hardcore Gym	Light Heavyweight	United States	\N	3.16000000000000014	27	10	72	0	0	0	0	0	1	0	1	0	0
34214	Darrell Montague	1987-11-03	66	125	Millennia MMA	Flyweight	United States	67	1.91999999999999993	25	5.37999999999999989	52	0.719999999999999973	25	33	1.39999999999999991	0	3	0	3	0	0
34408	Jay Silva	1981-05-25	74	185	MPF Training Systems	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
34621	Colin Fletcher	1983-01-08	74	155	Unity Gym	Welterweight	England	78	3.10000000000000009	34	2.9700000000000002	62	0	0	27	0	0	2	0	2	0	0
35521	Will Campuzano	1986-05-27	69	125	Mohler MMA	Flyweight	United States	70	2.43000000000000016	31	3.81999999999999984	57	0.880000000000000004	45	48	0.200000000000000011	0	4	0	4	0	0
6943	Kazuhiro Nakamura	1979-07-16	71	205	Yoshida Dojo	Middleweight	Japan	70	1.56000000000000005	37	1.83000000000000007	59	1.72999999999999998	36	42	0.599999999999999978	0	2	0	2	0	0
36630	Brock Jardine	1985-07-10	71	170	The Pit Elevated Fight Team	Welterweight	United States	73	1.06000000000000005	30	3.33999999999999986	56	0	0	14	0.800000000000000044	0	2	0	2	0	0
36885	Mike Lullo	1979-07-24	68	145	\N	Featherweight	United States	\N	2.47999999999999998	36	4.83999999999999986	40	1.17999999999999994	11	0	0.599999999999999978	0	2	0	2	0	0
41539	Jules Bruchez	1977-08-16	72	205	Gladiator LA	Middleweight	United States	\N	0.689999999999999947	50	5.51999999999999957	46	0	0	0	0	0	1	0	1	0	0
41993	Mehdi Baghdad	1985-04-13	73	155	Black House	Lightweight	France	75	3.12999999999999989	30	4.55999999999999961	46	0	0	33	0	0	1	0	1	0	0
42258	Daniel Stittgen	1980-11-17	73	179	Midwest Training Center	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
42309	Jamie Yager	1983-11-29	74	185	Kings MMA	Welterweight	United States	\N	3.08000000000000007	39	2.54999999999999982	63	0	0	66	0	0	1	0	1	0	0
42419	Chris Indich	1987-04-22	70	170	The Arena MMA	Welterweight	Australia	73	1.31000000000000005	30	4.32000000000000028	43	0.75	50	50	1.5	0	2	0	2	0	0
42479	James Hammortree	1983-11-29	75	185	USA Martial Arts	Light Heavyweight	United States	\N	1.92999999999999994	30	4.12999999999999989	44	2	50	100	1	0	1	0	1	0	0
43445	Sheila Gaff	1989-12-29	65	135	Pyranha MMA Offenbach	Strawweight	Germany	62	1.60000000000000009	50	2.89000000000000012	28	0	0	20	0	0	2	0	2	0	0
44311	John Teixeira da Conceicao	1986-11-18	67	145	Nova Uniao	Featherweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
44417	Brendan Loughnane	1989-05-12	70	155	All Powers Gym	Featherweight	England	71	5	63	3.60000000000000009	66	0	0	91	0	0	1	0	1	0	0
44602	Leo Kuntz	1983-10-03	70	155	American Top Team	Lightweight	United States	74	1.67999999999999994	32	3.79999999999999982	45	1.98999999999999999	25	33	0.699999999999999956	0	2	0	2	0	0
44638	Juan Manuel Puig	1989-04-23	69	145	American Kickboxing Academy	Featherweight	Mexico	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
44957	Jason Knight	1992-07-14	71	145	\N	Featherweight	United States	71	3.56999999999999984	35	2.62999999999999989	51	1.92999999999999994	36	44	2.5	0	1	0	1	0	0
45430	Caros Fodor	1984-01-07	69	155	AMC Pankration	Lightweight	United States	76	2.75999999999999979	54	2.83000000000000007	54	2.10000000000000009	25	50	0	0	1	0	1	0	0
45607	Tateki Matsuda	1986-02-27	67	125	Team Sityodtong	Flyweight	United States	65	3.20000000000000018	34	3.43000000000000016	69	0	0	16	0	0	2	0	2	0	0
45721	Humberto Brown Morrison	1984-11-03	69	145	Alley Cat Fight Team	Featherweight	Panama	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
46033	Hayder Hassan	1982-10-20	70	170	American Top Team	Welterweight	United States	70	2.10999999999999988	46	3.16000000000000014	48	0	0	25	0	0	2	0	2	0	0
46484	Manuel Rodriguez	1985-04-25	69	170	TP Fight Team	Middleweight	El Salvador	68	0.810000000000000053	33	3.22999999999999998	38	9.08999999999999986	75	0	0	0	1	0	1	0	0
46759	Antonio dos Santos Jr.	1988-07-21	70	185	Nordeste Jiu-Jitsu	Middleweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
47069	Yuri Villefort	1991-03-23	71	170	Blackzilians	Lightweight	United States	73	3.18000000000000016	43	5.41999999999999993	55	2	35	40	0.299999999999999989	0	2	0	2	0	0
47845	Dominique Steele	1988-01-25	70	170	Team Vision	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
47991	Collin Hart	1989-10-12	74	185	Nor-Cal Fighting Alliance	Middleweight	United States	76	6.33000000000000007	44	7.53000000000000025	51	2	16	50	0	0	1	0	1	0	0
48631	Vinicius Kappke de Queiroz	1983-08-29	79	237	Team Nogueira	Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
6727	K.J. Noons	1982-12-07	71	168	The Arena	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	3	0	5	40	50
49092	Steve Montgomery	1990-12-19	76	185	American Top Team	Welterweight	United States	75	4.84999999999999964	39	4.12000000000000011	47	0	0	64	0	0	2	0	2	0	0
50367	Alex Soto	1984-02-15	67	135	KHK MMA Team	Bantamweight	United States	71	2.95000000000000018	25	5.01999999999999957	59	2.81999999999999984	30	0	0	0	2	0	2	0	0
50928	Mike King	1983-08-04	75	185	Buckeye MMA	Middleweight	United States	75	4.44000000000000039	58	1.29000000000000004	72	1.75	25	40	3.5	0	1	0	1	0	0
51228	Ryan Couture	1982-08-27	70	155	Xtreme Couture	Lightweight	United States	75	3.54000000000000004	45	2.87000000000000011	54	1.55000000000000004	29	46	1.30000000000000004	0	2	0	2	0	0
53506	Jessica Rakoczy	1977-04-14	67	115	\N	Strawweight	Canada	68	2.5	44	3.54999999999999982	64	0.75	20	0	0.800000000000000044	0	2	0	2	0	0
53712	Anthony Christodoulou	1987-07-30	69	155	Renzo Gracie Fight Academy	Lightweight	Greece	72	2.18999999999999995	26	5.90000000000000036	45	0	0	40	0	0	2	0	2	0	0
54054	Pat Schilling	1988-08-28	68	145	Ambition Training Academy	Featherweight	United States	69	1.87000000000000011	26	8.24000000000000021	52	0	0	0	0	0	2	0	2	0	0
54543	Oli Thompson	1980-01-02	73	242	ZT Fight Skool	Light Heavyweight	England	75	2.58999999999999986	48	5.45000000000000018	47	0	0	66	0.800000000000000044	0	2	0	2	0	0
55298	Aaron Phillips	1989-08-05	69	135	Gladiators Academy	Bantamweight	United States	70	1.87000000000000011	59	3.33000000000000007	40	0	0	35	0.5	0	2	0	2	0	0
55503	Joey Gambino	1988-10-26	67	145	Team Raging Warriors	Featherweight	United States	\N	2.4700000000000002	35	2.5299999999999998	51	0	0	42	0.800000000000000044	0	2	0	2	0	0
55705	Marcin Bandel	1989-10-10	70	155	Drysdale Jiu-Jitsu	Lightweight	Poland	70	0.790000000000000036	50	5.25999999999999979	23	0	0	0	0	0	2	0	2	0	0
56579	Jesse Ronson	1985-12-24	69	155	Adrenaline Training Center	Lightweight	Canada	70	3.08999999999999986	46	2.72999999999999998	59	0.67000000000000004	40	61	0.299999999999999989	0	3	0	3	0	0
56615	Paul Redmond	1986-10-20	70	145	Team Ryano MMA	Featherweight	Ireland	70	0.719999999999999973	34	2.99000000000000021	41	0	0	50	0	0	1	0	1	0	0
57214	Jake Lindsey	1986-06-21	71	155	Combative Sports Center	Lightweight	United States	71	3.43999999999999995	52	4.00999999999999979	46	0.650000000000000022	33	50	0	0	3	0	3	0	0
8121	Luiz Jorge Dutra Jr.	1982-05-06	71	170	Renovacao Fight Team	Welterweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
57322	Andreas Stahl	1988-05-20	71	170	Renyi Fight Camp	Welterweight	Sweden	73	2.83000000000000007	37	4.74000000000000021	57	1.55000000000000004	66	80	0	0	2	0	2	0	0
59769	Brian Houston	1987-04-26	73	185	Disorderly Conduct	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
60940	James Toney	1968-08-24	70	220	M-1 Global Training Center	Heavyweight	United States	\N	0	0	2.41000000000000014	27	0	0	0	0	0	1	0	1	0	0
61422	Andy Enz	1991-08-15	75	185	Gracie Barra Alaska	Middleweight	United States	78	3.50999999999999979	23	5.32000000000000028	57	0	0	58	0	0	3	0	3	0	0
61682	Sean Soriano	1989-10-06	69	145	Blackzilians	Featherweight	United States	70	3.14999999999999991	61	2.31000000000000005	52	1.27000000000000002	42	55	0	0	3	0	3	0	0
63272	Mike Jackson	1985-03-22	74	170	4oz. Fight Club	Welterweight	United States	\N	4	50	2.66999999999999993	50	0	0	0	0	0	1	0	1	0	0
63414	Yusuke Kasuya	1989-11-16	67	155	Akimoto Dojo Jungle Junction	Lightweight	Japan	67	2.16999999999999993	44	4.33999999999999986	48	1.3600000000000001	33	0	0	0	1	0	1	0	0
63422	Albert Cheng	1985-02-07	71	170	Xtreme Couture Toronto	Lightweight	Canada	\N	1	41	2.60000000000000009	71	0	0	0	0	0	1	0	1	0	0
63825	Elizeu Zaleski dos Santos	1986-12-11	71	170	CM System	Welterweight	Brazil	73	3.79000000000000004	41	2.35000000000000009	66	0.349999999999999978	16	39	1.10000000000000009	0	1	0	1	0	0
63897	Joseph Sandoval	1986-05-11	66	135	Bighead MMA	Bantamweight	United States	\N	1.82000000000000006	42	12.1199999999999992	60	0	0	0	0	0	2	0	2	0	0
64716	Yoislandy Izquierdo	1984-01-09	70	155	Young Tigers	Lightweight	Cuba	\N	2.93000000000000016	52	1.39999999999999991	26	0	0	50	0	0	2	0	2	0	0
64754	Matt Van Buren	1986-06-12	77	205	American Top Team	Light Heavyweight	United States	76	7.73000000000000043	45	6.82000000000000028	49	0	0	50	0	0	2	0	2	0	0
64975	Joey Gomez	1986-07-21	68	135	Team Triumph	Bantamweight	United States	73	2.43999999999999995	28	4.45999999999999996	55	0.619999999999999996	100	50	0	0	1	0	1	0	0
65128	Gilbert Smith	1981-10-19	69	185	Team Victory	Welterweight	United States	75	1.09000000000000008	41	2.72999999999999998	35	3.50999999999999979	60	0	1.19999999999999996	0	1	0	1	0	0
68751	Kurt Holobaugh	1986-09-08	71	145	Gracie United	Featherweight	United States	70	2.29999999999999982	42	2.39999999999999991	56	0.5	50	60	1.5	0	1	0	1	0	0
68957	Jocelyn Jones-Lybarger	1985-10-04	67	115	MMA Lab	Strawweight	United States	64	2.95999999999999996	31	4.83000000000000007	56	0.340000000000000024	25	81	0	0	1	0	1	0	0
68959	Emily Kagan	1981-07-14	63	115	Jackson-Wink MMA	Strawweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
68971	Dominic Waters	1989-04-11	73	170	Jackson-Wink MMA	Welterweight	United States	79	0.479999999999999982	23	2.5299999999999998	39	4.07000000000000028	52	28	0	0	2	0	2	0	0
69087	Will Chope	1990-09-08	76	145	Juggernaut Fight Club	Lightweight	United States	76	4.42999999999999972	27	9.92999999999999972	46	0	0	0	0	0	1	0	1	0	0
69632	Nina Ansaroff	1985-12-03	65	115	American Top Team	Strawweight	United States	64	3.72999999999999998	50	2.60999999999999988	53	0.689999999999999947	50	73	1.39999999999999991	0	2	0	2	0	0
69956	Adam Cella	1985-06-26	74	170	Finney's HIT Squad	Welterweight	United States	78	1.90999999999999992	42	2.60999999999999988	51	3.91999999999999993	75	50	1.30000000000000004	0	1	0	1	0	0
70452	C.J. Keith	1986-08-09	72	155	Pro Buhawe	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
70795	Tina Lahdemaki	1988-05-28	62	115	RNC Sport Club	Strawweight	Finland	62	1.92999999999999994	20	4.66999999999999993	57	0	0	16	0	0	1	0	1	0	0
71175	Azamat Gashimov	1990-04-07	69	125	Jackson-Wink MMA	Bantamweight	Russia	66	1.23999999999999999	21	4.75	53	1.68999999999999995	25	0	0	0	2	0	2	0	0
72046	Walt Harris	1983-06-10	76	250	American Top Team	Heavyweight	United States	77	2.62000000000000011	36	3.08000000000000007	62	0	0	80	0.299999999999999989	0	3	0	3	0	0
20447	Ronys Torres	1986-08-13	68	155	Nova Uniao	Lightweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
72084	Nolan Ticman	1988-05-17	66	125	Kings MMA	Flyweight	United States	69	2.56999999999999984	47	2.5299999999999998	67	0	0	60	0	0	2	0	2	0	0
72825	Richardson Moreira	1984-03-31	74	185	Team Nogueira	Light Heavyweight	Brazil	72	1.16999999999999993	28	1.83000000000000007	67	0	0	100	0	0	2	0	2	0	0
73700	Artem Lobov	1986-11-08	69	145	SBG Ireland	Featherweight	Ireland	65	2.66999999999999993	40	3.18000000000000016	58	0.25	50	73	0	0	2	0	2	0	0
73825	Dustin Jacoby	1988-04-04	76	185	Finney's HIT Squad	Middleweight	United States	78	1.5	25	2.64999999999999991	61	0	0	28	0	0	2	0	2	0	0
75537	Josh Copeland	1982-10-20	73	265	Grudge Training Center	Heavyweight	United States	75	1.03000000000000003	31	3.00999999999999979	55	0	0	57	0	0	2	0	2	0	0
75842	Ruan Potts	1978-02-23	74	247	Mark Robinson MMA	Heavyweight	South Africa	75	0.849999999999999978	37	5.91999999999999993	22	0.75	16	33	2.29999999999999982	0	3	0	3	0	0
81136	Rodrigo Goiana de Lima	1991-03-03	69	155	Coalizao Fight Team	Lightweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
81585	Roger Zapata	1986-05-09	71	170	Bruno Tostes BJJ	Welterweight	United States	74	2.60000000000000009	51	2.12999999999999989	36	0	0	81	1.39999999999999991	0	1	0	1	0	0
81634	Jonavin Webb	1989-04-28	69	170	Renzo Gracie Philly	Welterweight	United States	71	1.46999999999999997	30	2.27000000000000002	64	2.5	31	40	1	0	2	0	2	0	0
83243	Daniel Jolly	1984-09-03	73	205	Rubicon Fightsport	Light Heavyweight	United States	75	1.07000000000000006	35	4.80999999999999961	15	0	0	25	0	0	1	0	1	0	0
83505	Jumabieke Tuerxun	1986-04-17	66	135	Xian Sports University	Bantamweight	China	67	1.60000000000000009	28	3.08000000000000007	59	0.469999999999999973	11	66	0.900000000000000022	0	3	0	3	0	0
83949	Jack May	1981-04-14	80	255	CSW	Heavyweight	United States	79	1.52000000000000002	38	3.29000000000000004	33	0.910000000000000031	33	20	0	0	2	0	2	0	0
84278	Lewis Gonzalez	1987-09-19	70	170	MMAGOLD Fight Team	Middleweight	United States	73	1.39999999999999991	37	1.87000000000000011	41	2	33	62	0	0	1	0	1	0	0
238	Joe Slick	1977-10-17	72	199	\N	Light Heavyweight	USA	\N	0	0	0	0	0	0	0	0	0	1	0	1	0	0
11950	Ron Stallings	1983-02-25	72	185	Team Lloyd Irvin	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	0
84645	Cain Carrizosa	1986-07-22	68	155	Elite Team	Lightweight	United States	74	2.7200000000000002	42	5.79999999999999982	51	0	0	14	0	0	2	0	2	0	0
84661	Jimmy Quinlan	1986-05-25	72	185	Mass BJJ	Middleweight	United States	72	2.08000000000000007	70	5.94000000000000039	16	4.45999999999999996	25	0	0	0	1	0	1	0	0
84854	Rocky Lee	1987-04-08	69	145	AKA Thailand	Featherweight	Taiwan	68	2.4700000000000002	51	5.33000000000000007	44	1	10	33	0	0	1	0	1	0	0
85623	Marcin Wrzosek	1987-10-14	69	155	Gracie Barra Lodz	Featherweight	Poland	\N	3.4700000000000002	43	4.07000000000000028	43	3	25	33	0	0	1	0	1	0	0
86246	Kyle Bochniak	1987-02-05	69	145	Broadway Jiu-Jitsu	Featherweight	United States	70	3.10000000000000009	34	4.90000000000000036	62	1	25	88	0	0	1	0	1	0	0
86294	Anton Zafir	1987-05-10	71	170	Whitsunday Martial Arts	Welterweight	Australia	72	2.99000000000000021	64	2.31000000000000005	52	6.11000000000000032	60	0	0	0	1	0	1	0	0
86920	Damian Stasiak	1990-02-20	68	135	United Gym	Featherweight	Poland	70	0.859999999999999987	40	1.76000000000000001	52	3.47999999999999998	53	0	1.5	0	1	0	1	0	0
87296	Mike Rhodes	1989-12-04	73	170	Roufusport	Welterweight	United States	74	3.20000000000000018	39	4.12999999999999989	64	0.959999999999999964	33	75	0.5	0	3	0	3	0	0
89761	Sultan Aliev	1984-09-17	72	170	Champion	Middleweight	Russia	74	1.30000000000000004	57	2.0299999999999998	58	1.68999999999999995	66	100	0	0	1	0	1	0	0
91121	Cortney Casey	1987-05-05	62	115	Freak Animal Fitness	Strawweight	United States	67	3.7799999999999998	43	3.91000000000000014	51	0.57999999999999996	66	23	0.299999999999999989	0	2	0	2	0	0
91565	Peggy Morgan	1979-12-06	73	135	Triumph MMA	Bantamweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
92415	Teemu Packalen	1987-05-22	73	155	Finnfighters Gym	Lightweight	Finland	72	2.66000000000000014	56	2.79000000000000004	50	2.91999999999999993	27	100	1.89999999999999991	0	1	0	1	0	0
93683	Justin Jones	1987-09-06	71	205	Victory MMA	Heavyweight	United States	78	1.69999999999999996	36	3.16999999999999993	45	1	15	46	0.5	0	2	0	2	0	0
93863	Dave Galera	1978-01-12	71	135	Lakay MMA	Bantamweight	Philippines	\N	1.66999999999999993	69	0.530000000000000027	33	0	0	14	2	0	1	0	1	0	0
98419	Ericka Almeida	1989-03-05	66	115	Team Nogueira	Strawweight	Brazil	68	1.07000000000000006	39	3.33000000000000007	43	0.5	33	37	0	0	2	0	2	0	0
100921	Vernon Ramos	1992-06-03	69	170	507 BJJ	Welterweight	Panama	72	4	25	8	55	0	0	0	0	0	1	0	1	0	0
101117	Chris Heatherly	1987-11-24	68	155	Fit or Fight	Welterweight	United States	68	1.08000000000000007	45	2.66999999999999993	52	3.39000000000000012	50	100	0.699999999999999956	0	2	0	2	0	0
103497	Roldan Sangcha-an	1990-12-04	64	125	Lakay MMA	Flyweight	Philippines	65	2.70999999999999996	46	2.14999999999999991	51	1.93999999999999995	60	68	0	0	2	0	2	0	0
108499	Guilherme Vasconcelos	1986-03-23	72	185	BH Rhinos	Welterweight	Brazil	74	3.27000000000000002	29	4.40000000000000036	70	0	0	0	0	0	1	0	1	0	0
1303	Steve Berger	1973-05-20	70	170	Berger MMA	Welterweight	United States	\N	1	27	3.25999999999999979	36	0.839999999999999969	40	16	1.69999999999999996	0	2	0	2	0	0
1354	Norifumi Yamamoto	1977-03-15	64	135	Krazy Bee	Bantamweight	Japan	66	2.08999999999999986	45	2.00999999999999979	57	0.409999999999999976	22	45	0	0	3	0	3	0	0
122349	Izabela Badurek	1991-07-11	64	115	WCA Fight Team	Strawweight	Poland	\N	3.74000000000000021	71	4.90000000000000036	32	1.75	12	100	0	0	1	0	1	0	0
123973	Bentley Syler	1982-12-22	64	125	American Top Team	Flyweight	Bolivia	68	1.30000000000000004	18	1.72999999999999998	79	0	0	75	0	0	1	0	1	0	0
138127	Joe Merritt	1984-03-07	72	170	Millennia MMA	Welterweight	United States	73	1.53000000000000003	58	0.729999999999999982	66	0	0	68	0	0	1	0	1	0	0
144115	Larissa Pacheco	1994-09-07	68	135	JB Jiu-Jitsu Team	Bantamweight	Brazil	69	1.20999999999999996	19	4.13999999999999968	55	0	0	0	0	0	2	0	2	0	0
146377	Chris de la Rocha	1979-05-15	75	250	\N	Heavyweight	United States	80	4.07000000000000028	36	7.44000000000000039	46	0	0	0	0	0	1	0	1	0	0
160663	Augusto Mendes	1983-03-03	66	135	Soul Fighters BJJ	Bantamweight	Brazil	65	2.75	36	2.64000000000000012	65	3.10999999999999988	44	100	0	0	1	0	1	0	0
172645	Alex Torres	1988-05-29	70	145	Octagon MMA Colombia	Featherweight	Colombia	70	2.4700000000000002	37	2.72999999999999998	69	2	22	50	0	0	1	0	1	0	0
172941	Horacio Gutierrez	1990-09-15	70	145	Chicago Fight Team	Featherweight	Mexico	69	0.859999999999999987	26	2.91000000000000014	46	0	0	50	0	0	1	0	1	0	0
296	Vernon White	1971-12-03	72	205	Lion's Den	Light Heavyweight	United States	\N	2.10999999999999988	38	2.20000000000000018	54	0.880000000000000004	28	44	0	0	1	1	2	0	0
511	Javier Vazquez	1977-07-16	67	145	Gracie Jiu-Jitsu	Featherweight	United States	69	2.43000000000000016	36	1.98999999999999999	72	2.56000000000000005	52	57	1.5	1	0	0	1	100	0
15962	Ryan Hall	1985-02-22	70	145	50	Featherweight	United States	71	2.29999999999999982	43	0.469999999999999973	73	0.5	20	0	0.5	1	0	0	1	100	0
43885	Milana Dudieva	1989-04-08	65	136	Peresvet FT	Bantamweight	Russia	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	0
25830	Claudio Henrique da Silva	1982-09-06	71	185	London Shootfighters	Middleweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	0	0	2	100	0
26808	Shamil Abdurakhimov	1981-09-02	75	235	Peresvet FT	Heavyweight	Russia	76	2.47999999999999998	45	2.5	58	1.39999999999999991	22	77	0.299999999999999989	1	0	0	1	100	0
184	LaVerne Clark	1973-12-02	71	170	Miletich Martial Arts	Middleweight	United States	\N	0	0	0	0	0	0	0	0	1	1	0	2	50	0
198	Mike Van Arsdale	1965-06-20	74	205	\N	Light Heavyweight	United States	\N	1.52000000000000002	41	1.90999999999999992	41	1.06000000000000005	14	37	0	1	2	0	3	33	0
8753	Phil Harris	1983-04-09	65	125	Gym01	Flyweight	England	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	3	0	4	25	0
217	Ron Waterman	1965-11-23	74	280	Colorado Stars	Heavyweight	United States	\N	0.839999999999999969	50	1.37000000000000011	42	4.19000000000000039	69	50	2.79999999999999982	1	1	1	3	33	0
30304	Maiquel Falcao	1981-03-08	71	185	Independent	Middleweight	Brazil	\N	1.66999999999999993	55	0.530000000000000027	86	1	100	71	3	1	0	0	1	100	0
339	Marvin Eastman	1971-06-08	69	185	J-Sect MMA	N/A	United States	73	2.20999999999999996	35	3.91999999999999993	42	1.37999999999999989	33	81	0	1	4	0	5	20	0
502	Jake Shields	1979-01-09	72	170	Cesar Gracie Fight Team	Welterweight	United States	72	2.45000000000000018	36	1.80000000000000004	56	2.83000000000000007	29	35	1.19999999999999996	4	3	0	7	57	0
573	Sean Pierson	1976-03-10	73	170	Tap Star	Welterweight	Canada	76	3.83999999999999986	39	3.72999999999999998	64	0.390000000000000013	18	66	0.400000000000000022	4	2	0	6	67	0
615	Dave Strasser	1969-07-13	70	170	Freestyle Academy	Welterweight	United States	\N	3.04000000000000004	45	1.87999999999999989	59	0.719999999999999973	33	33	0	1	1	0	2	50	0
930	Justin McCully	1976-02-18	74	225	Team Punishment	Heavyweight	United States	73	1.58000000000000007	37	2.02000000000000002	46	1.28000000000000003	44	43	0	2	2	0	4	50	0
935	Denis Kang	1977-09-17	71	185	American Top Team	Middleweight	Canada	77	2.27000000000000002	35	1.64999999999999991	67	2.50999999999999979	65	38	1.19999999999999996	1	2	0	3	33	0
1567	Aaron Riley	1980-12-09	69	155	Jackson-Wink MMA	Lightweight	United States	69	3.45000000000000018	34	3.7799999999999998	61	1.17999999999999994	34	60	0.100000000000000006	3	6	0	9	33	0
36924	Chris Gruetzemacher	1986-06-16	67	155	MMA Lab	Featherweight	United States	68	5.95000000000000018	58	5.21999999999999975	52	0	0	69	0	1	0	0	1	100	0
1693	Yves Jabouin	1979-05-30	66	135	Tristar Gym	Bantamweight	Canada	68	3.06000000000000005	41	2.93000000000000016	62	1.93999999999999995	60	82	0.100000000000000006	5	5	0	10	50	0
1831	Ryo Chonan	1976-10-08	69	170	Tribe Tokyo MMA	Welterweight	Japan	70	2.56999999999999984	43	2.25	60	0.609999999999999987	41	39	0.299999999999999989	1	3	0	4	25	0
2294	Benji Radach	1979-04-05	70	185	Reign MMA	Middleweight	United States	\N	2.62000000000000011	49	2.31000000000000005	51	1.06000000000000005	41	71	0.400000000000000022	1	1	0	2	50	0
2575	Kuniyoshi Hironaka	1976-06-17	70	168	Master Japan	Lightweight	Japan	70	1.97999999999999998	40	3.00999999999999979	54	1.90999999999999992	30	25	0.599999999999999978	1	3	0	4	25	0
2825	Eddie Yagin	1979-03-23	66	145	Kong Submission Academy	Featherweight	United States	\N	3.12999999999999989	30	5.76999999999999957	42	0	0	62	1	1	1	0	2	50	0
3006	Miguel Torres	1981-01-18	69	135	Tristar Gym	Featherweight	United States	76	3.97999999999999998	43	1.8600000000000001	74	0	0	17	1.60000000000000009	2	2	0	4	50	0
8269	Crafton Wallace	1972-04-15	72	184	Inferno MMA	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
37681	Jose Maria Tome	1982-01-04	65	125	Team Nogueira	Flyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
3530	Cristiano Marcello	1977-12-03	70	155	CM System	Lightweight	Brazil	72	2.56000000000000005	33	3.60999999999999988	58	0.440000000000000002	11	20	0.900000000000000022	1	3	0	4	25	0
40285	Marco Beltran	1986-05-18	68	135	Top Brother Mexico	Welterweight	Mexico	69	2.12000000000000011	40	1.76000000000000001	60	0.760000000000000009	40	37	0.400000000000000022	2	0	0	2	100	0
40308	Erick Montano	1985-11-19	72	170	Bonebreakers Team	Welterweight	Mexico	73	2.79000000000000004	44	2.06000000000000005	64	2.29000000000000004	36	66	0	1	0	0	1	100	0
4015	Michael Guymon	1974-09-17	72	155	Joker's MMA	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	3	0	4	25	0
4025	Jorge Gurgel	1977-01-25	69	155	Team Jorge Gurgel	Lightweight	United States	69	3.37000000000000011	32	3.62000000000000011	62	0.810000000000000053	23	60	0.5	3	4	0	7	43	0
4095	Renato Verissimo	1973-08-03	73	170	BJ Penn's MMA	Welterweight	United States	\N	0.92000000000000004	48	1.87000000000000011	47	1.45999999999999996	30	50	2.5	1	2	0	3	33	0
4870	Jeff Hougland	1978-08-02	69	135	Combat Sport and Fitness	Bantamweight	United States	68	1.8600000000000001	48	3.45999999999999996	47	0.859999999999999987	18	0	1.10000000000000009	1	2	0	3	33	0
9	John Marsh	1970-09-15	72	265	Team Neutral Grounds	Heavyweight	United States	\N	0.82999999999999996	42	2.22999999999999998	40	0.429999999999999993	100	54	0.400000000000000022	0	1	0	1	0	0
19	Royce Gracie	1966-12-12	72	175	Gracie Humaita	Middleweight	Brazil	\N	0.880000000000000004	41	1.12999999999999989	37	0	0	66	0.800000000000000044	0	1	0	1	0	0
52	Dan Severn	1958-06-08	74	250	The Beast Academy	Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	1	0	1	0	0
64	Chris Brennan	1971-10-12	68	170	Next Generation	Lightweight	United States	\N	0.599999999999999978	40	0.969999999999999973	50	0	0	25	2.10000000000000009	0	1	0	1	0	0
67	Kit Cope	1977-03-17	72	170	Twisted Genetiks	Welterweight	United States	\N	1.17999999999999994	52	2.12000000000000011	35	0	0	50	3.5	0	1	0	1	0	0
81	David Dodd	1973-09-22	74	200	Arizona Combat Sports	Light Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	2	0	2	0	0
85	Romie Aram	1977-12-02	70	170	Millennia MMA	Welterweight	United States	\N	1.80000000000000004	35	2.83000000000000007	50	2.5	62	83	0	0	1	0	1	0	0
223	Tim Lajcik	1965-06-21	73	225	Gladiators Training Academy	Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	2	1	3	0	0
88	Tiki Ghosn	1977-02-09	70	170	\N	Welterweight	United States	\N	2.7799999999999998	46	2.93999999999999995	58	0.409999999999999976	50	61	0	0	3	0	3	0	0
120	Marco Ruas	1961-01-23	73	210	Ruas Vale Tudo	Heavyweight	Brazil	\N	0	0	0	0	0	0	0	0	0	1	0	1	0	0
142	Roberto Traven	1968-09-16	75	227	Alliance Team	Heavyweight	Brazil	\N	0.92000000000000004	50	2.77000000000000002	57	0	0	0	0	0	1	0	1	0	0
157	Tra Telligman	1965-02-07	74	233	Lion's Den	Heavyweight	United States	\N	1.83000000000000007	35	3.02000000000000002	56	0.869999999999999996	100	80	0	0	2	0	2	0	0
182	Yoji Anjo	1970-12-31	71	198	Team Kingdom	Light Heavyweight	Japan	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
201	Pete Williams	1975-07-10	75	235	Lion's Den	Heavyweight	USA	\N	0.609999999999999987	62	2.77000000000000002	40	1.84000000000000008	40	16	0.900000000000000022	0	3	0	3	0	0
226	Daiju Takase	1978-04-20	72	170	IamI	Middleweight	Japan	\N	0.489999999999999991	30	1.6399999999999999	47	0.839999999999999969	17	21	1.19999999999999996	0	2	0	2	0	0
236	Kenichi Yamamoto	1976-07-11	71	170	Power of Dream	Middleweight	Japan	\N	0.299999999999999989	46	1.92999999999999994	38	0	0	10	0.299999999999999989	0	1	0	1	0	0
5432	Ivan Jorge	1980-11-07	70	155	Team Tavares	Lightweight	Brazil	73	3.41000000000000014	49	2.91000000000000014	59	1.56000000000000005	16	75	0.599999999999999978	2	2	0	4	50	0
5466	Hatsu Hioki	1983-07-18	71	145	Alive	Featherweight	Japan	70	2.41999999999999993	42	2.12000000000000011	65	2.54999999999999982	56	54	0.599999999999999978	3	5	0	8	38	0
5615	Kajan Johnson	1984-04-21	71	155	Tristar Gym	Lightweight	Canada	75	2.52000000000000002	43	1.79000000000000004	64	2.5	35	81	0.400000000000000022	2	1	0	3	67	0
5639	Tom Niinimaki	1982-07-25	69	145	Finnfighters Gym	Featherweight	Finland	69	1.90999999999999992	54	2.31000000000000005	58	2.9700000000000002	46	33	0.5	1	2	0	3	33	0
33531	Jared Papazian	1988-02-01	68	135	Team Hayastan	Bantamweight	United States	67	3.33000000000000007	39	3.81000000000000005	44	0	0	50	0	0	3	0	3	0	0
45384	Valentina Shevchenko	1988-03-07	65	135	Tiger Muay Thai	Bantamweight	Peru	67	2.47999999999999998	51	2.2799999999999998	60	2.33000000000000007	52	73	0.200000000000000011	1	0	0	1	100	0
5778	Nam Phan	1983-03-13	66	135	Nam Phan MMA Academy	Featherweight	United States	70	4.51999999999999957	37	6.54999999999999982	59	0.179999999999999993	18	60	0.200000000000000011	2	6	0	8	25	0
6767	Carlo Prater	1981-06-25	72	155	Prater MMA	Lightweight	Brazil	72	2.0299999999999998	47	4.07000000000000028	35	0.429999999999999993	9	57	1.69999999999999996	1	2	0	3	33	0
7018	John Gunderson	1979-01-05	69	155	Syndicate MMA	Featherweight	United States	69	1.04000000000000004	27	1.70999999999999996	58	1.66999999999999993	33	11	2	1	2	0	3	33	0
7124	Nick Thompson	1981-06-23	73	170	Minnesota Martial Arts Academy	Welterweight	United States	74	1.87000000000000011	42	1.80000000000000004	49	1.06000000000000005	100	35	2.60000000000000009	1	1	0	2	50	0
8180	Isaac Vallie-Flagg	1978-04-08	68	155	Jackson-Wink MMA	Welterweight	United States	68	5.55999999999999961	47	5.59999999999999964	45	0.200000000000000011	12	58	0	1	3	0	4	25	0
8396	Nate Mohr	1983-03-03	69	155	Team Curran	Lightweight	United States	72	3.79000000000000004	41	2.5	74	0.450000000000000011	50	71	0	1	3	0	4	25	0
40356	Masio Fullen	1987-10-06	70	145	Alliance MMA	Featherweight	Mexico	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	0
9265	Eddie Alvarez	1984-01-11	70	155	Blackzilians	Lightweight	United States	69	3.43000000000000016	42	3.2799999999999998	59	3.58000000000000007	38	92	0.5	2	1	0	3	67	0
9281	Chris Wilson	1977-06-07	73	170	CW Combat Sports	Lightweight	Brazil	75	2.31999999999999984	50	1.3600000000000001	55	1.31000000000000005	50	60	1.60000000000000009	1	3	0	4	25	0
10229	Riki Fukuda	1981-01-06	72	185	Grabaka	Middleweight	Japan	73	4.24000000000000021	43	3.70999999999999996	64	2.16999999999999993	43	70	0	1	3	0	4	25	0
10380	Junior Assuncao	1981-06-24	69	145	Ascension MMA	Featherweight	Brazil	72	3.31000000000000005	62	2.06000000000000005	44	2.43000000000000016	24	66	0.699999999999999956	1	3	0	4	25	0
10669	Chris Tuchscherer	1975-09-08	74	258	Academy of Combat Arts	Heavyweight	United States	76	1.35000000000000009	31	3.16999999999999993	47	1.18999999999999995	18	0	0.599999999999999978	1	3	0	4	25	0
11895	Yoshihiro Akiyama	1975-07-29	70	170	Jackson-Wink MMA	Welterweight	Japan	73	3.10000000000000009	41	3.62000000000000011	57	2.29000000000000004	67	92	1	2	5	0	7	29	0
10003	Joshua Burkman	1980-10-04	70	155	The Pit Elevated Fight Team	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	6	7	0	13	46	33
12212	Alvin Robinson	1982-07-16	69	155	Grudge Training Center	Featherweight	United States	68	1.57000000000000006	50	1.29000000000000004	51	1.23999999999999999	50	25	1.19999999999999996	1	3	0	4	25	0
12855	Carmelo Marrero	1981-01-26	74	205	American Top Team	Heavyweight	United States	73	0.839999999999999969	34	2.04000000000000004	54	3.20999999999999996	36	36	0.900000000000000022	1	3	0	4	25	0
13005	Michihiro Omigawa	1975-12-19	66	145	Neo Judo Academy	Featherweight	Japan	68	2.00999999999999979	39	3.06000000000000005	64	1.18999999999999995	36	49	1.5	1	6	0	7	14	0
13237	Henry Martinez	1983-08-07	67	155	Team Irish	Lightweight	United States	68	2.79000000000000004	25	4.00999999999999979	60	0	0	80	0	1	2	0	3	33	0
13767	Masanori Kanehara	1982-11-18	67	135	Alpha	Bantamweight	Japan	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	0
13793	Ian Loveland	1983-09-07	68	145	Sports Lab	Bantamweight	United States	\N	2.70999999999999996	40	2.35999999999999988	64	1	37	69	0.299999999999999989	1	2	0	3	33	0
14173	Joe Ellenberger	1985-03-28	68	155	Premier Combat Center	Lightweight	United States	72	1.62000000000000011	47	3.45000000000000018	48	3.16999999999999993	40	0	1.10000000000000009	1	1	0	2	50	0
11483	David Heath	1976-10-02	71	203	Absolute Combat Alliance	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	3	0	4	25	0
14539	Matt Grice	1981-07-29	68	145	R-1 MMA	Featherweight	United States	70	4.08999999999999986	53	2.68999999999999995	56	2.18999999999999995	37	82	0.5	2	5	0	7	29	0
14702	Francimar Barroso	1980-02-29	73	205	Nova Uniao	Light Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	1	0	4	75	0
14825	Hans Stringer	1987-07-06	74	205	Blackzilians	Light Heavyweight	Netherlands	73	3.16000000000000014	61	2.83999999999999986	41	2.39999999999999991	36	62	0	1	2	0	3	33	0
14865	Anton Kuivanen	1984-05-01	69	155	Primus Fight Team	Lightweight	Finland	72	2.27000000000000002	38	1.62999999999999989	67	1.19999999999999996	100	71	0.400000000000000022	1	2	0	3	33	0
26160	Nicholas Musoke	1986-04-05	72	170	Allstars Training Center	Welterweight	Sweden	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	2	0	5	60	33
63608	Nicolas Dalby	1984-11-16	71	170	Rumble Sports	Welterweight	Denmark	74	3.27000000000000002	38	3.33000000000000007	55	2	50	69	0	1	0	1	2	50	0
64894	Alex Morono	1990-08-16	71	170	Gracie Barra Woodlands	Welterweight	United States	72	4.98000000000000043	45	3.20000000000000018	63	0	0	75	0.400000000000000022	1	0	0	1	100	0
64989	Michael Graves	1991-01-08	70	170	American Top Team	Welterweight	United States	71	1.25	54	1.46999999999999997	58	4.79999999999999982	52	66	0.400000000000000022	1	0	0	1	100	0
67098	Justine Kish	1988-04-13	65	115	Black House	Strawweight	United States	64	4.09999999999999964	50	4.53000000000000025	53	2	36	50	0.5	1	0	0	1	100	0
67132	Heather Clark	1980-09-19	66	115	Syndicate MMA	Strawweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	0	0	1	100	0
15148	George Sullivan	1981-03-13	72	170	Pellegrino MMA	Welterweight	United States	73	3.81999999999999984	40	2.45000000000000018	58	1.3600000000000001	21	35	0.800000000000000044	2	2	0	4	50	0
15720	Luke Zachrich	1981-10-01	74	185	Ronin Training Center	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	0
16777	Danny Martinez	1985-06-14	65	125	Alliance MMA	Bantamweight	United States	67	2.72999999999999998	28	3.77000000000000002	63	3	45	36	0	1	3	0	4	25	0
69513	Guido Cannetti	1979-12-19	66	135	Muay Thai Goa	Bantamweight	Argentina	68	3.08000000000000007	54	2.06999999999999984	55	3.45000000000000018	55	93	0	1	0	0	1	100	0
71442	Julian Erosa	1989-07-31	72	145	Yakima MMA	Featherweight	United States	75	3.74000000000000021	50	3.83999999999999986	53	2.18999999999999995	75	75	1.5	1	0	0	1	100	0
16830	David Mitchell	1979-10-24	72	170	Team Alpha Male	Middleweight	United States	76	1.73999999999999999	32	2.06000000000000005	55	0.660000000000000031	50	29	2	1	4	0	5	20	0
17758	Jason Young	1986-06-28	69	145	American Top Team	Featherweight	England	73	2.9700000000000002	37	3.20000000000000018	50	1.97999999999999998	66	55	0	1	3	0	4	25	0
18744	Waylon Lowe	1980-10-31	67	145	\N	Welterweight	United States	\N	1.87999999999999989	55	2.39999999999999991	53	4.46999999999999975	55	83	0.299999999999999989	2	2	0	4	50	0
111777	Leonardo Morales	1992-12-22	71	135	Gladiadores MMA	N/A	Nicaragua	68	2.04999999999999982	47	2.04999999999999982	58	0	0	62	0	0	1	0	1	0	0
113687	Alexis Dufresne	1990-08-31	69	135	Team Quest	Featherweight	United States	68	1.33000000000000007	27	3.33000000000000007	60	1.5	50	50	0	0	2	0	2	0	0
19080	Greg Soto	1986-06-03	71	170	Pellegrino MMA	Welterweight	United States	73	3.20999999999999996	63	2.60999999999999988	52	1.48999999999999999	27	44	1	1	2	0	3	33	0
19789	Hacran Dias	1984-05-16	68	145	Nova Uniao	Featherweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	2	0	5	60	0
20277	Marcelo Guimaraes	1983-06-25	72	185	Caveira Team	Middleweight	Brazil	73	4.66999999999999993	51	4.41000000000000014	62	1.98999999999999999	13	0	0	2	1	0	3	67	0
74434	Ruslan Magomedov	1986-11-26	75	242	Fight Club Berkut	Heavyweight	Russia	78	4.01999999999999957	47	1.46999999999999997	66	0.330000000000000016	100	88	0	3	0	0	3	100	0
78384	Andrew Holbrook	1986-02-06	71	155	Indy Boxing & Grappling	Lightweight	United States	70	1.69999999999999996	54	1.8600000000000001	57	0.979999999999999982	40	10	2.5	1	0	0	1	100	0
20522	Zach Makovsky	1982-06-30	64	125	Philadelphia Fight Factory	Flyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	0	6	50	0
20744	Shamar Bailey	1982-09-22	68	155	Sparta Indy	Welterweight	United States	75	1.56000000000000005	20	3.91000000000000014	69	1.5	33	37	0	1	2	0	3	33	0
20812	Papy Abedi	1978-06-30	71	185	Allstars Training Center	Welterweight	Sweden	74	2.79999999999999982	55	3.14999999999999991	48	3.4700000000000002	57	50	1.30000000000000004	1	3	0	4	25	0
21131	Clay Harvison	1980-09-25	73	170	Madhouse Training	Welterweight	United States	74	3.29000000000000004	48	3.91000000000000014	58	0.660000000000000031	100	68	1.30000000000000004	1	2	0	3	33	0
21175	Ronny Markes	1988-04-21	73	185	Nova Uniao Kimura	Light Heavyweight	Brazil	75	2.16999999999999993	53	2.43000000000000016	45	3.12999999999999989	40	100	0.5	3	2	0	5	60	0
21246	Seo Hee Ham	1987-03-08	62	115	CMA Korea	Strawweight	South Korea	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	0
21247	Jessica Penne	1983-01-30	65	115	Alliance MMA	Strawweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	0
21446	Sirwan Kakai	1989-10-03	66	135	GBG MMA	Bantamweight	Sweden	66	3.56999999999999984	41	4.62999999999999989	62	4	42	83	0	1	1	0	2	50	0
21798	Richie Vaculik	1983-06-19	66	125	TP Fight Team	Flyweight	Australia	69	3.68999999999999995	46	4.08999999999999986	57	3	45	31	1	1	3	0	4	25	0
21851	Valerie Letourneau	1983-04-29	67	115	American Top Team	Strawweight	Canada	68	4.50999999999999979	37	5.40000000000000036	58	0.770000000000000018	45	66	0.299999999999999989	3	1	0	4	75	0
117453	Kelly Faszholz	1985-04-09	68	135	Nor-Cal Fighting Alliance	Featherweight	United States	67	4.00999999999999979	48	3.60999999999999988	52	0	0	44	0	0	1	0	1	0	0
120663	Dashon Johnson	1988-01-25	69	145	Team Xplode MMA	Lightweight	United States	70	1.01000000000000001	69	3.83000000000000007	35	0.849999999999999978	33	63	0.800000000000000044	0	2	0	2	0	0
265	Bobby Hoffman	1966-10-28	74	245	Universal Grappling Academy	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
269	Alex Stiebling	1976-12-26	74	195	Integrated Fighting Academy	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
271	Aaron Brink	1974-11-12	75	205	\N	Light Heavyweight	United States	\N	3.49000000000000021	42	5.70999999999999996	57	0	0	0	0	0	1	0	1	0	0
279	Curtis Stout	1973-11-07	73	185	\N	Middleweight	USA	\N	0.689999999999999947	67	3.20000000000000018	29	0	0	20	0	0	2	0	2	0	0
282	Phil Johns	1970-12-31	62	160	Silverbacks Vale Tudo	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
290	Renzo Gracie	1967-03-11	70	185	Renzo Gracie Jiu-Jitsu	Welterweight	Brazil	\N	1.70999999999999996	41	1.66999999999999993	55	1.12999999999999989	20	40	0.800000000000000044	0	1	0	1	0	0
323	Gilbert Yvel	1976-06-30	74	225	Throwdown	Light Heavyweight	Netherlands	77	1.05000000000000004	47	1.78000000000000003	50	0	0	25	1	0	3	0	3	0	0
340	Floyd Sword	1976-08-24	71	185	Team Four Corners	Middleweight	United States	\N	0.780000000000000027	42	1.57000000000000006	40	0	0	33	0	0	1	0	1	0	0
393	Naoyuki Kotani	1981-12-08	68	155	Rodeo Style	Lightweight	Japan	66	1.02000000000000002	31	2.89000000000000012	50	0.82999999999999996	16	46	0.800000000000000044	0	5	0	5	0	0
397	Kerry Schall	1971-08-09	74	265	Meat Truck Inc.	Heavyweight	United States	\N	0.939999999999999947	11	4.83999999999999986	63	0	0	0	0	0	1	0	1	0	0
432	Hayato Sakurai	1975-08-24	67	168	Mach Dojo	Welterweight	Japan	\N	2.45000000000000018	49	1.93999999999999995	59	1.87000000000000011	69	56	0.299999999999999989	0	1	0	1	0	0
437	Branden Lee Hinkle	1973-07-29	74	235	Hammer House	Heavyweight	United States	\N	2.60999999999999988	69	3.91000000000000014	26	4.33999999999999986	57	66	4.29999999999999982	0	2	0	2	0	0
503	Charlie Valencia	1974-10-31	63	135	Millennia MMA	Bantamweight	United States	64	2.58000000000000007	37	2.60999999999999988	77	1.39999999999999991	53	75	0.5	0	1	0	1	0	0
515	Antonio McKee	1970-03-12	68	155	Bodyshop Fitness Team	Lightweight	United States	\N	1.37000000000000011	45	0.739999999999999991	74	1.46999999999999997	33	57	0	0	1	0	1	0	0
21912	Tarec Saffiedine	1986-09-06	69	170	Evolve MMA	Welterweight	Belgium	70	4.04999999999999982	48	2.89999999999999991	63	0.479999999999999982	33	85	0.100000000000000006	2	1	0	3	67	0
81835	Diego Rivas	1991-11-11	68	145	Okinawa Dojo	Featherweight	Chile	69	0.979999999999999982	40	1.17999999999999994	60	2.20999999999999996	75	57	0	1	0	0	1	100	0
19599	Tim Hague	1983-09-05	76	264	Black Sheep MMA	Heavyweight	Canada	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	4	0	5	20	100
248	Tedd Williams	1969-12-19	72	275	Williams Combat Grappling	Heavyweight	United States	\N	0	0	0	0	0	0	0	0	0	1	0	1	0	0
249	Koji Oishi	1977-05-31	68	170	PANCRASEism	Featherweight	Japan	\N	1.42999999999999994	9	17.8599999999999994	43	0	0	0	0	0	2	0	2	0	0
251	Satoshi Honma	1968-05-19	72	205	\N	Light Heavyweight	Japan	\N	0	0	0	0	0	0	0	0	0	1	0	1	0	0
254	Adrian Serrano	1963-12-23	68	170	Adrian Serrano Combat Sports Gym	Middleweight	United States	\N	0	0	0	0	0	0	0	0	0	1	0	1	0	0
256	Joao Roque	1971-07-22	66	155	Nova Uniao	Featherweight	Angola	\N	0	0	0	0	0	0	0	0	0	1	0	1	0	0
524	Ronald Jhun	1970-09-21	71	170	808 Top Team	Welterweight	United States	\N	1.44999999999999996	57	3.00999999999999979	50	1.81000000000000005	100	100	0	0	1	0	1	0	0
551	Bobby Southworth	1969-12-16	73	205	American Kickboxing Academy	Heavyweight	United States	\N	0.989999999999999991	39	1.37999999999999989	65	3.97999999999999998	78	64	1.30000000000000004	0	1	0	1	0	0
770	Jeff Curran	1977-09-02	66	135	Team Curran	Bantamweight	United States	69	1.54000000000000004	31	2.47999999999999998	60	0.349999999999999978	12	35	1.19999999999999996	0	3	0	3	0	0
2347	Jason Reinhardt	1969-10-31	66	135	Wand Fight Team	Bantamweight	United States	\N	0.510000000000000009	40	4.07000000000000028	43	1.90999999999999992	12	50	0	0	3	0	3	0	0
2490	Joao Marcos Pierini	1971-12-11	73	170	Team JM	Welterweight	Mexico	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
2580	Antonio Banuelos	1979-09-23	63	135	The Pit	Flyweight	United States	63	2.70999999999999996	33	3.29999999999999982	58	1.37999999999999989	58	85	0.400000000000000022	0	1	0	1	0	0
2651	Jeremy Jackson	1982-09-19	70	170	Team Freedom	Welterweight	United States	\N	0.709999999999999964	27	2.0299999999999998	25	1.52000000000000002	40	58	0	0	2	0	2	0	0
2656	Chris Sanford	1968-03-12	71	185	Cesar Gracie Jiu-Jitsu	Middleweight	United States	\N	0.23000000000000001	50	3.2200000000000002	17	0	0	0	3.5	0	1	0	1	0	0
2682	Josh Rafferty	1981-01-06	72	170	Meat Truck Inc.	Welterweight	United States	\N	0.599999999999999978	33	3.60000000000000009	50	0	0	0	9	0	1	0	1	0	0
2713	Wes Sims	1979-10-12	81	258	Hammer House	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	3	0	3	0	0
2873	John Olav Einemo	1975-12-10	78	251	Golden Glory	Heavyweight	Norway	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
5542	Gabe Ruediger	1977-08-29	70	155	PKG	Lightweight	United States	\N	1.69999999999999996	31	5.16000000000000014	41	2.04000000000000004	11	28	0	0	3	0	3	0	0
5746	Dante Rivera	1974-12-08	72	185	Renzo Gracie Jiu-Jitsu	Welterweight	United States	\N	2.27000000000000002	53	4	25	0	0	16	0	0	1	0	1	0	0
5781	Jared Rollins	1977-01-26	69	170	Team Oyama	Middleweight	United States	\N	3.33000000000000007	57	2.41000000000000014	39	2.5	50	50	1.19999999999999996	0	1	0	1	0	0
5925	Jordan Radev	1976-09-28	67	185	Sportcentrum KOPS	Welterweight	Bulgaria	\N	1.35000000000000009	23	2.37999999999999989	66	0	0	80	0	0	2	0	2	0	0
6123	Brodie Farber	1980-07-05	73	170	Tiger Muay Thai	Light Heavyweight	United States	\N	1.68999999999999995	45	2.16999999999999993	53	0.900000000000000022	50	20	0.900000000000000022	0	2	0	2	0	0
6246	Pat Healy	1983-07-20	69	155	Sports Lab	Lightweight	United States	74	2.56999999999999984	36	2.56999999999999984	50	3.08000000000000007	37	55	1.10000000000000009	0	5	0	5	0	0
6254	Josh Haynes	1977-07-30	69	170	Syndicate MMA	Light Heavyweight	United States	\N	1.25	22	4.03000000000000025	52	0.939999999999999947	18	42	0	0	3	0	3	0	0
6606	Jeff Joslin	1975-04-30	72	170	Joslin MMA	Welterweight	Canada	\N	2.16999999999999993	39	1.57000000000000006	65	0.5	33	64	0.5	0	1	0	1	0	0
10432	Fredson Paixao	1979-05-13	70	145	Total Dojo	Featherweight	England	66	1.70999999999999996	54	2.31000000000000005	62	0.619999999999999996	11	10	2.20000000000000018	0	1	0	1	0	0
10502	Icho Larenas	1982-12-03	73	235	\N	Heavyweight	Canada	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
10515	Brandon Melendez	1983-03-24	70	155	Elite Performance	Welterweight	United States	\N	0.839999999999999969	26	0.560000000000000053	63	0	0	25	0	0	1	0	1	0	0
10543	Lucio Linhares	1973-12-08	74	185	Alliance Jiu-Jitsu	Middleweight	Brazil	\N	0.989999999999999991	22	3.4700000000000002	34	1.8600000000000001	50	50	1.89999999999999991	0	2	0	2	0	0
10581	Hector Ramirez	1976-03-28	72	205	\N	Light Heavyweight	United States	\N	2.27000000000000002	41	4.59999999999999964	56	2.29999999999999982	55	66	0.5	0	2	0	2	0	0
10584	Dan Evensen	1974-06-01	75	250	\N	N/A	Norway	\N	0.270000000000000018	10	3.85999999999999988	38	0	0	0	4	0	2	0	2	0	0
10754	Jason Gilliam	1972-10-31	72	169	Team Wolfpack	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
11408	Paul Georgieff	1982-09-22	74	170	\N	Lightweight	United States	\N	2.54999999999999982	40	2.33999999999999986	35	0	0	0	0	0	1	0	1	0	0
11453	Brad Imes	1977-03-16	79	260	Sacramaneto BJJ	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	3	0	3	0	0
14515	Sean Salmon	1977-11-09	70	205	\N	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
14862	Mark Holst	1985-08-14	72	155	OAMA	Welterweight	Canada	\N	0.25	19	1.66999999999999993	47	0.760000000000000009	100	60	2.29999999999999982	0	2	0	2	0	0
14891	Johnny Rees	1982-10-21	72	170	\N	Middleweight	United States	\N	3.29000000000000004	64	0.839999999999999969	47	1.14999999999999991	25	50	0	0	2	0	2	0	0
14971	Leonardo Guimaraes	1982-04-15	72	185	MMA Masters	Middleweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
14972	Ednaldo Oliveira	1984-02-19	77	205	Champion Team	Light Heavyweight	Brazil	79	1.03000000000000003	22	1.80000000000000004	52	0	0	42	0	0	2	0	2	0	0
15129	Aaron Rosa	1983-05-28	75	205	Rodrigo Pinheiro Brazilian Jiu-Jitsu	Light Heavyweight	United States	78	4.03000000000000025	47	4.41000000000000014	45	0.359999999999999987	33	85	0.400000000000000022	0	2	0	2	0	0
15156	Bobby Voelker	1979-04-26	72	170	Finney's MMA	Welterweight	United States	75	4.00999999999999979	35	5.83999999999999986	42	1.04000000000000004	50	66	0	0	4	0	4	0	0
19863	Jeremy Larsen	1986-03-11	70	145	Arizona Combat Sports	Featherweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	3	0	3	0	0
20224	Ryan Thomas	1984-11-05	72	170	American Top Team	Welterweight	United States	\N	2.00999999999999979	36	4.16999999999999993	30	5.58999999999999986	33	0	2.20000000000000018	0	2	0	2	0	0
20416	Josh Grispi	1988-10-14	71	145	South Shore Sport Fighting	Featherweight	United States	74	1.43999999999999995	41	3.70999999999999996	50	1.96999999999999997	36	16	2.20000000000000018	0	4	0	4	0	0
20906	Shane Howell	1983-11-28	68	125	R-1 MMA	Flyweight	United States	69	1.27000000000000002	32	2.54999999999999982	42	0	0	20	0	0	2	0	2	0	0
20967	Mike Stumpf	1986-08-01	70	170	Team Curran	Welterweight	United States	71	3.33999999999999986	43	8.84999999999999964	47	1.59000000000000008	25	33	0.800000000000000044	0	2	0	2	0	0
21401	Justin Wren	1987-04-27	75	265	Grudge Training Center	Heavyweight	United States	\N	3.43000000000000016	35	2.06999999999999984	64	0	0	100	0	0	1	0	1	0	0
21627	Steve Steinbeiss	1981-05-05	75	185	Power MMA Team	Middleweight	United States	75	3.91999999999999993	55	1.8600000000000001	49	0.440000000000000002	50	58	0	0	2	0	2	0	0
21720	Angela Magana	1983-08-02	64	115	Team Four Corners	Strawweight	United States	65	1.62999999999999989	26	5.16999999999999993	44	0.540000000000000036	33	0	0.5	0	2	0	2	0	0
25531	Cameron Dollar	1987-05-12	71	155	Colorado Fight Factory	Featherweight	United States	\N	5.04000000000000004	38	2.93999999999999995	61	0	0	0	0	0	1	0	1	0	0
25912	Marcus Jones	1973-08-15	78	265	\N	Heavyweight	United States	\N	1.93999999999999995	52	2.70999999999999996	58	8.71000000000000085	75	0	2.89999999999999991	0	1	0	1	0	0
26365	Jianping Yang	1986-01-07	68	140	Fight Emperor	Featherweight	China	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
26495	Bernardo Magalhaes	1981-08-04	69	155	TP Fight Team	Lightweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
26632	Jon Manley	1986-07-07	72	170	Team Link	Welterweight	United States	75	1.12999999999999989	20	4.33000000000000007	45	1	7	20	0	0	1	0	1	0	0
26649	Josh Ferguson	1988-05-13	65	125	All American MMA	Flyweight	United States	66	2.12999999999999989	43	4.17999999999999972	32	0.589999999999999969	11	54	0	0	2	0	2	0	0
26934	Ramiro Hernandez	1986-07-22	69	145	Miletich Fighting Systems	Featherweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
27077	Enrique Marin	1986-09-02	70	170	Crazy Seville	Welterweight	Spain	74	1.42999999999999994	33	3	50	2.5	38	60	1	0	1	0	1	0	0
28038	Elvis Mutapcic	1986-07-19	72	185	Roundkick Gym	Middleweight	United States	72	3.41000000000000014	40	4.26999999999999957	38	0	0	81	0	0	1	0	1	0	0
37421	Eddie Mendez	1984-01-16	69	185	House of Champions	Middleweight	United States	76	1.70999999999999996	33	3.43000000000000016	11	0	0	0	0	0	1	0	1	0	0
39261	Garett Whiteley	1980-12-13	72	155	IndyBoxing and Grappling	Lightweight	United States	72	3.7200000000000002	48	4.04000000000000004	46	0	0	27	0.900000000000000022	0	3	0	3	0	0
39265	Aaron Wilkinson	1987-01-31	70	155	Straight Blast Gym	Welterweight	England	\N	0	0	0	100	7.32000000000000028	100	0	0	0	1	0	1	0	0
39391	Iliarde Santos	1980-09-25	63	125	American Top Team	Flyweight	Brazil	66	3	30	6.09999999999999964	57	1.65999999999999992	23	83	0	0	3	0	3	0	0
39432	Kris McCray	1981-09-24	72	170	Iron Army	Welterweight	United States	76	2.68999999999999995	45	2.56999999999999984	54	2.87999999999999989	55	38	0	0	3	0	3	0	0
39485	Dan Spohn	1984-10-12	76	204	Cambridge Martial Arts	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	1	0	1	0	0
40205	Chris Spang	1987-11-26	74	170	J-Sect MMA	Welterweight	United States	\N	1.83000000000000007	36	1.94999999999999996	60	0	0	50	0.900000000000000022	0	1	0	1	0	0
40523	Danny Mitchell	1986-08-08	74	170	AVT Fight Team	Welterweight	England	74	2.5299999999999998	49	2.5299999999999998	52	0	0	100	3	0	1	0	1	0	0
41666	Daniel Downes	1986-04-08	72	155	Roufusport	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
55070	Edward Faaloloto	1985-07-15	69	170	Mori Dojo	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
78164	Ben Wall	1989-03-25	70	155	Gamebred Submission Fighting	Lightweight	Australia	73	1.46999999999999997	29	8.52999999999999936	29	0	0	100	0	0	2	0	2	0	0
78628	Jared Cannonier	1984-03-16	75	205	Gracie Barra Alaska	Heavyweight	United States	77	3.2799999999999998	60	2.62999999999999989	64	0	0	30	0	0	1	0	1	0	0
4481	Milton Vieira	1978-10-04	72	145	Rio Fighters	Featherweight	Brazil	72	1.12999999999999989	35	2.35999999999999988	48	2.66999999999999993	53	12	0.699999999999999956	0	1	1	2	0	0
6809	Jesse Bongfeldt	1980-08-28	72	185	Canadian Martial Arts Centre	Middleweight	Canada	\N	2.91000000000000014	62	1.01000000000000001	50	1.51000000000000001	33	33	0	0	1	1	2	0	0
23052	Roger Bowling	1982-12-05	68	155	Team Vision	Lightweight	United States	68	3.89999999999999991	47	3.85999999999999988	51	3.08999999999999986	43	27	0.900000000000000022	0	2	0	2	0	0
24790	Roman Salazar	1988-02-21	67	135	Fight Ready	Bantamweight	United States	67	1.94999999999999996	39	2.89000000000000012	57	1.77000000000000002	18	50	0	0	2	0	2	0	0
53134	Wagner Prado	1987-12-30	73	205	Retz Muay Thai	Light Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	0	2	0	2	0	0
113767	Damon Jackson	1988-08-08	71	145	Octagon MMA	Featherweight	United States	71	2.70999999999999996	35	3.89999999999999991	43	1.77000000000000002	20	60	0	0	1	1	2	0	0
80	Travis Fulton	1977-05-29	72	240	Team Peak Performance	Heavyweight	United States	\N	0	0	0	0	0	0	0	0	1	0	0	1	100	0
162	Kevin Randleman	1971-08-10	70	205	Tapout Training Center	Light Heavyweight	United States	\N	1.26000000000000001	54	1.12000000000000011	57	2	56	30	0.800000000000000044	2	2	0	4	50	0
260	Tyrone Roberts	1972-07-14	69	213	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	0	0	1	100	0
268	Mark Hughes	1973-10-13	68	205	Miletich Martial Arts	Middleweight	USA	\N	0.900000000000000022	47	0.400000000000000022	42	3	50	0	4.5	1	0	0	1	100	0
16704	John Hathaway	1987-07-01	74	170	London Shootfighters	Welterweight	England	\N	\N	\N	\N	\N	\N	\N	\N	\N	6	2	0	8	75	0
23403	Charlie Brenneman	1981-02-09	70	155	AMA Fight Club	Lightweight	United States	72	1.52000000000000002	56	1.55000000000000004	46	4.23000000000000043	42	72	0	4	7	0	11	36	0
23538	Marcus LeVesseur	1983-07-17	70	155	Minnesota Fight Factory	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	0
23811	Buddy Roberts	1982-10-17	74	185	Jackson-Wink MMA	Middleweight	United States	\N	2.16999999999999993	34	2.08000000000000007	70	0	0	76	0.699999999999999956	1	1	0	2	50	0
24121	Kevin Casey	1981-06-15	71	185	Black House	Middleweight	United States	77	2.27000000000000002	53	3.75999999999999979	46	0.790000000000000036	22	27	0.400000000000000022	1	2	0	3	33	0
101401	Karolina Kowalkiewicz	1985-10-15	63	115	Gracie Barra Lodz	Strawweight	Poland	65	4.55999999999999961	35	4.92999999999999972	54	0	0	87	0	1	0	0	1	100	0
106305	Yair Rodriguez	1992-10-06	71	145	Ragnarok MMA	Featherweight	Mexico	71	4.13999999999999968	43	2.0299999999999998	64	1.44999999999999996	40	61	1.30000000000000004	3	0	0	3	100	0
13	Heath Herring	1978-03-02	76	250	Las Vegas Combat Club	Heavyweight	United States	78	2.37000000000000011	50	1.77000000000000002	54	1.21999999999999997	50	32	0.699999999999999956	2	3	0	5	40	0
25412	Nathan Coy	1978-07-24	70	170	American Top Team	Welterweight	United States	69	3.7200000000000002	51	2.02000000000000002	60	3.14000000000000012	44	50	0	1	1	0	2	50	0
136	Mark Coleman	1964-12-20	73	205	Hammer House	Light Heavyweight	United States	75	1.87999999999999989	52	2.62000000000000011	40	3.89000000000000012	40	50	0.800000000000000044	1	2	0	3	33	0
25784	Chris Cope	1983-03-05	72	170	The Arena	Welterweight	United States	72	3.95999999999999996	26	4.82000000000000028	50	0	0	80	0	1	2	0	3	33	0
26192	Kazuki Tokudome	1987-03-04	71	155	Paraestra Hachioji	Lightweight	Japan	73	2.25999999999999979	41	3.62999999999999989	53	2	38	78	0	1	3	0	4	25	0
26252	Miesha Tate	1986-08-18	66	135	Xtreme Couture	Bantamweight	United States	65	1.92999999999999994	41	2.70999999999999996	50	2.06000000000000005	31	52	1.60000000000000009	4	2	0	6	67	0
26261	Nordine Taleb	1981-06-10	73	170	Tristar Gym	Welterweight	Canada	74	3.18000000000000016	57	1.51000000000000001	70	3.20999999999999996	76	69	0	3	1	0	4	75	0
33532	Mike Ricci	1986-03-18	72	155	Tristar Gym	Lightweight	Canada	77	1.80000000000000004	32	1.6399999999999999	65	0.67000000000000004	100	54	0	1	2	0	3	33	0
34409	Ryan LaFlare	1983-10-01	73	170	Long Island MMA	Welterweight	United States	74	3.16000000000000014	38	1.90999999999999992	63	2.60999999999999988	52	64	0.299999999999999989	5	1	0	6	83	0
36581	Jim Alers	1986-10-14	69	145	Tough as Nails MMA	Featherweight	United States	71	2.89999999999999991	40	4.37999999999999989	56	2.25999999999999979	41	80	0.299999999999999989	1	1	0	2	50	0
37260	Rafaello Oliveira	1982-01-26	68	155	AMA Fight Club	Lightweight	United States	71	2.18999999999999995	33	3.37999999999999989	59	2.49000000000000021	36	11	1.60000000000000009	2	6	0	8	25	0
37684	Renee Forte	1987-03-27	68	155	Team Renee Forte	Lightweight	Brazil	71	2.08000000000000007	32	2.12000000000000011	63	2.31999999999999984	58	66	0	1	3	0	4	25	0
38029	Francisco Trevino	1981-12-17	70	155	Macaco Gold Team	Lightweight	United States	70	2.64999999999999991	42	2.41999999999999993	64	0.969999999999999973	22	41	0	1	2	0	3	33	0
32431	David Branch	1981-09-26	73	185	Renzo Gracie Jiu-Jitsu	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	2	0	4	50	0
42310	Dan Cramer	1985-10-31	73	170	American Top Team	Middleweight	United States	\N	0.969999999999999973	30	2.10000000000000009	31	0	0	66	0.5	1	1	0	2	50	0
42659	Andy Ogle	1989-02-16	69	145	Team Kaobon	Featherweight	England	69	2.24000000000000021	44	2.22999999999999998	50	1.43999999999999995	26	58	0	1	5	0	6	17	0
42850	Chico Camus	1985-01-26	66	125	Roufusport	Flyweight	United States	66	2.58000000000000007	41	2.45999999999999996	64	0.770000000000000018	40	72	0.400000000000000022	3	4	0	7	43	0
43439	Pascal Krauss	1987-04-19	73	170	Peak MMA	Welterweight	Germany	72	5.45000000000000018	47	3.87999999999999989	59	1.53000000000000003	50	60	0.900000000000000022	1	2	0	3	33	0
48052	Bruno Santos	1987-07-17	68	185	Ze Mario Team	Middleweight	Brazil	69	1.17999999999999994	46	2.27000000000000002	56	3	37	66	0.299999999999999989	1	2	0	3	33	0
48156	Jerrod Sanders	1980-10-01	68	135	American Top Team OKC	Bantamweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	0
48404	Claudia Gadelha	1988-12-07	63	115	Nova Uniao	Strawweight	Brazil	63	3.58999999999999986	42	3.93999999999999995	60	4.58999999999999986	57	83	0.699999999999999956	2	1	0	3	67	0
48481	Cody Pfister	1990-07-12	70	155	Nick's Fight Club	Lightweight	United States	73	1.40999999999999992	25	2.79999999999999982	51	2.81999999999999984	30	0	0	1	2	0	3	33	0
49213	Tim Elliott	1986-12-24	67	125	Glory MMA and Fitness	Flyweight	United States	66	3.47999999999999998	44	2.35000000000000009	63	3.31000000000000005	60	48	1.30000000000000004	2	4	0	6	33	0
50239	Joby Sanchez	1991-06-24	66	125	Jackson-Wink MMA	Flyweight	United States	68	3.37000000000000011	29	2.95999999999999996	66	0.760000000000000009	66	37	0.400000000000000022	1	2	0	3	33	0
50416	Lipeng Zhang	1990-03-10	71	155	Fight Emperor	Lightweight	China	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	2	0	4	50	0
50774	Nick Hein	1984-04-24	68	155	G.I. Sports	Lightweight	Germany	66	2.60000000000000009	38	2.64999999999999991	65	1	33	90	0	3	1	0	4	75	0
50987	Sergio Pettis	1993-08-18	66	125	Roufusport	Flyweight	United States	69	4.01999999999999957	38	2.75	65	1.47999999999999998	42	71	0.699999999999999956	4	2	0	6	67	0
51113	Trevor Smith	1981-01-05	75	185	Ring Demon Jiu-Jitsu	Middleweight	United States	75	3.49000000000000021	58	2.95999999999999996	51	1.65999999999999992	30	54	1.10000000000000009	3	3	0	6	50	0
51576	Chris Kelades	1981-02-21	67	125	Fit Plus	Flyweight	Canada	68	2.39999999999999991	43	2.64000000000000012	48	1.04000000000000004	18	53	0.299999999999999989	2	1	0	3	67	0
52633	Brendan O'Reilly	1987-06-24	68	170	Gamebred Submission Fighting	Welterweight	Australia	69	1.89999999999999991	47	2.77000000000000002	39	2.2200000000000002	43	36	0.599999999999999978	1	1	0	2	50	0
53380	Krzysztof Jotko	1989-08-19	73	185	Planet Eater	Middleweight	Poland	77	2.89999999999999991	46	1.3600000000000001	60	1.21999999999999997	41	89	0	3	1	0	4	75	0
53109	Gasan Umalatov	1982-11-03	71	181	Fight Nights Team	Middleweight	Russia	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	3	0	4	25	0
53596	Nah-Shon Burrell	1990-02-05	73	170	Fight Firm	Middleweight	United States	73	4.83000000000000007	47	3.45000000000000018	56	0	0	52	0.299999999999999989	1	1	0	2	50	0
53778	David Michaud	1988-11-10	69	155	MMA Lab	Lightweight	United States	72	3.25	43	4.45000000000000018	54	2.5299999999999998	58	77	0.699999999999999956	1	2	0	3	33	0
55410	Frankie Saenz	1980-08-12	66	135	Trident Performance Training	Bantamweight	United States	66	3.93999999999999995	44	3.10999999999999988	52	1.72999999999999998	33	69	0.200000000000000011	3	1	0	4	75	0
55587	Richard Walsh	1988-12-01	72	170	VT1 Gym	Welterweight	Australia	73	3.83999999999999986	46	2.7200000000000002	58	1.55000000000000004	40	66	0.200000000000000011	2	2	0	4	50	0
56902	Clifford Starks	1981-04-25	70	185	Arizona Combat Sports	Middleweight	United States	77	1.93999999999999995	33	2.49000000000000021	58	1.93999999999999995	100	60	0	1	2	0	3	33	0
57848	Vinc Pichel	1982-11-23	70	155	\N	Lightweight	United States	72	3.12999999999999989	51	2.50999999999999979	51	7.44000000000000039	69	16	0.5	2	1	0	3	67	0
59607	Dhiego Lima	1989-01-31	74	170	American Top Team Atlanta	Welterweight	Brazil	75	4.42999999999999972	47	4.07000000000000028	57	4.53000000000000025	66	0	3	1	3	0	4	25	0
59713	Matt Hobar	1987-01-07	70	135	Octagon MMA	Bantamweight	United States	70	3.22999999999999998	42	4.26999999999999957	52	3.66000000000000014	44	50	0	1	2	0	3	33	0
59764	Lance Benoist	1988-08-26	71	170	St. Charles MMA	Welterweight	United States	73	3.68000000000000016	51	2.70000000000000018	56	1.5	33	61	0	2	2	0	4	50	0
60454	Roger Narvaez	1983-09-09	75	185	Full Contact Fight Academy	Middleweight	United States	79	2.12000000000000011	37	3.31999999999999984	64	0	0	50	0.900000000000000022	1	2	0	3	33	0
60908	Sean Spencer	1987-06-25	70	170	Octagon MMA	Welterweight	United States	75	4.24000000000000021	32	4.01999999999999957	60	0.140000000000000013	33	68	0	3	4	0	7	43	0
61600	Sarah Moras	1988-04-30	67	135	Toshido Mixed Martial Arts	Bantamweight	Canada	67	1.10000000000000009	36	2.06999999999999984	47	0.5	10	14	0.5	1	1	0	2	50	0
63163	Colton Smith	1987-08-14	72	155	Vanguard	Welterweight	United States	71	1.6399999999999999	41	2.29999999999999982	51	4.08999999999999986	36	25	1.39999999999999991	1	3	0	4	25	0
65543	Pawel Pawlak	1989-02-08	72	170	Gracie Barra Lodz	Welterweight	Poland	73	1.66999999999999993	33	2.2200000000000002	53	1	37	70	0	1	2	0	3	33	0
67971	Patrick Walsh	1988-11-28	71	185	Wai Kru MMA	Light Heavyweight	United States	71	2.0299999999999998	19	2.83000000000000007	64	3	54	100	1.5	1	1	0	2	50	0
69681	Chad Laprise	1986-07-23	70	155	Adrenaline Training Center	Lightweight	Canada	71	4.55999999999999961	42	3.56000000000000005	63	0.930000000000000049	50	78	0	3	1	0	4	75	0
71307	Jessamyn Duke	1986-06-24	71	135	CSW	Bantamweight	United States	73	4.83000000000000007	53	4.42999999999999972	57	1.27000000000000002	36	50	1.89999999999999991	1	3	0	4	25	0
71942	Michinori Tanaka	1990-10-04	65	135	Reversal Gym Yokohama Ground Slam	Bantamweight	Japan	67	1.96999999999999997	37	1.98999999999999999	50	2.39999999999999991	38	43	0.200000000000000011	2	1	0	3	67	0
73710	Juliana Lima	1982-03-15	65	115	Gracie Barra BH	Strawweight	Brazil	65	2.16000000000000014	45	1.87999999999999989	61	1.80000000000000004	30	50	0	2	1	0	3	67	0
73826	Alptekin Ozkilic	1986-03-27	65	125	Bellmore Kickboxing Academy	Flyweight	United States	65	3.81000000000000005	32	5.71999999999999975	59	4.20999999999999996	58	75	0	1	3	0	4	25	0
74176	Viktor Pesta	1990-07-15	75	240	Penta Gym Prague	Heavyweight	Czech Republic	77	1.58000000000000007	36	2.54000000000000004	56	3.29000000000000004	28	100	0	1	2	0	3	33	0
75021	Ashlee Evans-Smith	1987-07-09	68	135	Reign MMA	Bantamweight	United States	67	4.24000000000000021	40	2.4700000000000002	57	1.83000000000000007	44	33	0	1	1	0	2	50	0
75370	Mark Eddiva	1986-02-16	68	145	Lakay MMA	Featherweight	Philippines	68	3.37000000000000011	45	2.97999999999999998	54	1.44999999999999996	22	63	0	1	2	0	3	33	0
75417	Randa Markos	1985-08-10	65	115	TriStar Gym	Strawweight	Canada	63	3.04999999999999982	38	3.58999999999999986	61	1.3899999999999999	27	50	0.5	1	2	0	3	33	0
78465	Clay Collard	1993-03-10	71	145	The Pit Elevated Fight Team	Featherweight	United States	73	4.21999999999999975	32	5	50	2.81000000000000005	39	71	0.5	1	3	0	4	25	0
79277	Chris Dempsey	1987-09-08	70	185	Cold Steel MMA	Light Heavyweight	United States	72	2.25	32	2.81999999999999984	65	2.64000000000000012	23	16	0	1	2	0	3	33	0
80837	Ernest Chavez	1983-06-27	68	145	Total MMA Studios	Featherweight	United States	70	2.79000000000000004	40	3.89000000000000012	59	0.890000000000000013	33	50	0	1	2	0	3	33	0
81143	Mickael Lebout	1987-08-16	71	155	MMA Factory	Lightweight	France	73	2.60000000000000009	34	2.97999999999999998	54	0	0	60	0	1	2	0	3	33	0
83021	Elizabeth Phillips	1986-08-20	66	135	SikJitsu	Bantamweight	United States	65	2.60000000000000009	33	3.06999999999999984	58	0.75	25	53	0.200000000000000011	1	2	0	3	33	0
83599	Jake Collier	1988-10-23	75	185	Pit MMA	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	0
87981	Douglas Silva de Andrade	1985-06-22	67	135	Pitbull Brothers	Bantamweight	Brazil	68	3.24000000000000021	35	3.10000000000000009	64	0.349999999999999978	50	75	0	1	1	0	2	50	0
88793	Royston Wee	1986-11-15	67	135	Impact MMA Singapore	N/A	Singapore	67	1.10000000000000009	60	2.45000000000000018	49	3.37999999999999989	81	0	0	2	1	0	3	67	0
94103	Joanne Calderwood	1986-12-23	66	116	Dinky Ninjas	Strawweight	Scotland	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	1	0	3	67	0
122383	Zhikui Yao	1991-02-07	67	125	\N	Flyweight	China	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	0
148517	Angela Hill	1988-01-12	63	115	Evolution Muay Thai	Strawweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	0
126881	Levan Makashvili	1989-01-07	68	145	Mutant MMA	Featherweight	United States	68	2.87000000000000011	54	2.06999999999999984	61	3.66999999999999993	42	85	0	1	1	1	3	33	0
115641	Randy Brown	1990-07-08	74	170	Budokan Martial Arts Academy	Welterweight	Jamaica	78	3.02000000000000002	42	2.95000000000000018	53	0.82999999999999996	33	77	0.800000000000000044	1	0	0	1	100	0
125297	Henry Cejudo	1987-02-09	64	125	Fight Ready	Flyweight	United States	64	3.87000000000000011	42	2.70000000000000018	71	2.12000000000000011	31	100	0.200000000000000011	4	0	0	4	100	0
129351	Enrique Barzola	1989-04-25	67	145	Pitbull Martial Arts Center	Featherweight	Peru	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	0	0	1	100	0
78479	Tiago dos Santos e Silva	1987-04-12	70	155	Team Nogueira	Lightweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	1	0	3	67	0
146291	Joaquim Silva	1989-02-05	68	155	Evolucao Thai	Lightweight	Brazil	69	3.5299999999999998	32	3.85000000000000009	64	0	0	66	0	1	0	0	1	100	0
245	Dave Menne	1974-07-29	70	170	Menne Combat Academy	Middleweight	United States	\N	1.84000000000000008	44	1.98999999999999999	42	0.46000000000000002	50	57	2.5	2	4	0	6	33	0
553	Gil Castillo	1965-10-21	69	170	Cesar Gracie Fight Team	Welterweight	United States	\N	0.599999999999999978	45	2.2200000000000002	44	3.33000000000000007	45	50	0	1	2	0	3	33	0
4411	Forrest Petz	1975-09-22	69	170	Strong Style Fight Team	Middleweight	United States	71	2.27000000000000002	29	2.20000000000000018	57	1.30000000000000004	100	66	0	2	5	0	7	29	0
5545	Gilbert Melendez	1982-04-12	69	155	Skrap Pack	Lightweight	United States	73	3.58000000000000007	33	2.18000000000000016	65	1.78000000000000003	42	71	0.200000000000000011	1	3	0	4	25	0
7415	Phillipe Nover	1984-02-03	69	145	Team Renzo Gracie	Featherweight	United States	72	1.79000000000000004	35	2.47999999999999998	56	0.989999999999999991	28	44	0.699999999999999956	1	4	0	5	20	0
15987	Yui Chul Nam	1981-07-16	69	145	\N	Featherweight	South Korea	69	3.5299999999999998	51	2	48	1.33000000000000007	16	57	0.299999999999999989	1	2	0	3	33	0
22641	Akira Corassani	1982-08-27	68	145	Renzo Gracie Jiu-Jitsu	Featherweight	Sweden	68	3.25	45	4.91000000000000014	50	0.699999999999999956	28	86	0	3	3	0	6	50	0
25981	Diego Nunes	1982-11-30	66	145	X-Gym	Featherweight	Brazil	67	2.7200000000000002	43	2.58999999999999986	58	1.17999999999999994	44	65	0.599999999999999978	3	3	0	6	50	0
29470	Anthony Smith	1988-07-26	76	205	Disorderly Conduct	Middleweight	United States	77	3.24000000000000021	47	2.97999999999999998	49	0.550000000000000044	40	33	1.39999999999999991	1	1	0	2	50	0
34625	Shane Campbell	1988-01-21	72	155	Toshido Mixed Martial Arts	Lightweight	Canada	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	0
47118	Sai Wang	1986-01-16	72	170	AKA Thailand	Welterweight	China	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	0
5001	Ian McCall	1984-07-05	65	125	Team Oyama	Flyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	3	1	6	33	0
85096	Tecia Torres	1989-08-16	61	115	American Top Team	Strawweight	United States	60	4.62999999999999989	48	2.35000000000000009	71	0.800000000000000044	20	70	0	3	0	0	3	100	0
87101	Bartosz Fabinski	1986-04-26	72	185	WCA Fight Team	Middleweight	Poland	75	2.20000000000000018	71	0.770000000000000018	50	8	72	100	0	2	0	0	2	100	0
22216	Valmir Lazaro	1985-08-15	72	155	Nova Uniao	Lightweight	Brazil	73	4.87000000000000011	37	4.08999999999999986	61	1.33000000000000007	40	96	0	1	2	0	3	33	0
22218	Michel Richard Cunha dos Prazeres	1983-07-25	66	155	Coalizao Fight Team	Lightweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	2	0	5	60	0
22388	Kevin Ferguson	1974-02-08	74	235	American Top Team	Heavyweight	United States	\N	2.29999999999999982	50	3.41000000000000014	38	3.10000000000000009	72	36	1.19999999999999996	1	1	0	2	50	0
76653	Leonardo Mafra Texeira	1989-04-25	70	155	American Kickboxing Academy	Lightweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	3	0	4	25	0
16524	Sarah Kaufman	1985-09-20	65	135	Zugec Ultimate Martial Arts	Bantamweight	Canada	67	6.65000000000000036	46	4	62	0.380000000000000004	57	81	0	1	2	0	3	33	0
4	Ken Shamrock	1964-02-11	73	205	Lion's Den	Heavyweight	United States	72	1.46999999999999997	46	4.29999999999999982	39	0.939999999999999947	60	44	2.5	1	4	0	5	20	100
7	Carlos Newton	1976-08-17	69	170	Warrior MMA Fight Team	Middleweight	Canada	\N	0.650000000000000022	41	1.55000000000000004	44	2.4700000000000002	70	43	0.900000000000000022	2	3	0	5	40	100
8	Ricco Rodriguez	1977-08-19	76	265	American Fight Club	Heavyweight	United States	\N	1.85000000000000009	51	1.14999999999999991	61	2.29999999999999982	39	40	1	5	2	0	7	71	100
11	Ricardo Almeida	1976-11-29	71	170	Renzo Gracie Jiu-Jitsu	Welterweight	United States	74	2.02000000000000002	49	1.19999999999999996	61	3.74000000000000021	38	31	1.19999999999999996	6	5	0	11	55	50
43	Kimo Leopoldo	1968-01-04	75	235	Freelance	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	100
65	Joe Stevenson	1982-06-15	67	145	Joe Stevenson's Cobra Kai	Lightweight	United States	70	2.04999999999999982	44	2.43999999999999995	60	2.75	44	39	2.20000000000000018	8	8	0	16	50	62
101	Duane Ludwig	1978-08-04	70	170	Grudge Training Center	Welterweight	United States	70	4.61000000000000032	44	3.04000000000000004	57	0.429999999999999993	25	59	0.100000000000000006	4	5	0	9	44	25
156	Vitor Belfort	1977-04-01	72	185	Blackzilians	Middleweight	Brazil	74	1.54000000000000004	47	2.70999999999999996	51	1.14999999999999991	60	53	0.699999999999999956	9	6	0	15	60	100
158	Tito Ortiz	1975-01-23	74	205	Team Punishment	Light Heavyweight	United States	74	2.58999999999999986	46	2.87999999999999989	60	2.4700000000000002	35	54	0.599999999999999978	12	10	1	23	52	58
166	Randy Couture	1963-06-22	73	205	Xtreme Couture	Light Heavyweight	United States	75	2.85000000000000009	57	1.53000000000000003	59	2.7799999999999998	46	58	0.5	12	8	0	20	60	67
168	Tony Fryklund	1971-03-26	72	185	Militech Fighting Systems	Lightweight	United States	\N	3.49000000000000021	39	6.5	43	0	0	66	0.5	1	1	0	2	50	100
175	Maurice Smith	1961-12-13	74	221	The Alliance	Light Heavyweight	United States	\N	0.409999999999999976	46	0.469999999999999973	60	0.890000000000000013	50	20	0.900000000000000022	2	1	0	3	67	50
188	Pat Miletich	1968-03-09	70	170	Miletich Martial Arts	Welterweight	United States	\N	1.79000000000000004	45	1.65999999999999992	63	1.95999999999999996	100	54	1	4	2	0	6	67	100
190	Tsuyoshi Kosaka	1970-03-06	71	225	Alliance-Square	Heavyweight	Japan	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	100
192	Chuck Liddell	1969-12-17	74	205	The Pit	Light Heavyweight	United States	76	2.9700000000000002	35	2.70999999999999996	56	0.440000000000000002	75	81	0	15	6	0	21	71	67
194	Andre Roberts	1965-02-24	74	345	\N	Super Heavyweight	United States	\N	0	0	0	0	0	0	0	0	1	0	0	1	100	100
195	Dan Henderson	1970-08-24	73	185	Team Quest	Middleweight	United States	74	2.43999999999999995	47	2.70000000000000018	51	1.52000000000000002	52	57	0.299999999999999989	6	8	0	14	43	50
202	Jeremy Horn	1975-08-25	73	185	Elite Performance	Middleweight	United States	74	1.18999999999999995	39	1.98999999999999999	55	1.83000000000000007	38	29	1.10000000000000009	5	5	0	10	50	80
208	Pedro Rizzo	1974-05-03	73	241	Ruas Vale Tudo	Heavyweight	Brazil	\N	1.92999999999999994	34	3.02000000000000002	50	0.260000000000000009	28	78	0	5	5	0	10	50	80
209	Wanderlei Silva	1976-07-03	70	205	Wand Fight Team	Middleweight	Brazil	74	2.79000000000000004	40	2.18999999999999995	60	0.969999999999999973	53	62	0.599999999999999978	4	6	0	10	40	75
212	Evan Tanner	1971-02-11	72	185	\N	Middleweight	United States	74	3.04999999999999982	59	2.64000000000000012	56	2.54999999999999982	43	25	1.30000000000000004	9	6	0	15	60	78
218	Fabiano Iha	1970-07-28	68	155	\N	Lightweight	United States	\N	1.72999999999999998	47	2.49000000000000021	42	2.87999999999999989	40	50	2.89999999999999991	3	3	0	6	50	100
222	Eugene Jackson	1970-12-31	68	185	Gladiators Training Academy	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	4	0	5	20	100
224	Paul Jones	1963-06-16	69	199	\N	Light Heavyweight	United States	\N	0	0	0	0	0	0	0	0	1	1	0	2	50	100
228	Jens Pulver	1974-12-06	67	145	Team Extreme	Bantamweight	United States	70	2.12000000000000011	37	3.12999999999999989	56	0.220000000000000001	33	63	0.299999999999999989	5	2	1	8	62	20
232	Matt Hughes	1973-10-13	69	170	HIT Squad	Welterweight	United States	73	2.14000000000000012	53	1.3600000000000001	53	2.95000000000000018	50	35	1.19999999999999996	16	7	0	23	70	75
239	Shonie Carter	1972-05-03	69	170	Iron Academy	Middleweight	United States	\N	1.62000000000000011	36	2.31999999999999984	47	0.75	66	75	0	2	3	0	5	40	50
241	Scott Adams	1974-07-16	72	225	The Pit	Heavyweight	USA	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	0	0	1	100	100
242	Ian Freeman	1970-12-31	71	205	Machine MMA	Light Heavyweight	England	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	2	1	5	40	50
246	Lance Gibson	1970-11-20	69	185	Gibson Kickboxing & Pankration	Middleweight	Canada	\N	1.20999999999999996	75	6.44000000000000039	20	0	0	0	0	1	1	0	2	50	100
250	Ikuhisa Minowa	1976-01-12	69	181	Kuma Gym	Middleweight	Japan	\N	0.880000000000000004	40	1.65999999999999992	49	1.82000000000000006	41	5	1.89999999999999991	1	0	0	1	100	100
252	Sanae Kikuta	1971-09-10	69	200	Grabaka	Light Heavyweight	Japan	\N	0.699999999999999956	45	0.900000000000000022	52	1.60000000000000009	63	25	1.80000000000000004	1	0	0	1	100	100
253	Murilo Bustamante	1966-07-30	73	183	Brazilian Top Team	Middleweight	Brazil	\N	1.33000000000000007	32	1.89999999999999991	60	2.45999999999999996	33	54	1.19999999999999996	3	1	0	4	75	100
262	Jeff Monson	1971-01-18	69	247	American Top Team	Heavyweight	United States	74	0.969999999999999973	30	2.87000000000000011	59	1.06000000000000005	12	66	0.699999999999999956	4	3	0	7	57	50
263	Yuki Kondo	1975-07-17	71	183	PANCRASEism	Welterweight	Japan	\N	1.1399999999999999	42	2.56999999999999984	51	0.760000000000000009	41	37	0.5	1	2	0	3	33	100
267	Chris Lytle	1974-08-18	71	170	Integrated Fighting Academy	Welterweight	United States	68	3.75999999999999979	45	3.0299999999999998	58	0.699999999999999956	55	55	2.39999999999999991	10	9	0	19	53	70
270	Andrei Arlovski	1979-02-04	76	240	Jackson-Wink MMA	Heavyweight	Belarus	77	3.12000000000000011	41	2.5	59	0.390000000000000013	41	82	0.5	14	5	0	19	74	79
272	Josh Barnett	1977-11-10	75	250	CSW	Heavyweight	United States	78	3.20000000000000018	50	2.10999999999999988	57	1.26000000000000001	55	55	1.39999999999999991	6	3	0	9	67	83
273	Gan McGee	1976-11-20	82	265	S.K.S. Fight Team	Heavyweight	United States	\N	2.20000000000000018	29	2.31000000000000005	59	0.650000000000000022	25	83	0	2	2	0	4	50	100
274	Renato Sobral	1975-07-09	72	205	Babalu's Iron Gym	Light Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	6	4	0	10	60	67
275	Dennis Hallman	1975-12-02	69	155	Victory Athletics	Middleweight	United States	72	1.12000000000000011	44	1.95999999999999996	43	1.79000000000000004	30	25	2.10000000000000009	4	5	0	9	44	75
276	Matt Lindland	1970-05-17	72	185	Team Quest	Middleweight	United States	74	2.62000000000000011	50	1.56000000000000005	52	3.00999999999999979	48	60	1.30000000000000004	9	3	0	12	75	44
277	Sean Sherk	1973-08-05	66	155	Minnesota Martial Arts Academy	Lightweight	United States	67	2.16999999999999993	35	2.70999999999999996	55	4.08999999999999986	46	56	0.400000000000000022	8	4	0	12	67	25
278	Phil Baroni	1976-04-16	69	170	American Kickboxing Academy	Welterweight	United States	72	2.77000000000000002	45	3.93000000000000016	40	1.45999999999999996	47	60	0.5	3	7	0	10	30	67
281	Elvis Sinosic	1971-02-13	75	205	Sinosic Perosh Martial Arts	Light Heavyweight	Australia	77	1.12999999999999989	37	4.59999999999999964	53	0	0	0	1.19999999999999996	1	6	0	7	14	100
283	Caol Uno	1975-05-08	67	155	Uno Dojo	Featherweight	Japan	70	1.90999999999999992	49	1.89999999999999991	50	1.94999999999999996	31	37	0.5	3	5	2	10	30	33
284	Frank Shamrock	1972-12-08	70	185	The Alliance	Middleweight	United States	\N	4.75	53	4.66000000000000014	57	0.349999999999999978	50	37	1.10000000000000009	1	0	0	1	100	100
311	Frank Trigg	1972-05-07	68	170	Xtreme Couture	Middleweight	United States	71	2.79000000000000004	46	1.89999999999999991	56	2.35000000000000009	47	75	0.800000000000000044	2	5	0	7	29	100
338	Dean Lister	1976-02-13	73	185	Victory MMA	Middleweight	United States	75	1.26000000000000001	35	1.8899999999999999	61	1.58000000000000007	15	50	1.10000000000000009	4	2	0	6	67	50
344	Yves Edwards	1976-09-30	70	155	American Top Team	Lightweight	United States	73	2.91000000000000014	42	2.33999999999999986	66	0.760000000000000009	53	69	0.699999999999999956	10	10	0	20	50	70
347	Paul Buentello	1974-01-16	75	245	Grudge Training Center	Light Heavyweight	United States	77	3.29000000000000004	45	3.83000000000000007	52	0.190000000000000002	33	39	0.400000000000000022	3	3	0	6	50	100
348	Quinton Jackson	1978-06-20	73	206	Wolfslair Academy	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	8	5	0	13	62	38
370	Falaniko Vitale	1974-07-14	70	185	808 Top Team	Middleweight	United States	\N	1.87999999999999989	49	3.68000000000000016	47	0.719999999999999973	33	86	0	1	1	0	2	50	100
390	Joe Doerksen	1977-09-10	72	186	Canadian Fighting Centre	Middleweight	Canada	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	7	0	9	22	100
392	Rich Franklin	1974-10-05	73	185	Team Extreme	Middleweight	United States	75	4.09999999999999964	44	2.06999999999999984	62	1.31000000000000005	66	63	0.699999999999999956	14	6	0	20	70	71
425	Takanori Gomi	1978-09-22	68	155	Kugayama Rascal	Lightweight	Japan	70	3.85000000000000009	41	3.4700000000000002	60	1.25	65	63	0.800000000000000044	4	6	0	10	40	50
426	Johnny Eduardo	1980-08-03	67	135	Nova Uniao	Bantamweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	2	0	4	50	50
435	Vladimir Matyushenko	1971-01-04	73	205	VMAT	Light Heavyweight	Belarus	74	1.89999999999999991	44	1.62000000000000011	59	3.25	46	70	0.100000000000000006	7	5	0	12	58	43
438	Jutaro Nakao	1970-11-30	69	170	Jutaro Nakao MMA School	Welterweight	Japan	\N	0.530000000000000027	38	1.06000000000000005	44	0.380000000000000004	50	56	0	1	1	0	2	50	100
461	Alistair Overeem	1980-05-17	77	265	Jackson-Wink MMA	Heavyweight	Netherlands	80	3.7799999999999998	60	1.79000000000000004	63	1.62000000000000011	65	76	1.10000000000000009	5	3	0	8	62	60
467	Semmy Schilt	1973-10-27	83	265	Golden Glory	Heavyweight	Holland	\N	1.19999999999999996	50	1.31000000000000005	53	0	0	47	1.10000000000000009	1	1	0	2	50	100
482	Phillip Miller	1979-02-20	71	185	Williams Combat Grappling	Middleweight	United States	\N	1.6100000000000001	54	1.92999999999999994	50	3.62000000000000011	25	100	0.599999999999999978	2	0	0	2	100	50
487	Tony DeSouza	1974-07-26	72	170	Millennia MMA	Welterweight	Peru	70	1.12000000000000011	52	1.57000000000000006	41	2.25	42	40	1.5	3	3	0	6	50	67
495	Jason Lambert	1977-09-23	70	205	Alliance MMA	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	4	0	8	50	100
536	David Terrell	1978-01-09	72	185	Cesar Gracie Jiu-Jitsu	Middleweight	USA	\N	2.33999999999999986	63	2.70999999999999996	37	5.54000000000000004	50	0	5.5	2	1	0	3	67	100
549	Jason Von Flue	1975-08-01	72	170	\N	Welterweight	United States	\N	1.8899999999999999	36	3.22999999999999998	52	0.619999999999999996	16	58	1.5	1	2	0	3	33	100
662	Ryan Jensen	1977-09-20	70	185	Jackson-Wink MMA	Middleweight	United States	76	2.83999999999999986	39	2.99000000000000021	59	1.55000000000000004	50	31	1.89999999999999991	2	6	0	8	25	100
725	Drew Fickett	1979-12-24	70	151	Team Scrub	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	3	0	7	57	75
903	David Loiseau	1979-12-17	72	185	Tristar Gym	Light Heavyweight	Canada	76	1.59000000000000008	44	3.64000000000000012	43	0.429999999999999993	42	36	0.100000000000000006	4	5	0	9	44	100
993	Ivan Menjivar	1982-05-30	66	145	Tristar Gym	Bantamweight	El Salvador	64	2.7799999999999998	37	2.75999999999999979	65	0.560000000000000053	28	38	1	4	5	0	9	44	75
1046	Rich Clementi	1976-03-31	69	155	Team Voodoo	Lightweight	United States	72	1.42999999999999994	37	2.29000000000000004	60	1.71999999999999997	42	25	1.10000000000000009	5	5	0	10	50	60
1061	Tim Sylvia	1974-03-05	80	265	Team Extreme	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	9	4	0	13	69	56
1217	Akihiro Gono	1974-10-07	69	170	OxyGym Fight Team	Lightweight	Japan	68	2.18000000000000016	48	2.66999999999999993	63	1.01000000000000001	84	46	0.5	1	2	0	3	33	100
1227	Genki Sudo	1978-03-08	69	155	Beverly Hills Jiu-Jitsu Club	Lightweight	Japan	\N	1.55000000000000004	39	2.22999999999999998	33	3.58000000000000007	60	50	4.20000000000000018	2	1	0	3	67	100
1301	Din Thomas	1976-09-28	69	155	American Top Team	Featherweight	United States	\N	1.85000000000000009	37	2.60000000000000009	59	1.37999999999999989	52	76	1.19999999999999996	5	4	0	9	56	40
1305	Matt Serra	1974-06-02	66	170	Serra-Longo Fight Team	Welterweight	United States	68	1.97999999999999998	39	2.64000000000000012	46	2.04999999999999982	20	38	0.900000000000000022	7	7	0	14	50	43
1307	B.J. Penn	1978-12-13	69	145	BJ Penn's MMA	Featherweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	12	9	2	23	52	92
1326	Tatsuya Kawajiri	1978-05-08	67	145	T-Blood	Featherweight	Japan	69	2.04000000000000004	44	2.00999999999999979	50	3.62999999999999989	48	63	1.10000000000000009	3	2	0	5	60	33
1351	Ivan Salaverry	1971-01-11	72	185	Ivan Salaverry MMA	Middleweight	United States	\N	3.00999999999999979	47	1.18999999999999995	76	0.489999999999999991	18	36	2.5	3	4	0	7	43	100
1356	Anderson Silva	1975-04-14	74	185	Team Nogueira	Middleweight	Brazil	77	3.10000000000000009	63	1.87000000000000011	62	0.550000000000000044	77	69	0.900000000000000022	16	2	0	18	89	88
1440	Antonio Rodrigo Nogueira	1976-06-02	75	240	Team Nogueira	Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	5	6	0	11	45	60
1518	Antoni Hardonk	1976-02-05	76	245	Dynamix MMA	Heavyweight	Holland	78	3.39999999999999991	61	3.06999999999999984	46	0	0	40	0.900000000000000022	4	4	0	8	50	100
1659	Lee Murray	1977-11-12	72	185	London Shootfighters	Middleweight	England	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	0	0	1	100	100
1712	Nate Marquardt	1979-04-20	72	185	High Altitude Martial Arts	Middleweight	United States	74	2.66999999999999993	49	2.27000000000000002	56	2.0299999999999998	53	72	1	12	8	0	20	60	67
1804	Tim Credeur	1977-07-09	75	185	Gladiators Academy	Middleweight	United States	75	3.58999999999999986	30	3.12999999999999989	57	0.409999999999999976	100	50	3.29999999999999982	3	2	0	5	60	100
1870	Andrei Semenov	1977-06-17	72	185	\N	Middleweight	Russia	\N	0.780000000000000027	15	2.43999999999999995	60	1.73999999999999999	80	55	0.400000000000000022	1	1	0	2	50	100
1884	Anthony Torres	1978-07-31	70	170	MMA Development	Welterweight	United States	\N	3.54000000000000004	48	7.51999999999999957	45	0	0	100	2.20000000000000018	1	0	0	1	100	100
1927	Jason Brilz	1975-07-07	71	205	Elite Performance	Light Heavyweight	United States	71	2.66000000000000014	40	1.78000000000000003	65	2.37000000000000011	25	25	1.30000000000000004	3	4	0	7	43	33
2027	Alexey Oleinik	1977-06-25	73	240	K Dojo Warrior Tribe	Heavyweight	Russia	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	0	0	2	100	100
2191	Cyrille Diabate	1973-06-10	78	205	Snake Team	Light Heavyweight	France	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	4	0	7	43	67
2193	Cheick Kongo	1975-05-17	76	240	Kongo Smashin' Club	Heavyweight	France	82	3.18999999999999995	56	1.34000000000000008	54	2.25	54	52	0.200000000000000011	11	6	1	18	61	64
2245	Robbie Lawler	1982-03-20	71	170	American Top Team	Welterweight	United States	74	3.49000000000000021	44	3.68999999999999995	62	0.819999999999999951	68	67	0	12	4	0	16	75	50
2262	Ben Rothwell	1981-10-17	76	265	Rothwell MMA	Heavyweight	United States	78	2.89000000000000012	41	3.91999999999999993	46	0.839999999999999969	36	69	0.400000000000000022	6	3	0	9	67	83
2270	Antonio Rogerio Nogueira	1976-06-02	74	205	Team Nogueira	Light Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	4	0	8	50	50
2326	Mirko Filipovic	1974-09-10	74	227	Cro Cop Squad Gym	Heavyweight	Croatia	\N	\N	\N	\N	\N	\N	\N	\N	\N	5	6	0	11	45	100
2329	Frank Mir	1979-05-24	75	264	Las Vegas Combat Club	Heavyweight	United States	79	2.18000000000000016	47	3.83999999999999986	38	2.02000000000000002	40	54	2	16	10	0	26	62	81
2352	Houston Alexander	1972-03-22	72	205	Grudge Training Center	Light Heavyweight	United States	72	3.06000000000000005	54	3.20000000000000018	52	1.18999999999999995	57	33	0	2	4	0	6	33	100
2383	Nate Quarry	1972-03-18	72	185	Team Quest	Middleweight	United States	72	4.95999999999999996	44	2.79999999999999982	66	0.25	33	60	0	7	3	0	10	70	71
2386	Drew McFedries	1978-07-27	72	185	Champions Gym	Middleweight	United States	72	5.12999999999999989	51	4.55999999999999961	52	1.41999999999999993	100	56	0.699999999999999956	4	5	0	9	44	100
2394	Josh Thomson	1978-09-21	70	155	American Kickboxing Academy	Lightweight	United States	71	2.62000000000000011	48	2.10999999999999988	64	1.94999999999999996	40	54	1.39999999999999991	3	4	0	7	43	67
2427	Fabricio Camoes	1978-12-23	69	155	Gracie Humaita	Lightweight	Brazil	73	1.29000000000000004	33	1.85000000000000009	61	2.33999999999999986	32	20	1.5	1	4	1	6	17	100
2578	Scott Smith	1979-05-21	72	185	Capital City Fighting Alliance	Middleweight	United States	70	1.8600000000000001	27	5.94000000000000039	50	0.130000000000000004	6	58	0.400000000000000022	1	3	0	4	25	100
2638	Keith Jardine	1975-10-31	74	185	Jackson-Wink MMA	Middleweight	United States	76	3.25	36	2.97999999999999998	59	1.17999999999999994	45	62	0.699999999999999956	6	7	0	13	46	33
2646	Dan Christison	1972-04-26	80	265	Jackson-Wink MMA	Super Heavyweight	United States	\N	4.23000000000000043	51	3.87999999999999989	54	0	0	37	1.10000000000000009	1	1	0	2	50	100
2688	Jonathan Wiezorek	1978-02-10	75	250	Valdosta Martial Arts Academy	Heavyweight	United States	\N	1.27000000000000002	58	5.46999999999999975	31	1.90999999999999992	20	0	0	1	0	0	1	100	100
2712	Jorge Rivera	1972-02-28	73	185	Rivera Athletic Center	Middleweight	United States	73	3.16000000000000014	48	2.64000000000000012	54	0.839999999999999969	50	63	0.100000000000000006	8	7	0	15	53	62
2765	Joe Riggs	1982-09-23	72	185	MMA Lab	Welterweight	United States	70	2.41000000000000014	51	1.68999999999999995	57	2.45000000000000018	55	62	0.599999999999999978	5	7	0	12	42	60
2815	Leonard Garcia	1979-07-14	69	145	Jackson-Wink MMA	Featherweight	United States	69	2.77000000000000002	24	4.79000000000000004	52	0.299999999999999989	26	42	0.5	2	7	0	9	22	50
2829	Wesley Correira	1978-11-11	75	260	Cabbage MMA	Heavyweight	United States	\N	2.60000000000000009	36	8.80000000000000071	40	0	0	90	0	2	2	0	4	50	100
2830	Tim Kennedy	1979-09-01	71	185	Jackson-Wink MMA	Middleweight	United States	74	2.7799999999999998	47	1.84000000000000008	62	2.58000000000000007	35	70	0.699999999999999956	3	1	0	4	75	33
2831	Nick Diaz	1983-08-02	73	185	Cesar Gracie Fight Team	Welterweight	United States	76	5.42999999999999972	42	3.56000000000000005	61	1.32000000000000006	33	60	1	7	6	0	13	54	86
2886	Roan Carneiro	1978-06-02	71	170	American Top Team Atlanta	Welterweight	Brazil	74	1.45999999999999996	46	1.82000000000000006	62	3.04999999999999982	42	83	1.39999999999999991	3	4	0	7	43	67
2920	Brad Blackburn	1977-05-25	70	170	Victory Athletics	Welterweight	United States	73	4.54999999999999982	35	3.58999999999999986	65	0.930000000000000049	50	76	0.699999999999999956	3	2	0	5	60	33
3014	Stephan Bonnar	1977-04-04	75	205	One Kick's Gym	Light Heavyweight	United States	78	2.75999999999999979	38	3.00999999999999979	52	1.32000000000000006	40	60	1	8	7	0	15	53	50
3015	Brian Ebersole	1980-11-27	72	170	Tiger Muay Thai	Welterweight	United States	73	2.31999999999999984	49	2.14000000000000012	56	1.69999999999999996	23	61	0.100000000000000006	5	3	0	8	62	20
3068	Hermes Franca	1974-08-27	66	155	Team Hermes Franca	Lightweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	6	5	0	11	55	67
3070	Wilson Gouveia	1978-10-03	74	185	American Top Team	Heavyweight	United States	76	3.02000000000000002	39	4.05999999999999961	56	0.900000000000000022	66	57	2.20000000000000018	6	4	0	10	60	100
3195	Pete Spratt	1971-01-09	69	170	Team Spratt	Welterweight	United States	\N	1.62999999999999989	48	1.33000000000000007	55	0.299999999999999989	100	46	0.299999999999999989	3	4	0	7	43	100
3328	Christian Wellisch	1975-09-13	74	234	American Kickboxing Academy	Heavyweight	United States	77	3.12000000000000011	27	3.04000000000000004	56	1.21999999999999997	42	45	1.19999999999999996	2	3	0	5	40	50
3396	Mac Danzig	1980-01-02	68	155	PKG	Lightweight	United States	70	3.39000000000000012	48	3.43999999999999995	57	1.19999999999999996	37	46	0.599999999999999978	5	8	0	13	38	60
3496	Bart Palaszewski	1983-05-30	69	145	Team Curran	Featherweight	United States	70	2.66999999999999993	32	3.9700000000000002	57	0.650000000000000022	31	53	0.5	1	3	0	4	25	100
3500	Georges St. Pierre	1981-05-19	70	170	Tristar Gym	Welterweight	Canada	\N	\N	\N	\N	\N	\N	\N	\N	\N	19	2	0	21	90	37
3525	Rory Singer	1976-05-28	74	185	Hardcore Gym	Middleweight	United States	77	2.54999999999999982	39	2.41999999999999993	63	0.390000000000000013	25	64	0.800000000000000044	2	2	0	4	50	50
3526	Forrest Griffin	1979-07-01	75	205	Xtreme Couture	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	10	5	0	15	67	30
3599	Mark Weir	1967-09-19	74	185	Range	Middleweight	England	\N	1.54000000000000004	56	2.5	38	0.800000000000000044	50	25	2.39999999999999991	1	2	0	3	33	100
3619	Mike Kyle	1980-03-31	75	205	American Kickboxing Academy	Light Heavyweight	United States	77	4.5	51	2.75999999999999979	54	1.55000000000000004	62	50	0.900000000000000022	2	1	0	3	67	100
3669	Roli Delgado	1981-11-22	75	145	Westside Fight Team	Featherweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	100
3707	Per Eklund	1980-11-12	70	145	Hilti NHB	Featherweight	Sweden	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	100
4112	Chael Sonnen	1977-04-03	73	205	Team Quest	Light Heavyweight	United States	74	3.08000000000000007	43	1.10000000000000009	62	3.81000000000000005	59	66	0.400000000000000022	7	7	0	14	50	29
4114	Claude Patrick	1980-06-14	70	170	Elite Mixed Fighters	Welterweight	Canada	75	1.80000000000000004	55	0.890000000000000013	69	2.31999999999999984	53	84	1.69999999999999996	3	1	0	4	75	33
4120	Jonathan Goulet	1979-07-13	72	170	Team Legion	Welterweight	Canada	73	1.6100000000000001	41	2	46	4.16999999999999993	70	45	0.599999999999999978	4	5	0	9	44	75
4153	Kurt Pellegrino	1979-05-07	68	155	Pellegrino MMA	Lightweight	United States	70	2.45000000000000018	43	1.93999999999999995	63	2.89999999999999991	54	69	0.800000000000000044	7	5	0	12	58	71
4173	Eddie Wineland	1984-06-26	67	135	Duneland Vale Tudo	Bantamweight	United States	69	3.35999999999999988	29	3.41999999999999993	71	0.340000000000000024	33	85	0.200000000000000011	3	5	0	8	38	67
4270	Paul Daley	1983-02-21	69	170	Spirit Dojo	Welterweight	England	76	3.14000000000000012	47	2.37000000000000011	60	0.910000000000000031	40	64	0	2	1	0	3	67	100
4367	Steve Bruno	1981-11-03	70	170	American Top Team	Middleweight	United States	\N	0.959999999999999964	52	3.37999999999999989	36	1.93999999999999995	25	46	0.400000000000000022	1	2	0	3	33	100
4389	Jason MacDonald	1975-06-03	74	185	Pure Fitness	Middleweight	Canada	80	1.55000000000000004	52	2.70000000000000018	46	1.42999999999999994	16	35	2	6	8	0	14	43	100
4577	Mike Pyle	1975-09-18	73	170	Syndicate MMA	Welterweight	United States	74	2.75999999999999979	46	2.75	61	1.82000000000000006	35	70	1.60000000000000009	10	6	0	16	62	70
4586	Travis Lutter	1973-12-05	74	185	Lion's Den Dallas	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	4	0	6	33	100
4647	Thiago Tavares	1984-11-08	67	145	Team Tavares	Featherweight	Brazil	68	2	40	2.31000000000000005	62	3.83000000000000007	42	62	1.5	10	6	1	17	59	60
4655	Glover Teixeira	1979-10-28	74	205	Nova Uniao	Light Heavyweight	Brazil	76	4.03000000000000025	44	3.33000000000000007	57	2.62999999999999989	54	58	0.800000000000000044	7	2	0	9	78	86
4679	Darren Uyenoyama	1979-10-15	66	125	Faito Tamashii Combat Club	Flyweight	United States	64	1.34000000000000008	39	2.20999999999999996	66	1.41999999999999993	33	35	0.699999999999999956	2	2	0	4	50	50
4728	Mark Hominick	1982-07-22	68	145	Team Tompkins	Featherweight	Canada	68	4.08000000000000007	42	4.17999999999999972	69	0.25	66	71	0.900000000000000022	3	4	0	7	43	67
4789	Trevor Prangley	1972-08-24	72	185	American Kickboxing Academy	Light Heavyweight	South Africa	75	2.58999999999999986	60	2.02000000000000002	48	3.37999999999999989	55	74	1	2	2	0	4	50	50
4810	Leonardo Santos	1980-02-05	72	155	Nova Uniao	Lightweight	Brazil	75	2.29999999999999982	40	2.64000000000000012	61	1.1399999999999999	25	86	0.5	4	0	1	5	80	75
4824	Diego Sanchez	1981-12-31	70	155	Jackson-Wink MMA	Lightweight	United States	72	2.75	36	2.95000000000000018	58	1.47999999999999998	21	50	1	14	8	0	22	64	36
4833	Marcus Aurelio	1973-08-18	70	155	Elite Mixed Fighters	Welterweight	Brazil	74	1.41999999999999993	33	2.27000000000000002	59	1.68999999999999995	27	27	1.30000000000000004	2	4	0	6	33	100
4865	Jon Fitch	1978-02-24	72	170	American Kickboxing Academy	Middleweight	United States	76	2.60999999999999988	50	1.64999999999999991	54	3.60000000000000009	51	56	0.800000000000000044	14	3	1	18	78	29
4886	Brandon Vera	1977-10-10	74	230	Alliance MMA	Light Heavyweight	United States	76	3.0299999999999998	56	2.81000000000000005	52	0.699999999999999956	53	59	0.200000000000000011	7	7	0	14	50	57
4923	Joe Lauzon	1984-05-22	69	155	Lauzon MMA	Lightweight	United States	71	2.62000000000000011	38	4.74000000000000021	57	2.27000000000000002	43	54	2.29999999999999982	11	8	0	19	58	91
5118	Spencer Fisher	1976-05-09	67	155	\N	Lightweight	United States	70	3.16999999999999993	43	3.0299999999999998	64	0.67000000000000004	30	60	0.800000000000000044	8	8	0	16	50	62
5153	Karo Parisyan	1982-08-28	70	170	\N	Welterweight	United States	72	2.49000000000000021	41	2.18999999999999995	58	5.26999999999999957	59	59	1	8	4	0	12	67	25
5185	Manny Gamburyan	1981-05-08	65	135	Team Hayastan	Bantamweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	6	6	0	12	50	50
5199	Mike Swick	1979-06-19	73	170	AKA Thailand	Welterweight	United States	77	2.35999999999999988	37	2.29000000000000004	54	1.06000000000000005	50	61	0.599999999999999978	10	5	0	15	67	70
5286	Robert Emerson	1981-07-30	70	135	Team Oyama	Bantamweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	0	6	50	33
5344	Martin Kampmann	1982-04-17	72	170	Xtreme Couture	Welterweight	Denmark	72	3.2200000000000002	42	3.2799999999999998	62	1.8600000000000001	41	78	2	11	6	0	17	65	64
5346	Antonio Carvalho	1979-05-30	68	145	Bruckmann Martial Arts	Featherweight	Canada	68	3.0299999999999998	29	3.62000000000000011	64	0	0	100	0	2	2	0	4	50	50
5366	Alessio Sakara	1981-09-02	73	185	American Top Team	Middleweight	Italy	72	3.95999999999999996	47	2.79999999999999982	59	2.18000000000000016	78	62	0	6	8	0	14	43	67
5453	Siyar Bahadurzada	1984-04-17	71	170	Blackzilians	Welterweight	Afghanistan	76	3.0299999999999998	47	2.22999999999999998	50	1.34000000000000008	80	69	0.299999999999999989	1	2	0	3	33	100
5569	Yushin Okami	1981-07-21	74	185	Wajutsu Keishukai Tokyo	Middleweight	Japan	72	2.22999999999999998	38	2.20000000000000018	62	1.87999999999999989	47	84	0.5	13	5	0	18	72	38
5707	Mauricio Rua	1981-11-25	73	205	Universidade da Luta	Light Heavyweight	Brazil	76	3.58000000000000007	51	2.49000000000000021	55	2.14999999999999991	47	45	0.900000000000000022	7	8	0	15	47	86
5735	Jorge Santiago	1980-10-09	73	170	Blackzilians	Welterweight	Brazil	74	1.68999999999999995	35	2.62000000000000011	56	0.57999999999999996	30	52	0.800000000000000044	1	5	0	6	17	100
5936	Justin Eilers	1978-06-28	73	235	Miletich Martial Arts	Heavyweight	United States	\N	1.78000000000000003	30	6.55999999999999961	47	0	0	0	0	1	3	0	4	25	100
5993	Gleison Tibau	1983-07-10	70	155	American Top Team	Lightweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	17	9	0	26	65	35
5998	Thiago Alves	1983-10-03	70	170	American Top Team	Welterweight	Brazil	70	3.49000000000000021	41	3.08000000000000007	64	0.729999999999999982	64	63	0.400000000000000022	13	7	0	20	65	69
6120	Akbarh Arreola	1983-01-14	70	155	Entram Gym	Lightweight	Mexico	71	2.31999999999999984	45	4.00999999999999979	56	1.07000000000000006	100	33	0.400000000000000022	1	3	0	4	25	100
6258	Chris Leben	1980-07-21	71	185	Alliance MMA	Middleweight	United States	74	2.87000000000000011	42	2.87000000000000011	52	1.1399999999999999	41	53	0.800000000000000044	12	10	0	22	55	75
6326	Paul Taylor	1979-12-15	72	155	Team Supreme	Lightweight	England	72	4.44000000000000039	47	4.46999999999999975	55	0.270000000000000018	25	56	0.5	3	5	0	8	38	67
6373	Brock Larson	1977-08-23	71	170	Get Sum Athletic Compound	Welterweight	United States	71	1.3899999999999999	46	1.5	55	2.66999999999999993	34	43	2	2	3	0	5	40	50
6428	Luke Cummo	1980-04-27	72	170	Serra-Longo Fight Team	Welterweight	United States	74	1.73999999999999999	43	1.5	59	0.890000000000000013	55	42	1.39999999999999991	3	4	0	7	43	67
6445	Sam Hoger	1980-06-28	74	205	Miletich Martial Arts	Light Heavyweight	United States	\N	1.07000000000000006	25	2.25	57	1.12000000000000011	38	29	1.30000000000000004	2	3	0	5	40	50
6525	Roman Mitichyan	1978-04-09	70	155	\N	Lightweight	Armenia	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	100
6561	Ed Herman	1980-10-02	74	205	Trials MMA and Fitness	Light Heavyweight	United States	77	3.10999999999999988	51	2.79000000000000004	42	2.75	51	67	1.19999999999999996	10	7	0	17	59	70
6612	Patrick Cote	1980-02-29	71	170	BTT Canada	Welterweight	Canada	71	2.79999999999999982	49	3.06999999999999984	48	0.719999999999999973	21	44	0.299999999999999989	10	9	0	19	53	40
6748	Nick Ring	1979-02-10	72	185	Champion's Creed MMA	Middleweight	Canada	74	3.52000000000000002	42	3.47999999999999998	62	1.3600000000000001	36	52	0.299999999999999989	3	3	0	6	50	33
6749	Jordan Mein	1989-10-10	71	170	Canadian Martial Arts Centre	Welterweight	Canada	73	3.91000000000000014	44	2.9700000000000002	70	1.17999999999999994	70	60	0	3	2	0	5	60	67
6765	Carlos Condit	1984-04-26	73	170	Jackson-Wink MMA	Welterweight	United States	75	3.7799999999999998	39	2.41999999999999993	56	0.589999999999999969	52	39	1.19999999999999996	7	5	0	12	58	71
6811	Jason Day	1979-03-18	72	185	Champion's Creed MMA	Middleweight	Canada	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	100
6850	Tor Troeng	1983-01-25	74	185	Renyi Fight Camp	Middleweight	Sweden	77	1.15999999999999992	46	3.25999999999999979	32	0.619999999999999996	7	66	0.299999999999999989	1	3	0	4	25	100
6946	Vaughan Lee	1982-10-15	65	125	UTC Birmingham	Bantamweight	England	66	3.4700000000000002	47	2.06999999999999984	70	0.810000000000000053	33	72	1	3	5	0	8	38	33
7168	Jamie Varner	1984-12-10	68	155	Arizona Combat Sports	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	6	0	9	33	67
7202	Terry Martin	1980-10-10	67	185	Iron Academy	Middleweight	United States	71	2.68000000000000016	41	3.25999999999999979	53	3.00999999999999979	40	92	0	2	4	0	6	33	100
7306	Gabriel Gonzaga	1979-05-18	74	242	Team Link	Heavyweight	Brazil	76	2.12000000000000011	45	2.93999999999999995	57	2.79999999999999982	39	66	1.10000000000000009	12	9	0	21	57	92
7431	Melvin Guillard	1983-03-30	69	155	American Top Team	Lightweight	United States	68	2.95999999999999996	40	1.85000000000000009	66	1.30000000000000004	63	61	0.200000000000000011	11	9	0	20	55	64
7466	Gegard Mousasi	1985-08-01	73	185	Red Devil International	Middleweight	Netherlands	76	3.68000000000000016	50	1.19999999999999996	69	1.6399999999999999	61	61	1.19999999999999996	4	3	0	7	57	50
7513	Lyoto Machida	1978-05-30	73	185	APAM	Middleweight	Brazil	74	2.62999999999999989	53	1.59000000000000008	62	1.33000000000000007	65	75	0.400000000000000022	14	7	0	21	67	50
7540	Anthony Njokuani	1980-03-01	72	155	Janjira Muay Thai	Lightweight	United States	75	3.93999999999999995	46	2.41000000000000014	65	0.5	45	53	0.200000000000000011	3	5	0	8	38	33
7621	Igor Pokrajac	1979-02-01	72	205	American Top Team	Light Heavyweight	Croatia	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	7	0	11	36	75
7632	Kyle Noke	1980-03-18	73	170	Jackson-Wink MMA	Welterweight	Australia	76	3.22999999999999998	50	2.08999999999999986	64	1.53000000000000003	54	66	0.800000000000000044	6	4	0	10	60	83
7688	Jorge Masvidal	1984-11-12	71	170	American Top Team	Lightweight	United States	74	4.32000000000000028	47	2.93999999999999995	68	1.92999999999999994	61	79	0.5	6	3	0	9	67	33
7780	James Irvin	1978-09-12	74	205	Reign MMA	Middleweight	United States	75	2.0299999999999998	48	3.85999999999999988	35	0	0	36	0.5	4	6	0	10	40	75
7795	Pete Sell	1982-08-25	71	179	Serra-Longo Fight Team	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	5	0	7	29	50
7918	Kyle Bradley	1982-08-19	70	155	Team Voodoo	Welterweight	United States	71	1.98999999999999999	40	3.45000000000000018	58	0.650000000000000022	50	40	0	1	3	0	4	25	100
7987	Charles McCarthy	1980-08-06	70	185	American Top Team	Middleweight	United States	71	0.179999999999999993	12	4.03000000000000025	56	2.66999999999999993	60	0	2.70000000000000018	1	2	0	3	33	100
8021	Kenny Florian	1976-05-26	70	145	Florian Martial Arts Center	Featherweight	United States	74	2.41000000000000014	40	1.85000000000000009	63	2.2200000000000002	33	60	1.30000000000000004	12	5	0	17	71	83
8095	Kalib Starnes	1975-01-06	75	185	Aegis Athletics	Light Heavyweight	Canada	74	2.70999999999999996	48	4.42999999999999972	53	1.45999999999999996	33	25	0.599999999999999978	2	3	0	5	40	50
8183	Ben Nguyen	1988-08-03	64	125	Integrated MMA	Flyweight	United States	65	4.55999999999999961	43	3.7200000000000002	56	0	0	66	1.39999999999999991	2	0	0	2	100	100
8184	Clay Guida	1981-12-08	67	145	Jackson-Wink MMA	Featherweight	United States	70	2.25	31	2.43999999999999995	65	3.5299999999999998	38	69	0.800000000000000044	12	10	0	22	55	42
8321	Jason Dent	1980-06-12	70	155	GriffonRawl Thaiboxing & MMA Academy	Welterweight	United States	71	2.00999999999999979	39	3.70000000000000018	62	0	0	26	1.39999999999999991	1	3	0	4	25	100
8390	Fabricio Werdum	1977-07-30	76	231	Werdum Combat Team	Heavyweight	Brazil	77	3.43999999999999995	51	2.24000000000000021	58	1.66999999999999993	31	34	1.30000000000000004	8	2	0	10	80	75
8394	Ronaldo Souza	1979-12-07	72	184	X-Gym	Middleweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	5	1	0	6	83	80
8592	Marcus Davis	1973-08-24	68	170	Team Irish	Welterweight	United States	70	2.7200000000000002	39	2.79000000000000004	65	1.60000000000000009	48	47	1.39999999999999991	8	6	0	14	57	75
8593	Thales Leites	1981-09-06	73	185	Nova Uniao	Middleweight	Brazil	78	2	39	2.95999999999999996	53	2.25	28	40	1.19999999999999996	10	4	0	14	71	60
8800	Che Mills	1982-09-29	69	170	Champion's Creed MMA	Lightweight	Canada	76	2.08000000000000007	52	2.87000000000000011	43	1.17999999999999994	66	58	0	2	1	0	3	67	100
8847	Urijah Faber	1979-05-14	66	135	Team Alpha Male	Bantamweight	United States	67	2.66000000000000014	41	2.50999999999999979	65	1.59000000000000008	31	60	0.900000000000000022	9	4	0	13	69	67
9033	James Te Huna	1981-09-29	73	185	Pirtek Athletic Allstars	Middleweight	Australia	75	4.04000000000000004	51	2.99000000000000021	62	2.75	37	58	0.200000000000000011	5	4	0	9	56	60
9178	Krzysztof Soszynski	1977-08-02	73	205	Reign MMA	Light Heavyweight	Canada	77	3.37000000000000011	39	3.12999999999999989	58	0.520000000000000018	25	71	1	6	3	0	9	67	67
9179	Josh Neer	1983-03-24	71	170	Cesar Gracie Fight Team	Welterweight	United States	72	3.29000000000000004	46	3.62999999999999989	58	1.09000000000000008	34	46	1.30000000000000004	6	9	0	15	40	67
9418	Josh Koscheck	1977-11-30	70	170	Dethrone Base Camp	Welterweight	United States	73	1.79000000000000004	36	2.20999999999999996	63	2.50999999999999979	48	64	0.400000000000000022	15	10	0	25	60	60
9491	Anthony Perosh	1972-05-10	75	205	Sinosic	Light Heavyweight	Australia	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	7	0	11	36	100
9511	Lavar Johnson	1977-06-11	75	240	Pro Buhawe	Heavyweight	United States	82	5.38999999999999968	55	2.54000000000000004	55	0.609999999999999987	66	54	0.599999999999999978	2	2	0	4	50	100
9572	Keita Nakamura	1984-05-22	71	170	K-Taro Dojo	Welterweight	Japan	73	2.33999999999999986	37	3.54999999999999982	57	2	55	62	0.5	1	3	0	4	25	100
9574	Raphael Assuncao	1982-07-19	65	135	Ascension MMA	Bantamweight	Brazil	66	3.37000000000000011	42	2.20000000000000018	69	1.55000000000000004	34	78	0.400000000000000022	7	1	0	8	88	29
9626	Mike Easton	1984-01-25	66	135	Alliance MMA	Bantamweight	United States	70	3.50999999999999979	37	4.28000000000000025	61	0.75	22	66	0	3	4	0	7	43	33
9680	Soa Palelei	1977-12-07	76	265	AKA Thailand	Heavyweight	Australia	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	3	0	7	57	100
9781	Mark Bocek	1981-10-24	69	155	Tristar Gym	Lightweight	Canada	75	2.33999999999999986	43	2.31999999999999984	60	3.64999999999999991	36	31	1.30000000000000004	8	5	0	13	62	50
9798	Francis Carmont	1981-11-10	72	170	Renzo Gracie Jiu-Jitsu	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	6	3	0	9	67	33
9817	Dennis Siver	1979-01-13	67	145	Kiboju	Featherweight	Germany	70	3.66000000000000014	31	2.58000000000000007	66	0.930000000000000049	33	65	0.400000000000000022	11	7	0	18	61	45
9863	Rob Kimmons	1981-01-30	70	185	K2L Grindhouse	Welterweight	United States	73	1.8600000000000001	48	4.79000000000000004	38	2.08000000000000007	46	25	2.39999999999999991	3	4	0	7	43	67
9901	Sam Stout	1984-04-23	69	155	Team Tompkins	Lightweight	Canada	70	4.16999999999999993	28	4.08000000000000007	57	0.630000000000000004	38	77	0.100000000000000006	9	11	0	20	45	11
9907	Adriano Martins	1982-12-16	70	155	Top Life Amazonas	Lightweight	Brazil	72	1.85000000000000009	37	2.08999999999999986	66	0.969999999999999973	80	81	0.200000000000000011	4	1	0	5	80	75
10047	Tomasz Drwal	1982-01-22	73	205	Alliance MMA	Middleweight	Poland	76	3.29000000000000004	38	2.25999999999999979	57	3.54999999999999982	60	82	0.400000000000000022	2	3	0	5	40	100
10089	Roger Huerta	1983-05-20	69	155	Tiger Muay Thai	Lightweight	United States	70	3.64000000000000012	36	2.33000000000000007	56	2.12999999999999989	46	52	0.5	6	2	0	8	75	67
10126	Kendall Grove	1982-12-11	78	185	Straight Rootless Fight Team	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	7	6	0	13	54	57
10165	Goran Reljic	1984-03-20	75	205	University of Fighting	Light Heavyweight	Croatia	81	1.68999999999999995	37	2.68999999999999995	59	1.68999999999999995	50	33	1.10000000000000009	1	3	0	4	25	100
10196	Michael Bisping	1979-02-28	74	185	HB Ultimate	Middleweight	England	75	4.44000000000000039	38	2.62999999999999989	66	1.10000000000000009	43	64	0.299999999999999989	17	7	0	24	71	59
10200	Rashad Evans	1979-09-25	71	185	Blackzilians	Light Heavyweight	United States	75	2.12000000000000011	37	2.25999999999999979	64	3.14999999999999991	46	68	0	14	4	1	19	74	43
10249	Roy Nelson	1976-06-20	72	263	Country Club	Heavyweight	United States	72	2.18999999999999995	36	4.54999999999999982	48	1.15999999999999992	29	65	0.100000000000000006	8	8	0	16	50	88
10339	Ben Saunders	1983-04-13	75	170	American Top Team Orlando	Welterweight	United States	77	3.33000000000000007	53	3.16000000000000014	53	0.280000000000000027	40	72	1.30000000000000004	6	4	0	10	60	83
10425	Rani Yahya	1984-12-09	66	135	Constrictor Team	Bantamweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	6	2	0	8	75	33
10569	James Wilks	1978-04-05	73	170	Lightning MMA	Welterweight	England	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	2	0	4	50	50
10629	Dan Hardy	1982-05-17	72	170	Team Rough House	Welterweight	England	74	2.45999999999999996	35	3.43999999999999995	51	0.729999999999999982	35	35	0.400000000000000022	6	4	0	10	60	33
10668	Mark Hunt	1974-03-23	70	265	American Top Team	Heavyweight	New Zealand	72	3.08000000000000007	44	2.74000000000000021	52	0.650000000000000022	55	67	0.299999999999999989	6	4	1	11	55	83
10709	Vinny Magalhaes	1984-07-02	75	205	Syndicate MMA	Light Heavyweight	Brazil	79	2.14000000000000012	24	3.9700000000000002	68	1.55000000000000004	44	66	0.800000000000000044	1	4	0	5	20	100
10768	Rory Markham	1982-03-25	72	170	Miletich Martial Arts	Middleweight	United States	71	1.97999999999999998	21	10.2699999999999996	45	0	0	0	0	1	2	0	3	33	100
10846	Alexander Yakovlev	1984-07-18	73	170	K Dojo Warrior Tribe	Welterweight	Russia	74	1.8899999999999999	46	2.72999999999999998	56	1.22999999999999998	30	72	0	2	2	0	4	50	50
10924	Rob Broughton	1983-03-03	74	265	Atherton Submission Wrestling	Heavyweight	England	74	2.83000000000000007	60	2.54000000000000004	51	0	0	26	3.20000000000000018	1	2	0	3	33	100
10967	Alan Belcher	1984-04-24	74	185	Roufusport	Middleweight	United States	73	2.70000000000000018	41	3.10000000000000009	59	0.440000000000000002	26	55	0.900000000000000022	9	6	0	15	60	89
10999	War Machine	1981-11-30	71	170	Und1sputed	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	100
11001	Shannon Gugerty	1981-12-30	70	155	Victory MMA	Featherweight	United States	71	1.25	39	1.87999999999999989	58	2.12999999999999989	27	50	3.39999999999999991	2	3	0	5	40	100
11002	Cub Swanson	1983-11-02	67	145	Jackson-Wink MMA	Featherweight	United States	70	3.66999999999999993	46	3.06999999999999984	63	1.30000000000000004	51	55	0.599999999999999978	6	3	0	9	67	67
11262	Shane Nelson	1984-11-30	69	146	BJ Penn's MMA	Featherweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	2	0	4	50	50
11278	Mike Nickels	1971-12-13	76	205	Colorado Brazilian Jiu-Jitsu	Light Heavyweight	United States	\N	4.44000000000000039	52	1.1100000000000001	64	11.1099999999999994	80	0	2.79999999999999982	1	1	0	2	50	100
11281	Tim Means	1984-02-20	74	170	Fit NHB	Welterweight	United States	75	4.34999999999999964	46	2.83000000000000007	63	0.930000000000000049	50	61	0.200000000000000011	7	4	0	11	64	57
11292	Hector Lombard	1978-02-02	69	185	American Top Team	Welterweight	Cuba	71	2.81000000000000005	45	3.39999999999999991	49	2	57	81	0.699999999999999956	3	2	0	5	60	67
11451	Nate Diaz	1985-04-16	72	170	Cesar Gracie Fight Team	Lightweight	United States	76	4.63999999999999968	44	3.68999999999999995	54	1.16999999999999993	30	45	1.39999999999999991	13	8	0	21	62	77
11481	Dustin Hazelett	1986-04-29	73	170	Team Jorge Gurgel	Lightweight	United States	76	2.24000000000000021	40	3.50999999999999979	46	0.550000000000000044	50	25	4.09999999999999964	4	5	0	9	44	75
11506	Jose Aldo	1986-09-09	67	145	Nova Uniao	Featherweight	Brazil	70	3.2799999999999998	43	2.08999999999999986	71	0.82999999999999996	72	92	0.200000000000000011	7	1	0	8	88	29
11507	Rodrigo Damm	1980-02-03	67	155	Alliance Jiu-Jitsu	Featherweight	Brazil	71	3.5	36	5.61000000000000032	57	0.440000000000000002	16	80	0.299999999999999989	3	4	0	7	43	33
11660	John Dodson	1984-09-26	63	135	Jackson-Wink MMA	Flyweight	United States	66	3.33999999999999986	40	3.45999999999999996	62	0.800000000000000044	29	84	0	6	2	0	8	75	67
11675	Rafael dos Anjos	1984-10-26	69	155	Evolve MMA	Lightweight	Brazil	70	3.24000000000000021	41	3.06999999999999984	64	2.33000000000000007	41	67	0.699999999999999956	14	5	0	19	74	43
11689	Tyson Griffin	1984-04-20	66	145	American Kickboxing Academy	Lightweight	United States	68	3.70999999999999996	41	2.29999999999999982	65	1.87000000000000011	46	59	0.900000000000000022	7	6	0	13	54	14
11702	George Sotiropoulos	1977-07-09	70	155	American Top Team	Lightweight	Australia	71	2.60999999999999988	27	2.52000000000000002	67	2.31999999999999984	31	53	1.60000000000000009	7	4	0	11	64	71
11743	Brad Pickett	1978-09-24	66	135	American Top Team	Flyweight	England	68	2.9700000000000002	30	4.61000000000000032	56	2.49000000000000021	44	58	0.5	4	6	0	10	40	50
11798	John Howard	1983-03-01	67	170	Wai Kru MMA	Welterweight	United States	71	2.14999999999999991	50	3.08000000000000007	51	2.70000000000000018	49	53	0.400000000000000022	7	7	0	14	50	29
11884	Ross Pearson	1984-09-26	68	155	Alliance MMA	Lightweight	England	69	3.54000000000000004	41	3.56999999999999984	64	0.859999999999999987	38	75	0	10	7	0	17	59	50
11908	Francisco Rivera	1981-10-08	68	135	All In MMA	Bantamweight	United States	68	4.07000000000000028	41	3.16000000000000014	68	1.01000000000000001	63	68	0.599999999999999978	4	4	0	8	50	75
11941	Alex Karalexis	1977-09-20	68	155	Team Sityodtong	Welterweight	United States	66	2.39000000000000012	38	2.37000000000000011	57	2.64000000000000012	42	86	1.10000000000000009	1	2	0	3	33	100
11955	Rich Attonito	1977-06-16	70	170	American Top Team	Welterweight	United States	72	2.2799999999999998	47	2.12999999999999989	59	0.739999999999999991	37	75	0	3	2	0	5	60	33
11970	Dale Hartt	1979-04-04	70	155	Team Sityodtong	Lightweight	United States	69	1.1399999999999999	35	1.55000000000000004	66	1.21999999999999997	100	25	2.5	1	2	0	3	33	100
12073	Yoshiyuki Yoshida	1974-05-10	71	170	Haleo Top Team	Lightweight	Japan	70	0.849999999999999978	36	3.66999999999999993	36	1.40999999999999992	28	25	2.79999999999999982	2	3	0	5	40	100
12074	Takeya Mizugaki	1983-12-16	67	135	Hakkei Gym	Bantamweight	Japan	68	3.37000000000000011	37	3.27000000000000002	57	1.45999999999999996	57	70	0.100000000000000006	8	4	0	12	67	12
12098	Eddie Sanchez	1982-04-11	75	214	Kings MMA	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	3	0	5	40	100
12107	Dominick Cruz	1985-09-03	68	134	Alliance MMA	Bantamweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	0	0	4	100	25
12179	Jeremy Stephens	1986-05-26	69	145	Alliance MMA	Featherweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	11	11	0	22	50	55
12199	Luigi Fioravanti	1981-01-22	69	170	Flawless MMA	Middleweight	United States	70	2.22999999999999998	42	2.20999999999999996	69	3.75999999999999979	63	67	0.900000000000000022	4	5	0	9	44	50
12236	Matt Wiman	1983-09-19	70	155	Skrap Pack	Lightweight	United States	68	3.50999999999999979	50	3.24000000000000021	54	2.41000000000000014	38	63	1.80000000000000004	10	5	0	15	67	50
12284	Tom Murphy	1974-11-19	74	227	Tristar Gym	Light Heavyweight	United States	\N	2.5	71	0.170000000000000012	84	7.50999999999999979	85	0	2.5	1	0	0	1	100	100
12354	Antonio Silva	1979-09-14	76	264	American Top Team	Heavyweight	Brazil	80	2.89000000000000012	45	3.08999999999999986	50	0.819999999999999951	29	66	0.800000000000000044	3	5	1	9	33	100
12785	Steve Cantwell	1986-12-08	74	185	One Kick's Gym	Middleweight	United States	75	3.62999999999999989	34	5.75999999999999979	55	0.650000000000000022	30	80	0.699999999999999956	1	5	0	6	17	100
12852	Mike Massenzio	1982-11-01	74	185	Team Bombsquad	Middleweight	United States	73	2.08000000000000007	45	3.58999999999999986	54	2.74000000000000021	24	50	1.39999999999999991	2	5	0	7	29	50
12913	DaMarques Johnson	1982-06-28	72	170	Elite Performance	Welterweight	United States	75	2.10999999999999988	37	3.75	51	1.17999999999999994	55	19	0.699999999999999956	4	6	0	10	40	100
13004	Vitor Miranda	1979-03-10	73	185	Team Nogueira	Middleweight	Brazil	77	3.37999999999999989	53	2.35999999999999988	58	0.619999999999999996	50	50	0	2	1	0	3	67	100
13068	Jake Ellenberger	1985-03-28	69	170	Reign MMA	Welterweight	United States	71	2.41999999999999993	38	2.66999999999999993	61	2.08000000000000007	50	86	0.400000000000000022	9	7	0	16	56	67
13133	Cole Miller	1984-04-26	73	145	American Top Team	Featherweight	United States	74	3	33	3.87999999999999989	59	0.599999999999999978	36	38	1.80000000000000004	10	7	0	17	59	80
13275	Eric Schafer	1977-09-20	75	185	Red Schafer MMA	Middleweight	United States	75	1.8899999999999999	34	3.37999999999999989	56	1.81000000000000005	36	50	1.80000000000000004	3	6	0	9	33	100
13332	Terry Etim	1986-01-11	73	155	Team Kaobon	Lightweight	England	73	2.16000000000000014	35	2.5299999999999998	67	0.429999999999999993	30	39	1.39999999999999991	6	5	0	11	55	83
13336	Paulo Thiago	1981-01-25	71	170	X-Gym	Welterweight	Brazil	73	1.70999999999999996	39	1.98999999999999999	63	1.41999999999999993	31	63	1.19999999999999996	5	8	0	13	38	40
13428	Alejandro Perez	1989-09-02	66	135	KB-VT Gym	Bantamweight	Mexico	67	4.24000000000000021	40	2.95999999999999996	66	0.680000000000000049	33	58	0.299999999999999989	1	1	0	2	50	100
13469	Chris Clements	1976-02-09	70	170	Adrenaline Training Center	Welterweight	Canada	70	3.20000000000000018	49	2.37000000000000011	44	0	0	32	0.299999999999999989	2	2	0	4	50	50
13791	Bryan Caraway	1984-08-04	69	135	Xtreme Couture	Bantamweight	United States	68	2.25	33	3.06999999999999984	57	2.81999999999999984	34	80	0.900000000000000022	5	2	0	7	71	80
13827	Seth Baczynski	1981-10-26	75	170	Power MMA Team	Welterweight	United States	74	3.08000000000000007	31	3.14000000000000012	51	0.890000000000000013	16	48	0.800000000000000044	5	6	0	11	45	60
13968	Rafael Natal	1982-12-25	72	185	Renzo Gracie Jiu-Jitsu	Middleweight	Brazil	76	3.08000000000000007	47	2.39999999999999991	58	2.58999999999999986	34	78	0.5	9	4	1	14	64	22
13976	Marcio Cruz	1978-04-24	76	232	Gracie Fusion	Light Heavyweight	Brazil	\N	2.91999999999999993	46	1.51000000000000001	68	0.530000000000000027	7	37	1.60000000000000009	1	2	0	3	33	100
14013	Shane Carwin	1975-01-04	74	265	Grudge Training Center	Heavyweight	United States	80	4.37999999999999989	47	3.5299999999999998	53	1.41999999999999993	33	42	0	3	2	0	5	60	100
14018	Rory MacDonald	1989-07-22	71	170	Tristar Gym	Welterweight	Canada	76	3.75	42	2.79999999999999982	62	1.77000000000000002	47	88	0.400000000000000022	9	3	0	12	75	44
14028	Paul Kelly	1984-09-12	69	155	Team Kaobon	Welterweight	England	70	3.2200000000000002	37	2.60999999999999988	59	1.34000000000000008	60	30	1.5	5	4	0	9	56	40
14047	Mike Ciesnolevicz	1979-10-28	72	235	Miletich Martial Arts	Light Heavyweight	United States	\N	0.510000000000000009	50	4.62000000000000011	57	0	0	20	5.09999999999999964	1	1	0	2	50	100
14062	Neil Seery	1979-08-30	66	125	Team Ryano MMA	Flyweight	Ireland	64	3.10999999999999988	40	2.95000000000000018	62	0.890000000000000013	31	54	1.80000000000000004	3	2	0	5	60	33
14185	Jason High	1981-10-12	69	155	American Top Team HD	Lightweight	United States	71	1.28000000000000003	42	1.56000000000000005	48	2.35999999999999988	63	37	2.79999999999999982	2	3	0	5	40	50
14204	Frankie Edgar	1981-10-16	66	145	Ricardo Almeida Jiu-Jitsu	Featherweight	United States	68	3.45999999999999996	39	2.16000000000000014	70	2.62000000000000011	35	65	0.400000000000000022	14	4	1	19	74	43
14207	Lyman Good	1985-05-26	72	170	Team Tiger Schulmann	Welterweight	United States	74	6.37999999999999989	51	2.31999999999999984	79	0	0	0	0	1	0	0	1	100	100
14210	Uriah Hall	1984-07-31	72	185	Team Tiger Schulmann	Middleweight	United States	79	3.10999999999999988	52	2.95000000000000018	55	1.07000000000000006	41	72	0.299999999999999989	5	4	0	9	56	80
14310	Matt Brown	1981-01-10	72	170	Team Jorge Gurgel	Welterweight	United States	75	3.75999999999999979	53	2.62999999999999989	56	1.60000000000000009	46	62	1.69999999999999996	13	7	0	20	65	85
14396	Thiago Silva	1982-11-12	73	205	Blackzilians	Heavyweight	Brazil	74	3.91999999999999993	50	2.54999999999999982	67	1.03000000000000003	47	70	0.699999999999999956	7	3	0	10	70	86
14463	Jim Miller	1983-08-30	68	155	Miller Brothers MMA	Lightweight	United States	71	2.75	39	2.64000000000000012	62	1.69999999999999996	42	48	2.10000000000000009	14	6	0	20	70	57
14464	Dan Miller	1981-06-30	73	185	Miller Brothers MMA	Middleweight	United States	74	2.0299999999999998	36	3.06000000000000005	49	1.66999999999999993	54	47	1.80000000000000004	6	7	0	13	46	67
14600	Bubba McDaniel	1983-05-03	75	185	\N	Light Heavyweight	United States	75	1.6399999999999999	44	1.97999999999999998	56	0.930000000000000049	50	50	1.39999999999999991	1	2	0	3	33	100
14637	Demian Maia	1977-11-06	72	170	Demian Maia Jiu-Jitsu	Welterweight	Brazil	72	1.82000000000000006	44	1.6100000000000001	62	2.99000000000000021	31	65	1.30000000000000004	16	6	0	22	73	50
14829	Brian Stann	1980-09-24	73	205	Jackson-Wink MMA	Middleweight	United States	74	3.2799999999999998	42	2.64999999999999991	59	0.119999999999999996	12	60	0.299999999999999989	6	5	0	11	55	67
14883	Cung Le	1972-05-25	70	185	Cung Le's Universal Strength Headquarters	Middleweight	United States	69	4.36000000000000032	48	2.97999999999999998	66	1.37000000000000011	71	88	0.299999999999999989	2	2	0	4	50	50
14892	Jake O'Brien	1984-09-25	75	205	Integrated Fighting Academy	Light Heavyweight	United States	76	1.31000000000000005	31	1.91999999999999993	69	6.38999999999999968	54	25	0.200000000000000011	4	3	0	7	57	25
15008	Joseph Benavidez	1984-07-31	64	125	Team Alpha Male	Flyweight	United States	65	3.41999999999999993	33	2.35999999999999988	65	1.20999999999999996	29	66	0.800000000000000044	11	2	0	13	85	36
15009	Erick Silva	1984-06-21	71	170	Team Nogueira	Welterweight	Brazil	74	2.64999999999999991	50	4.26999999999999957	45	1.07000000000000006	46	59	1.80000000000000004	6	5	0	11	55	100
15058	Nik Lentz	1984-08-13	68	155	American Top Team	Featherweight	United States	68	3.10999999999999988	49	2.81000000000000005	48	3.79000000000000004	36	44	1.39999999999999991	10	4	1	15	67	20
15063	Stefan Struve	1988-02-18	84	265	Team Schrijber	Heavyweight	Netherlands	84	3.39000000000000012	50	3.49000000000000021	48	0.739999999999999991	66	63	2.5	9	6	0	15	60	78
15104	Eliot Marshall	1980-07-07	75	205	Grudge Training Center	Light Heavyweight	United States	77	1.92999999999999994	27	2.39000000000000012	67	0.469999999999999973	33	79	0.900000000000000022	3	3	0	6	50	33
15105	Donald Cerrone	1983-03-29	71	170	Jackson-Wink MMA	Lightweight	United States	73	4.17999999999999972	47	4.00999999999999979	54	1.3600000000000001	42	70	1.60000000000000009	16	4	0	20	80	62
15125	T.J. Waldburger	1988-04-25	71	170	Grapplers Lair Fight Team	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	4	0	8	50	75
15179	Tom Watson	1982-07-13	73	185	Jackson-Wink MMA	Middleweight	England	73	4.00999999999999979	44	4.41000000000000014	50	0.149999999999999994	7	43	0	2	5	0	7	29	50
15574	John Maguire	1983-05-19	69	155	Tsunami Gym	Welterweight	England	69	1.40999999999999992	41	2.43999999999999995	65	2.79999999999999982	46	77	1.10000000000000009	2	3	0	5	40	50
15626	Nate Loughran	1980-07-28	74	185	Nor-Cal Fighting Alliance	Welterweight	United States	\N	1.81000000000000005	40	4.11000000000000032	59	0	0	0	2.10000000000000009	1	1	0	2	50	100
15759	Jake Hecht	1984-02-09	72	170	Fiore MMA	Welterweight	United States	76	3.25999999999999979	47	2.75999999999999979	56	2.04000000000000004	37	40	0	1	2	0	3	33	100
15816	Peter Sobotta	1987-01-11	72	170	Planet Eater	Welterweight	Germany	75	2	38	2.93999999999999995	59	2.06000000000000005	36	85	0.800000000000000044	2	4	0	6	33	50
15835	Gray Maynard	1979-09-05	68	155	American Kickboxing Academy	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	9	5	1	15	60	11
15906	T.J. Grant	1984-02-26	70	155	Fit Plus	Lightweight	Canada	\N	\N	\N	\N	\N	\N	\N	\N	\N	8	3	0	11	73	50
15937	Yaotzin Meza	1981-02-04	69	145	MMA Lab	Featherweight	United States	74	1.42999999999999994	41	1.62000000000000011	64	1.06000000000000005	20	18	1.39999999999999991	2	3	0	5	40	50
15949	Jared Hamman	1982-03-07	75	185	Dynamix MMA	Light Heavyweight	United States	75	5.15000000000000036	42	3.93000000000000016	55	1.57000000000000006	46	30	0	2	5	0	7	29	50
16129	Iuri Alcantara	1980-08-04	69	135	Marajo Brothers Team	Bantamweight	Brazil	71	2.64000000000000012	47	2.0299999999999998	52	1.43999999999999995	70	58	0.699999999999999956	7	4	0	11	64	29
16161	Rafael Cavalcante	1980-04-04	72	205	Team Nogueira	Light Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	4	0	5	20	100
16180	Justin Salas	1982-03-13	68	155	Grudge Training Center	Lightweight	United States	70	3.41999999999999993	43	2.95999999999999996	68	2.43000000000000016	20	0	0	3	3	0	6	50	33
16286	Rousimar Palhares	1980-02-20	68	170	Team Nogueira	Welterweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	8	4	0	12	67	75
16374	Dong Hyun Kim	1981-11-17	73	170	Busan Team M.A.D.	Welterweight	South Korea	76	2.18999999999999995	49	1.79000000000000004	59	3.00999999999999979	43	80	0.699999999999999956	12	3	0	15	80	42
16415	George Roop	1981-11-10	73	135	Apex MMA	Bantamweight	United States	72	3.43000000000000016	34	2.4700000000000002	60	1.05000000000000004	57	59	0.100000000000000006	5	8	0	13	38	40
16426	Fabio Maldonado	1980-03-17	73	205	American Top Team	Light Heavyweight	Brazil	75	5.29000000000000004	58	4.30999999999999961	53	0.440000000000000002	57	61	0.599999999999999978	5	6	0	11	45	40
16467	Chris Cariaso	1981-05-27	63	125	Fight and Fitness	Flyweight	United States	63	3.35000000000000009	43	2.22999999999999998	61	1.1100000000000001	39	57	0.800000000000000044	7	6	0	13	54	14
16470	Tamdan McCrory	1986-11-05	76	185	CNY MMA	Welterweight	United States	78	2.06999999999999984	49	1.60000000000000009	46	2.2799999999999998	50	33	2.5	3	3	0	6	50	67
16555	Efrain Escudero	1986-01-15	69	155	MMA Lab	Lightweight	United States	70	2.91999999999999993	44	2.29999999999999982	63	1.31000000000000005	40	66	0.800000000000000044	5	6	0	11	45	40
16558	Kyle Kingsbury	1982-03-22	76	205	American Kickboxing Academy	Light Heavyweight	United States	76	2.9700000000000002	40	3.81000000000000005	51	2.64000000000000012	41	52	0	4	5	0	9	44	25
16695	Matt Hamill	1976-10-05	74	205	\N	Light Heavyweight	United States	76	3.68999999999999995	42	3.79999999999999982	61	3	34	91	0	9	5	0	14	64	44
16705	Alberto Mina	1982-05-02	72	170	Kings MMA	Welterweight	Brazil	77	4.65000000000000036	46	4.33999999999999986	44	2.35000000000000009	21	50	0	2	0	0	2	100	50
16785	Travis Browne	1982-07-17	79	255	Glendale Fighting Club	Heavyweight	United States	79	2.87999999999999989	40	4.15000000000000036	43	1.25	71	83	0.200000000000000011	9	3	1	13	69	89
16806	Katsunori Kikuno	1981-10-30	68	145	Alliance-Square	Featherweight	Japan	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	3	0	5	40	50
16852	Scott Jorgensen	1982-09-17	65	135	Twisted Genetiks	Bantamweight	United States	66	3.37000000000000011	40	3.41000000000000014	65	2.60999999999999988	45	59	0.699999999999999956	4	8	0	12	33	50
16984	Tiequan Zhang	1978-07-25	69	155	China Top Team	Featherweight	China	70	1.22999999999999998	36	2.14000000000000012	51	1.94999999999999996	58	75	3.39999999999999991	1	3	0	4	25	100
17010	Rameau Thierry Sokoudjou	1984-04-18	70	205	Team Quest	Light Heavyweight	United States	78	2.25999999999999979	45	2.60999999999999988	56	1.92999999999999994	47	78	0.900000000000000022	1	2	0	3	33	100
17034	Andre Winner	1981-11-09	71	155	Team Rough House	Lightweight	England	73	2.52000000000000002	33	4.57000000000000028	51	0	0	74	0	2	4	0	6	33	50
17052	Joseph Duffy	1988-02-18	70	155	The MMA Clinic	Lightweight	Ireland	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	1	0	3	67	100
17129	Abel Trujillo	1983-09-18	68	155	Blackzilians	Lightweight	United States	70	2.77000000000000002	42	2.16999999999999993	60	2.37999999999999989	51	40	0.5	4	3	0	7	57	100
17139	Jesse Lennox	1982-03-10	69	170	Miletich Martial Arts	Welterweight	United States	72	2.68999999999999995	32	3.20000000000000018	64	1.21999999999999997	66	63	0.299999999999999989	1	2	0	3	33	100
17224	Chris Camozzi	1986-11-20	75	185	factoryX Muay Thai	Middleweight	United States	76	3.7799999999999998	44	2.99000000000000021	57	0.28999999999999998	19	59	0.400000000000000022	8	7	0	15	53	38
17272	Junior dos Santos	1984-01-30	76	238	Champion Team	Heavyweight	Brazil	77	4.88999999999999968	48	3.2200000000000002	55	0.409999999999999976	62	80	0.100000000000000006	11	3	0	14	79	73
17316	Jonathan Brookins	1985-08-13	72	145	Gracie Barra Orlando	Bantamweight	United States	73	2.68999999999999995	39	3.62999999999999989	56	1.93999999999999995	17	80	0.299999999999999989	2	3	0	5	40	50
17460	Josh Samman	1988-03-14	75	185	MMA Masters	Middleweight	United States	79	2.08000000000000007	52	2.4700000000000002	34	1.09000000000000008	33	33	0.400000000000000022	3	1	0	4	75	100
17522	Brock Lesnar	1977-07-12	75	265	Team Death Clutch	Heavyweight	United States	81	3.5299999999999998	72	2.10999999999999988	50	3.89999999999999991	55	60	0.5	4	3	0	7	57	75
17559	Luiz Cane	1981-04-02	74	205	Demian Maia Jiu-Jitsu	Light Heavyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	5	0	9	44	75
17662	Anthony Johnson	1984-03-06	74	205	Blackzilians	Light Heavyweight	United States	78	3.29999999999999982	46	1.64999999999999991	64	2.47999999999999998	60	79	0.699999999999999956	12	5	0	17	71	83
17665	Daniel Sarafian	1982-08-21	69	185	Power MMA	Middleweight	Brazil	73	2.22999999999999998	46	3.10000000000000009	58	0.359999999999999987	7	53	0.699999999999999956	2	4	0	6	33	100
17723	Brian Foster	1984-04-04	70	155	factoryX Muay Thai	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	2	0	5	60	100
17903	Gerald Harris	1979-11-19	71	185	Ghost Dog	Welterweight	United States	77	1.40999999999999992	29	1.58000000000000007	62	2.95999999999999996	54	72	0	3	1	0	4	75	100
17915	Mike de la Torre	1986-09-22	72	145	MMA Lab	Bantamweight	United States	71	3.5	39	4.24000000000000021	54	0.400000000000000022	16	85	0	2	2	0	4	50	50
18062	Justin Buchholz	1983-08-22	71	155	Team Alpha Male	Lightweight	United States	73	2.35000000000000009	26	4.13999999999999968	51	0	0	33	0.800000000000000044	1	4	0	5	20	100
18168	Hector Urbina	1987-09-17	72	170	American Top Team	Welterweight	United States	73	0.969999999999999973	38	2.43999999999999995	39	0	0	38	3.79999999999999982	1	1	0	2	50	100
18921	Reza Madadi	1978-06-20	71	155	Allstars Training Center	Lightweight	Iran, Islamic Republic of	72	2.87000000000000011	47	3.45000000000000018	65	3	38	89	0.800000000000000044	2	2	0	4	50	100
18944	Brian Bowles	1980-06-22	67	135	Hardcore Gym	Bantamweight	United States	70	2.35999999999999988	26	2.97999999999999998	64	1.3899999999999999	70	54	1.39999999999999991	2	2	0	4	50	50
19102	Cain Velasquez	1982-07-28	73	240	American Kickboxing Academy	Heavyweight	United States	77	6.37999999999999989	57	2.29000000000000004	57	5.15000000000000036	45	85	0.400000000000000022	11	2	0	13	85	82
19128	Nick Denis	1983-10-11	66	135	Ronin MMA	Bantamweight	Canada	\N	6.54000000000000004	53	5.41999999999999993	36	2.79999999999999982	100	80	0	1	1	0	2	50	100
19456	Matt Arroyo	1982-09-10	72	155	\N	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	100
19521	Leandro Issa	1983-09-19	66	135	Evolve MMA	Bantamweight	Brazil	69	2.08000000000000007	37	3.16999999999999993	58	2.37999999999999989	22	50	1.19999999999999996	2	2	0	4	50	100
19530	Antonio Braga Neto	1987-10-29	75	185	Team Nogueira	Middleweight	Brazil	77	1.30000000000000004	46	2.66999999999999993	53	3.56000000000000005	36	0	0.900000000000000022	1	1	0	2	50	100
19544	Tim Boetsch	1981-01-28	71	185	Team Irish	Light Heavyweight	United States	74	2.85000000000000009	51	2.79999999999999982	56	1.6399999999999999	35	58	0.900000000000000022	8	9	0	17	47	38
19640	Sean McCorkle	1976-07-17	79	265	Team James Clingerman	Super Heavyweight	United States	81	0.849999999999999978	44	2.47999999999999998	52	2.12000000000000011	40	33	4.20000000000000018	1	2	0	3	33	100
19717	Johnny Bedford	1983-01-06	69	135	Fitness Fight Factory	Bantamweight	United States	71	4.53000000000000025	50	1.75	63	1.83000000000000007	62	62	0	2	3	0	5	40	100
19720	Dave Herman	1984-10-03	76	242	Team Quest	Heavyweight	United States	76	4.98000000000000043	60	3.7799999999999998	48	1.48999999999999999	100	58	0	1	4	0	5	20	100
19977	Simeon Thoresen	1984-03-14	73	170	Frontline Academy	Welterweight	Norway	79	3.85000000000000009	43	3.85000000000000009	64	1.12000000000000011	40	50	1.69999999999999996	1	2	0	3	33	100
20512	Kevin Burns	1980-03-03	72	170	Grudge Training Center	Welterweight	United States	74	2.74000000000000021	38	4.29999999999999982	52	0.280000000000000027	50	47	0.800000000000000044	2	3	0	5	40	100
20548	Benson Henderson	1983-11-16	69	170	MMA Lab	Lightweight	United States	70	2.93000000000000016	45	1.79000000000000004	63	2.39999999999999991	45	63	0.800000000000000044	11	3	0	14	79	18
20552	Mike Russow	1976-11-09	73	256	\N	Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	2	0	6	67	50
21039	Kiichi Kunimoto	1981-05-01	70	170	Cobra Kai MMA Dojo	Welterweight	Japan	71	1.95999999999999996	41	4.59999999999999964	38	1.39999999999999991	15	25	0.5	3	1	0	4	75	33
21040	Hyun Gyu Lim	1985-01-16	74	170	Korean Top Team	Welterweight	South Korea	77	4.92999999999999972	43	5.33000000000000007	46	0.299999999999999989	100	77	0.299999999999999989	3	2	0	5	60	100
21044	Ryan Jimmo	1981-11-27	74	205	Power MMA Team	Light Heavyweight	Canada	73	3.12000000000000011	66	2.77000000000000002	46	0.450000000000000011	28	87	0	3	4	0	7	43	67
21219	Joey Beltran	1981-12-09	73	185	Blackline	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	6	0	9	33	67
21339	Robbie Peralta	1986-03-14	68	145	Team Xplode MMA	Featherweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	3	0	7	57	50
21343	Sergio Moraes	1982-07-23	72	170	Evolucao Thai	Welterweight	Brazil	72	2.2799999999999998	46	2.79000000000000004	64	1.35000000000000009	30	66	0.5	4	1	0	5	80	75
21564	Daniel Pineda	1985-08-06	67	145	4oz. Fight Club	Lightweight	United States	69	2.99000000000000021	43	2.50999999999999979	47	1.45999999999999996	25	48	2	3	4	0	7	43	100
21618	Marcus Brimage	1985-04-06	64	135	American Top Team	Bantamweight	United States	71	3.9700000000000002	35	3.64000000000000012	56	0.560000000000000053	100	80	0	4	4	0	8	50	25
21803	Dylan Andrews	1979-11-15	73	185	Heartbreak Conditioning	Middleweight	New Zealand	73	2.20999999999999996	50	2.7200000000000002	46	2.83000000000000007	50	57	0.400000000000000022	2	3	0	5	40	100
21940	Tom Lawlor	1983-05-15	72	205	The Jungle MMA	Light Heavyweight	United States	74	2.5	42	2.41000000000000014	60	2.45999999999999996	32	57	1.39999999999999991	6	4	0	10	60	67
22038	Evan Dunham	1981-12-18	70	155	Xtreme Couture	Lightweight	United States	70	5.67999999999999972	39	3.37999999999999989	63	1.90999999999999992	34	80	1.10000000000000009	10	6	0	16	62	30
22071	Alexis Davis	1984-10-04	65	135	Cesar Gracie Fight Team	Bantamweight	Canada	68	4.69000000000000039	48	4.5	52	0.869999999999999996	38	40	0.900000000000000022	4	1	0	5	80	25
22094	Darren Elkins	1984-05-16	70	145	Duneland Vale Tudo	Featherweight	United States	71	3.10999999999999988	35	1.8899999999999999	59	2.99000000000000021	37	25	1.5	9	4	0	13	69	22
22111	James McSweeney	1980-10-24	76	230	Tiger Muay Thai	Light Heavyweight	England	77	3.93999999999999995	55	4.33000000000000007	42	0.520000000000000018	33	100	1.10000000000000009	1	2	0	3	33	100
22137	Magnus Cedenblad	1982-04-10	75	185	Allstars Training Center	Middleweight	Sweden	79	2.37999999999999989	51	3.02000000000000002	40	2.87000000000000011	64	66	1	3	1	0	4	75	67
22173	Cody McKenzie	1987-12-16	72	155	Warrior Camp	Welterweight	United States	72	1.73999999999999999	34	2.5	67	2.5	25	14	2.5	3	4	0	7	43	67
22223	Ildemar Alcantara	1982-11-17	74	185	Marajo Brothers Team	Middleweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	2	0	6	67	25
22298	Brandon Thatch	1985-07-11	74	170	Elevation Fight Team	Welterweight	United States	74	2.70000000000000018	42	3.62999999999999989	52	1.3600000000000001	66	50	0.699999999999999956	2	2	0	4	50	100
22304	Cody Donovan	1981-02-20	75	205	Grudge Training Center	Light Heavyweight	United States	74	5.61000000000000032	59	5.44000000000000039	45	1.66999999999999993	28	0	1.69999999999999996	1	3	0	4	25	100
22350	C.B. Dollaway	1983-08-10	74	185	Power MMA Team	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	9	8	0	17	53	44
22400	Cezar Ferreira	1985-02-15	73	185	Blackzilians	Middleweight	Brazil	78	1.85000000000000009	39	1.8600000000000001	56	2.62000000000000011	69	100	0.299999999999999989	4	3	0	7	57	25
22411	Mark Munoz	1978-02-09	72	185	Reign MMA	Middleweight	United States	72	3.12000000000000011	51	2.25999999999999979	57	3.16999999999999993	29	57	0.599999999999999978	9	6	0	15	60	44
22490	Edwin Figueroa	1984-07-31	67	135	Mohler MMA	Bantamweight	United States	69	2.56999999999999984	39	3.06000000000000005	51	0.200000000000000011	100	37	0.599999999999999978	2	4	0	6	33	50
22537	Steven Siler	1987-02-15	71	145	The Pit Elevated Fight Team	Welterweight	United States	70	3.20999999999999996	41	2.95999999999999996	54	0.469999999999999973	21	55	1.60000000000000009	5	3	0	8	62	40
22556	Mitch Clarke	1985-11-24	70	155	MMA Lab	Lightweight	Canada	73	2.25999999999999979	34	2.85000000000000009	46	0.739999999999999991	18	50	0.5	2	3	0	5	40	50
22858	Ryan Bader	1983-06-07	74	205	Power MMA Team	Light Heavyweight	United States	74	2.81999999999999984	43	1.3899999999999999	71	3.37000000000000011	44	80	0.400000000000000022	13	5	0	18	72	31
22903	Todd Duffee	1985-12-06	75	260	American Top Team	Heavyweight	United States	79	5.58000000000000007	35	2.60999999999999988	60	0	0	90	0	3	2	0	5	60	100
23006	Nick Catone	1981-09-01	72	185	Nick Catone MMA Academy	Middleweight	United States	72	2.10999999999999988	44	2.31999999999999984	63	3.70999999999999996	44	83	0.5	4	4	0	8	50	25
23091	Michelle Waterson	1986-01-06	63	115	Jackson-Wink MMA	Atomweight	United States	62	2.60999999999999988	73	0.82999999999999996	68	3.00999999999999979	100	62	3.5	1	0	0	1	100	100
23156	Renan Barao	1987-01-31	67	145	Nova Uniao	Bantamweight	Brazil	70	3.64000000000000012	34	3.5	60	1.45999999999999996	43	97	0.599999999999999978	8	2	0	10	80	62
23167	Tae Hyun Bang	1983-04-15	69	155	Korean Top Team	Lightweight	South Korea	71	2.7200000000000002	38	2.06999999999999984	66	0.489999999999999991	33	57	0.5	2	2	0	4	50	50
23253	James Head	1984-02-09	74	170	R-1 MMA	Welterweight	United States	73	2.75	48	3.10999999999999988	49	0.409999999999999976	100	66	0.800000000000000044	2	3	0	5	40	50
23322	Jake Rosholt	1982-02-09	73	185	Team Takedown	Light Heavyweight	United States	\N	2.68000000000000016	53	2.33000000000000007	49	6.50999999999999979	68	0	1.80000000000000004	1	2	0	3	33	100
23345	Luke Rockhold	1984-10-17	75	185	American Kickboxing Academy	Middleweight	United States	77	4.16999999999999993	48	2.12000000000000011	60	0.560000000000000053	40	69	1.39999999999999991	5	1	0	6	83	100
23350	Matt Veach	1981-05-31	67	155	Finney's HIT Squad	Welterweight	United States	\N	1.12000000000000011	28	4.91000000000000014	44	3.64000000000000012	38	100	1.5	1	2	0	3	33	100
23390	Erik Koch	1988-10-04	70	155	Roufusport	Featherweight	United States	70	2.31999999999999984	42	2.31000000000000005	44	0.689999999999999947	44	80	1.5	3	3	0	6	50	67
23401	Wilson Reis	1985-01-06	64	125	Brazilian Jiu-Jitsu United	Flyweight	Brazil	65	2.14999999999999991	37	2.12000000000000011	62	5.50999999999999979	46	53	0.800000000000000044	4	2	0	6	67	25
23501	Dongi Yang	1984-12-07	71	185	Korean Top Team	Middleweight	South Korea	71	3.54999999999999982	51	3.20999999999999996	63	1.69999999999999996	41	61	0.5	2	3	0	5	40	100
23531	Paul Sass	1988-08-04	73	155	Team Kaobon	Lightweight	England	73	0.530000000000000027	26	1.89999999999999991	51	0.530000000000000027	16	33	7.40000000000000036	3	2	0	5	60	100
23648	Sheldon Westcott	1984-08-20	73	170	Complete Fitness and Martial Arts	Welterweight	Canada	71	2.25999999999999979	40	3.72999999999999998	37	3.22999999999999998	37	14	0	1	2	0	3	33	100
23852	Mario Miranda	1978-09-21	75	185	Black House	Middleweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	3	0	4	25	100
23864	Corey Hill	1978-10-03	76	155	KO Evolution	Welterweight	United States	80	3.56999999999999984	46	1.6100000000000001	70	3.02000000000000002	80	100	0	1	2	0	3	33	100
23978	Ricardo Romero	1978-04-15	72	205	AMA Fight Club	Light Heavyweight	United States	76	2.16999999999999993	55	4.76999999999999957	46	1.62999999999999989	10	100	3.29999999999999982	1	2	0	3	33	100
23982	Drew Dober	1988-10-19	68	155	MidAmerica Martial Arts	Lightweight	United States	70	3.33000000000000007	33	3.99000000000000021	55	1.14999999999999991	16	66	0.200000000000000011	2	3	0	5	40	50
23999	Daniel Roberts	1980-08-05	70	170	Cesar Gracie Fight Team	Welterweight	United States	74	0.729999999999999982	20	2.27000000000000002	46	2.45999999999999996	44	40	2.5	3	4	0	7	43	67
24067	Kyung Ho Kang	1987-09-09	69	135	Busan Team M.A.D.	Bantamweight	South Korea	72	2.04000000000000004	43	1.3899999999999999	57	2.54999999999999982	71	81	1.5	2	1	0	3	67	50
24539	Johny Hendricks	1983-09-12	69	185	Team Takedown	Welterweight	United States	69	3.50999999999999979	46	3.91000000000000014	53	4.25999999999999979	48	60	0.400000000000000022	12	4	0	16	75	42
24540	Shane Roller	1979-07-14	70	155	Team Takedown	Lightweight	United States	72	2.04000000000000004	34	2.64999999999999991	60	2.45999999999999996	33	42	1.89999999999999991	2	4	0	6	33	50
24765	Jacob Volkmann	1980-09-05	69	155	Minnesota Martial Arts Academy	Welterweight	United States	71	1.18999999999999995	34	1.78000000000000003	52	3.18999999999999995	48	52	2	6	4	0	10	60	17
24913	Ken Stone	1982-10-08	68	135	American Top Team	Bantamweight	United States	71	3.85000000000000009	49	2.89999999999999991	48	1.23999999999999999	33	60	0.599999999999999978	2	2	0	4	50	50
24986	Aaron Simpson	1974-07-20	72	170	Power MMA Team	Welterweight	United States	73	3.60000000000000009	52	2.5299999999999998	56	3.7799999999999998	34	83	0.5	7	4	0	11	64	29
25097	Diego Brandao	1987-05-27	67	145	Jackson-Wink MMA	Featherweight	Brazil	68	2.93999999999999995	47	3.37999999999999989	62	3.20999999999999996	68	80	0.599999999999999978	6	4	0	10	60	67
25245	Aisling Daly	1987-12-24	63	115	SBG Ireland	Strawweight	Ireland	64	2.91999999999999993	52	1.39999999999999991	55	2.14999999999999991	41	33	0.900000000000000022	2	1	0	3	67	50
25246	Gunnar Nelson	1988-07-28	71	170	Mjolnir	Welterweight	Iceland	72	2.02000000000000002	57	3.72999999999999998	51	1.60000000000000009	64	70	1.10000000000000009	5	2	0	7	71	80
25415	Mike Pierce	1980-09-01	68	170	Sports Lab	Welterweight	United States	70	2.62000000000000011	42	2.35999999999999988	62	3.08000000000000007	42	71	0.200000000000000011	9	5	0	14	64	44
25733	Gabriel Benitez	1988-06-15	68	145	Entram Gym	Featherweight	Mexico	71	3.79000000000000004	45	2.47999999999999998	71	0	0	52	3	2	1	0	3	67	50
25821	Jan Blachowicz	1983-02-24	74	205	PJ Promotion	Light Heavyweight	Poland	78	3.2799999999999998	49	3.45000000000000018	48	1.20999999999999996	55	33	0.200000000000000011	1	2	0	3	33	100
25989	Rick Story	1984-08-28	70	170	MMA Lab	Welterweight	United States	71	3.79999999999999982	41	2.16999999999999993	62	2.5299999999999998	48	63	0.900000000000000022	11	6	0	17	65	36
26070	Danny Castillo	1979-08-25	69	155	Team Alpha Male	Lightweight	United States	71	2.56999999999999984	42	1.95999999999999996	62	2.95000000000000018	38	63	0.200000000000000011	7	7	0	14	50	29
26162	Alexander Gustafsson	1987-01-15	76	205	Allstars Training Center	Light Heavyweight	Sweden	79	4.12000000000000011	40	3.62999999999999989	50	1.92999999999999994	40	86	0.599999999999999978	8	4	0	12	67	75
26358	Carlos Diego Ferreira	1985-01-18	68	156	James Cooper MMA	Lightweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	2	0	5	60	67
26381	Jingliang Li	1988-03-20	72	169	China Top Team	Welterweight	China	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	2	0	4	50	50
26389	Guangyou Ning	1981-12-15	65	135	Tiger Muay Thai	Bantamweight	China	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	1	0	3	67	50
26602	Reuben Duran	1983-07-02	67	135	Pinnacle Fighting Systems	Bantamweight	United States	69	3.18999999999999995	49	2.60999999999999988	50	0.979999999999999982	23	25	0.699999999999999956	1	3	0	4	25	100
26627	Anthony Pettis	1987-01-27	69	145	Roufusport	Lightweight	United States	72	2.62000000000000011	42	2.68999999999999995	57	0.780000000000000027	52	60	1.10000000000000009	5	3	0	8	62	80
27090	Yan Cabral	1983-05-13	72	155	Nova Uniao	Welterweight	Brazil	73	2.02000000000000002	47	1.97999999999999998	62	2.89000000000000012	35	37	1.19999999999999996	2	2	0	4	50	50
27115	Stanislav Nedkov	1981-09-12	71	203	Bushido Bulgaria	Light Heavyweight	Bulgaria	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	100
27738	Yancy Medeiros	1987-09-07	70	155	Team Hakuilua	Lightweight	United States	75	4.00999999999999979	34	4.87999999999999989	49	0	0	86	0.800000000000000044	3	3	0	6	50	67
27802	Phil Davis	1984-09-25	74	205	Alliance MMA	Light Heavyweight	United States	79	2.85000000000000009	34	1.33000000000000007	72	2.99000000000000021	38	72	0.599999999999999978	9	3	0	12	75	33
27944	Jon Jones	1987-07-19	76	205	Jackson-Wink MMA	Light Heavyweight	United States	84	4.25	55	2	65	2.25	52	94	0.599999999999999978	15	1	0	16	94	60
27953	Bobby Green	1986-09-09	70	155	Pinnacle Fighting Systems	Lightweight	United States	71	4.37999999999999989	48	3.16000000000000014	66	1.21999999999999997	33	81	0.299999999999999989	4	1	0	5	80	50
28017	Johnny Case	1989-06-28	73	155	Power MMA	Lightweight	United States	72	3.43999999999999995	40	2.00999999999999979	59	2.10000000000000009	47	75	0	4	0	0	4	100	50
28041	Junie Allen Browning	1985-05-12	70	180	Legends MMA	Middleweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	100
29688	Conor McGregor	1988-07-14	68	170	SBG Ireland	Featherweight	Ireland	74	5.82000000000000028	47	4.54999999999999982	57	0.92000000000000004	62	73	0	7	0	0	7	100	86
30021	Tony Sims	1985-10-14	71	155	Elevation Fight Team	Lightweight	United States	70	1.81000000000000005	63	0.760000000000000009	65	0.709999999999999964	50	50	0.699999999999999956	1	2	0	3	33	100
30033	Nick Osipczak	1984-12-30	73	170	Team Rough House	Welterweight	England	76	2.83000000000000007	50	3.77000000000000002	50	1.19999999999999996	45	71	1	2	3	0	5	40	100
30054	Russell Doane	1986-08-13	66	135	Hawaii Elite MMA	Bantamweight	United States	70	1.91999999999999993	41	1.68999999999999995	56	2.43999999999999995	43	56	1	2	2	0	4	50	50
30297	Michael McDonald	1991-01-15	68	135	Last Stand Fight Team	Bantamweight	United States	70	2.68999999999999995	42	2.75999999999999979	57	1.09000000000000008	66	52	1.39999999999999991	6	2	0	8	75	67
30298	Viscardi Andrade	1984-03-08	72	170	Gracie Fusion	Welterweight	Brazil	75	3.25999999999999979	42	2.77000000000000002	63	1.92999999999999994	50	66	0.299999999999999989	2	1	0	3	67	50
30300	Charles Oliveira	1989-10-17	71	155	Macaco Gold Team	Featherweight	Brazil	74	3.16999999999999993	50	3.04000000000000004	52	2.66000000000000014	37	58	2.70000000000000018	9	5	0	14	64	89
30452	Sean Strickland	1991-02-27	73	170	CQuence Jiu-Jitsu	Welterweight	United States	76	4.30999999999999961	37	2.81000000000000005	66	1.52000000000000002	50	72	0.599999999999999978	3	1	0	4	75	67
31096	Alan Patrick Silva Alves	1983-07-19	71	155	X-Gym	Lightweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	1	0	3	67	50
31103	Francisco Trinaldo	1978-08-24	68	155	Evolucao Thai	Lightweight	Brazil	70	3.35000000000000009	47	2.31000000000000005	60	1.1399999999999999	41	58	0.5	9	3	0	12	75	44
31239	Tony Ferguson	1984-02-12	72	155	Team Death Clutch	Lightweight	United States	76	5.23000000000000043	42	3.43000000000000016	65	0.709999999999999964	42	81	1.5	10	1	0	11	91	70
31372	Felipe Arantes	1988-02-09	68	135	Chute Boxe	Bantamweight	Brazil	73	2.43000000000000016	49	2.33000000000000007	63	1.12999999999999989	56	42	0.900000000000000022	4	3	1	8	50	50
31496	Amanda Nunes	1988-05-30	65	135	American Top Team	Bantamweight	Brazil	69	4.69000000000000039	53	2.89999999999999991	49	2.04000000000000004	38	73	1.19999999999999996	4	1	0	5	80	100
31766	James Krause	1986-06-04	74	155	Glory MMA and Fitness	Lightweight	United States	73	4.25	43	4.36000000000000032	60	1.16999999999999993	17	26	0.699999999999999956	4	3	0	7	57	75
31808	Zak Cummings	1984-08-02	72	170	Glory MMA and Fitness	Welterweight	United States	75	2.43000000000000016	30	2.89000000000000012	52	1.37000000000000011	38	71	0.800000000000000044	3	1	0	4	75	67
31978	Kenny Robertson	1984-02-14	70	170	Central Illinois Combat Club	Welterweight	United States	74	3.7200000000000002	47	3.02000000000000002	52	1.37000000000000011	26	57	0.800000000000000044	4	4	0	8	50	75
32051	Ricardo Lamas	1982-05-21	68	145	MMA Masters	Featherweight	United States	71	2.58000000000000007	42	2.54999999999999982	57	1.66999999999999993	31	45	1.10000000000000009	7	2	0	9	78	57
32432	Costas Philippou	1979-11-29	71	185	Bellmore Kickboxing Academy	Middleweight	United States	73	2.18999999999999995	35	2.72999999999999998	54	0.400000000000000022	42	65	0.299999999999999989	6	4	0	10	60	50
33095	Brad Tavares	1987-12-21	71	185	Xtreme Couture	Middleweight	United States	74	3.12000000000000011	41	2.49000000000000021	55	1.29000000000000004	32	75	0	8	4	0	12	67	12
33156	Sean O'Connell	1983-09-02	73	205	\N	Light Heavyweight	United States	74	5.45999999999999996	48	6.76999999999999957	45	0	0	30	0.5	2	3	0	5	40	100
33161	Mairbek Taisumov	1988-08-08	69	155	Team Taisumov	Lightweight	Russia	73	3.25999999999999979	43	2.14999999999999991	61	2.24000000000000021	77	85	0	4	1	0	5	80	75
33342	Pat Barry	1979-07-07	71	235	Team Death Clutch	Heavyweight	United States	74	2.7200000000000002	52	3.54000000000000004	59	0	0	76	0.200000000000000011	5	7	0	12	42	80
33926	Brendan Schaub	1983-03-18	76	245	Reign MMA	Heavyweight	United States	78	2.91999999999999993	37	2.2200000000000002	57	2.31999999999999984	46	72	0.400000000000000022	5	5	0	10	50	60
33932	Cat Zingano	1982-07-01	66	135	Zingano Brazilian Jiu-Jitsu	Bantamweight	United States	68	2.18000000000000016	68	1.43999999999999995	43	2.66000000000000014	87	50	1.5	2	1	0	3	67	100
34071	Amir Sadollah	1980-08-27	71	170	Syndicate MMA	Welterweight	United States	74	4.70999999999999996	46	3.54999999999999982	60	0.569999999999999951	27	60	0.299999999999999989	6	5	0	11	55	33
34072	Matt Riddle	1986-01-14	73	170	Throwdown	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	7	3	0	10	70	14
34124	Court McGee	1984-12-12	71	170	The Pit Elevated Fight Team	Welterweight	United States	75	4.90000000000000036	36	3.41999999999999993	62	2.16999999999999993	27	70	0.599999999999999978	6	3	0	9	67	33
34236	Myles Jury	1988-10-31	71	145	Power MMA	Lightweight	United States	73	2.29000000000000004	35	1.48999999999999999	71	2.60999999999999988	52	0	0.400000000000000022	6	2	0	8	75	50
34371	Issei Tamura	1984-03-12	65	135	Krazy Bee	Featherweight	Japan	63	1.8899999999999999	53	4.58000000000000007	44	0.92000000000000004	25	33	0	1	2	0	3	33	100
34376	Christian Morecraft	1986-09-08	78	260	Team Bombsquad	Heavyweight	United States	81	2.81999999999999984	34	2.45999999999999996	46	3.25999999999999979	66	50	2.20000000000000018	1	3	0	4	25	100
35142	Carlos Eduardo Rocha	1981-07-12	70	170	American Kickboxing Academy	Welterweight	Brazil	70	1.23999999999999999	34	1.85000000000000009	55	0	0	52	1.39999999999999991	1	2	0	3	33	100
35410	Sam Alvey	1986-05-06	74	185	Team Quest	Middleweight	United States	75	3.60000000000000009	48	3.79999999999999982	56	0	0	85	0.200000000000000011	3	2	0	5	60	100
35448	Pablo Garza	1983-09-16	73	145	Academy of Combat Arts	Featherweight	United States	73	3.37000000000000011	44	2.70000000000000018	50	0.939999999999999947	25	15	1.30000000000000004	3	3	0	6	50	67
35509	Erik Perez	1989-11-19	68	135	Jackson-Wink MMA	Bantamweight	Mexico	68	3.16000000000000014	40	2.08999999999999986	66	3.16000000000000014	55	69	0.200000000000000011	5	2	0	7	71	60
35867	John Cholish	1983-12-17	71	155	Renzo Gracie Jiu-Jitsu	Lightweight	United States	72	2.64999999999999991	49	2.29000000000000004	73	1.82000000000000006	31	78	0.400000000000000022	1	2	0	3	33	100
36155	Chan Sung Jung	1987-03-17	69	145	Korean Zombie MMA	Featherweight	South Korea	72	3.75999999999999979	38	3.43999999999999995	62	1.1100000000000001	71	68	0.900000000000000022	3	1	0	4	75	100
36403	Walel Watson	1984-07-16	71	135	Team Hurricane Awesome	Bantamweight	United States	69	2.10000000000000009	29	3.79000000000000004	43	0	0	61	1.39999999999999991	1	3	0	4	25	100
36618	Maximo Blanco	1983-10-16	68	145	Yoshida Dojo	Featherweight	Venezuela	71	4.11000000000000032	44	3.18999999999999995	66	1.85000000000000009	36	63	0.299999999999999989	4	4	0	8	50	25
36889	James Moontasri	1988-04-10	70	170	Black House	Lightweight	United States	71	2.39000000000000012	48	3.85999999999999988	40	0	0	79	0.200000000000000011	2	2	0	4	50	100
36939	Jussier da Silva	1985-04-14	65	125	Kimura Nova Uniao	Flyweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	3	0	7	57	25
36963	Ramsey Nijem	1988-04-01	71	155	Skrap Pack	Lightweight	United States	75	3.04999999999999982	44	1.62000000000000011	62	5.32000000000000028	62	55	1.10000000000000009	5	5	0	10	50	40
37351	Roland Delorme	1983-12-18	69	135	Winnipeg Academy of MMA	Bantamweight	Canada	71	2.2799999999999998	44	4.32000000000000028	40	2.50999999999999979	34	42	1.60000000000000009	3	3	0	6	50	67
37402	John Makdessi	1985-05-03	68	155	Tristar Gym	Lightweight	Canada	68	5.38999999999999968	51	3.95000000000000018	71	0	0	87	0	6	5	0	11	55	50
37404	Mitch Gagnon	1984-10-10	66	135	Troop MMA	Bantamweight	Canada	65	3.18000000000000016	48	2.12999999999999989	63	1.42999999999999994	26	67	1.89999999999999991	4	2	0	6	67	75
37452	Justin Edwards	1983-01-26	70	155	Team Jorge Gurgel	Lightweight	United States	70	2.68000000000000016	42	3.31999999999999984	51	2.14000000000000012	26	27	1	2	5	0	7	29	50
37528	Jimi Manuwa	1980-02-18	72	205	Keddles Gym	Light Heavyweight	England	79	3.64000000000000012	59	2.97999999999999998	48	0.760000000000000009	25	63	0.5	4	2	0	6	67	75
38190	Rony Mariano Bezerra	1984-03-21	67	145	Evolucao Thai	Featherweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	2	0	6	67	75
38393	Chad Mendes	1985-05-01	66	145	Team Alpha Male	Featherweight	United States	66	2.70000000000000018	49	2.16000000000000014	68	4.16000000000000014	54	100	0.299999999999999989	8	4	0	12	67	62
38671	Max Holloway	1991-12-04	71	145	Gracie Technics	Featherweight	United States	69	5.66999999999999993	43	3.74000000000000021	67	0.320000000000000007	80	83	0.599999999999999978	11	3	0	14	79	64
38841	Mackens Semerzier	1980-11-03	69	145	Team Curran	Featherweight	United States	72	2.91000000000000014	45	3.47999999999999998	46	2.14000000000000012	50	50	2.10000000000000009	1	1	0	2	50	100
38842	Ovince St. Preux	1983-04-08	75	205	Knoxville MMA	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	7	2	0	9	78	86
38903	Cody Gibson	1987-09-11	70	135	Elite Team	Bantamweight	United States	71	2.4700000000000002	31	2.54000000000000004	63	1.85000000000000009	38	58	0.400000000000000022	1	3	0	4	25	100
39537	Stipe Miocic	1982-08-19	76	240	Strong Style Fight Team	Heavyweight	United States	80	5.03000000000000025	50	3.25999999999999979	62	2.14000000000000012	35	72	0	8	2	0	10	80	62
39575	Jessica Eye	1986-07-27	66	135	Strong Style Fight Team	Bantamweight	United States	66	3.52000000000000002	36	3.43000000000000016	59	0.160000000000000003	100	61	0.200000000000000011	1	3	0	4	25	100
39781	Dustin Pague	1987-08-05	69	135	Disciple MMA	Lightweight	United States	74	1.64999999999999991	53	2.95999999999999996	41	1.03000000000000003	44	55	2.60000000000000009	1	5	0	6	17	100
40207	Ilir Latifi	1983-07-28	68	205	Pancrase Gym Sweden	Light Heavyweight	Sweden	73	1.84000000000000008	34	2.91000000000000014	53	1.96999999999999997	27	100	0.699999999999999956	4	2	0	6	67	100
40238	Karlos Vemola	1985-07-01	72	205	London Shootfighters	Light Heavyweight	Czech Republic	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	4	0	6	33	100
40436	Willie Gates	1987-01-21	68	125	Pinnacle MMA	Flyweight	United States	70	1.80000000000000004	38	4.28000000000000025	38	0	0	67	0.400000000000000022	1	2	0	3	33	100
40518	Scott Askham	1988-05-25	75	185	Atherton Submission Wrestling	Middleweight	England	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	100
40623	Godofredo Castro	1987-07-02	67	145	Evolucao Thai	Featherweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	0	6	50	67
40954	Jimmie Rivera	1989-06-29	64	135	Team Tiger Schulmann	Bantamweight	United States	68	4.51999999999999957	40	2.9700000000000002	66	0.969999999999999973	33	100	0	3	0	0	3	100	33
40956	Nick Pace	1987-04-17	67	135	Team Tiger Schulmann	Bantamweight	United States	68	1.47999999999999998	34	3.14000000000000012	57	2.52000000000000002	43	54	0.5	1	2	0	3	33	100
41247	Dustin Kimura	1989-05-21	66	135	Gracie Technics	Bantamweight	United States	71	1.33000000000000007	21	3.81999999999999984	51	0.930000000000000049	37	50	2.20000000000000018	2	3	0	5	40	100
41494	Augusto Montano	1984-10-25	73	170	Bonebreakers Team	Welterweight	Mexico	73	3.45999999999999996	46	2.66000000000000014	56	0	0	66	0	1	1	0	2	50	100
41523	Adlan Amagov	1986-10-30	71	170	Jackson-Wink MMA	Welterweight	Russia	76	3.29000000000000004	47	0.819999999999999951	78	5.83999999999999986	56	100	0	2	0	0	2	100	50
41524	Rashid Magomedov	1984-05-14	69	155	Gorec	Lightweight	Russia	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	0	0	4	100	25
41586	Alex Caceres	1988-06-20	69	145	MMA Lab	Bantamweight	United States	73	3.7200000000000002	49	2.49000000000000021	63	0.680000000000000049	81	56	0.900000000000000022	6	6	0	12	50	33
41745	Germaine de Randamie	1984-04-24	69	145	American Kickboxing Academy	Bantamweight	Netherlands	71	3.20000000000000018	47	2.2799999999999998	66	0	0	86	0.200000000000000011	2	1	0	3	67	50
41906	John Lineker	1990-06-12	62	135	OCS Jiu-Jitsu	Flyweight	Brazil	67	5.00999999999999979	39	4.04999999999999982	55	0.619999999999999996	60	67	0.599999999999999978	7	2	0	9	78	71
42432	Felice Herrig	1984-09-18	64	115	Team Curran	Strawweight	United States	65	2.7200000000000002	32	3.89000000000000012	51	1.5	40	50	1.89999999999999991	1	1	0	2	50	100
42605	Tyron Woodley	1982-04-17	69	170	American Top Team Evolution	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	5	2	0	7	71	80
42802	Gian Villante	1985-04-18	74	205	Bellmore Kickboxing Academy	Light Heavyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	3	0	7	57	75
42804	Chris Weidman	1984-06-17	74	185	Serra-Longo Fight Team	Middleweight	United States	78	3.08999999999999986	44	2.89999999999999991	53	3.33000000000000007	49	71	0.900000000000000022	9	1	0	10	90	67
42817	Al Iaquinta	1987-04-30	67	155	Serra-Longo Fight Team	Lightweight	United States	70	4.91000000000000014	41	3.7200000000000002	64	1.25	29	84	0.5	7	2	0	9	78	43
42901	Michael Kuiper	1989-06-07	72	185	Team Topfighter	Light Heavyweight	Netherlands	73	3.2799999999999998	54	3.62000000000000011	54	2.29999999999999982	55	79	0	1	3	0	4	25	100
43107	Vagner Rocha	1982-06-06	71	155	Team VRMA	Lightweight	Brazil	73	2.64000000000000012	42	4.5	48	1.39999999999999991	33	50	1.89999999999999991	1	3	0	4	25	100
43621	Brian Melancon	1982-05-28	68	170	Paradigm Training Center	Welterweight	United States	72	4.17999999999999972	49	3.64000000000000012	64	2.02000000000000002	100	66	0	1	1	0	2	50	100
43796	John Albert	1986-10-13	69	135	Victory Athletics	N/A	United States	68	3.04999999999999982	49	2.81999999999999984	35	0	0	50	6.09999999999999964	1	4	0	5	20	100
43866	Clint Hester	1986-11-21	74	205	X3 Sports	Middleweight	United States	77	3.35999999999999988	42	3.43999999999999995	56	1.02000000000000002	35	60	0	4	2	0	6	67	50
44442	Bradley Scott	1989-06-22	73	185	Dragons Lair MMA	Middleweight	England	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	2	0	4	50	100
44627	Alvaro Herrera	1990-05-14	72	170	UAG MMA	Welterweight	Mexico	74	1.70999999999999996	45	2.87999999999999989	56	0	0	20	0	1	0	0	1	100	100
44683	John Salter	1985-03-21	73	185	Dethrone Base Camp	Middleweight	United States	74	1.67999999999999994	32	1.67999999999999994	68	2.85000000000000009	46	66	0.5	1	2	0	3	33	100
45108	Jon Tuck	1984-08-28	70	155	MMA Lab	Lightweight	Guam	73	3.10000000000000009	39	3.75	61	0.489999999999999991	37	55	0.800000000000000044	3	2	0	5	60	67
45122	Daniel Hooker	1990-02-13	72	145	Saigon Sports Club	Featherweight	New Zealand	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	2	0	4	50	100
45132	Robert Whittaker	1990-12-20	71	185	PMA Super Martial Arts Centre	Middleweight	Australia	73	5.07000000000000028	41	4.08999999999999986	63	0.589999999999999969	66	93	0	6	2	0	8	75	50
45230	Louis Gaudinot	1984-08-28	63	125	Team Tiger Schulmann	Flyweight	United States	63	2.33999999999999986	37	6.41999999999999993	48	0.569999999999999951	40	31	1.10000000000000009	1	3	0	4	25	100
45417	Rustam Khabilov	1986-11-04	70	155	Jackson-Wink MMA	Lightweight	Russia	73	2.10000000000000009	36	1.53000000000000003	66	4.32000000000000028	49	62	0.100000000000000006	3	2	0	5	60	67
45452	Demetrious Johnson	1986-08-13	63	125	AMC Pankration	Flyweight	United States	66	3.31000000000000005	52	1.73999999999999999	65	3.54000000000000004	54	62	0.5	11	1	1	13	85	36
45624	Shawn Jordan	1984-10-21	72	260	American Top Team	Heavyweight	United States	75	2.87000000000000011	50	3.29999999999999982	47	1.96999999999999997	38	76	0.100000000000000006	6	4	0	10	60	100
45986	Tom Breese	1991-09-26	75	170	Tristar Gym	Welterweight	England	73	3.60999999999999988	49	2.64999999999999991	63	0	0	72	0.400000000000000022	2	0	0	2	100	100
46202	Philip De Fries	1986-04-21	76	250	Alliance MMA	Heavyweight	England	82	2.29999999999999982	47	3	37	3.29000000000000004	42	100	0.599999999999999978	2	3	0	5	40	50
46224	Michael Chiesa	1987-12-07	73	155	Sikjitsu	Lightweight	United States	75	2.25999999999999979	37	2.37999999999999989	52	2.87000000000000011	40	72	1.5	6	2	0	8	75	67
46259	Edson Barboza	1986-01-21	71	155	Ricardo Almeida Jiu-Jitsu	Lightweight	Brazil	75	3.99000000000000021	41	3.41999999999999993	64	0.619999999999999996	53	86	0.100000000000000006	10	4	0	14	71	50
46307	Joe Proctor	1985-08-10	70	155	Team Aggression	Lightweight	United States	72	3.45999999999999996	36	3.70000000000000018	61	0	0	70	1.89999999999999991	4	3	0	7	57	75
46542	Leslie Smith	1982-08-17	69	135	Cesar Gracie Fight Team	Bantamweight	United States	66	6.80999999999999961	37	8.38000000000000078	52	0	0	66	0	1	2	0	3	33	100
47066	Yosdenis Cedeno	1985-02-12	68	155	Blackzillians	Lightweight	Cuba	69	1.6399999999999999	29	1.60000000000000009	67	0	0	31	0.299999999999999989	1	3	0	4	25	100
47105	Robert Whiteford	1983-04-12	69	145	Dinky Ninjas	Featherweight	Scotland	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	2	0	4	50	50
47183	Shinsho Anzai	1985-12-01	69	170	Team Climb	Welterweight	Japan	70	3.58000000000000007	65	4.12000000000000011	44	2.99000000000000021	25	100	0	1	1	0	2	50	100
47227	Chas Skelly	1985-05-11	71	145	Team Takedown	Featherweight	United States	72	1.84000000000000008	38	3.29000000000000004	46	1.87999999999999989	37	41	2.89999999999999991	4	0	0	4	100	75
47549	Norman Parke	1986-12-22	71	155	Next Generation NI	Lightweight	Northern Ireland	70	3.06000000000000005	35	2.87999999999999989	64	1.97999999999999998	26	77	0	5	2	1	8	62	20
48046	Jim Hettes	1987-06-09	69	145	Northeast Jiu-Jitsu	Featherweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	3	0	6	50	67
48566	Ryan Benoit	1989-08-25	65	125	Janjira Muay Thai	Flyweight	United States	68	2.08000000000000007	32	3.16000000000000014	60	0.309999999999999998	25	59	0.299999999999999989	1	2	0	3	33	100
48820	Jon Madsen	1980-02-12	72	240	HIT Squad	Heavyweight	United States	72	2.45999999999999996	41	1.17999999999999994	81	1.32000000000000006	71	70	0	4	1	0	5	80	25
49516	Daniel Kelly	1977-10-31	72	185	Resilience Training Centre	Middleweight	Australia	70	3.66999999999999993	40	3.99000000000000021	65	2.41999999999999993	50	80	0.200000000000000011	3	1	0	4	75	33
49519	Matt Mitrione	1978-07-15	75	265	Blackzilians	Heavyweight	United States	79	3.54999999999999982	50	2.79000000000000004	64	0	0	55	0.699999999999999956	9	5	0	14	64	89
50381	Cody Garbrandt	1991-07-07	67	135	Strong Style Fight Team	Bantamweight	United States	65	3.58000000000000007	37	3.04000000000000004	68	1.18999999999999995	38	100	0	2	0	0	2	100	100
50529	Dustin Poirier	1989-01-19	69	155	American Top Team	Lightweight	United States	72	4.96999999999999975	49	3.37999999999999989	57	1.79000000000000004	40	68	1.30000000000000004	11	3	0	14	79	64
50586	Mike Wilkinson	1987-09-15	68	145	Atherton Submission Wrestling	Featherweight	England	68	2.35000000000000009	38	3.70000000000000018	35	0.92000000000000004	14	55	0.900000000000000022	2	1	0	3	67	50
50588	Ian Entwistle	1986-11-19	68	135	Apex MMA	Bantamweight	England	64	0.110000000000000001	7	7.36000000000000032	31	0	0	0	12.0999999999999996	1	1	0	2	50	100
50883	Julianna Pena	1989-08-19	67	135	SikJitsu	Bantamweight	United States	69	2.95000000000000018	52	1.19999999999999996	44	2.79000000000000004	52	22	1.19999999999999996	3	0	0	3	100	67
51163	Caio Magalhaes	1987-12-14	73	185	Dragon Fight	Middleweight	Brazil	73	2.27000000000000002	40	2.7799999999999998	56	1.05000000000000004	15	58	1.60000000000000009	4	2	0	6	67	75
51225	Chris Holdsworth	1987-10-14	71	135	Team Alpha Male	Bantamweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	0	0	2	100	50
51345	Lorenz Larkin	1986-09-03	71	170	Millennia MMA	Welterweight	United States	72	3.5299999999999998	46	2.74000000000000021	63	0.270000000000000018	42	79	0.100000000000000006	3	5	0	8	38	67
51471	Bryan Barberena	1989-05-03	72	170	MMA Lab	Lightweight	United States	72	5.16999999999999993	48	4.23000000000000043	49	0.450000000000000011	40	46	0.200000000000000011	2	1	0	3	67	100
51728	Marcos Vinicius Borges Pancini	1979-12-05	69	145	Team Bronx	Featherweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	100
51955	Marcos Rogerio de Lima	1985-06-25	73	205	011 MMA Team	Light Heavyweight	Brazil	75	4.79000000000000004	55	4.36000000000000032	50	0	0	33	1.60000000000000009	2	1	0	3	67	100
52311	Daniel Cormier	1979-03-20	71	205	American Kickboxing Academy	Light Heavyweight	United States	72	3.77000000000000002	48	2.04999999999999982	61	1.92999999999999994	42	80	0.400000000000000022	6	1	0	7	86	50
52407	Pedro Munhoz	1986-09-07	66	135	Black House	Bantamweight	Brazil	64	3.93000000000000016	38	6.25999999999999979	56	1.06000000000000005	18	50	1.80000000000000004	1	2	0	3	33	100
53205	Sam Sicilia	1986-02-01	68	145	Sikjitsu	Featherweight	United States	67	2.75999999999999979	36	3.5299999999999998	57	1.68999999999999995	43	73	1	5	5	0	10	50	60
53207	Thiago de Oliveira Perpetuo	1986-12-14	70	170	Furacao Fight Team	Welterweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	100
53300	Anthony Birchak	1986-05-16	68	135	Luta Elite MMA	Bantamweight	United States	69	3.97999999999999998	35	2.25999999999999979	66	0.680000000000000049	16	83	0	1	2	0	3	33	100
53369	Chris Beal	1985-08-06	67	125	KnuckleHeadz Boxing	Flyweight	United States	69	3.45000000000000018	35	3.18000000000000016	61	1.60000000000000009	58	78	0.200000000000000011	2	2	0	4	50	50
53375	Piotr Hallmann	1987-08-25	69	155	Mighty Bulls Gdynia	Lightweight	Poland	71	3.97999999999999998	45	3.16999999999999993	58	2.54999999999999982	44	70	0.400000000000000022	2	4	0	6	33	100
53717	Daron Cruickshank	1985-06-11	68	155	Michigan Top Team	Lightweight	United States	72	2.87999999999999989	38	2.97999999999999998	57	2.04000000000000004	41	60	0.200000000000000011	6	6	0	12	50	50
53933	Matt Dwyer	1989-12-17	76	170	Toshido Mixed Martial Arts	Welterweight	Canada	76	2.56999999999999984	34	3.24000000000000021	54	0.440000000000000002	10	60	0	1	3	0	4	25	100
54124	Alex Garcia	1987-07-14	69	170	Tristar Gym	Welterweight	Canada	72	2.14000000000000012	35	3.22999999999999998	61	4.70999999999999996	62	55	0	3	2	0	5	60	33
54303	Daniel Omielanczuk	1982-08-31	72	247	Ankos Zapasy	Heavyweight	Poland	74	2.93999999999999995	64	2.95999999999999996	42	0.780000000000000027	33	47	0.200000000000000011	2	2	0	4	50	100
54620	Niklas Backstrom	1989-08-22	72	145	Allstars Training Center	Featherweight	Sweden	74	1.12000000000000011	41	3.64999999999999991	40	2.91999999999999993	80	72	2.20000000000000018	1	1	0	2	50	100
54833	Mike Rio	1981-07-06	70	155	Zen Jiu-Jitsu	Lightweight	United States	71	1.67999999999999994	39	2.99000000000000021	53	2.58000000000000007	27	0	1	1	3	0	4	25	100
55159	John Moraga	1984-03-20	66	125	Arizona Combat Sports	Flyweight	United States	66	2.39999999999999991	39	2.89000000000000012	56	0.57999999999999996	20	40	0.699999999999999956	5	3	0	8	62	80
55954	Alex White	1988-10-22	72	155	Team Destruction	Featherweight	United States	71	3.56999999999999984	37	2.83000000000000007	67	1.02000000000000002	40	58	0.299999999999999989	2	2	0	4	50	50
56035	Khabib Nurmagomedov	1988-09-20	70	155	Fightspirit Team	Lightweight	Russia	70	3.81999999999999984	50	1.5	70	6.15000000000000036	48	83	0.599999999999999978	6	0	0	6	100	33
56567	Luke Barnatt	1988-04-13	78	185	Tsunami Gym	Middleweight	England	77	4.42999999999999972	36	3.87000000000000011	59	0.630000000000000004	42	63	0.400000000000000022	3	3	0	6	50	67
56583	Beneil Dariush	1989-05-06	70	155	Kings MMA	Lightweight	United States	72	3.64000000000000012	47	2.87000000000000011	60	1.44999999999999996	27	75	0.800000000000000044	6	1	0	7	86	50
56689	Doo Ho Choi	1991-04-06	69	143	Gumi MMA	Featherweight	South Korea	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	0	0	2	100	100
57269	Colby Covington	1988-02-22	71	170	American Top Team	Welterweight	United States	72	2.50999999999999979	51	1.42999999999999994	60	6.79000000000000004	54	0	0.400000000000000022	3	1	0	4	75	67
57343	Edimilson Souza	1984-10-17	72	145	DS Team	Featherweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	1	0	4	75	67
58065	Dennis Bermudez	1986-12-13	66	145	Long Island MMA	Featherweight	United States	66	4.32000000000000028	46	2.79999999999999982	57	4.16000000000000014	43	91	1.30000000000000004	8	3	0	11	73	38
58097	Dustin Ortiz	1988-12-25	65	125	Roufusport	Flyweight	United States	65	3.02000000000000002	45	2.33000000000000007	54	2.39999999999999991	31	55	0.100000000000000006	4	3	0	7	57	50
58213	Jason Saggo	1985-11-23	71	155	Wulfrun MMA	Lightweight	Canada	71	2.31000000000000005	40	2.70000000000000018	51	2.47999999999999998	39	20	0	1	1	0	2	50	100
58385	Andre Fili	1990-06-25	70	145	Team Alpha Male	Featherweight	United States	74	3.37999999999999989	38	2.54999999999999982	60	2.85000000000000009	46	58	0.200000000000000011	3	2	0	5	60	67
58594	Jon delos Reyes	1987-08-19	65	125	Countershot MMA	Flyweight	United States	67	2.99000000000000021	38	4.13999999999999968	51	3.20000000000000018	83	55	1.89999999999999991	1	3	0	4	25	100
58947	Anthony Hamilton	1980-04-14	77	260	Jackson-Wink MMA	Heavyweight	United States	76	4.50999999999999979	67	3.00999999999999979	42	2.83999999999999986	52	83	0	2	3	0	5	40	50
59197	Misha Cirkunov	1987-02-27	75	205	Xtreme Couture	Light Heavyweight	Latvia	77	3.9700000000000002	52	2.2799999999999998	70	4.95999999999999996	56	66	1.60000000000000009	2	0	0	2	100	100
59284	Derrick Lewis	1985-02-07	75	260	Silverback Fight Club	Heavyweight	United States	79	3.16000000000000014	54	1.08000000000000007	47	0.800000000000000044	33	56	0	5	2	0	7	71	100
59608	Stephen Thompson	1983-02-11	72	170	Team Upstate Karate	Welterweight	United States	75	4.05999999999999961	44	2.75	58	0.640000000000000013	50	78	0	7	1	0	8	88	71
59838	Steven Ray	1990-03-25	70	155	Higher Level MMA	Lightweight	Scotland	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	0	0	3	100	67
60198	Albert Tumenov	1991-12-26	71	170	K Dojo Warrior Tribe	Welterweight	Russia	73	3.75999999999999979	42	3.33999999999999986	58	0.200000000000000011	20	75	0	5	1	0	6	83	60
60762	Yoel Romero	1977-04-30	70	185	American Top Team	Middleweight	United States	73	3.25999999999999979	54	2.00999999999999979	63	1.95999999999999996	38	77	0	7	0	0	7	100	71
60790	Ben Alloway	1981-02-19	70	170	BBA Mixed Martial Arts	Welterweight	Australia	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	100
61266	Marion Reneau	1977-06-20	66	135	Elite Team	Bantamweight	United States	68	3.64000000000000012	37	2.85000000000000009	69	0.5	100	60	0.800000000000000044	2	2	0	4	50	50
62507	T.J. Dillashaw	1986-02-07	66	135	Elevation Fight Team	Bantamweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	8	3	0	11	73	75
62665	Leon Edwards	1991-08-25	70	170	UTC Birmingham	Welterweight	England	74	1.8899999999999999	46	1.92999999999999994	58	1.03000000000000003	29	65	0.400000000000000022	2	2	0	4	50	50
62703	Kailin Curran	1991-04-11	63	115	Reign MMA	Strawweight	United States	65	3.47999999999999998	41	4.07000000000000028	52	2.29000000000000004	80	67	0.900000000000000022	1	2	0	3	33	100
63070	Yuta Sasaki	1989-10-07	70	135	Wajutsu Keishukai Suruga	Bantamweight	Japan	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	100
63284	Andrew Craig	1986-01-15	73	170	Team Tooke	Welterweight	United States	76	2.39000000000000012	40	3.00999999999999979	50	0.530000000000000027	37	72	0	3	4	0	7	43	33
63410	Carla Esparza	1987-10-10	61	115	Team Oyama	Strawweight	United States	63	2.06999999999999984	48	3	51	4.62000000000000011	35	83	0.400000000000000022	1	1	0	2	50	100
63616	Patrick Holohan	1988-05-03	69	125	SBG Ireland	Flyweight	Ireland	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	2	0	5	60	33
63813	Zubaira Tukhugov	1991-01-15	68	145	Tiger Muay Thai	Featherweight	Russia	68	2.5299999999999998	35	2.08999999999999986	69	2.12999999999999989	46	100	0	3	0	0	3	100	33
64373	Cathal Pendred	1987-09-02	73	170	SBG Ireland	Welterweight	Ireland	75	2.49000000000000021	44	3.00999999999999979	55	2.45999999999999996	23	83	0.400000000000000022	4	2	0	6	67	25
64413	Kyoji Horiguchi	1990-10-12	65	125	American Top Team	Flyweight	Japan	66	3.60000000000000009	45	2.45000000000000018	62	2	44	55	0	5	1	0	6	83	40
64593	Santiago Ponzinibbio	1986-09-26	72	170	Team Nogueira	Welterweight	Argentina	73	4.15000000000000036	40	4.36000000000000032	63	0.239999999999999991	16	60	0	3	2	0	5	60	67
64677	Danny Roberts	1987-07-14	72	170	Next Generation UK	Welterweight	England	74	4.53000000000000025	39	4.16000000000000014	57	0	0	53	0.5	1	0	0	1	100	100
64792	Louis Smolka	1991-07-16	69	125	Hawaii Elite MMA	Flyweight	United States	68	4.16999999999999993	48	2.93000000000000016	55	1.96999999999999997	36	38	2.60000000000000009	4	1	0	5	80	50
65310	Brian Ortega	1991-02-21	69	145	Black House	Featherweight	United States	69	3.20999999999999996	33	3.87000000000000011	59	0.359999999999999987	25	61	1.80000000000000004	2	0	0	2	100	100
65456	Hugo Viana	1982-09-26	66	135	Champion Team	Bantamweight	Brazil	67	3.04999999999999982	38	3.20000000000000018	57	0.220000000000000001	6	50	0	3	3	0	6	50	33
65649	Alex Chambers	1978-10-28	63	115	VT-1 Gym	Strawweight	Australia	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	2	0	3	33	100
65878	Alan Jouban	1982-11-25	72	171	Black House	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	2	0	5	60	67
66313	Aljamain Sterling	1989-07-31	67	135	Serra-Longo Fight Team	Bantamweight	United States	71	3.08000000000000007	45	1.21999999999999997	67	2.43000000000000016	40	46	1.30000000000000004	4	0	0	4	100	75
66410	Eddie Gordon	1983-07-22	72	185	Serra-Longo Fight Team	Middleweight	United States	76	2.0299999999999998	32	2.56999999999999984	60	1.92999999999999994	83	63	0	1	3	0	4	25	100
66474	Vicente Luque	1991-11-27	71	170	Blackzilians	Welterweight	United States	75	2.99000000000000021	47	2.18000000000000016	50	2.10999999999999988	80	41	1.60000000000000009	1	1	0	2	50	100
66725	Lauren Murphy	1983-07-27	68	135	Gracie Barra Katy	Bantamweight	United States	67	3.79000000000000004	45	3.29000000000000004	54	1	25	65	0	1	2	0	3	33	100
66883	Josh Sampo	1984-07-24	64	125	Team Oyama	Flyweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	3	0	4	25	100
67007	Liz Carmouche	1984-02-19	66	135	Team Hurricane Awesome	Bantamweight	United States	66	3.27000000000000002	54	2.79999999999999982	60	2.81000000000000005	46	66	0.200000000000000011	2	3	0	5	40	50
67094	Sara McMann	1980-09-24	65	135	Revolution MMA	Bantamweight	United States	66	2.37000000000000011	45	2.04999999999999982	49	4.79999999999999982	69	100	0.5	2	3	0	5	40	50
68130	Christos Giagos	1990-01-23	70	155	Systems Training Center	Lightweight	United States	71	2.16000000000000014	38	1.67999999999999994	47	0.650000000000000022	20	37	0.699999999999999956	1	2	0	3	33	100
68205	Paul Felder	1985-04-25	70	155	Renzo Gracie Philly	Lightweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	2	0	5	60	67
68494	Derek Brunson	1984-01-04	73	185	Jackson's Mixed Martial Arts	Middleweight	United States	77	3.12999999999999989	46	2.62000000000000011	50	3.12999999999999989	32	100	0.699999999999999956	6	1	0	7	86	67
68788	Michael Johnson	1986-06-04	70	155	Blackzilians	Lightweight	United States	73	3.77000000000000002	35	3.74000000000000021	58	0.57999999999999996	53	79	0.100000000000000006	8	6	0	14	57	38
69083	Rose Namajunas	1992-06-29	65	115	The Academy	Strawweight	United States	65	3.20999999999999996	42	3.14000000000000012	60	3.14999999999999991	58	50	1.10000000000000009	2	1	0	3	67	100
69166	Neil Magny	1987-08-03	75	170	Grudge Training Center	Welterweight	United States	80	4.04000000000000004	50	2	56	2.70999999999999996	46	59	0.400000000000000022	10	3	0	13	77	40
69406	Makwan Amirkhani	1988-11-08	71	145	Allstars Training Center	Featherweight	Finland	72	2.25999999999999979	66	0.82999999999999996	41	4.45999999999999996	62	0	1.80000000000000004	2	0	0	2	100	100
69607	Patrick Williams	1981-09-07	68	135	Freestyle Fighting Academy	Bantamweight	United States	73	2.20999999999999996	41	2.62999999999999989	62	4.15000000000000036	66	100	2.10000000000000009	1	1	0	2	50	100
69858	Vik Grujic	1977-02-06	71	170	Alliance MMA	Welterweight	Australia	73	2.24000000000000021	48	3.39000000000000012	41	1.17999999999999994	33	26	0.400000000000000022	1	3	0	4	25	100
70750	Warlley Alves	1991-01-04	71	170	X-Gym	Welterweight	Brazil	72	2.85999999999999988	47	4.5	50	1.1399999999999999	55	75	1.39999999999999991	4	0	0	4	100	75
71116	Charles Rosa	1986-08-24	70	145	American Top Team	Featherweight	United States	69	3.18000000000000016	37	3.52000000000000002	50	3.27000000000000002	38	50	1.30000000000000004	2	2	0	4	50	50
71120	Justin Scoggins	1992-05-02	67	135	\N	Flyweight	United States	66	3.75	53	1.70999999999999996	60	4.25999999999999979	66	84	0.599999999999999978	4	2	0	6	67	25
71237	Garreth McLellan	1982-01-09	73	185	FightFit Militia	Middleweight	South Africa	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	100
72981	Patrick Cummins	1980-11-16	74	205	Reign MMA	Light Heavyweight	United States	76	4.32000000000000028	52	2.75	57	6.87000000000000011	51	80	0.200000000000000011	4	3	0	7	57	50
73073	Ronda Rousey	1987-02-01	66	135	Team Hayastan	Bantamweight	United States	68	4.16999999999999993	52	4.13999999999999968	44	6.25999999999999979	68	50	4.79999999999999982	6	1	0	7	86	100
73436	Darren Till	1992-12-24	72	170	Astra Fight Team	Welterweight	England	74	3.41999999999999993	57	4.90000000000000036	49	0	0	71	0	1	0	1	2	50	100
73756	Justin Lawrence	1990-05-15	68	145	Power MMA	Featherweight	United States	67	3.83999999999999986	35	2.83000000000000007	67	0.719999999999999973	28	73	0	1	2	0	3	33	100
74700	Kelvin Gastelum	1991-10-24	69	185	Yuma United Mixed Martial Arts	Welterweight	United States	71	3.99000000000000021	43	2.74000000000000021	63	1.04000000000000004	50	62	0.200000000000000011	6	2	0	8	75	50
74975	Luke Sanders	1985-12-12	67	145	The MMA Lab	Bantamweight	United States	67	7.16000000000000014	54	4.40000000000000036	58	0	0	0	4.09999999999999964	1	0	0	1	100	100
75125	Holly Holm	1981-10-17	68	145	Jackson-Wink MMA	Bantamweight	United States	69	3.08000000000000007	34	2.64999999999999991	59	0.270000000000000018	18	78	0	3	0	0	3	100	33
75564	Raquel Pennington	1988-09-05	67	135	Altitude MMA	Bantamweight	United States	67	3.79999999999999982	51	2.91999999999999993	66	1.42999999999999994	43	69	1.30000000000000004	3	2	0	5	60	67
76100	Rob Font	1987-06-25	68	135	Team Sityodtong	Bantamweight	United States	71	4.29000000000000004	46	3.93000000000000016	63	0.989999999999999991	22	33	0.5	2	0	0	2	100	100
76763	Jared Rosholt	1986-08-04	74	265	Team Takedown	Heavyweight	United States	75	2.08000000000000007	46	1.52000000000000002	59	1.83000000000000007	41	66	0.100000000000000006	5	2	0	7	71	20
76836	Islam Makhachev	1991-09-27	70	155	Fightspirit Team	Lightweight	Russia	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	100
78210	Scott Holtzman	1983-09-30	69	155	Shield Systems	Lightweight	United States	69	3.93999999999999995	46	3.16000000000000014	59	2.33999999999999986	60	60	0.5	1	1	0	2	50	100
79290	Geane Herrera	1990-05-27	65	125	Banks MMA	Flyweight	United States	66	1.51000000000000001	31	5.07000000000000028	52	0.82999999999999996	37	38	0.599999999999999978	1	1	0	2	50	100
79335	Chris Wade	1987-09-30	69	155	East Islip Kickboxing	Lightweight	United States	70	1.73999999999999999	54	1.81000000000000005	48	2.50999999999999979	57	58	0.900000000000000022	4	0	0	4	100	50
79784	Frankie Perez	1989-05-11	71	155	Ricardo Almeida Jiu-Jitsu	Lightweight	United States	73	1.72999999999999998	45	2.52000000000000002	56	1.08000000000000007	28	44	0.5	1	1	0	2	50	100
80231	Magomed Mustafaev	1988-08-02	69	155	Fight Club Berkut	Lightweight	Russia	71	2.83000000000000007	54	2.93000000000000016	36	0	0	25	0.800000000000000044	2	0	0	2	100	100
80436	Tony Martin	1989-12-11	72	155	American Top Team	Lightweight	United States	73	2.31999999999999984	42	2.89000000000000012	49	1.65999999999999992	24	50	1.19999999999999996	2	3	0	5	40	100
81198	Ali Bagautinov	1985-06-12	64	125	Fight Nights Team	Flyweight	Russia	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	2	0	5	60	33
81765	Elias Theodorou	1988-05-31	73	185	Kros Gym	Middleweight	Canada	75	3.45000000000000018	39	1.89999999999999991	50	2.12000000000000011	29	41	0	3	1	0	4	75	67
81956	James Vick	1987-02-23	75	155	Team Lloyd Irvin	Lightweight	United States	76	3.87000000000000011	38	3.2799999999999998	61	0.23000000000000001	25	65	1.10000000000000009	4	0	0	4	100	50
82392	Ricardo Abreu	1984-04-27	71	185	Wand Fight Team	Middleweight	Brazil	73	3.79000000000000004	31	3.97999999999999998	68	2.12999999999999989	42	100	0.699999999999999956	1	1	0	2	50	100
83462	Omari Akhmedov	1987-10-12	72	170	Jackson-Wink MMA	Welterweight	Russia	73	2.81999999999999984	34	2.60000000000000009	57	2.85000000000000009	50	50	0.400000000000000022	3	2	0	5	60	67
84342	Kevin Lee	1992-09-04	69	155	Xtreme Couture	Lightweight	United States	77	3.70000000000000018	40	3.08000000000000007	52	3.62999999999999989	45	72	1.39999999999999991	4	2	0	6	67	25
84752	Ray Borg	1993-08-04	64	125	Fit NHB	Flyweight	United States	63	1.33000000000000007	51	1.64999999999999991	54	3.79000000000000004	55	50	2.20000000000000018	3	2	0	5	60	67
84964	Bec Rawlings	1989-02-11	66	115	Gamebred Combat Club	Strawweight	Australia	64	4.12999999999999989	41	4.79000000000000004	57	0.550000000000000044	28	75	0.299999999999999989	1	1	0	2	50	100
86241	Olivier Aubin-Mercier	1989-02-23	69	155	H2O MMA	Lightweight	Canada	70	2.91000000000000014	53	2.95999999999999996	57	2.99000000000000021	32	83	0.699999999999999956	3	2	0	5	60	67
86382	Leandro Silva	1985-11-11	70	155	Team Buscape	Welterweight	Brazil	72	2.39000000000000012	48	2.08000000000000007	63	1.76000000000000001	37	65	0.400000000000000022	3	2	0	5	60	33
87865	Thomas Almeida	1991-07-31	67	135	Chute Boxe	Bantamweight	Brazil	70	6.45999999999999996	49	4.46999999999999975	66	0	0	80	0	4	0	0	4	100	75
88613	Elias Silverio	1986-09-22	71	155	Elias Silverio Team	Lightweight	Brazil	73	3.66999999999999993	49	2.9700000000000002	51	1.62000000000000011	38	85	0.200000000000000011	3	2	0	5	60	33
90021	Thiago Santos	1984-01-07	72	185	Tata Fight Team	Middleweight	Brazil	76	3.29000000000000004	46	2.37000000000000011	63	0.330000000000000016	20	72	0	4	2	0	6	67	75
91727	Gilbert Burns	1986-07-20	70	155	Blackzilians	Lightweight	Brazil	71	2.24000000000000021	36	3.39999999999999991	56	1.94999999999999996	30	36	1.10000000000000009	3	1	0	4	75	67
97179	Marlon Vera	1992-12-02	68	135	Team Frank Vidal 5050	Bantamweight	Ecuador	70	2.08999999999999986	45	3.12000000000000011	46	0.859999999999999987	30	82	1.69999999999999996	1	1	0	2	50	100
97337	Taylor Lapilus	1992-04-08	66	135	MMA Factory	Bantamweight	France	73	3.77000000000000002	45	2	61	0.57999999999999996	40	81	0.599999999999999978	2	1	0	3	67	50
97499	Arnold Allen	1994-01-17	69	145	BKK Fighters	Featherweight	England	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	0	0	1	100	100
99019	Paige VanZant	1994-03-26	64	115	Team Alpha Male	Strawweight	United States	65	3.43999999999999995	52	2.52000000000000002	43	1.71999999999999997	38	41	0.900000000000000022	3	1	0	4	75	67
100031	Lucas Martins	1988-11-11	72	145	Chute Boxe	Featherweight	Brazil	72	2.87000000000000011	35	4.13999999999999968	60	0	0	76	0.5	3	2	0	5	60	100
100715	Jessica Andrade	1991-09-25	62	115	Parana Vale Tudo	Strawweight	Brazil	62	6.79999999999999982	52	4.29000000000000004	56	2.60000000000000009	62	74	0.800000000000000044	4	3	0	7	57	25
101411	Joanna Jedrzejczyk	1987-08-18	66	115	Berkut Arrachion Olsztyn	Strawweight	Poland	65	6.45000000000000018	47	2.25	69	0.23000000000000001	66	81	0	5	0	0	5	100	40
103069	Bethe Correia	1983-06-22	64	135	\N	Bantamweight	Brazil	64	5.16000000000000014	46	3.87999999999999989	62	0.220000000000000001	12	85	0	3	1	0	4	75	33
103153	Oluwale Bamgbose	1987-08-04	71	185	Chute Boxe USA	Middleweight	United States	78	1.8899999999999999	42	2	51	0	0	33	0	1	1	0	2	50	100
108571	Jonathan Wilson	1987-07-17	74	205	Millennia MMA	Light Heavyweight	United States	75	4	54	6.79999999999999982	59	0.599999999999999978	100	100	0	1	0	0	1	100	100
110143	Alex Oliveira	1988-02-21	71	170	Tata Fight Team	Lightweight	Brazil	76	2.7200000000000002	52	1.69999999999999996	44	2.89999999999999991	31	57	0.800000000000000044	3	2	0	5	60	67
110937	Nikita Krylov	1992-03-07	75	205	Vale Tudo MMA Academy	Light Heavyweight	Ukraine	77	6.54999999999999982	60	2.87000000000000011	45	0.369999999999999996	16	42	1.80000000000000004	4	2	0	6	67	100
112413	Freddy Serrano	1979-09-22	62	125	Octagon MMA Colombia	Flyweight	Colombia	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	0	0	2	100	100
117927	Glaico Franca	1991-02-28	72	155	Astra Fight Team	Lightweight	Brazil	77	2.35000000000000009	42	3.45999999999999996	47	2.68000000000000016	42	76	0.299999999999999989	1	0	0	1	100	100
120691	Kamaru Usman	1988-05-11	72	170	Blackzilians	Welterweight	United States	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	0	0	2	100	50
122139	Jake Matthews	1994-08-19	69	155	Nexus	Lightweight	Australia	72	3.12000000000000011	46	2.10999999999999988	52	2.18000000000000016	40	66	0.900000000000000022	3	1	0	4	75	100
130911	Sage Northcutt	1996-03-01	72	170	Gracie Barra Katy	Lightweight	United States	71	2.77000000000000002	58	1.57000000000000006	49	1.64999999999999991	36	40	0.800000000000000044	2	1	0	3	67	100
135315	Anying Wang	1991-04-04	72	170	Phuket Top Team	Welterweight	Mongolia	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1	0	2	50	100
143157	Antonio Carlos Jr.	1990-03-16	73	185	American Top Team	Middleweight	Brazil	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	1	0	3	67	50
144949	Aleksandra Albu	1990-07-14	62	115	Red Fury Fight Team	Strawweight	Russia	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	0	0	1	100	100
151905	Maryna Moroz	1991-09-08	67	115	YK Promotion	Strawweight	Ukraine	67	2.56000000000000005	22	2.91999999999999993	60	0.320000000000000007	33	0	0.699999999999999956	1	1	0	2	50	100
152341	Francis Ngannou	1986-09-05	76	250	MMA Factory	Heavyweight	France	83	3.39999999999999991	47	1.53000000000000003	59	0	0	73	0.699999999999999956	1	0	0	1	100	100
160145	Mickey Gall	1992-01-22	74	170	Miller Brothers MMA	Welterweight	United States	74	3.20999999999999996	57	1.65999999999999992	46	4.66000000000000014	100	100	9.30000000000000071	1	0	0	1	100	100
171723	Corey Anderson	1989-09-22	75	205	The Kennel Fight Club	Light Heavyweight	United States	79	5.11000000000000032	46	2.39000000000000012	58	4.44000000000000039	52	33	0	4	1	0	5	80	25
\.


--
-- Data for Name: fights; Type: TABLE DATA; Schema: octagon; Owner: llua
--

COPY fights (event_id, match_id, event_name, event_date, event_place, f1name, f2name, f1result, f2result, f1fid, f2fid, method, method_d, ref, round, duration) FROM stdin;
15559	4	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	Christian Morecraft	Sean McCorkle	win	loss	34376	19640	TKO	Submission (Guillotine Choke	Anthony Hamlett	2	4:10
3255	4	UFC Fight Night 2 - Loiseau vs. Tanner	2005-10-03	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Drew Fickett	Josh Koscheck	win	loss	725	9418	TKO	Submission (Rear-Naked Choke	N/A	3	4:28
3486	1	UFC Fight Night 3 - Sylvia vs. Silva	2006-01-16	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Jason Von Flue	Alex Karalexis	win	loss	549	11941	TKO	Submission (Shoulder Choke	N/A	3	1:17
3508	2	UFC 57 - Liddell vs. Couture 3	2006-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jeff Monson	Branden Lee Hinkle	win	loss	262	437	TKO	Submission (North-South Choke	N/A	1	4:35
5459	1	UFC - The Ultimate Fighter 6 Finale	2007-12-08	Palms Casino Resort, Las Vegas, Nevada, United States	Jonathan Goulet	Paul Georgieff	win	loss	4120	11408	TKO	Submission (Rear-Naked Choke	Steve Mazzagatti	1	4:42
6339	4	UFC 83 - Serra vs. St. Pierre 2	2008-04-19	Bell Centre, Montreal, Quebec, Canada	Demian Maia	Ed Herman	win	loss	14637	6561	TKO	Submission (Triangle Choke	Philippe Chartier	2	2:27
6394	3	UFC 84 - Ill Will	2008-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Yoshiyuki Yoshida	War Machine	win	loss	12073	10999	TKO	Submission (Anaconda Choke	Herb Dean	1	0:56
8724	8	UFC Fight Night 16 - Fight for the Troops 1	2008-12-10	Crown Coliseum, Fayetteville, North Carolina, United States	Steve Cantwell	Razak Al-Hassan	win	loss	12785	23326	TKO	Submission (Armbar	Mario Yamasaki	1	4:04
9448	2	UFC Fight Night 18 - Condit vs. Kampmann	2009-04-01	Sommet Center, Nashville, Tennessee, United States	Rob Kimmons	Joe Vedepo	win	loss	9863	15833	TKO	Submission (Guillotine Choke	Herb Dean	1	1:54
9568	2	UFC 100 - Lesnar vs. Mir 2	2009-07-11	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Tom Lawlor	C.B. Dollaway	win	loss	21940	22350	TKO	Submission (Guillotine Choke	Yves Lavigne	1	0:55
10147	9	UFC 102 - Couture vs. Nogueira	2009-08-29	Rose Garden Arena, Portland, Oregon, United States	Jake Rosholt	Chris Leben	win	loss	23322	6258	TKO	Submission (Arm-Triangle Choke	Yves Lavigne	3	1:30
10443	1	UFC Fight Night 19 - Diaz vs. Guillard	2009-09-16	Cox Convention Center, Oklahoma City, Oklahoma, United States	Ryan Jensen	Steve Steinbeiss	win	loss	662	21627	TKO	Submission (Guillotine Choke	Gary Ritter	1	3:56
11118	10	UFC 107 - Penn vs. Sanchez	2009-12-12	FedEx Forum, Memphis, Tennessee, United States	Frank Mir	Cheick Kongo	win	loss	2329	2193	TKO	Submission (Guillotine Choke	Herb Dean	1	1:12
11741	9	UFC 109 - Relentless	2010-02-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Paulo Thiago	Mike Swick	win	loss	13336	5199	TKO	Submission (Brabo Choke	Herb Dean	2	1:54
12447	5	UFC 115 - Liddell vs. Franklin	2010-06-12	GM Place, Vancouver, British Columbia, Canada	Matt Wiman	Mac Danzig	win	loss	12236	3396	TKO	Submission (Guillotine Choke	Yves Lavigne	1	1:45
12447	1	UFC 115 - Liddell vs. Franklin	2010-06-12	GM Place, Vancouver, British Columbia, Canada	Mike Pyle	Jesse Lennox	win	loss	4577	17139	TKO	Submission (Triangle Choke	Kevin Dornan	3	4:44
13310	8	UFC 117 - Silva vs. Sonnen	2010-08-07	Oracle Arena, Oakland, California, United States	Matt Hughes	Ricardo Almeida	win	loss	232	11	TKO	Submission (Anaconda Choke	Josh Rosenthal	1	3:15
13380	6	UFC 118 - Edgar vs. Penn 2	2010-08-28	TD Garden, Boston, Massachusetts, United States	Nate Diaz	Marcus Davis	win	loss	11451	8592	TKO	Submission (Guillotine Choke	Yves Lavigne	3	4:02
15120	6	UFC Fight Night 23 - Fight for the Troops 2	2011-01-22	Fort Hood, Killeen, Texas, United States	Yves Edwards	Cody McKenzie	win	loss	344	22173	TKO	Submission (Rear-Naked Choke	Jon Schorle	2	4:33
16712	5	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	Ken Stone	Donny Walker	win	loss	24913	11486	TKO	Submission (Rear-Naked Choke	Myron Gaudet	1	2:40
17789	3	UFC Live 6 - Cruz vs. Johnson	2011-10-01	Verizon Center, Washington, D.C., United States	T.J. Grant	Shane Roller	win	loss	15906	24540	TKO	Submission (Armbar	Fernando Yamasaki	3	2:12
17551	5	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Chris Weidman	Tom Lawlor	win	loss	42804	21940	TKO	Submission (Brabo Choke	Dan Stell	1	2:07
17274	12	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	Jon Jones	Lyoto Machida	win	loss	27944	7513	TKO	Submission (Guillotine Choke	John McCarthy	2	4:26
17274	11	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	Frank Mir	Antonio Rodrigo Nogueira	win	loss	2329	1440	TKO	Submission (Kimura	Herb Dean	1	3:38
19068	9	UFC on FX - Guillard vs. Miller	2012-01-20	Bridgestone Arena, Nashville, Tennessee, United States	Josh Neer	Duane Ludwig	win	loss	9179	101	TKO	Submission (Guillotine Choke	Josh Rosenthal	1	3:04
20039	5	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	Louis Gaudinot	John Lineker	win	loss	45230	41906	TKO	Submission (Guillotine Choke	Keith Peterson	2	4:54
20203	12	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	Chan Sung Jung	Dustin Poirier	win	loss	36155	50529	TKO	Submission (Brabo Choke	Dan Miragliotta	4	1:07
19325	9	UFC - The Ultimate Fighter 15 Finale	2012-06-01	Palms Casino Resort, Las Vegas, Nevada, United States	Michael Chiesa	Al Iaquinta	win	loss	46224	42817	TKO	Submission (Rear-Naked Choke	Herb Dean	1	2:47
19325	1	UFC - The Ultimate Fighter 15 Finale	2012-06-01	Palms Casino Resort, Las Vegas, Nevada, United States	Erik Perez	John Albert	win	loss	35509	43796	TKO	Submission (Armbar	Kim Winslow	1	4:18
24719	4	UFC - The Ultimate Fighter 16 Finale	2012-12-15	The Joint at the Hard Rock Hotel & Casino, Las Vegas, Nevada, United States	T.J. Waldburger	Nick Catone	win	loss	15125	23006	TKO	Submission (Triangle Choke	Herb Dean	2	1:04
25825	5	UFC 159 - Jones vs. Sonnen	2013-04-27	Prudential Center, Newark, New Jersey, United States	Ovince St. Preux	Gian Villante	win	loss	38842	42802	TKO	Decision (Majority	Kevin Mulhall	3	0:33
28215	12	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Ronaldo Souza	Chris Camozzi	win	loss	8394	17224	TKO	Submission (Arm-Triangle Choke	Mario Yamasaki	1	3:37
26101	7	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Rony Mariano Bezerra	Mike Wilkinson	win	loss	38190	50586	TKO	Submission (Triangle Choke	Marc Goddard	1	1:24
30249	11	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Brendan Schaub	Matt Mitrione	win	loss	33926	49519	TKO	Submission (Brabo Choke	Dan Miragliotta	1	4:06
30249	5	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Mitch Gagnon	Dustin Kimura	win	loss	37404	41247	TKO	Submission (Guillotine Choke	Yves Lavigne	1	4:05
33949	9	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Ovince St. Preux	Nikita Krylov	win	loss	38842	110937	TKO	Submission (Shoulder Choke	Dan Miragliotta	1	1:29
34401	7	UFC 172 - Jones vs. Teixeira	2014-04-26	Baltimore Arena, Baltimore, Maryland, United States	Jim Miller	Yancy Medeiros	win	loss	14463	27738	TKO	Submission (Guillotine Choke	Mario Yamasaki	1	3:18
35617	11	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Daniel Cormier	Dan Henderson	win	loss	52311	195	TKO	Submission (Rear-Naked Choke	Yves Lavigne	3	3:53
35617	4	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mitch Clarke	Al Iaquinta	win	loss	22556	42817	TKO	Submission (Brabo Choke	Jason Herzog	2	0:57
35955	10	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Warlley Alves	Marcio Alexandre Jr.	win	loss	70750	95457	TKO	Submission (Guillotine Choke	Mario Yamasaki	3	0:25
36731	2	UFC Fight Night 44 - Swanson vs. Stephens	2014-06-28	AT&T Center, San Antonio, Texas, United States	Ray Borg	Shane Howell	win	loss	84752	20906	TKO	Submission (Rear-Naked Choke	Jacob Montalvo	1	2:17
38011	1	UFC 177 - Dillashaw vs. Soto	2014-08-30	Sleep Train Arena, Sacramento, California, United States	Chris Wade	Cain Carrizosa	win	loss	79335	84645	TKO	Submission (Guillotine Choke	Jason Herzog	1	1:12
37745	2	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Johnny Case	Kazuki Tokudome	win	loss	28017	26192	TKO	Submission (Guillotine Choke	Steve Perceval	2	2:34
40339	7	UFC Fight Night 55 - Rockhold vs. Bisping	2014-11-07	Allphones Arena, Sydney, New South Wales, Australia	Jake Matthews	Vagner Rocha	win	loss	122139	43107	TKO	Submission (Rear-Naked Choke	John Sharp	2	1:52
37549	3	UFC 180 - Werdum vs. Hunt	2014-11-15	Mexico City Arena, Mexico City, Federal District, Mexico	Gabriel Benitez	Humberto Brown Morrison	win	loss	25733	45721	TKO	Submission (Guillotine Choke	Mario Yamasaki	3	0:30
35511	3	UFC 181 - Hendricks vs. Lawler 2	2014-12-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Raquel Pennington	Ashlee Evans-Smith	win	loss	75564	75021	TKO	Submission (Bulldog Choke	Mark Smith	1	4:59
40613	8	UFC Fight Night 58 - Machida vs. Dollaway	2014-12-20	Jose Correa Arena, Barueri, Sao Paulo, Brazil	Erick Silva	Mike Rhodes	win	loss	15009	87296	TKO	Submission (Arm-Triangle Choke	Mario Yamasaki	1	1:15
39291	8	UFC 183 - Silva vs. Diaz	2015-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Thales Leites	Tim Boetsch	win	loss	8593	19544	TKO	Submission (Arm-Triangle Choke	John McCarthy	2	3:45
41893	6	UFC 184 - Rousey vs. Zingano	2015-02-28	Staples Center, Los Angeles, California, United States	Roan Carneiro	Mark Munoz	win	loss	2886	22411	TKO	Submission (Rear-Naked Choke	Jerin Valel	1	1:40
42203	3	UFC Fight Night 68 - Boetsch vs. Henderson	2015-06-06	Smoothie King Center, New Orleans, Louisiana, United States	Joe Proctor	Justin Edwards	win	loss	46307	37452	TKO	Submission (Guillotine Choke	Myron Gaudet	3	4:58
42205	4	UFC 188 - Velasquez vs. Werdum	2015-06-13	Mexico City Arena, Mexico City, Federal District, Mexico	Patrick Williams	Alejandro Perez	win	loss	69607	13428	TKO	Submission (Guillotine Choke	Dan Miragliotta	1	0:23
42223	13	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Glover Teixeira	Ovince St. Preux	win	loss	4655	38842	TKO	Submission (Rear-Naked Choke	John McCarthy	3	3:10
45847	4	UFC Fight Night 75 - Barnett vs. Nelson	2015-09-26	Saitama Super Arena, Saitama, Japan	Keita Nakamura	Jingliang Li	win	loss	9572	26381	TKO	Submission (Rear-Naked Choke	Neil Swailes	3	2:17
42237	7	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Gleison Tibau	Abel Trujillo	win	loss	5993	17129	TKO	Submission (Rear-Naked Choke	Keith Peterson	1	1:45
47669	3	UFC Fight Night 80 - Namajunas vs. VanZant	2015-12-10	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Danny Roberts	Nathan Coy	win	loss	64677	25412	TKO	Submission (Triangle Choke	Jason Herzog	1	2:46
42249	2	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Vicente Luque	Hayder Hassan	win	loss	66474	46033	TKO	Submission (Anaconda Choke	Jorge Alonso	1	2:13
6778	7	UFC 85 - Bedlam	2008-06-07	O2 Arena, London, England, England	Fabricio Werdum	Brandon Vera	win	loss	8390	4886	TKO	Punches	Dan Miragliotta	1	4:40
6778	6	UFC 85 - Bedlam	2008-06-07	O2 Arena, London, England, England	Martin Kampmann	Jorge Rivera	win	loss	5344	2712	Submission	Guillotine Choke	Herb Dean	1	2:44
6778	5	UFC 85 - Bedlam	2008-06-07	O2 Arena, London, England, England	Matt Wiman	Thiago Tavares	win	loss	12236	4647	KO	Punches	Dan Miragliotta	2	1:57
6778	4	UFC 85 - Bedlam	2008-06-07	O2 Arena, London, England, England	Kevin Burns	Roan Carneiro	win	loss	20512	2886	Submission	Triangle Choke	Mario Yamasaki	2	2:53
6778	3	UFC 85 - Bedlam	2008-06-07	O2 Arena, London, England, England	Luiz Cane	Jason Lambert	win	loss	17559	495	TKO	Punches	Herb Dean	1	2:07
6778	1	UFC 85 - Bedlam	2008-06-07	O2 Arena, London, England, England	Antoni Hardonk	Eddie Sanchez	win	loss	1518	12098	TKO	Punches	Mario Yamasaki	2	4:15
6954	10	UFC - The Ultimate Fighter 7 Finale	2008-06-21	Palms Casino Resort, Las Vegas, Nevada, United States	Kendall Grove	Evan Tanner	win	loss	10126	212	Decision	Split	Steve Mazzagatti	3	5:00
6954	9	UFC - The Ultimate Fighter 7 Finale	2008-06-21	Palms Casino Resort, Las Vegas, Nevada, United States	Amir Sadollah	C.B. Dollaway	win	loss	34071	22350	Submission	Armbar	Herb Dean	1	3:02
6954	8	UFC - The Ultimate Fighter 7 Finale	2008-06-21	Palms Casino Resort, Las Vegas, Nevada, United States	Diego Sanchez	Luigi Fioravanti	win	loss	4824	12199	TKO	Knee and Punches	Josh Rosenthal	3	4:07
6954	7	UFC - The Ultimate Fighter 7 Finale	2008-06-21	Palms Casino Resort, Las Vegas, Nevada, United States	Spencer Fisher	Jeremy Stephens	win	loss	5118	12179	Decision	Unanimous	Steve Mazzagatti	3	5:00
6954	6	UFC - The Ultimate Fighter 7 Finale	2008-06-21	Palms Casino Resort, Las Vegas, Nevada, United States	Matt Riddle	Dante Rivera	win	loss	34072	5746	Decision	Unanimous	Herb Dean	3	5:00
6954	5	UFC - The Ultimate Fighter 7 Finale	2008-06-21	Palms Casino Resort, Las Vegas, Nevada, United States	Dustin Hazelett	Joshua Burkman	win	loss	11481	10003	Submission	Armbar	Josh Rosenthal	2	4:46
6954	4	UFC - The Ultimate Fighter 7 Finale	2008-06-21	Palms Casino Resort, Las Vegas, Nevada, United States	Drew McFedries	Marvin Eastman	win	loss	2386	339	TKO	Punches	Steve Mazzagatti	1	1:08
6954	3	UFC - The Ultimate Fighter 7 Finale	2008-06-21	Palms Casino Resort, Las Vegas, Nevada, United States	Matt Brown	Matt Arroyo	win	loss	14310	19456	TKO	Punches	Herb Dean	2	3:40
6954	2	UFC - The Ultimate Fighter 7 Finale	2008-06-21	Palms Casino Resort, Las Vegas, Nevada, United States	Dean Lister	Jeremy Horn	win	loss	338	202	Submission	Guillotine Choke	Josh Rosenthal	1	3:52
6954	1	UFC - The Ultimate Fighter 7 Finale	2008-06-21	Palms Casino Resort, Las Vegas, Nevada, United States	Rob Kimmons	Rob Yundt	win	loss	9863	16858	Submission	Guillotine Choke	Herb Dean	1	3:58
7021	9	UFC 86 - Jackson vs. Griffin	2008-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Forrest Griffin	Quinton Jackson	win	loss	3526	348	Decision	Unanimous	Yves Lavigne	5	5:00
7021	8	UFC 86 - Jackson vs. Griffin	2008-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Patrick Cote	Ricardo Almeida	win	loss	6612	11	Decision	Split	Herb Dean	3	5:00
7021	7	UFC 86 - Jackson vs. Griffin	2008-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Joe Stevenson	Gleison Tibau	win	loss	65	5993	Submission	Guillotine Choke	Steve Mazzagatti	2	2:57
7021	6	UFC 86 - Jackson vs. Griffin	2008-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Josh Koscheck	Chris Lytle	win	loss	9418	267	Decision	Unanimous	Yves Lavigne	3	5:00
7021	5	UFC 86 - Jackson vs. Griffin	2008-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Tyson Griffin	Marcus Aurelio	win	loss	11689	4833	Decision	Unanimous	Herb Dean	3	5:00
7021	4	UFC 86 - Jackson vs. Griffin	2008-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Gabriel Gonzaga	Justin McCully	win	loss	7306	930	Submission	Kimura	Steve Mazzagatti	1	1:57
7021	3	UFC 86 - Jackson vs. Griffin	2008-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Cole Miller	Jorge Gurgel	win	loss	13133	4025	Submission	Triangle Choke	Yves Lavigne	3	4:48
7021	2	UFC 86 - Jackson vs. Griffin	2008-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Melvin Guillard	Dennis Siver	win	loss	7431	9817	TKO	Punches	Herb Dean	1	0:36
7021	1	UFC 86 - Jackson vs. Griffin	2008-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Justin Buchholz	Corey Hill	win	loss	18062	23864	Submission	Rear-Naked Choke	Steve Mazzagatti	2	3:57
7835	11	UFC Fight Night 14 - Silva vs. Irvin	2008-07-19	Palms Casino Resort, Las Vegas, Nevada, United States	Anderson Silva	James Irvin	win	loss	1356	7780	KO	Punches	Mario Yamasaki	1	1:01
7835	10	UFC Fight Night 14 - Silva vs. Irvin	2008-07-19	Palms Casino Resort, Las Vegas, Nevada, United States	Brandon Vera	Reese Andy	win	loss	4886	12692	Decision	Unanimous	Steve Mazzagatti	3	5:00
7835	9	UFC Fight Night 14 - Silva vs. Irvin	2008-07-19	Palms Casino Resort, Las Vegas, Nevada, United States	Frankie Edgar	Hermes Franca	win	loss	14204	3068	Decision	Unanimous	Yves Lavigne	3	5:00
7835	8	UFC Fight Night 14 - Silva vs. Irvin	2008-07-19	Palms Casino Resort, Las Vegas, Nevada, United States	Cain Velasquez	Jake O'Brien	win	loss	19102	14892	TKO	Punches	Mario Yamasaki	1	2:02
7835	7	UFC Fight Night 14 - Silva vs. Irvin	2008-07-19	Palms Casino Resort, Las Vegas, Nevada, United States	Kevin Burns	Anthony Johnson	win	loss	20512	17662	TKO	Eye Injury	Steve Mazzagatti	3	3:35
7835	6	UFC Fight Night 14 - Silva vs. Irvin	2008-07-19	Palms Casino Resort, Las Vegas, Nevada, United States	C.B. Dollaway	Jesse Taylor	win	loss	22350	17389	Submission	Peruvian Necktie	Yves Lavigne	1	3:58
7835	5	UFC Fight Night 14 - Silva vs. Irvin	2008-07-19	Palms Casino Resort, Las Vegas, Nevada, United States	Tim Credeur	Cale Yarbrough	win	loss	1804	34073	TKO	Punches	Mario Yamasaki	1	1:54
7835	4	UFC Fight Night 14 - Silva vs. Irvin	2008-07-19	Palms Casino Resort, Las Vegas, Nevada, United States	Rory Markham	Brodie Farber	win	loss	10768	6123	KO	Head Kick	Steve Mazzagatti	1	1:37
7835	3	UFC Fight Night 14 - Silva vs. Irvin	2008-07-19	Palms Casino Resort, Las Vegas, Nevada, United States	Nate Loughran	Johnny Rees	win	loss	15626	14891	Submission	Triangle Choke	Yves Lavigne	1	4:21
7835	2	UFC Fight Night 14 - Silva vs. Irvin	2008-07-19	Palms Casino Resort, Las Vegas, Nevada, United States	Brad Blackburn	James Giboo	win	loss	2920	14266	TKO	Flying Knee and Punches	Steve Mazzagatti	2	2:29
15438	11	UFC Live 3 - Sanchez vs. Kampmann	2011-03-03	KFC Yum! Center, Louisville, Kentucky, United States	Diego Sanchez	Martin Kampmann	win	loss	4824	5344	Decision	Unanimous	Herb Dean	3	5:00
15438	10	UFC Live 3 - Sanchez vs. Kampmann	2011-03-03	KFC Yum! Center, Louisville, Kentucky, United States	Mark Munoz	C.B. Dollaway	win	loss	22411	22350	KO	Punches	Mario Yamasaki	1	0:54
15438	9	UFC Live 3 - Sanchez vs. Kampmann	2011-03-03	KFC Yum! Center, Louisville, Kentucky, United States	Chris Weidman	Alessio Sakara	win	loss	42804	5366	Decision	Unanimous	Gary Copeland	3	5:00
15438	7	UFC Live 3 - Sanchez vs. Kampmann	2011-03-03	KFC Yum! Center, Louisville, Kentucky, United States	Cyrille Diabate	Steve Cantwell	win	loss	2191	12785	Decision	Unanimous	Herb Dean	3	5:00
15438	6	UFC Live 3 - Sanchez vs. Kampmann	2011-03-03	KFC Yum! Center, Louisville, Kentucky, United States	Danny Castillo	Joe Stevenson	win	loss	26070	65	Decision	Unanimous	Gary Copeland	3	5:00
15438	5	UFC Live 3 - Sanchez vs. Kampmann	2011-03-03	KFC Yum! Center, Louisville, Kentucky, United States	Shane Roller	Thiago Tavares	win	loss	24540	4647	KO	Punches	Mario Yamasaki	2	1:28
15438	4	UFC Live 3 - Sanchez vs. Kampmann	2011-03-03	KFC Yum! Center, Louisville, Kentucky, United States	Takeya Mizugaki	Reuben Duran	win	loss	12074	26602	Decision	Split	Herb Dean	3	5:00
15438	3	UFC Live 3 - Sanchez vs. Kampmann	2011-03-03	KFC Yum! Center, Louisville, Kentucky, United States	Dongi Yang	Rob Kimmons	win	loss	23501	9863	TKO	Punches	Gary Copeland	2	4:47
15438	2	UFC Live 3 - Sanchez vs. Kampmann	2011-03-03	KFC Yum! Center, Louisville, Kentucky, United States	Rousimar Palhares	David Branch	win	loss	16286	32431	Submission	Heel Hook	Mario Yamasaki	2	1:44
15438	1	UFC Live 3 - Sanchez vs. Kampmann	2011-03-03	KFC Yum! Center, Louisville, Kentucky, United States	Igor Pokrajac	Todd Brown	win	loss	7621	21887	TKO	Retirement	Chris Kinman	1	5:00
15483	12	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Jon Jones	Mauricio Rua	win	loss	27944	5707	TKO	Punches and Knees	Herb Dean	3	2:37
15483	11	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Urijah Faber	Eddie Wineland	win	loss	8847	4173	Decision	Unanimous	Keith Peterson	3	5:00
15483	10	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Jim Miller	Kamal Shalorus	win	loss	14463	31151	TKO	Punches	Kevin Mulhall	3	2:15
15483	9	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Nate Marquardt	Dan Miller	win	loss	1712	14464	Decision	Unanimous	Dan Miragliotta	3	5:00
15483	8	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Brendan Schaub	Mirko Filipovic	win	loss	33926	2326	KO	Punch	Herb Dean	3	3:44
15483	7	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Luiz Cane	Eliot Marshall	win	loss	17559	15104	TKO	Punches	Dan Miragliotta	1	2:15
15483	6	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Edson Barboza	Anthony Njokuani	win	loss	46259	7540	Decision	Unanimous	Keith Peterson	3	5:00
15483	5	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Mike Pyle	Ricardo Almeida	win	loss	4577	11	Decision	Unanimous	Kevin MacDonald	3	5:00
15483	4	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Gleison Tibau	Kurt Pellegrino	win	loss	5993	4153	Decision	Split	Herb Dean	3	5:00
15483	3	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Joseph Benavidez	Ian Loveland	win	loss	15008	13793	Decision	Unanimous	Kevin Mulhall	3	5:00
15483	2	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Nick Catone	Costas Philippou	win	loss	23006	32432	Decision	Unanimous	Kevin MacDonald	3	5:00
15483	1	UFC 128 - Shogun vs. Jones	2011-03-19	Prudential Center, Newark, New Jersey, United States	Erik Koch	Raphael Assuncao	win	loss	23390	9574	KO	Punch	Kevin Mulhall	1	2:32
15559	12	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	Phil Davis	Antonio Rogerio Nogueira	win	loss	27802	2270	Decision	Unanimous	Herb Dean	3	5:00
15559	11	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	Anthony Johnson	Dan Hardy	win	loss	17662	10629	Decision	Unanimous	Josh Rosenthal	3	5:00
15559	10	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	Amir Sadollah	DaMarques Johnson	win	loss	34071	12913	Submission	Elbows	Mario Yamasaki	2	3:27
15559	9	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	Chan Sung Jung	Leonard Garcia	win	loss	36155	2815	Submission	Twister	Dan Miragliotta	2	4:59
15559	8	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	Mike Russow	Jon Madsen	win	loss	20552	48820	TKO	Doctor Stoppage	Anthony Hamlett	2	5:00
15559	7	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	Mackens Semerzier	Alex Caceres	win	loss	38841	41586	Submission	Rear-Naked Choke	Mario Yamasaki	1	3:18
15559	6	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	John Hathaway	Kris McCray	win	loss	16704	39432	Decision	Split	Herb Dean	3	5:00
15559	5	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	Michael McDonald	Edwin Figueroa	win	loss	30297	22490	Decision	Unanimous	Josh Rosenthal	3	5:00
540	4	UFC 34 - High Voltage	2001-11-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Josh Barnett	Bobby Hoffman	win	loss	272	265	Submission	Punches	N/A	2	4:25
540	3	UFC 34 - High Voltage	2001-11-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Evan Tanner	Homer Moore	win	loss	212	853	Submission	Armbar	N/A	2	0:55
540	2	UFC 34 - High Voltage	2001-11-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Lindland	Phil Baroni	win	loss	276	278	Decision	Majority	N/A	3	5:00
540	1	UFC 34 - High Voltage	2001-11-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Frank Mir	Roberto Traven	win	loss	2329	142	Submission	Armbar	N/A	1	1:05
668	8	UFC 35 - Throwdown	2002-01-11	Mohegan Sun Arena, Uncasville, Conneticut, United States	Jens Pulver	B.J. Penn	win	loss	228	1307	Decision	Majority	N/A	5	5:00
668	7	UFC 35 - Throwdown	2002-01-11	Mohegan Sun Arena, Uncasville, Conneticut, United States	Ricco Rodriguez	Jeff Monson	win	loss	8	262	TKO	Punches	N/A	3	3:00
668	6	UFC 35 - Throwdown	2002-01-11	Mohegan Sun Arena, Uncasville, Conneticut, United States	Murilo Bustamante	Dave Menne	win	loss	253	245	TKO	Punches	N/A	2	0:44
668	5	UFC 35 - Throwdown	2002-01-11	Mohegan Sun Arena, Uncasville, Conneticut, United States	Chuck Liddell	Amar Suloev	win	loss	192	1995	Decision	Unanimous	N/A	3	5:00
668	4	UFC 35 - Throwdown	2002-01-11	Mohegan Sun Arena, Uncasville, Conneticut, United States	Andrei Semenov	Ricardo Almeida	win	loss	1870	11	TKO	Punches	N/A	2	2:01
668	2	UFC 35 - Throwdown	2002-01-11	Mohegan Sun Arena, Uncasville, Conneticut, United States	Gil Castillo	Chris Brennan	win	loss	553	64	Decision	Unanimous	N/A	3	5:00
668	1	UFC 35 - Throwdown	2002-01-11	Mohegan Sun Arena, Uncasville, Conneticut, United States	Eugene Jackson	Keith Rockel	win	loss	222	2093	Submission	Guillotine Choke	N/A	2	3:46
771	8	UFC 36 - Worlds Collide	2002-03-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Josh Barnett	Randy Couture	win	loss	272	166	TKO	Punches	N/A	2	4:35
771	7	UFC 36 - Worlds Collide	2002-03-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Pedro Rizzo	Andrei Arlovski	win	loss	208	270	KO	Punches	N/A	3	1:45
771	6	UFC 36 - Worlds Collide	2002-03-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Hughes	Hayato Sakurai	win	loss	232	432	TKO	Punches	N/A	4	3:01
771	5	UFC 36 - Worlds Collide	2002-03-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Lindland	Pat Miletich	win	loss	276	188	TKO	Punches	N/A	1	3:09
771	4	UFC 36 - Worlds Collide	2002-03-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Evan Tanner	Elvis Sinosic	win	loss	212	281	TKO	Cut	N/A	1	2:06
771	3	UFC 36 - Worlds Collide	2002-03-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Frank Mir	Pete Williams	win	loss	2329	201	Submission	Inside Shoulder Lock	N/A	1	0:46
771	2	UFC 36 - Worlds Collide	2002-03-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Serra	Kelly Dullanty	win	loss	1305	354	Submission	Triangle Choke	N/A	1	2:58
771	1	UFC 36 - Worlds Collide	2002-03-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Sean Sherk	Jutaro Nakao	win	loss	277	438	Decision	Unanimous	N/A	3	5:00
850	8	UFC 37 - High Impact	2002-05-10	CenturyTel Center, Bossier City, Louisiana, United States	Murilo Bustamante	Matt Lindland	win	loss	253	276	Submission	Guillotine Choke	N/A	3	1:33
850	7	UFC 37 - High Impact	2002-05-10	CenturyTel Center, Bossier City, Louisiana, United States	Ricco Rodriguez	Tsuyoshi Kosaka	win	loss	8	190	TKO	Punches	N/A	2	3:25
850	5	UFC 37 - High Impact	2002-05-10	CenturyTel Center, Bossier City, Louisiana, United States	Phil Baroni	Amar Suloev	win	loss	278	1995	TKO	Punches	N/A	1	2:55
850	4	UFC 37 - High Impact	2002-05-10	CenturyTel Center, Bossier City, Louisiana, United States	Caol Uno	Yves Edwards	win	loss	283	344	Decision	Unanimous	N/A	3	5:00
850	3	UFC 37 - High Impact	2002-05-10	CenturyTel Center, Bossier City, Louisiana, United States	Ivan Salaverry	Andrei Semenov	win	loss	1351	1870	TKO	Punches	N/A	3	2:27
850	1	UFC 37 - High Impact	2002-05-10	CenturyTel Center, Bossier City, Louisiana, United States	Robbie Lawler	Aaron Riley	win	loss	2245	1567	Decision	Unanimous	N/A	3	5:00
901	6	UFC 37.5 - As Real As It Gets	2002-06-22	Bellagio Hotel and CasinoLas Vegas, Nevada, United States, United States	Chuck Liddell	Vitor Belfort	win	loss	192	156	Decision	Unanimous	N/A	3	5:00
901	5	UFC 37.5 - As Real As It Gets	2002-06-22	Bellagio Hotel and CasinoLas Vegas, Nevada, United States, United States	Benji Radach	Nick Serra	win	loss	2294	3225	Decision	Unanimous	N/A	3	5:00
901	4	UFC 37.5 - As Real As It Gets	2002-06-22	Bellagio Hotel and CasinoLas Vegas, Nevada, United States, United States	Pete Spratt	Zach Light	win	loss	3195	3919	Submission	Armbar	N/A	1	2:25
901	3	UFC 37.5 - As Real As It Gets	2002-06-22	Bellagio Hotel and CasinoLas Vegas, Nevada, United States, United States	Robbie Lawler	Steve Berger	win	loss	2245	1303	TKO	Punches	N/A	2	0:27
901	2	UFC 37.5 - As Real As It Gets	2002-06-22	Bellagio Hotel and CasinoLas Vegas, Nevada, United States, United States	Tony Fryklund	Rodrigo Ruas	win	loss	168	1562	TKO	Punches	N/A	2	3:34
901	1	UFC 37.5 - As Real As It Gets	2002-06-22	Bellagio Hotel and CasinoLas Vegas, Nevada, United States, United States	Yves Edwards	Joao Marcos Pierini	win	loss	344	2490	TKO	Injury	N/A	1	1:19
923	7	UFC 38 - Brawl at the Hall	2002-07-13	Royal Albert Hall, London, England, England	Matt Hughes	Carlos Newton	win	loss	232	7	TKO	Punches	N/A	4	3:27
923	6	UFC 38 - Brawl at the Hall	2002-07-13	Royal Albert Hall, London, England, England	Ian Freeman	Frank Mir	win	loss	242	2329	TKO	Punches	N/A	1	4:35
923	5	UFC 38 - Brawl at the Hall	2002-07-13	Royal Albert Hall, London, England, England	Mark Weir	Eugene Jackson	win	loss	3599	222	KO	Punch	N/A	1	0:10
923	4	UFC 38 - Brawl at the Hall	2002-07-13	Royal Albert Hall, London, England, England	Genki Sudo	Leigh Remedios	win	loss	1227	3071	Submission	Rear-Naked Choke	N/A	2	1:38
923	3	UFC 38 - Brawl at the Hall	2002-07-13	Royal Albert Hall, London, England, England	Phillip Miller	James Zikic	win	loss	482	1767	Decision	Unanimous	N/A	3	5:00
923	2	UFC 38 - Brawl at the Hall	2002-07-13	Royal Albert Hall, London, England, England	Renato Sobral	Elvis Sinosic	win	loss	274	281	Decision	Unanimous	N/A	3	5:00
923	1	UFC 38 - Brawl at the Hall	2002-07-13	Royal Albert Hall, London, England, England	Evan Tanner	Chris Haseman	win	loss	212	1449	Decision	Unanimous	N/A	3	5:00
1085	8	UFC 39 - The Warriors Return	2002-09-27	Mohegan Sun Arena, Uncasville, Conneticut, United States	Ricco Rodriguez	Randy Couture	win	loss	8	166	Submission	Elbow	N/A	5	3:04
1085	7	UFC 39 - The Warriors Return	2002-09-27	Mohegan Sun Arena, Uncasville, Conneticut, United States	Tim Sylvia	Wesley Correira	win	loss	1061	2829	TKO	Corner Stoppage	N/A	2	1:43
1085	6	UFC 39 - The Warriors Return	2002-09-27	Mohegan Sun Arena, Uncasville, Conneticut, United States	B.J. Penn	Matt Serra	win	loss	1307	1305	Decision	Unanimous	N/A	3	5:00
1085	5	UFC 39 - The Warriors Return	2002-09-27	Mohegan Sun Arena, Uncasville, Conneticut, United States	Caol Uno	Din Thomas	win	loss	283	1301	Decision	Unanimous	N/A	3	5:00
1085	4	UFC 39 - The Warriors Return	2002-09-27	Mohegan Sun Arena, Uncasville, Conneticut, United States	Gan McGee	Pedro Rizzo	win	loss	273	208	TKO	Corner Stoppage	N/A	1	5:00
31	8	UFC 21 - Return of the Champions	1999-07-16	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Maurice Smith	Marco Ruas	win	loss	175	120	TKO	Corner Stoppage	John McCarthy	1	5:00
31	7	UFC 21 - Return of the Champions	1999-07-16	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Pat Miletich	Andre Pederneiras	win	loss	188	227	TKO	Doctor Stoppage	John McCarthy	2	2:20
31	6	UFC 21 - Return of the Champions	1999-07-16	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Jeremy Horn	Daiju Takase	win	loss	202	226	TKO	Punches	John McCarthy	1	4:41
31	5	UFC 21 - Return of the Champions	1999-07-16	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Paul Jones	Flavio Luiz Moura	win	loss	224	225	Submission	Rear-Naked Choke	John McCarthy	1	4:20
31	4	UFC 21 - Return of the Champions	1999-07-16	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Tsuyoshi Kosaka	Tim Lajcik	win	loss	190	223	TKO	Corner Stoppage	John McCarthy	2	5:00
31	2	UFC 21 - Return of the Champions	1999-07-16	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Andre Roberts	Ron Waterman	win	loss	194	217	KO	Punch	John McCarthy	1	2:51
31	1	UFC 21 - Return of the Champions	1999-07-16	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Travis Fulton	David Dodd	win	loss	80	81	Decision	Unanimous	John McCarthy	2	5:00
32	8	UFC 22 - There Can Be Only One Champion	1999-09-24	Lake Charles Civic Center, Lake Charles, Louisiana, United States	Frank Shamrock	Tito Ortiz	win	loss	284	158	Submission	Punches	John McCarthy	4	4:42
1085	3	UFC 39 - The Warriors Return	2002-09-27	Mohegan Sun Arena, Uncasville, Conneticut, United States	Phil Baroni	Dave Menne	win	loss	278	245	KO	Punches	N/A	1	0:18
1085	2	UFC 39 - The Warriors Return	2002-09-27	Mohegan Sun Arena, Uncasville, Conneticut, United States	Matt Lindland	Ivan Salaverry	win	loss	276	1351	Decision	Unanimous	N/A	3	5:00
1085	1	UFC 39 - The Warriors Return	2002-09-27	Mohegan Sun Arena, Uncasville, Conneticut, United States	Sean Sherk	Benji Radach	win	loss	277	2294	TKO	Doctor Stoppage	N/A	1	4:16
1220	8	UFC 40 - Vendetta	2002-11-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tito Ortiz	Ken Shamrock	win	loss	158	4	TKO	Corner Stoppage	N/A	3	5:00
1220	7	UFC 40 - Vendetta	2002-11-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chuck Liddell	Renato Sobral	win	loss	192	274	KO	Head Kick	N/A	1	2:55
1220	6	UFC 40 - Vendetta	2002-11-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Hughes	Gil Castillo	win	loss	232	553	TKO	Cut	N/A	1	5:00
1220	5	UFC 40 - Vendetta	2002-11-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Carlos Newton	Pete Spratt	win	loss	7	3195	Submission	Kimura	N/A	1	1:45
1220	4	UFC 40 - Vendetta	2002-11-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Robbie Lawler	Tiki Ghosn	win	loss	2245	88	TKO	Punches	N/A	1	1:29
1220	3	UFC 40 - Vendetta	2002-11-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Andrei Arlovski	Ian Freeman	win	loss	270	242	TKO	Punches	N/A	1	1:25
1220	2	UFC 40 - Vendetta	2002-11-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Vladimir Matyushenko	Travis Wiuff	win	loss	435	3660	Submission	Punches	N/A	1	4:10
1220	1	UFC 40 - Vendetta	2002-11-22	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Phillip Miller	Mark Weir	win	loss	482	3599	Submission	Rear-Naked Choke	N/A	2	4:50
1424	8	UFC 41 - Onslaught	2003-02-28	Boardwalk Hall, Atlantic City, New Jersey, United States	Tim Sylvia	Ricco Rodriguez	win	loss	1061	8	TKO	Punches	N/A	1	3:09
1424	7	UFC 41 - Onslaught	2003-02-28	Boardwalk Hall, Atlantic City, New Jersey, United States	Frank Mir	David Abbott	win	loss	2329	110	Submission	Toe Hold	Larry Landless	1	0:46
1424	6	UFC 41 - Onslaught	2003-02-28	Boardwalk Hall, Atlantic City, New Jersey, United States	B.J. Penn	Caol Uno	draw	draw	1307	283	Draw	\N	N/A	5	5:00
1424	5	UFC 41 - Onslaught	2003-02-28	Boardwalk Hall, Atlantic City, New Jersey, United States	Matt Lindland	Phil Baroni	win	loss	276	278	Decision	Unanimous	N/A	3	5:00
1424	4	UFC 41 - Onslaught	2003-02-28	Boardwalk Hall, Atlantic City, New Jersey, United States	Vladimir Matyushenko	Pedro Rizzo	win	loss	435	208	Decision	Unanimous	N/A	3	5:00
2690	6	UFC 51 - Super Saturday	2005-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Evan Tanner	David Terrell	win	loss	212	536	TKO	Punches	N/A	1	4:35
2690	5	UFC 51 - Super Saturday	2005-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Paul Buentello	Justin Eilers	win	loss	347	5936	KO	Punch	N/A	1	3:34
2690	4	UFC 51 - Super Saturday	2005-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Mike Kyle	James Irvin	win	loss	3619	7780	KO	Punch	N/A	1	1:55
2690	3	UFC 51 - Super Saturday	2005-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	David Loiseau	Gideon Ray	win	loss	903	4555	TKO	Doctor Stoppage	N/A	1	5:00
34	6	UFC 24 - First Defense	2000-03-10	Lake Charles Civic Center, Lake Charles, Louisiana, United States	Lance Gibson	Jermaine Andre	win	loss	246	247	KO	Knee	John McCarthy	3	3:35
34	5	UFC 24 - First Defense	2000-03-10	Lake Charles Civic Center, Lake Charles, Louisiana, United States	Dave Menne	Fabiano Iha	win	loss	245	218	Decision	Unanimous	John McCarthy	3	5:00
34	2	UFC 24 - First Defense	2000-03-10	Lake Charles Civic Center, Lake Charles, Louisiana, United States	Scott Adams	Ian Freeman	win	loss	241	242	Submission	Heel Hook	John McCarthy	1	3:09
35	6	UFC 25 - Ultimate Japan 3	2000-04-14	Yoyogi National Gymnasium, Tokyo, Japan, Japan	Tito Ortiz	Wanderlei Silva	win	loss	158	209	Decision	Unanimous	John McCarthy	5	5:00
35	5	UFC 25 - Ultimate Japan 3	2000-04-14	Yoyogi National Gymnasium, Tokyo, Japan, Japan	Murilo Bustamante	Yoji Anjo	win	loss	253	182	Submission	Arm-Triangle Choke	John McCarthy	2	0:31
35	4	UFC 25 - Ultimate Japan 3	2000-04-14	Yoyogi National Gymnasium, Tokyo, Japan, Japan	Sanae Kikuta	Eugene Jackson	win	loss	252	222	Submission	Armbar	John McCarthy	1	4:38
35	3	UFC 25 - Ultimate Japan 3	2000-04-14	Yoyogi National Gymnasium, Tokyo, Japan, Japan	Ron Waterman	Satoshi Honma	win	loss	217	251	Decision	Unanimous	John McCarthy	3	5:00
35	2	UFC 25 - Ultimate Japan 3	2000-04-14	Yoyogi National Gymnasium, Tokyo, Japan, Japan	Ikuhisa Minowa	Joe Slick	win	loss	250	238	TKO	Cut	John McCarthy	3	2:02
35	1	UFC 25 - Ultimate Japan 3	2000-04-14	Yoyogi National Gymnasium, Tokyo, Japan, Japan	LaVerne Clark	Koji Oishi	win	loss	184	249	Decision	Majority	John McCarthy	3	5:00
36	8	UFC 26 - Ultimate Field of Dreams	2000-06-09	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Kevin Randleman	Pedro Rizzo	win	loss	162	208	Decision	Unanimous	John McCarthy	5	5:00
2690	2	UFC 51 - Super Saturday	2005-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Karo Parisyan	Chris Lytle	win	loss	5153	267	Decision	Unanimous	N/A	3	5:00
2690	1	UFC 51 - Super Saturday	2005-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Nick Diaz	Drew Fickett	win	loss	2831	725	TKO	Punches	N/A	1	4:40
2690	9	UFC 51 - Super Saturday	2005-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Tito Ortiz	Vitor Belfort	win	loss	158	156	Decision	Split	N/A	3	5:00
2690	8	UFC 51 - Super Saturday	2005-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Pete Sell	Phil Baroni	win	loss	7795	278	Submission	Guillotine Choke	N/A	3	4:19
2971	9	UFC - The Ultimate Fighter 1 Finale	2005-04-09	Cox Pavilion, Las Vegas, Nevada, United States	Rich Franklin	Ken Shamrock	win	loss	392	4	TKO	Punches	N/A	1	2:42
2971	8	UFC - The Ultimate Fighter 1 Finale	2005-04-09	Cox Pavilion, Las Vegas, Nevada, United States	Forrest Griffin	Stephan Bonnar	win	loss	3526	3014	Decision	Unanimous	N/A	3	5:00
2971	7	UFC - The Ultimate Fighter 1 Finale	2005-04-09	Cox Pavilion, Las Vegas, Nevada, United States	Diego Sanchez	Kenny Florian	win	loss	4824	8021	TKO	Punches	N/A	1	2:49
2971	6	UFC - The Ultimate Fighter 1 Finale	2005-04-09	Cox Pavilion, Las Vegas, Nevada, United States	Sam Hoger	Bobby Southworth	win	loss	6445	551	Decision	Unanimous	N/A	3	5:00
2971	5	UFC - The Ultimate Fighter 1 Finale	2005-04-09	Cox Pavilion, Las Vegas, Nevada, United States	Chris Leben	Jason Thacker	win	loss	6258	12690	TKO	Punches	N/A	1	1:35
2971	4	UFC - The Ultimate Fighter 1 Finale	2005-04-09	Cox Pavilion, Las Vegas, Nevada, United States	Josh Koscheck	Chris Sanford	win	loss	9418	2656	KO	Punch	N/A	1	4:21
2971	3	UFC - The Ultimate Fighter 1 Finale	2005-04-09	Cox Pavilion, Las Vegas, Nevada, United States	Nate Quarry	Lodune Sincaid	win	loss	2383	4208	TKO	Punches	N/A	1	3:17
2971	2	UFC - The Ultimate Fighter 1 Finale	2005-04-09	Cox Pavilion, Las Vegas, Nevada, United States	Mike Swick	Alex Schoenauer	win	loss	5199	4000	KO	Punch	N/A	1	0:20
2971	1	UFC - The Ultimate Fighter 1 Finale	2005-04-09	Cox Pavilion, Las Vegas, Nevada, United States	Alex Karalexis	Josh Rafferty	win	loss	11941	2682	TKO	Punches	N/A	1	1:40
2930	8	UFC 52 - Couture vs. Liddell 2	2005-04-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chuck Liddell	Randy Couture	win	loss	192	166	KO	Punches	N/A	1	2:06
2930	7	UFC 52 - Couture vs. Liddell 2	2005-04-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Renato Sobral	Travis Wiuff	win	loss	274	3660	Submission	Armbar	N/A	2	0:24
2930	6	UFC 52 - Couture vs. Liddell 2	2005-04-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Hughes	Frank Trigg	win	loss	232	311	Submission	Rear-Naked Choke	N/A	1	4:05
2930	5	UFC 52 - Couture vs. Liddell 2	2005-04-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Lindland	Travis Lutter	win	loss	276	4586	Submission	Guillotine Choke	N/A	2	3:32
37	5	UFC 27 - Ultimate Bad Boyz	2000-09-22	Lakefront Arena, New Orleans, Louisiana, United States	Fabiano Iha	LaVerne Clark	win	loss	218	184	Submission	Armbar	John McCarthy	1	1:10
37	4	UFC 27 - Ultimate Bad Boyz	2000-09-22	Lakefront Arena, New Orleans, Louisiana, United States	Yuki Kondo	Alexandre Dantas	win	loss	263	264	TKO	Punches	John McCarthy	3	2:28
37	3	UFC 27 - Ultimate Bad Boyz	2000-09-22	Lakefront Arena, New Orleans, Louisiana, United States	Ian Freeman	Tedd Williams	win	loss	242	248	Decision	Unanimous	John McCarthy	3	5:00
2930	4	UFC 52 - Couture vs. Liddell 2	2005-04-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Georges St. Pierre	Jason Miller	win	loss	3500	7798	Decision	Unanimous	N/A	3	5:00
2930	3	UFC 52 - Couture vs. Liddell 2	2005-04-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Ivan Salaverry	Joe Riggs	win	loss	1351	2765	Submission	Triangle Choke	N/A	1	2:42
2930	2	UFC 52 - Couture vs. Liddell 2	2005-04-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Joe Doerksen	Patrick Cote	win	loss	390	6612	Submission	Rear-Naked Choke	N/A	3	2:35
3054	6	UFC 53 - Heavy Hitters	2005-06-04	Boardwalk Hall, Atlantic City, New Jersey, United States	Rich Franklin	Evan Tanner	win	loss	392	212	TKO	Doctor Stoppage	N/A	4	3:25
3054	5	UFC 53 - Heavy Hitters	2005-06-04	Boardwalk Hall, Atlantic City, New Jersey, United States	Forrest Griffin	Bill Mahood	win	loss	3526	4388	Submission	Rear-Naked Choke	N/A	1	2:18
3054	4	UFC 53 - Heavy Hitters	2005-06-04	Boardwalk Hall, Atlantic City, New Jersey, United States	Paul Buentello	Kevin Jordan	win	loss	347	4399	Submission	Guillotine Choke	N/A	1	4:00
3054	3	UFC 53 - Heavy Hitters	2005-06-04	Boardwalk Hall, Atlantic City, New Jersey, United States	Nate Quarry	Shonie Carter	win	loss	2383	239	TKO	Punches	N/A	1	2:37
3054	2	UFC 53 - Heavy Hitters	2005-06-04	Boardwalk Hall, Atlantic City, New Jersey, United States	David Loiseau	Charles McCarthy	win	loss	903	7987	TKO	Spinning Back Kick	N/A	2	2:10
3100	8	UFC Fight Night 1 - Marquardt vs. Salaverry	2005-08-06	Cox Pavillion, Las Vegas, Nevada, United States	Nate Marquardt	Ivan Salaverry	win	loss	1712	1351	Decision	Unanimous	John McCarthy	3	5:00
3100	7	UFC Fight Night 1 - Marquardt vs. Salaverry	2005-08-06	Cox Pavillion, Las Vegas, Nevada, United States	Chris Leben	Patrick Cote	win	loss	6258	6612	Decision	Split	Herb Dean	3	5:00
3100	6	UFC Fight Night 1 - Marquardt vs. Salaverry	2005-08-06	Cox Pavillion, Las Vegas, Nevada, United States	Stephan Bonnar	Sam Hoger	win	loss	3014	6445	Decision	Unanimous	John McCarthy	3	5:00
3100	5	UFC Fight Night 1 - Marquardt vs. Salaverry	2005-08-06	Cox Pavillion, Las Vegas, Nevada, United States	Nate Quarry	Pete Sell	win	loss	2383	7795	TKO	Punch	Cecil Peoples	1	0:42
3100	4	UFC Fight Night 1 - Marquardt vs. Salaverry	2005-08-06	Cox Pavillion, Las Vegas, Nevada, United States	Josh Koscheck	Pete Spratt	win	loss	9418	3195	Submission	Rear-Naked Choke	Steve Mazzagatti	1	1:53
3100	3	UFC Fight Night 1 - Marquardt vs. Salaverry	2005-08-06	Cox Pavillion, Las Vegas, Nevada, United States	Mike Swick	Gideon Ray	win	loss	5199	4555	TKO	Punches	Herb Dean	1	0:22
3100	2	UFC Fight Night 1 - Marquardt vs. Salaverry	2005-08-06	Cox Pavillion, Las Vegas, Nevada, United States	Kenny Florian	Alex Karalexis	win	loss	8021	11941	TKO	Doctor Stoppage	Cecil Peoples	2	2:52
3093	8	UFC 54 - Boiling Point	2005-08-20	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chuck Liddell	Jeremy Horn	win	loss	192	202	TKO	Retirement	N/A	4	2:46
3093	7	UFC 54 - Boiling Point	2005-08-20	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tim Sylvia	Tra Telligman	win	loss	1061	157	KO	Head Kick	N/A	1	4:59
3093	6	UFC 54 - Boiling Point	2005-08-20	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Randy Couture	Mike Van Arsdale	win	loss	166	198	Submission	Anaconda Choke	N/A	3	0:52
3093	5	UFC 54 - Boiling Point	2005-08-20	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Diego Sanchez	Brian Gassaway	win	loss	4824	886	Submission	Punches	N/A	2	1:56
3093	4	UFC 54 - Boiling Point	2005-08-20	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Georges St. Pierre	Frank Trigg	win	loss	3500	311	Submission	Rear-Naked Choke	N/A	1	4:09
3093	3	UFC 54 - Boiling Point	2005-08-20	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Lindland	Joe Doerksen	win	loss	276	390	Decision	Unanimous	N/A	3	5:00
3093	2	UFC 54 - Boiling Point	2005-08-20	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Trevor Prangley	Travis Lutter	win	loss	4789	4586	Decision	Unanimous	N/A	3	5:00
3093	1	UFC 54 - Boiling Point	2005-08-20	MGM Grand Garden Arena, Las Vegas, Nevada, United States	James Irvin	Terry Martin	win	loss	7780	7202	KO	Flying Knee	N/A	2	0:09
3255	3	UFC Fight Night 2 - Loiseau vs. Tanner	2005-10-03	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Spencer Fisher	Thiago Alves	win	loss	5118	5998	Submission	Triangle Choke	N/A	2	4:43
3255	2	UFC Fight Night 2 - Loiseau vs. Tanner	2005-10-03	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Jon Fitch	Brock Larson	win	loss	4865	6373	Decision	Unanimous	N/A	3	5:00
3255	1	UFC Fight Night 2 - Loiseau vs. Tanner	2005-10-03	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Jonathan Goulet	Jay Hieron	win	loss	4120	9267	TKO	Doctor Stoppage	Jon Schorle	3	1:05
3250	8	UFC 55 - Fury	2005-10-07	Mohegan Sun Arena, Uncasville, Connecticut, United States	Andrei Arlovski	Paul Buentello	win	loss	270	347	KO	Punch	John McCarthy	1	0:15
3250	6	UFC 55 - Fury	2005-10-07	Mohegan Sun Arena, Uncasville, Connecticut, United States	Forrest Griffin	Elvis Sinosic	win	loss	3526	281	TKO	Punches	Mario Yamasaki	1	3:22
3250	5	UFC 55 - Fury	2005-10-07	Mohegan Sun Arena, Uncasville, Connecticut, United States	Renato Sobral	Chael Sonnen	win	loss	274	4112	Submission	Triangle Choke	Herb Dean	2	1:20
3250	4	UFC 55 - Fury	2005-10-07	Mohegan Sun Arena, Uncasville, Connecticut, United States	Joe Riggs	Chris Lytle	win	loss	2765	267	TKO	Cut	John McCarthy	2	2:00
3250	3	UFC 55 - Fury	2005-10-07	Mohegan Sun Arena, Uncasville, Connecticut, United States	Jorge Rivera	Dennis Hallman	win	loss	2712	275	Decision	Unanimous	Mario Yamasaki	3	5:00
3375	7	UFC - The Ultimate Fighter 2 Finale	2005-11-05	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Diego Sanchez	Nick Diaz	win	loss	4824	2831	Decision	Unanimous	N/A	3	5:00
3375	6	UFC - The Ultimate Fighter 2 Finale	2005-11-05	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Rashad Evans	Brad Imes	win	loss	10200	11453	Decision	Split	N/A	3	5:00
3100	1	UFC Fight Night 1 - Marquardt vs. Salaverry	2005-08-06	Cox Pavillion, Las Vegas, Nevada, United States	Drew Fickett	Josh Neer	win	loss	725	9179	TKO	Submission (Rear-Naked Choke	Steve Mazzagatti	1	1:35
3375	3	UFC - The Ultimate Fighter 2 Finale	2005-11-05	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Joshua Burkman	Sam Morgan	win	loss	10003	3139	KO	Slam	N/A	1	0:21
3375	2	UFC - The Ultimate Fighter 2 Finale	2005-11-05	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Melvin Guillard	Marcus Davis	win	loss	7431	8592	TKO	Cut	N/A	2	2:55
3375	1	UFC - The Ultimate Fighter 2 Finale	2005-11-05	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Keith Jardine	Kerry Schall	win	loss	2638	397	TKO	Leg Kicks	N/A	2	3:28
3328	8	UFC 56 - Full Force	2005-11-19	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rich Franklin	Nate Quarry	win	loss	392	2383	KO	Punch	John McCarthy	1	2:34
3328	7	UFC 56 - Full Force	2005-11-19	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Gabriel Gonzaga	Kevin Jordan	win	loss	7306	4399	KO	Superman Punch	Herb Dean	3	4:39
3328	6	UFC 56 - Full Force	2005-11-19	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Hughes	Joe Riggs	win	loss	232	2765	Submission	Kimura	John McCarthy	1	3:28
3328	5	UFC 56 - Full Force	2005-11-19	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Georges St. Pierre	Sean Sherk	win	loss	3500	277	TKO	Punches and Elbows	Herb Dean	2	2:53
3328	4	UFC 56 - Full Force	2005-11-19	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jeremy Horn	Trevor Prangley	win	loss	202	4789	Decision	Unanimous	Mario Yamasaki	3	5:00
3328	3	UFC 56 - Full Force	2005-11-19	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Sam Hoger	Jeff Newton	win	loss	6445	3263	Submission	Rear-Naked Choke	Herb Dean	2	2:05
3328	2	UFC 56 - Full Force	2005-11-19	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Thiago Alves	Ansar Chalangov	win	loss	5998	7148	TKO	Punches	Mario Yamasaki	1	2:25
3328	1	UFC 56 - Full Force	2005-11-19	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Nick Thompson	Keith Wisniewski	win	loss	7124	2095	Decision	Unanimous	Steve Mazzagatti	3	5:00
3486	8	UFC Fight Night 3 - Sylvia vs. Silva	2006-01-16	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Tim Sylvia	Assuerio Silva	win	loss	1061	1587	Decision	Unanimous	N/A	3	5:00
3486	7	UFC Fight Night 3 - Sylvia vs. Silva	2006-01-16	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Stephan Bonnar	James Irvin	win	loss	3014	7780	Submission	Kimura	N/A	1	4:30
3486	6	UFC Fight Night 3 - Sylvia vs. Silva	2006-01-16	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Joshua Burkman	Drew Fickett	win	loss	10003	725	Submission	Guillotine Choke	N/A	1	1:07
3486	5	UFC Fight Night 3 - Sylvia vs. Silva	2006-01-16	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Chris Leben	Jorge Rivera	win	loss	6258	2712	TKO	Punches	N/A	1	1:44
3486	4	UFC Fight Night 3 - Sylvia vs. Silva	2006-01-16	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Josh Neer	Melvin Guillard	win	loss	9179	7431	Submission	Triangle Choke	N/A	1	4:20
3486	3	UFC Fight Night 3 - Sylvia vs. Silva	2006-01-16	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Duane Ludwig	Jonathan Goulet	win	loss	101	4120	TKO	Punch	N/A	1	0:11
3486	2	UFC Fight Night 3 - Sylvia vs. Silva	2006-01-16	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Spencer Fisher	Aaron Riley	win	loss	5118	1567	TKO	Doctor Stoppage	N/A	1	5:00
3508	9	UFC 57 - Liddell vs. Couture 3	2006-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Chuck Liddell	Randy Couture	win	loss	192	166	KO	Punch	N/A	2	1:28
3508	8	UFC 57 - Liddell vs. Couture 3	2006-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Brandon Vera	Justin Eilers	win	loss	4886	5936	KO	Head Kick and Knee	N/A	1	1:25
3508	7	UFC 57 - Liddell vs. Couture 3	2006-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Marcio Cruz	Frank Mir	win	loss	13976	2329	TKO	Punches and Elbows	N/A	1	4:10
3508	6	UFC 57 - Liddell vs. Couture 3	2006-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Renato Sobral	Mike Van Arsdale	win	loss	274	198	Submission	Rear-Naked Choke	N/A	1	2:21
3508	5	UFC 57 - Liddell vs. Couture 3	2006-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Joe Riggs	Nick Diaz	win	loss	2765	2831	Decision	Unanimous	N/A	3	5:00
3508	4	UFC 57 - Liddell vs. Couture 3	2006-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Alessio Sakara	Elvis Sinosic	win	loss	5366	281	Decision	Unanimous	N/A	3	5:00
3508	3	UFC 57 - Liddell vs. Couture 3	2006-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Paul Buentello	Gilbert Aldana	win	loss	347	10334	TKO	Punches	N/A	2	2:27
3508	1	UFC 57 - Liddell vs. Couture 3	2006-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Keith Jardine	Mike Whitehead	win	loss	2638	4397	Decision	Unanimous	N/A	3	5:00
3512	8	UFC 58 - USA vs. Canada	2006-03-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Rich Franklin	David Loiseau	win	loss	392	903	Decision	Unanimous	N/A	5	5:00
3512	7	UFC 58 - USA vs. Canada	2006-03-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Mike Swick	Steve Vigneault	win	loss	5199	900	Submission	Guillotine Choke	N/A	1	2:09
3512	6	UFC 58 - USA vs. Canada	2006-03-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Georges St. Pierre	B.J. Penn	win	loss	3500	1307	Decision	Split	N/A	3	5:00
3512	5	UFC 58 - USA vs. Canada	2006-03-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Nate Marquardt	Joe Doerksen	win	loss	1712	390	Decision	Unanimous	N/A	3	5:00
3512	4	UFC 58 - USA vs. Canada	2006-03-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Mark Hominick	Yves Edwards	win	loss	4728	344	Submission	Triangle Armbar	N/A	2	1:52
3512	3	UFC 58 - USA vs. Canada	2006-03-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Sam Stout	Spencer Fisher	win	loss	9901	5118	Decision	Split	N/A	3	5:00
3512	2	UFC 58 - USA vs. Canada	2006-03-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jason Lambert	Rob MacDonald	win	loss	495	4638	Submission	Kimura	N/A	1	1:54
3512	1	UFC 58 - USA vs. Canada	2006-03-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Tom Murphy	Icho Larenas	win	loss	12284	10502	TKO	Punches	N/A	3	1:59
3665	9	UFC Fight Night 4 - Bonnar vs. Jardine	2006-04-06	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Stephan Bonnar	Keith Jardine	win	loss	3014	2638	Decision	Unanimous	N/A	3	5:00
3665	8	UFC Fight Night 4 - Bonnar vs. Jardine	2006-04-06	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Rashad Evans	Sam Hoger	win	loss	10200	6445	Decision	Split	N/A	3	5:00
3665	7	UFC Fight Night 4 - Bonnar vs. Jardine	2006-04-06	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Josh Neer	Joe Stevenson	win	loss	9179	65	Decision	Unanimous	N/A	3	5:00
3665	6	UFC Fight Night 4 - Bonnar vs. Jardine	2006-04-06	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Chris Leben	Luigi Fioravanti	win	loss	6258	12199	Decision	Unanimous	N/A	3	5:00
3665	5	UFC Fight Night 4 - Bonnar vs. Jardine	2006-04-06	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Luke Cummo	Jason Von Flue	win	loss	6428	549	Decision	Unanimous	N/A	3	5:00
3665	4	UFC Fight Night 4 - Bonnar vs. Jardine	2006-04-06	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Jon Fitch	Joshua Burkman	win	loss	4865	10003	Submission	Rear-Naked Choke	N/A	2	4:57
3665	3	UFC Fight Night 4 - Bonnar vs. Jardine	2006-04-06	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Dan Christison	Brad Imes	win	loss	2646	11453	Submission	Armbar	N/A	3	3:37
3665	2	UFC Fight Night 4 - Bonnar vs. Jardine	2006-04-06	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Josh Koscheck	Ansar Chalangov	win	loss	9418	7148	Submission	Rear-Naked Choke	N/A	1	3:29
3665	1	UFC Fight Night 4 - Bonnar vs. Jardine	2006-04-06	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Chael Sonnen	Trevor Prangley	win	loss	4112	4789	Decision	Unanimous	N/A	3	5:00
3577	9	UFC 59 - Reality Check	2006-04-15	Honda Center, Anaheim, California, United States	Tim Sylvia	Andrei Arlovski	win	loss	1061	270	TKO	Punches	N/A	1	2:43
3577	8	UFC 59 - Reality Check	2006-04-15	Honda Center, Anaheim, California, United States	Sean Sherk	Nick Diaz	win	loss	277	2831	Decision	Unanimous	N/A	3	5:00
3577	7	UFC 59 - Reality Check	2006-04-15	Honda Center, Anaheim, California, United States	Tito Ortiz	Forrest Griffin	win	loss	158	3526	Decision	Split	N/A	3	5:00
3577	6	UFC 59 - Reality Check	2006-04-15	Honda Center, Anaheim, California, United States	Evan Tanner	Justin Levens	win	loss	212	10226	Submission	Triangle Choke	N/A	1	3:14
3577	5	UFC 59 - Reality Check	2006-04-15	Honda Center, Anaheim, California, United States	Jeff Monson	Marcio Cruz	win	loss	262	13976	Decision	Split	N/A	3	5:00
3577	4	UFC 59 - Reality Check	2006-04-15	Honda Center, Anaheim, California, United States	Karo Parisyan	Nick Thompson	win	loss	5153	7124	Submission	Punches	N/A	1	4:44
3577	3	UFC 59 - Reality Check	2006-04-15	Honda Center, Anaheim, California, United States	David Terrell	Scott Smith	win	loss	536	2578	Submission	Rear-Naked Choke	N/A	1	3:08
3577	2	UFC 59 - Reality Check	2006-04-15	Honda Center, Anaheim, California, United States	Jason Lambert	Terry Martin	win	loss	495	7202	TKO	Punches	N/A	2	2:37
3577	1	UFC 59 - Reality Check	2006-04-15	Honda Center, Anaheim, California, United States	Thiago Alves	Derrick Noble	win	loss	5998	4556	TKO	Punches	N/A	1	2:54
3666	9	UFC 60 - Hughes vs. Gracie	2006-05-27	Staples Center, Los Angeles, California, United States	Matt Hughes	Royce Gracie	win	loss	232	19	TKO	Punches	N/A	1	4:39
3666	8	UFC 60 - Hughes vs. Gracie	2006-05-27	Staples Center, Los Angeles, California, United States	Dean Lister	Alessio Sakara	win	loss	338	5366	Submission	Triangle Choke	N/A	1	2:20
3666	7	UFC 60 - Hughes vs. Gracie	2006-05-27	Staples Center, Los Angeles, California, United States	Diego Sanchez	John Alessio	win	loss	4824	259	Decision	Unanimous	N/A	3	5:00
3666	6	UFC 60 - Hughes vs. Gracie	2006-05-27	Staples Center, Los Angeles, California, United States	Brandon Vera	Assuerio Silva	win	loss	4886	1587	Submission	Guillotine Choke	N/A	1	2:39
3666	5	UFC 60 - Hughes vs. Gracie	2006-05-27	Staples Center, Los Angeles, California, United States	Mike Swick	Joe Riggs	win	loss	5199	2765	Submission	Guillotine Choke	N/A	1	2:19
3666	4	UFC 60 - Hughes vs. Gracie	2006-05-27	Staples Center, Los Angeles, California, United States	Jeremy Horn	Chael Sonnen	win	loss	202	4112	Submission	Armbar	N/A	2	1:17
3666	3	UFC 60 - Hughes vs. Gracie	2006-05-27	Staples Center, Los Angeles, California, United States	Spencer Fisher	Matt Wiman	win	loss	5118	12236	KO	Flying Knee	N/A	2	1:43
3666	2	UFC 60 - Hughes vs. Gracie	2006-05-27	Staples Center, Los Angeles, California, United States	Gabriel Gonzaga	Fabiano Scherner	win	loss	7306	7690	TKO	Punches	N/A	2	0:24
3952	9	UFC - The Ultimate Fighter 3 Finale	2006-06-24	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Kenny Florian	Sam Stout	win	loss	8021	9901	Submission	Rear-Naked Choke	N/A	1	1:46
3952	8	UFC - The Ultimate Fighter 3 Finale	2006-06-24	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Michael Bisping	Josh Haynes	win	loss	10196	6254	TKO	Punches	N/A	2	4:14
3952	7	UFC - The Ultimate Fighter 3 Finale	2006-06-24	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Kendall Grove	Ed Herman	win	loss	10126	6561	Decision	Unanimous	N/A	3	5:00
3952	6	UFC - The Ultimate Fighter 3 Finale	2006-06-24	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Keith Jardine	Wilson Gouveia	win	loss	2638	3070	Decision	Unanimous	N/A	3	5:00
3952	5	UFC - The Ultimate Fighter 3 Finale	2006-06-24	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Rory Singer	Ross Pointon	win	loss	3525	6541	Submission	Triangle Choke	N/A	1	0:44
3952	4	UFC - The Ultimate Fighter 3 Finale	2006-06-24	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Kalib Starnes	Danny Abbadi	win	loss	8095	16696	Submission	Rear-Naked Choke	N/A	1	2:56
3952	3	UFC - The Ultimate Fighter 3 Finale	2006-06-24	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Luigi Fioravanti	Solomon Hutcherson	win	loss	12199	5342	KO	Punch	N/A	1	4:15
3952	2	UFC - The Ultimate Fighter 3 Finale	2006-06-24	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Matt Hamill	Jesse Forbes	win	loss	16695	13453	TKO	Punches	N/A	1	4:47
3952	1	UFC - The Ultimate Fighter 3 Finale	2006-06-24	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Mike Nickels	Wes Combs	win	loss	11278	4371	Submission	Rear-Naked Choke	N/A	1	3:10
850	6	UFC 37 - High Impact	2002-05-10	CenturyTel Center, Bossier City, Louisiana, United States	B.J. Penn	Paul Creighton	win	loss	1307	4441	TKO	Punches	N/A	2	3:23
3815	9	UFC Fight Night 5 - Leben vs. Silva	2006-06-28	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Jonathan Goulet	Luke Cummo	win	loss	4120	6428	Decision	Unanimous	N/A	3	5:00
3815	7	UFC Fight Night 5 - Leben vs. Silva	2006-06-28	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Rashad Evans	Stephan Bonnar	win	loss	10200	3014	Decision	Majority	N/A	3	5:00
3815	6	UFC Fight Night 5 - Leben vs. Silva	2006-06-28	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Mark Hominick	Jorge Gurgel	win	loss	4728	4025	Decision	Unanimous	N/A	3	5:00
3815	5	UFC Fight Night 5 - Leben vs. Silva	2006-06-28	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Josh Koscheck	Dave Menne	win	loss	9418	245	Decision	Unanimous	N/A	3	5:00
3815	4	UFC Fight Night 5 - Leben vs. Silva	2006-06-28	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Jason Lambert	Branden Lee Hinkle	win	loss	495	437	TKO	Punches	N/A	1	5:00
3815	3	UFC Fight Night 5 - Leben vs. Silva	2006-06-28	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Jon Fitch	Thiago Alves	win	loss	4865	5998	TKO	Upkick and Punches	N/A	2	4:37
3815	1	UFC Fight Night 5 - Leben vs. Silva	2006-06-28	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Jorge Santiago	Justin Levens	win	loss	5735	10226	KO	Knee	N/A	1	2:13
3910	9	UFC 61 - Bitter Rivals	2006-07-08	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Tim Sylvia	Andrei Arlovski	win	loss	1061	270	Decision	Unanimous	John McCarthy	5	5:00
3910	8	UFC 61 - Bitter Rivals	2006-07-08	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Joshua Burkman	Josh Neer	win	loss	10003	9179	Decision	Unanimous	Steve Mazzagatti	3	5:00
3910	7	UFC 61 - Bitter Rivals	2006-07-08	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Tito Ortiz	Ken Shamrock	win	loss	158	4	TKO	Elbows	Herb Dean	1	1:18
3910	6	UFC 61 - Bitter Rivals	2006-07-08	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Frank Mir	Dan Christison	win	loss	2329	2646	Decision	Unanimous	Yves Lavigne	3	5:00
3910	5	UFC 61 - Bitter Rivals	2006-07-08	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Joe Stevenson	Yves Edwards	win	loss	65	344	TKO	Doctor Stoppage	John McCarthy	2	5:00
3910	4	UFC 61 - Bitter Rivals	2006-07-08	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Hermes Franca	Joe Jordan	win	loss	3068	4582	Submission	Triangle Choke	Yves Lavigne	3	0:47
3910	3	UFC 61 - Bitter Rivals	2006-07-08	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jeff Monson	Anthony Perosh	win	loss	262	9491	TKO	Punches	Herb Dean	1	2:42
3910	2	UFC 61 - Bitter Rivals	2006-07-08	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Cheick Kongo	Gilbert Aldana	win	loss	2193	10334	TKO	Doctor Stoppage	Yves Lavigne	1	4:13
3910	1	UFC 61 - Bitter Rivals	2006-07-08	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Drew Fickett	Kurt Pellegrino	win	loss	725	4153	Submission	Rear-Naked Choke	Steve Mazzagatti	3	1:20
4026	9	UFC Fight Night 6 - Sanchez vs. Parisyan	2006-08-17	Red Rock Casino Resort and Spa, Las Vegas, Nevada, United States	Diego Sanchez	Karo Parisyan	win	loss	4824	5153	Decision	Unanimous	N/A	3	5:00
4026	8	UFC Fight Night 6 - Sanchez vs. Parisyan	2006-08-17	Red Rock Casino Resort and Spa, Las Vegas, Nevada, United States	Chris Leben	Jorge Santiago	win	loss	6258	5735	KO	Punch	N/A	2	0:35
4026	7	UFC Fight Night 6 - Sanchez vs. Parisyan	2006-08-17	Red Rock Casino Resort and Spa, Las Vegas, Nevada, United States	Dean Lister	Yuki Sasaki	win	loss	338	1255	Decision	Unanimous	N/A	3	5:00
4026	6	UFC Fight Night 6 - Sanchez vs. Parisyan	2006-08-17	Red Rock Casino Resort and Spa, Las Vegas, Nevada, United States	Josh Koscheck	Jonathan Goulet	win	loss	9418	4120	Submission	Punches	N/A	1	4:10
4026	5	UFC Fight Night 6 - Sanchez vs. Parisyan	2006-08-17	Red Rock Casino Resort and Spa, Las Vegas, Nevada, United States	Martin Kampmann	Crafton Wallace	win	loss	5344	8269	Submission	Rear-Naked Choke	N/A	1	2:59
4663	6	UFC 69 - Shootout	2007-04-07	Toyota Center, Houston, Texas, United States	Yushin Okami	Mike Swick	win	loss	5569	5199	Decision	Unanimous	Mario Yamasaki	3	5:00
4027	9	UFC 62 - Liddell vs. Sobral	2006-08-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Chuck Liddell	Renato Sobral	win	loss	192	274	TKO	Punches	John McCarthy	1	1:35
4027	8	UFC 62 - Liddell vs. Sobral	2006-08-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Forrest Griffin	Stephan Bonnar	win	loss	3526	3014	Decision	Unanimous	Steve Mazzagatti	3	5:00
4027	7	UFC 62 - Liddell vs. Sobral	2006-08-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Nick Diaz	Josh Neer	win	loss	2831	9179	Submission	Kimura	Herb Dean	3	1:42
4027	6	UFC 62 - Liddell vs. Sobral	2006-08-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Cheick Kongo	Christian Wellisch	win	loss	2193	3328	KO	Knee	Mario Yamasaki	1	2:51
4027	5	UFC 62 - Liddell vs. Sobral	2006-08-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Hermes Franca	Jamie Varner	win	loss	3068	7168	Submission	Armbar	John McCarthy	3	3:31
4027	4	UFC 62 - Liddell vs. Sobral	2006-08-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Eric Schafer	Rob MacDonald	win	loss	13275	4638	Submission	Arm-Triangle Choke	Herb Dean	1	2:26
4027	3	UFC 62 - Liddell vs. Sobral	2006-08-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Wilson Gouveia	Wes Combs	win	loss	3070	4371	Submission	Rear-Naked Choke	Steve Mazzagatti	1	3:23
4027	1	UFC 62 - Liddell vs. Sobral	2006-08-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Yushin Okami	Alan Belcher	win	loss	5569	10967	Decision	Unanimous	Herb Dean	3	5:00
4094	9	UFC 63 - Hughes vs. Penn 2	2006-09-23	Honda Center, Anaheim, California, United States	Matt Hughes	B.J. Penn	win	loss	232	1307	TKO	Punches	John McCarthy	3	3:53
4094	8	UFC 63 - Hughes vs. Penn 2	2006-09-23	Honda Center, Anaheim, California, United States	Mike Swick	David Loiseau	win	loss	5199	903	Decision	Unanimous	Steve Mazzagatti	3	5:00
4094	7	UFC 63 - Hughes vs. Penn 2	2006-09-23	Honda Center, Anaheim, California, United States	Melvin Guillard	Gabe Ruediger	win	loss	7431	5542	KO	Punch to the Body	Herb Dean	2	1:01
4094	6	UFC 63 - Hughes vs. Penn 2	2006-09-23	Honda Center, Anaheim, California, United States	Rashad Evans	Jason Lambert	win	loss	10200	495	KO	Punches	John McCarthy	2	2:22
4094	5	UFC 63 - Hughes vs. Penn 2	2006-09-23	Honda Center, Anaheim, California, United States	Joe Lauzon	Jens Pulver	win	loss	4923	228	KO	Punch	Herb Dean	1	0:48
4094	4	UFC 63 - Hughes vs. Penn 2	2006-09-23	Honda Center, Anaheim, California, United States	Roger Huerta	Jason Dent	win	loss	10089	8321	Decision	Unanimous	Steve Mazzagatti	3	5:00
4094	2	UFC 63 - Hughes vs. Penn 2	2006-09-23	Honda Center, Anaheim, California, United States	Jorge Gurgel	Danny Abbadi	win	loss	4025	16696	Decision	Unanimous	Herb Dean	3	5:00
4112	9	UFC Fight Night 6.5 - Ortiz vs. Shamrock 3	2006-10-10	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Tito Ortiz	Ken Shamrock	win	loss	158	4	TKO	Punches	John McCarthy	1	2:23
4112	8	UFC Fight Night 6.5 - Ortiz vs. Shamrock 3	2006-10-10	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Kendall Grove	Chris Price	win	loss	10126	14121	Submission	Elbows	Troy Waugh	1	3:59
4112	7	UFC Fight Night 6.5 - Ortiz vs. Shamrock 3	2006-10-10	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Jason MacDonald	Ed Herman	win	loss	4389	6561	Submission	Triangle Choke	Jorge Alonso	1	2:43
4112	6	UFC Fight Night 6.5 - Ortiz vs. Shamrock 3	2006-10-10	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Matt Hamill	Seth Petruzelli	win	loss	16695	2738	Decision	Unanimous	John McCarthy	3	5:00
4112	5	UFC Fight Night 6.5 - Ortiz vs. Shamrock 3	2006-10-10	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Nate Marquardt	Crafton Wallace	win	loss	1712	8269	Submission	Rear-Naked Choke	Troy Waugh	2	1:14
4112	4	UFC Fight Night 6.5 - Ortiz vs. Shamrock 3	2006-10-10	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Tony DeSouza	Dustin Hazelett	win	loss	487	11481	Submission	Kimura	Marco Lopez	1	3:59
4112	3	UFC Fight Night 6.5 - Ortiz vs. Shamrock 3	2006-10-10	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Rory Singer	Josh Haynes	win	loss	3525	6254	Decision	Unanimous	John McCarthy	3	5:00
4112	2	UFC Fight Night 6.5 - Ortiz vs. Shamrock 3	2006-10-10	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Thiago Alves	John Alessio	win	loss	5998	259	Decision	Unanimous	Troy Waugh	3	5:00
4112	1	UFC Fight Night 6.5 - Ortiz vs. Shamrock 3	2006-10-10	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Marcus Davis	Forrest Petz	win	loss	8592	4411	Submission	Guillotine Choke	Jorge Alonso	1	4:58
4181	8	UFC 64 - Unstoppable	2006-10-14	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Anderson Silva	Rich Franklin	win	loss	1356	392	KO	Knee	John McCarthy	1	2:59
4181	7	UFC 64 - Unstoppable	2006-10-14	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Sean Sherk	Kenny Florian	win	loss	277	8021	Decision	Unanimous	Steve Mazzagatti	5	5:00
4181	6	UFC 64 - Unstoppable	2006-10-14	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jon Fitch	Kuniyoshi Hironaka	win	loss	4865	2575	Decision	Unanimous	Mario Yamasaki	3	5:00
4181	5	UFC 64 - Unstoppable	2006-10-14	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Carmelo Marrero	Cheick Kongo	win	loss	12855	2193	Decision	Split	Yves Lavigne	3	5:00
4181	4	UFC 64 - Unstoppable	2006-10-14	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Spencer Fisher	Dan Lauzon	win	loss	5118	16556	TKO	Punches	Mario Yamasaki	1	4:38
4181	3	UFC 64 - Unstoppable	2006-10-14	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Yushin Okami	Kalib Starnes	win	loss	5569	8095	TKO	Punches	Yves Lavigne	3	1:40
4181	2	UFC 64 - Unstoppable	2006-10-14	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Clay Guida	Justin James	win	loss	8184	1926	Submission	Rear-Naked Choke	Steve Mazzagatti	2	4:42
4181	1	UFC 64 - Unstoppable	2006-10-14	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Kurt Pellegrino	Junior Assuncao	win	loss	4153	10380	Submission	Rear-Naked Choke	John McCarthy	1	2:04
4314	8	UFC - The Ultimate Fighter 4 Finale	2006-11-11	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Matt Serra	Chris Lytle	win	loss	1305	267	Decision	Split	Herb Dean	3	5:00
4314	7	UFC - The Ultimate Fighter 4 Finale	2006-11-11	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Travis Lutter	Patrick Cote	win	loss	4586	6612	Submission	Armbar	John McCarthy	1	2:18
4314	6	UFC - The Ultimate Fighter 4 Finale	2006-11-11	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Din Thomas	Rich Clementi	win	loss	1301	1046	Submission	Rear-Naked Choke	Steve Mazzagatti	2	3:11
4314	5	UFC - The Ultimate Fighter 4 Finale	2006-11-11	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Jorge Rivera	Edwin Dewees	win	loss	2712	720	TKO	Punches	Yves Lavigne	1	2:37
4314	4	UFC - The Ultimate Fighter 4 Finale	2006-11-11	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Pete Spratt	Jeremy Jackson	win	loss	3195	2651	Submission	Neck Injury	Herb Dean	2	1:11
4314	3	UFC - The Ultimate Fighter 4 Finale	2006-11-11	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Scott Smith	Pete Sell	win	loss	2578	7795	KO	Punch	John McCarthy	2	3:25
4314	2	UFC - The Ultimate Fighter 4 Finale	2006-11-11	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Charles McCarthy	Gideon Ray	win	loss	7987	4555	Submission	Armbar	Steve Mazzagatti	1	4:43
4314	1	UFC - The Ultimate Fighter 4 Finale	2006-11-11	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Martin Kampmann	Thales Leites	win	loss	5344	8593	Decision	Unanimous	Yves Lavigne	3	5:00
4313	9	UFC 65 - Bad Intentions	2006-11-18	ARCO Arena, Sacramento, California, United States	Georges St. Pierre	Matt Hughes	win	loss	3500	232	TKO	Head Kick and Punches	John McCarthy	2	1:25
4313	8	UFC 65 - Bad Intentions	2006-11-18	ARCO Arena, Sacramento, California, United States	Tim Sylvia	Jeff Monson	win	loss	1061	262	Decision	Unanimous	John McCarthy	5	5:00
4313	7	UFC 65 - Bad Intentions	2006-11-18	ARCO Arena, Sacramento, California, United States	Drew McFedries	Alessio Sakara	win	loss	2386	5366	TKO	Punches	Mario Yamasaki	1	4:07
4313	6	UFC 65 - Bad Intentions	2006-11-18	ARCO Arena, Sacramento, California, United States	Brandon Vera	Frank Mir	win	loss	4886	2329	TKO	Punches	Steve Mazzagatti	1	1:09
4313	5	UFC 65 - Bad Intentions	2006-11-18	ARCO Arena, Sacramento, California, United States	Joe Stevenson	Dokonjonosuke Mishima	win	loss	65	1170	Submission	Guillotine Choke	Mario Yamasaki	1	2:07
4313	4	UFC 65 - Bad Intentions	2006-11-18	ARCO Arena, Sacramento, California, United States	Nick Diaz	Gleison Tibau	win	loss	2831	5993	TKO	Punches	Steve Mazzagatti	2	2:27
4313	3	UFC 65 - Bad Intentions	2006-11-18	ARCO Arena, Sacramento, California, United States	Antoni Hardonk	Sherman Pendergarst	win	loss	1518	12854	KO	Punch	John McCarthy	1	3:15
4313	2	UFC 65 - Bad Intentions	2006-11-18	ARCO Arena, Sacramento, California, United States	James Irvin	Hector Ramirez	win	loss	7780	10581	TKO	Kick to the Body and Elbows	Mario Yamasaki	2	2:36
6778	8	UFC 85 - Bedlam	2008-06-07	O2 Arena, London, England, England	Thales Leites	Nate Marquardt	win	loss	8593	1712	Decision	Split	Herb Dean	3	5:00
4313	1	UFC 65 - Bad Intentions	2006-11-18	ARCO Arena, Sacramento, California, United States	Jake O'Brien	Josh Schockman	win	loss	14892	13270	Decision	Unanimous	Steve Mazzagatti	3	5:00
4626	9	UFC Fight Night 7 - Sanchez vs. Riggs	2006-12-13	Marine Corps Air Station Miramar, San Diego, California, United States	Diego Sanchez	Joe Riggs	win	loss	4824	2765	KO	Knee	John McCarthy	1	1:45
4626	8	UFC Fight Night 7 - Sanchez vs. Riggs	2006-12-13	Marine Corps Air Station Miramar, San Diego, California, United States	Josh Koscheck	Jeff Joslin	win	loss	9418	6606	Decision	Unanimous	Herb Dean	3	5:00
4626	7	UFC Fight Night 7 - Sanchez vs. Riggs	2006-12-13	Marine Corps Air Station Miramar, San Diego, California, United States	Karo Parisyan	Drew Fickett	win	loss	5153	725	Decision	Unanimous	Steve Mazzagatti	3	5:00
4626	6	UFC Fight Night 7 - Sanchez vs. Riggs	2006-12-13	Marine Corps Air Station Miramar, San Diego, California, United States	Marcus Davis	Shonie Carter	win	loss	8592	239	Decision	Unanimous	John McCarthy	3	5:00
4626	5	UFC Fight Night 7 - Sanchez vs. Riggs	2006-12-13	Marine Corps Air Station Miramar, San Diego, California, United States	David Heath	Victor Valimaki	win	loss	11483	4391	Decision	Split	Herb Dean	3	5:00
4626	4	UFC Fight Night 7 - Sanchez vs. Riggs	2006-12-13	Marine Corps Air Station Miramar, San Diego, California, United States	Alan Belcher	Jorge Santiago	win	loss	10967	5735	KO	Head Kick	Steve Mazzagatti	3	2:45
4626	3	UFC Fight Night 7 - Sanchez vs. Riggs	2006-12-13	Marine Corps Air Station Miramar, San Diego, California, United States	Luigi Fioravanti	Dave Menne	win	loss	12199	245	TKO	Punches	John McCarthy	1	4:44
4626	2	UFC Fight Night 7 - Sanchez vs. Riggs	2006-12-13	Marine Corps Air Station Miramar, San Diego, California, United States	Brock Larson	Keita Nakamura	win	loss	6373	9572	Decision	Unanimous	Herb Dean	3	5:00
4312	3	UFC 66 - Liddell vs. Ortiz 2	2006-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Gabriel Gonzaga	Carmelo Marrero	win	loss	7306	12855	Submission	Armbar	Herb Dean	1	3:22
4312	2	UFC 66 - Liddell vs. Ortiz 2	2006-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Yushin Okami	Rory Singer	win	loss	5569	3525	Submission	Punches	Steve Mazzagatti	3	4:03
4312	1	UFC 66 - Liddell vs. Ortiz 2	2006-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Christian Wellisch	Anthony Perosh	win	loss	3328	9491	Decision	Unanimous	Herb Dean	3	5:00
4312	9	UFC 66 - Liddell vs. Ortiz 2	2006-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chuck Liddell	Tito Ortiz	win	loss	192	158	TKO	Punches	Mario Yamasaki	3	3:59
4312	8	UFC 66 - Liddell vs. Ortiz 2	2006-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Keith Jardine	Forrest Griffin	win	loss	2638	3526	TKO	Punches	John McCarthy	1	4:41
4312	7	UFC 66 - Liddell vs. Ortiz 2	2006-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jason MacDonald	Chris Leben	win	loss	4389	6258	Submission	Guillotine Choke	Steve Mazzagatti	2	4:03
4312	6	UFC 66 - Liddell vs. Ortiz 2	2006-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Andrei Arlovski	Marcio Cruz	win	loss	270	13976	KO	Punches	Herb Dean	1	3:15
4312	5	UFC 66 - Liddell vs. Ortiz 2	2006-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Michael Bisping	Eric Schafer	win	loss	10196	13275	TKO	Punches	Mario Yamasaki	1	4:24
4312	4	UFC 66 - Liddell vs. Ortiz 2	2006-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Thiago Alves	Tony DeSouza	win	loss	5998	487	KO	Knee	John McCarthy	2	1:10
4664	8	UFC Fight Night 8 - Evans vs. Salmon	2007-01-25	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Rashad Evans	Sean Salmon	win	loss	10200	14515	KO	Head Kick	Troy Waugh	2	1:06
4664	7	UFC Fight Night 8 - Evans vs. Salmon	2007-01-25	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Jake O'Brien	Heath Herring	win	loss	14892	13	Decision	Unanimous	John McCarthy	3	5:00
4664	6	UFC Fight Night 8 - Evans vs. Salmon	2007-01-25	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Hermes Franca	Spencer Fisher	win	loss	3068	5118	TKO	Punches	Jorge Alonso	2	4:03
4664	5	UFC Fight Night 8 - Evans vs. Salmon	2007-01-25	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Nate Marquardt	Dean Lister	win	loss	1712	338	Decision	Unanimous	John McCarthy	3	5:00
4664	4	UFC Fight Night 8 - Evans vs. Salmon	2007-01-25	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Joshua Burkman	Chad Reiner	win	loss	10003	14016	Decision	Unanimous	Troy Waugh	3	5:00
4664	3	UFC Fight Night 8 - Evans vs. Salmon	2007-01-25	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Ed Herman	Chris Price	win	loss	6561	14121	Submission	Armbar	Jorge Alonso	1	2:58
4664	2	UFC Fight Night 8 - Evans vs. Salmon	2007-01-25	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Din Thomas	Clay Guida	win	loss	1301	8184	Decision	Unanimous	John McCarthy	3	5:00
4664	1	UFC Fight Night 8 - Evans vs. Salmon	2007-01-25	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Rich Clementi	Ross Pointon	win	loss	1046	6541	Submission	Rear-Naked Choke	Troy Waugh	2	4:53
4311	9	UFC 67 - All or Nothing	2007-02-03	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Anderson Silva	Travis Lutter	win	loss	1356	4586	Submission	Elbows	Herb Dean	2	2:11
4311	8	UFC 67 - All or Nothing	2007-02-03	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Mirko Filipovic	Eddie Sanchez	win	loss	2326	12098	TKO	Punches	Steve Mazzagatti	1	4:33
4311	7	UFC 67 - All or Nothing	2007-02-03	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Roger Huerta	John Halverson	win	loss	10089	7407	TKO	Punches	Yves Lavigne	1	0:19
4311	6	UFC 67 - All or Nothing	2007-02-03	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Quinton Jackson	Marvin Eastman	win	loss	348	339	KO	Punches	John McCarthy	2	3:49
4311	5	UFC 67 - All or Nothing	2007-02-03	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Patrick Cote	Scott Smith	win	loss	6612	2578	Decision	Unanimous	Yves Lavigne	3	5:00
1863	7	UFC 45 - Revolution	2003-11-21	Mohegan Sun Arena, Uncasville, Conneticut, United States	Matt Lindland	Falaniko Vitale	win	loss	276	370	TKO	Punches	N/A	3	4:23
1863	6	UFC 45 - Revolution	2003-11-21	Mohegan Sun Arena, Uncasville, Conneticut, United States	Wesley Correira	David Abbott	win	loss	2829	110	TKO	Cut	N/A	1	2:14
4311	4	UFC 67 - All or Nothing	2007-02-03	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Terry Martin	Jorge Rivera	win	loss	7202	2712	KO	Punches	Herb Dean	1	0:14
4311	3	UFC 67 - All or Nothing	2007-02-03	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Frankie Edgar	Tyson Griffin	win	loss	14204	11689	Decision	Unanimous	Steve Mazzagatti	3	5:00
4311	1	UFC 67 - All or Nothing	2007-02-03	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Dustin Hazelett	Diego Saraiva	win	loss	11481	9534	Decision	Unanimous	Yves Lavigne	3	5:00
4662	9	UFC 68 - Uprising	2007-03-03	Nationwide Arena, Columbus, Ohio, United States	Randy Couture	Tim Sylvia	win	loss	166	1061	Decision	Unanimous	John McCarthy	5	5:00
4662	8	UFC 68 - Uprising	2007-03-03	Nationwide Arena, Columbus, Ohio, United States	Martin Kampmann	Drew McFedries	win	loss	5344	2386	Submission	Arm-Triangle Choke	Herb Dean	1	4:06
4662	7	UFC 68 - Uprising	2007-03-03	Nationwide Arena, Columbus, Ohio, United States	Rich Franklin	Jason MacDonald	win	loss	392	4389	TKO	Corner Stoppage	Herb Dean	2	5:00
4662	6	UFC 68 - Uprising	2007-03-03	Nationwide Arena, Columbus, Ohio, United States	Matt Hughes	Chris Lytle	win	loss	232	267	Decision	Unanimous	Mark Matheny	3	5:00
4662	5	UFC 68 - Uprising	2007-03-03	Nationwide Arena, Columbus, Ohio, United States	Jason Lambert	Renato Sobral	win	loss	495	274	KO	Punch	John McCarthy	2	3:26
4662	3	UFC 68 - Uprising	2007-03-03	Nationwide Arena, Columbus, Ohio, United States	Jon Fitch	Luigi Fioravanti	win	loss	4865	12199	Submission	Rear-Naked Choke	Mark Matheny	2	3:05
4662	2	UFC 68 - Uprising	2007-03-03	Nationwide Arena, Columbus, Ohio, United States	Gleison Tibau	Jason Dent	win	loss	5993	8321	Decision	Unanimous	Herb Dean	3	5:00
4662	1	UFC 68 - Uprising	2007-03-03	Nationwide Arena, Columbus, Ohio, United States	Jamie Varner	Jason Gilliam	win	loss	7168	10754	Submission	Rear-Naked Choke	Mark Matheny	1	1:34
4682	9	UFC Fight Night 9 - Stevenson vs. Guillard	2007-04-05	Palms Casino Resort, Las Vegas, Nevada, United States	Joe Stevenson	Melvin Guillard	win	loss	65	7431	Submission	Guillotine Choke	Steve Mazzagatti	1	0:27
4682	8	UFC Fight Night 9 - Stevenson vs. Guillard	2007-04-05	Palms Casino Resort, Las Vegas, Nevada, United States	Justin McCully	Antoni Hardonk	win	loss	930	1518	Decision	Unanimous	Herb Dean	3	5:00
4682	7	UFC Fight Night 9 - Stevenson vs. Guillard	2007-04-05	Palms Casino Resort, Las Vegas, Nevada, United States	Kenny Florian	Dokonjonosuke Mishima	win	loss	8021	1170	Submission	Rear-Naked Choke	John McCarthy	3	3:57
4682	6	UFC Fight Night 9 - Stevenson vs. Guillard	2007-04-05	Palms Casino Resort, Las Vegas, Nevada, United States	Wilson Gouveia	Seth Petruzelli	win	loss	3070	2738	Submission	Guillotine Choke	Yves Lavigne	2	0:39
4682	5	UFC Fight Night 9 - Stevenson vs. Guillard	2007-04-05	Palms Casino Resort, Las Vegas, Nevada, United States	Drew Fickett	Keita Nakamura	win	loss	725	9572	Decision	Unanimous	Steve Mazzagatti	3	5:00
4682	4	UFC Fight Night 9 - Stevenson vs. Guillard	2007-04-05	Palms Casino Resort, Las Vegas, Nevada, United States	Kurt Pellegrino	Nate Mohr	win	loss	4153	8396	Submission	Achilles Lock	Herb Dean	1	2:58
4682	3	UFC Fight Night 9 - Stevenson vs. Guillard	2007-04-05	Palms Casino Resort, Las Vegas, Nevada, United States	Kuniyoshi Hironaka	Forrest Petz	win	loss	2575	4411	Decision	Unanimous	John McCarthy	3	5:00
4682	2	UFC Fight Night 9 - Stevenson vs. Guillard	2007-04-05	Palms Casino Resort, Las Vegas, Nevada, United States	Roan Carneiro	Rich Clementi	win	loss	2886	1046	Decision	Unanimous	Yves Lavigne	3	5:00
4682	1	UFC Fight Night 9 - Stevenson vs. Guillard	2007-04-05	Palms Casino Resort, Las Vegas, Nevada, United States	Thiago Tavares	Naoyuki Kotani	win	loss	4647	393	Decision	Unanimous	Herb Dean	3	5:00
4663	9	UFC 69 - Shootout	2007-04-07	Toyota Center, Houston, Texas, United States	Matt Serra	Georges St. Pierre	win	loss	1305	3500	TKO	Punches	John McCarthy	1	3:25
4663	8	UFC 69 - Shootout	2007-04-07	Toyota Center, Houston, Texas, United States	Josh Koscheck	Diego Sanchez	win	loss	9418	4824	Decision	Unanimous	John McCarthy	3	5:00
4663	7	UFC 69 - Shootout	2007-04-07	Toyota Center, Houston, Texas, United States	Roger Huerta	Leonard Garcia	win	loss	10089	2815	Decision	Unanimous	Mario Yamasaki	3	5:00
4663	5	UFC 69 - Shootout	2007-04-07	Toyota Center, Houston, Texas, United States	Kendall Grove	Alan Belcher	win	loss	10126	10967	Submission	Brabo Choke	John McCarthy	2	4:42
4663	4	UFC 69 - Shootout	2007-04-07	Toyota Center, Houston, Texas, United States	Heath Herring	Brad Imes	win	loss	13	11453	Decision	Unanimous	Kerry Hatley	3	5:00
4663	3	UFC 69 - Shootout	2007-04-07	Toyota Center, Houston, Texas, United States	Thales Leites	Pete Sell	win	loss	8593	7795	Decision	Unanimous	Mario Yamasaki	3	5:00
4663	2	UFC 69 - Shootout	2007-04-07	Toyota Center, Houston, Texas, United States	Marcus Davis	Pete Spratt	win	loss	8592	3195	Submission	Achilles Lock	Kerry Hatley	2	2:57
4663	1	UFC 69 - Shootout	2007-04-07	Toyota Center, Houston, Texas, United States	Luke Cummo	Josh Haynes	win	loss	6428	6254	KO	Punch	Kerry Hatley	2	2:45
4862	10	UFC 70 - Nations Collide	2007-04-21	Manchester Evening News Arena, Manchester, Lancashire, England	Gabriel Gonzaga	Mirko Filipovic	win	loss	7306	2326	KO	Head Kick	Herb Dean	1	4:51
4862	9	UFC 70 - Nations Collide	2007-04-21	Manchester Evening News Arena, Manchester, Lancashire, England	Andrei Arlovski	Fabricio Werdum	win	loss	270	8390	Decision	Unanimous	Herb Dean	3	5:00
4862	8	UFC 70 - Nations Collide	2007-04-21	Manchester Evening News Arena, Manchester, Lancashire, England	Michael Bisping	Elvis Sinosic	win	loss	10196	281	TKO	Punches	Steve Mazzagatti	2	1:20
4862	7	UFC 70 - Nations Collide	2007-04-21	Manchester Evening News Arena, Manchester, Lancashire, England	Lyoto Machida	David Heath	win	loss	7513	11483	Decision	Unanimous	Mario Yamasaki	3	5:00
1424	3	UFC 41 - Onslaught	2003-02-28	Boardwalk Hall, Atlantic City, New Jersey, United States	Din Thomas	Matt Serra	win	loss	1301	1305	Decision	Split	N/A	3	5:00
4862	6	UFC 70 - Nations Collide	2007-04-21	Manchester Evening News Arena, Manchester, Lancashire, England	Cheick Kongo	Assuerio Silva	win	loss	2193	1587	Decision	Majority	Mario Yamasaki	3	5:00
4862	5	UFC 70 - Nations Collide	2007-04-21	Manchester Evening News Arena, Manchester, Lancashire, England	Terry Etim	Matt Grice	win	loss	13332	14539	Submission	Guillotine Choke	Steve Mazzagatti	1	4:38
4862	3	UFC 70 - Nations Collide	2007-04-21	Manchester Evening News Arena, Manchester, Lancashire, England	Alessio Sakara	Victor Valimaki	win	loss	5366	4391	TKO	Punches	Mario Yamasaki	1	1:44
4862	1	UFC 70 - Nations Collide	2007-04-21	Manchester Evening News Arena, Manchester, Lancashire, England	Paul Taylor	Edilberto de Oliveira	win	loss	6326	11907	TKO	Head Kick and Punches	Herb Dean	3	0:37
4993	9	UFC 71 - Liddell vs. Jackson	2007-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Quinton Jackson	Chuck Liddell	win	loss	348	192	TKO	Punches	John McCarthy	1	1:53
4993	8	UFC 71 - Liddell vs. Jackson	2007-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Karo Parisyan	Joshua Burkman	win	loss	5153	10003	Decision	Unanimous	Herb Dean	3	5:00
4993	7	UFC 71 - Liddell vs. Jackson	2007-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Terry Martin	Ivan Salaverry	win	loss	7202	1351	TKO	Suplex and Punches	Mario Yamasaki	1	2:04
4993	5	UFC 71 - Liddell vs. Jackson	2007-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Kalib Starnes	Chris Leben	win	loss	8095	6258	Decision	Unanimous	Mario Yamasaki	3	5:00
4993	4	UFC 71 - Liddell vs. Jackson	2007-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Thiago Silva	James Irvin	win	loss	14396	7780	TKO	Knee Injury	Herb Dean	1	1:06
4993	3	UFC 71 - Liddell vs. Jackson	2007-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Alan Belcher	Sean Salmon	win	loss	10967	14515	Submission	Guillotine Choke	Steve Mazzagatti	1	0:53
4993	2	UFC 71 - Liddell vs. Jackson	2007-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Din Thomas	Jeremy Stephens	win	loss	1301	12179	Submission	Armbar	John McCarthy	2	2:44
4993	1	UFC 71 - Liddell vs. Jackson	2007-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Wilson Gouveia	Carmelo Marrero	win	loss	3070	12855	Submission	Guillotine Choke	Mario Yamasaki	1	3:06
5227	9	UFC Fight Night 10 - Stout vs. Fisher 2	2007-06-12	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Spencer Fisher	Sam Stout	win	loss	5118	9901	Decision	Unanimous	John McCarthy	3	5:00
5227	8	UFC Fight Night 10 - Stout vs. Fisher 2	2007-06-12	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Jon Fitch	Roan Carneiro	win	loss	4865	2886	Submission	Rear-Naked Choke	Troy Waugh	2	1:07
5227	7	UFC Fight Night 10 - Stout vs. Fisher 2	2007-06-12	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Drew McFedries	Jordan Radev	win	loss	2386	5925	KO	Punch	Jorge Alonso	1	0:33
5227	6	UFC Fight Night 10 - Stout vs. Fisher 2	2007-06-12	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Thiago Tavares	Jason Black	win	loss	4647	1042	Submission	Triangle Choke	John McCarthy	2	2:49
5227	5	UFC Fight Night 10 - Stout vs. Fisher 2	2007-06-12	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Forrest Petz	Luigi Fioravanti	win	loss	4411	12199	Decision	Unanimous	Troy Waugh	3	5:00
5227	4	UFC Fight Night 10 - Stout vs. Fisher 2	2007-06-12	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Tamdan McCrory	Pete Spratt	win	loss	16470	3195	Submission	Triangle Choke	Jorge Alonso	2	2:04
5227	3	UFC Fight Night 10 - Stout vs. Fisher 2	2007-06-12	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Gleison Tibau	Jeff Cox	win	loss	5993	9785	Submission	Arm-Triangle Choke	John McCarthy	1	1:52
5227	2	UFC Fight Night 10 - Stout vs. Fisher 2	2007-06-12	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Anthony Johnson	Chad Reiner	win	loss	17662	14016	KO	Punches	Troy Waugh	1	0:13
5227	1	UFC Fight Night 10 - Stout vs. Fisher 2	2007-06-12	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Nate Mohr	Luke Caudillo	win	loss	8396	7406	Decision	Unanimous	Jorge Alonso	3	5:00
5084	8	UFC 72 - Victory	2007-06-16	The Odyssey, Belfast, Northern Ireland, Ireland	Rich Franklin	Yushin Okami	win	loss	392	5569	Decision	Unanimous	John McCarthy	3	5:00
5084	7	UFC 72 - Victory	2007-06-16	The Odyssey, Belfast, Northern Ireland, Ireland	Forrest Griffin	Hector Ramirez	win	loss	3526	10581	Decision	Unanimous	Herb Dean	3	5:00
5084	6	UFC 72 - Victory	2007-06-16	The Odyssey, Belfast, Northern Ireland, Ireland	Jason MacDonald	Rory Singer	win	loss	4389	3525	TKO	Punches and Elbows	Yves Lavigne	2	3:18
5084	5	UFC 72 - Victory	2007-06-16	The Odyssey, Belfast, Northern Ireland, Ireland	Tyson Griffin	Clay Guida	win	loss	11689	8184	Decision	Split	John McCarthy	3	5:00
5084	4	UFC 72 - Victory	2007-06-16	The Odyssey, Belfast, Northern Ireland, Ireland	Ed Herman	Scott Smith	win	loss	6561	2578	Submission	Rear-Naked Choke	Herb Dean	2	2:25
5084	3	UFC 72 - Victory	2007-06-16	The Odyssey, Belfast, Northern Ireland, Ireland	Marcus Davis	Jason Tan	win	loss	8592	12369	KO	Punch	Yves Lavigne	1	1:15
5084	2	UFC 72 - Victory	2007-06-16	The Odyssey, Belfast, Northern Ireland, Ireland	Eddie Sanchez	Colin Robinson	win	loss	12098	13660	TKO	Punches	Herb Dean	2	0:32
4681	9	UFC - The Ultimate Fighter 5 Finale	2007-06-23	Palms Casino Resort, Las Vegas, Nevada, United States	B.J. Penn	Jens Pulver	win	loss	1307	228	Submission	Rear-Naked Choke	Steve Mazzagatti	2	3:12
4681	8	UFC - The Ultimate Fighter 5 Finale	2007-06-23	Palms Casino Resort, Las Vegas, Nevada, United States	Nate Diaz	Manny Gamburyan	win	loss	11451	5185	Submission	Shoulder Injury	Herb Dean	2	0:20
4681	7	UFC - The Ultimate Fighter 5 Finale	2007-06-23	Palms Casino Resort, Las Vegas, Nevada, United States	Thales Leites	Floyd Sword	win	loss	8593	340	Submission	Arm-Triangle Choke	Yves Lavigne	1	3:50
4681	6	UFC - The Ultimate Fighter 5 Finale	2007-06-23	Palms Casino Resort, Las Vegas, Nevada, United States	Roger Huerta	Douglas Evans	win	loss	10089	18184	TKO	Punches	Steve Mazzagatti	2	3:30
4681	5	UFC - The Ultimate Fighter 5 Finale	2007-06-23	Palms Casino Resort, Las Vegas, Nevada, United States	Joe Lauzon	Brandon Melendez	win	loss	4923	10515	Submission	Triangle Choke	Herb Dean	2	2:09
4681	4	UFC - The Ultimate Fighter 5 Finale	2007-06-23	Palms Casino Resort, Las Vegas, Nevada, United States	Cole Miller	Andy Wang	win	loss	13133	1331	TKO	Head Kick and Punches	Herb Dean	1	1:10
4681	2	UFC - The Ultimate Fighter 5 Finale	2007-06-23	Palms Casino Resort, Las Vegas, Nevada, United States	Leonard Garcia	Allen Berube	win	loss	2815	16459	Submission	Rear-Naked Choke	Herb Dean	1	4:22
4681	1	UFC - The Ultimate Fighter 5 Finale	2007-06-23	Palms Casino Resort, Las Vegas, Nevada, United States	Matt Wiman	Brian Geraghty	win	loss	12236	5269	TKO	Punches	Yves Lavigne	1	2:09
5158	9	UFC 73 - Stacked	2007-07-07	ARCO Arena, Sacramento, California, United States	Kenny Florian	Alvin Robinson	win	loss	8021	12212	Submission	Punches	Yves Lavigne	1	4:30
5158	8	UFC 73 - Stacked	2007-07-07	ARCO Arena, Sacramento, California, United States	Anderson Silva	Nate Marquardt	win	loss	1356	1712	TKO	Punches	John McCarthy	1	4:50
5158	7	UFC 73 - Stacked	2007-07-07	ARCO Arena, Sacramento, California, United States	Rashad Evans	Tito Ortiz	draw	draw	10200	158	Draw	Unanimous	John McCarthy	3	5:00
5158	6	UFC 73 - Stacked	2007-07-07	ARCO Arena, Sacramento, California, United States	Sean Sherk	Hermes Franca	win	loss	277	3068	Decision	Unanimous	John McCarthy	5	5:00
5158	5	UFC 73 - Stacked	2007-07-07	ARCO Arena, Sacramento, California, United States	Antonio Rodrigo Nogueira	Heath Herring	win	loss	1440	13	Decision	Unanimous	Yves Lavigne	3	5:00
5158	4	UFC 73 - Stacked	2007-07-07	ARCO Arena, Sacramento, California, United States	Stephan Bonnar	Mike Nickels	win	loss	3014	11278	Submission	Rear-Naked Choke	Jon Schorle	1	2:14
5158	3	UFC 73 - Stacked	2007-07-07	ARCO Arena, Sacramento, California, United States	Jorge Gurgel	Diego Saraiva	win	loss	4025	9534	Decision	Unanimous	Yves Lavigne	3	5:00
5158	2	UFC 73 - Stacked	2007-07-07	ARCO Arena, Sacramento, California, United States	Chris Lytle	Jason Gilliam	win	loss	267	10754	Submission	Triangle Kimura	Jon Schorle	1	2:15
5158	1	UFC 73 - Stacked	2007-07-07	ARCO Arena, Sacramento, California, United States	Frankie Edgar	Mark Bocek	win	loss	14204	9781	TKO	Punches	Jon Schorle	1	4:55
5297	9	UFC 74 - Respect	2007-08-25	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Randy Couture	Gabriel Gonzaga	win	loss	166	7306	TKO	Punches	Herb Dean	3	1:37
5297	8	UFC 74 - Respect	2007-08-25	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Georges St. Pierre	Josh Koscheck	win	loss	3500	9418	Decision	Unanimous	John McCarthy	3	5:00
5297	7	UFC 74 - Respect	2007-08-25	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Roger Huerta	Alberto Crane	win	loss	10089	4767	TKO	Punches	Steve Mazzagatti	3	1:50
5297	6	UFC 74 - Respect	2007-08-25	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Joe Stevenson	Kurt Pellegrino	win	loss	65	4153	Decision	Unanimous	John McCarthy	3	5:00
5297	5	UFC 74 - Respect	2007-08-25	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Patrick Cote	Kendall Grove	win	loss	6612	10126	TKO	Punches	Herb Dean	1	4:45
5297	4	UFC 74 - Respect	2007-08-25	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Renato Sobral	David Heath	win	loss	274	11483	Submission	Anaconda Choke	Steve Mazzagatti	2	3:30
5297	3	UFC 74 - Respect	2007-08-25	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Frank Mir	Antoni Hardonk	win	loss	2329	1518	Submission	Kimura	John McCarthy	1	1:17
5297	2	UFC 74 - Respect	2007-08-25	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Thales Leites	Ryan Jensen	win	loss	8593	662	Submission	Armbar	Herb Dean	1	3:47
5297	1	UFC 74 - Respect	2007-08-25	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Clay Guida	Marcus Aurelio	win	loss	8184	4833	Decision	Split	Steve Mazzagatti	3	5:00
5298	9	UFC 75 - Champion vs. Champion	2007-09-08	O2 Arena, London, England, England	Quinton Jackson	Dan Henderson	win	loss	348	195	Decision	Unanimous	John McCarthy	5	5:00
5298	6	UFC 75 - Champion vs. Champion	2007-09-08	O2 Arena, London, England, England	Marcus Davis	Paul Taylor	win	loss	8592	6326	Submission	Armbar	Yves Lavigne	1	4:14
5298	5	UFC 75 - Champion vs. Champion	2007-09-08	O2 Arena, London, England, England	Houston Alexander	Alessio Sakara	win	loss	2352	5366	TKO	Knee and Puches	Yves Lavigne	1	1:01
5298	4	UFC 75 - Champion vs. Champion	2007-09-08	O2 Arena, London, England, England	Gleison Tibau	Terry Etim	win	loss	5993	13332	Decision	Unanimous	Mario Yamasaki	3	5:00
5298	3	UFC 75 - Champion vs. Champion	2007-09-08	O2 Arena, London, England, England	Thiago Silva	Tomasz Drwal	win	loss	14396	10047	TKO	Punches	John McCarthy	2	4:23
5298	2	UFC 75 - Champion vs. Champion	2007-09-08	O2 Arena, London, England, England	Dennis Siver	Naoyuki Kotani	win	loss	9817	393	KO	Punch	Yves Lavigne	2	2:04
5454	9	UFC Fight Night 11 - Thomas vs. Florian	2007-09-19	Palms Casino Resort, Las Vegas, Nevada, United States	Kenny Florian	Din Thomas	win	loss	8021	1301	Submission	Rear-Naked Choke	Mario Yamasaki	1	4:31
5454	8	UFC Fight Night 11 - Thomas vs. Florian	2007-09-19	Palms Casino Resort, Las Vegas, Nevada, United States	Chris Leben	Terry Martin	win	loss	6258	7202	KO	Punch	Herb Dean	3	3:56
5454	7	UFC Fight Night 11 - Thomas vs. Florian	2007-09-19	Palms Casino Resort, Las Vegas, Nevada, United States	Nate Diaz	Junior Assuncao	win	loss	11451	10380	Submission	Guillotine Choke	Steve Mazzagatti	1	4:10
5454	6	UFC Fight Night 11 - Thomas vs. Florian	2007-09-19	Palms Casino Resort, Las Vegas, Nevada, United States	Nate Quarry	Pete Sell	win	loss	2383	7795	KO	Punch	Mario Yamasaki	3	0:44
5454	5	UFC Fight Night 11 - Thomas vs. Florian	2007-09-19	Palms Casino Resort, Las Vegas, Nevada, United States	Luke Cummo	Edilberto de Oliveira	win	loss	6428	11907	TKO	Punches	Herb Dean	1	1:45
5454	4	UFC Fight Night 11 - Thomas vs. Florian	2007-09-19	Palms Casino Resort, Las Vegas, Nevada, United States	Cole Miller	Leonard Garcia	win	loss	13133	2815	Decision	Unanimous	Steve Mazzagatti	3	5:00
5454	3	UFC Fight Night 11 - Thomas vs. Florian	2007-09-19	Palms Casino Resort, Las Vegas, Nevada, United States	Gray Maynard	Joe Veres	win	loss	15835	7329	KO	Punch	Mario Yamasaki	1	0:09
5454	2	UFC Fight Night 11 - Thomas vs. Florian	2007-09-19	Palms Casino Resort, Las Vegas, Nevada, United States	Thiago Alves	Kuniyoshi Hironaka	win	loss	5998	2575	TKO	Punch and Knee	Herb Dean	2	4:04
5454	1	UFC Fight Night 11 - Thomas vs. Florian	2007-09-19	Palms Casino Resort, Las Vegas, Nevada, United States	Dustin Hazelett	Jonathan Goulet	win	loss	11481	4120	Submission	Armbar	Steve Mazzagatti	1	1:14
5417	9	UFC 76 - Knockout	2007-09-22	Honda Center, Anaheim, California, United States	Keith Jardine	Chuck Liddell	win	loss	2638	192	Decision	Split	John McCarthy	3	5:00
15438	8	UFC Live 3 - Sanchez vs. Kampmann	2011-03-03	KFC Yum! Center, Louisville, Kentucky, United States	Brian Bowles	Damacio Page	win	loss	18944	12158	TKO	Submission (Guillotine Choke	Chris Kinman	1	3:30
3054	7	UFC 53 - Heavy Hitters	2005-06-04	Boardwalk Hall, Atlantic City, New Jersey, United States	Karo Parisyan	Matt Serra	win	loss	5153	1305	Decision	Unanimous	N/A	3	5:00
15202	2	UFC 127 - Penn vs. Fitch	2011-02-27	Acer Arena, Sydney, New South Wales, Australia	Mark Hunt	Chris Tuchscherer	win	loss	10668	10669	KO	Punch	John Sharp	2	1:41
3255	7	UFC Fight Night 2 - Loiseau vs. Tanner	2005-10-03	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	David Loiseau	Evan Tanner	win	loss	903	212	TKO	Cuts	N/A	2	4:15
3255	6	UFC Fight Night 2 - Loiseau vs. Tanner	2005-10-03	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Chris Leben	Edwin Dewees	win	loss	6258	720	Submission	Armbar	N/A	1	3:26
3255	5	UFC Fight Night 2 - Loiseau vs. Tanner	2005-10-03	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Brandon Vera	Fabiano Scherner	win	loss	4886	7690	TKO	Knees	N/A	2	3:22
5417	8	UFC 76 - Knockout	2007-09-22	Honda Center, Anaheim, California, United States	Forrest Griffin	Mauricio Rua	win	loss	3526	5707	Submission	Rear-Naked Choke	Steve Mazzagatti	3	4:45
5417	7	UFC 76 - Knockout	2007-09-22	Honda Center, Anaheim, California, United States	Jon Fitch	Diego Sanchez	win	loss	4865	4824	Decision	Split	Herb Dean	3	5:00
5417	6	UFC 76 - Knockout	2007-09-22	Honda Center, Anaheim, California, United States	Lyoto Machida	Kazuhiro Nakamura	win	loss	7513	6943	Decision	Unanimous	John McCarthy	3	5:00
5417	5	UFC 76 - Knockout	2007-09-22	Honda Center, Anaheim, California, United States	Tyson Griffin	Thiago Tavares	win	loss	11689	4647	Decision	Unanimous	Steve Mazzagatti	3	5:00
5417	4	UFC 76 - Knockout	2007-09-22	Honda Center, Anaheim, California, United States	Rich Clementi	Anthony Johnson	win	loss	1046	17662	Submission	Rear-Naked Choke	Herb Dean	2	3:05
5417	3	UFC 76 - Knockout	2007-09-22	Honda Center, Anaheim, California, United States	Jeremy Stephens	Diego Saraiva	win	loss	12179	9534	Decision	Unanimous	John McCarthy	3	5:00
5417	2	UFC 76 - Knockout	2007-09-22	Honda Center, Anaheim, California, United States	Christian Wellisch	Scott Junk	win	loss	3328	12943	Submission	Heel Hook	Steve Mazzagatti	1	3:19
5482	8	UFC 77 - Hostile Territory	2007-10-20	U.S. Bank Arena, Cincinnati, Ohio, United States	Tim Sylvia	Brandon Vera	win	loss	1061	4886	Decision	Unanimous	Yves Lavigne	3	5:00
5482	7	UFC 77 - Hostile Territory	2007-10-20	U.S. Bank Arena, Cincinnati, Ohio, United States	Alvin Robinson	Jorge Gurgel	win	loss	12212	4025	Decision	Unanimous	Mark Matheny	3	5:00
5482	6	UFC 77 - Hostile Territory	2007-10-20	U.S. Bank Arena, Cincinnati, Ohio, United States	Stephan Bonnar	Eric Schafer	win	loss	3014	13275	TKO	Punches	John McCarthy	2	2:47
5482	5	UFC 77 - Hostile Territory	2007-10-20	U.S. Bank Arena, Cincinnati, Ohio, United States	Alan Belcher	Kalib Starnes	win	loss	10967	8095	TKO	Doctor Stoppage	Yves Lavigne	2	1:39
5482	4	UFC 77 - Hostile Territory	2007-10-20	U.S. Bank Arena, Cincinnati, Ohio, United States	Yushin Okami	Jason MacDonald	win	loss	5569	4389	Decision	Unanimous	Mark Matheny	3	5:00
5482	3	UFC 77 - Hostile Territory	2007-10-20	U.S. Bank Arena, Cincinnati, Ohio, United States	Demian Maia	Ryan Jensen	win	loss	14637	662	Submission	Rear-Naked Choke	John McCarthy	1	2:40
5482	2	UFC 77 - Hostile Territory	2007-10-20	U.S. Bank Arena, Cincinnati, Ohio, United States	Joshua Burkman	Forrest Petz	win	loss	10003	4411	Decision	Split	Yves Lavigne	3	5:00
5482	1	UFC 77 - Hostile Territory	2007-10-20	U.S. Bank Arena, Cincinnati, Ohio, United States	Matt Grice	Jason Black	win	loss	14539	1042	Decision	Split	Mark Matheny	3	5:00
5708	9	UFC 78 - Validation	2007-11-17	Prudential Center, Newark, New Jersey, United States	Rashad Evans	Michael Bisping	win	loss	10200	10196	Decision	Split	Dan Miragliotta	3	5:00
5708	8	UFC 78 - Validation	2007-11-17	Prudential Center, Newark, New Jersey, United States	Thiago Silva	Houston Alexander	win	loss	14396	2352	TKO	Punches	Dan Miragliotta	1	3:25
5708	7	UFC 78 - Validation	2007-11-17	Prudential Center, Newark, New Jersey, United States	Karo Parisyan	Ryo Chonan	win	loss	5153	1831	Decision	Unanimous	Kevin Mulhall	3	5:00
5708	6	UFC 78 - Validation	2007-11-17	Prudential Center, Newark, New Jersey, United States	Ed Herman	Joe Doerksen	win	loss	6561	390	KO	Punch	Kevin Mulhall	3	0:39
5708	5	UFC 78 - Validation	2007-11-17	Prudential Center, Newark, New Jersey, United States	Frankie Edgar	Spencer Fisher	win	loss	14204	5118	Decision	Unanimous	Dan Miragliotta	3	5:00
5708	4	UFC 78 - Validation	2007-11-17	Prudential Center, Newark, New Jersey, United States	Thiago Alves	Chris Lytle	win	loss	5998	267	TKO	Doctor Stoppage	Dan Miragliotta	2	5:00
5708	3	UFC 78 - Validation	2007-11-17	Prudential Center, Newark, New Jersey, United States	Joe Lauzon	Jason Reinhardt	win	loss	4923	2347	Submission	Rear-Naked Choke	Kevin Mulhall	1	1:14
5708	2	UFC 78 - Validation	2007-11-17	Prudential Center, Newark, New Jersey, United States	Marcus Aurelio	Luke Caudillo	win	loss	4833	7406	TKO	Punches	Kevin Mulhall	1	4:29
5708	1	UFC 78 - Validation	2007-11-17	Prudential Center, Newark, New Jersey, United States	Akihiro Gono	Tamdan McCrory	win	loss	1217	16470	Submission	Armbar	Dan Miragliotta	2	3:19
5459	9	UFC - The Ultimate Fighter 6 Finale	2007-12-08	Palms Casino Resort, Las Vegas, Nevada, United States	Roger Huerta	Clay Guida	win	loss	10089	8184	Submission	Rear-Naked Choke	John McCarthy	3	0:31
5459	8	UFC - The Ultimate Fighter 6 Finale	2007-12-08	Palms Casino Resort, Las Vegas, Nevada, United States	Mac Danzig	Tom Speer	win	loss	3396	16635	Submission	Rear-Naked Choke	Yves Lavigne	1	2:01
5459	7	UFC - The Ultimate Fighter 6 Finale	2007-12-08	Palms Casino Resort, Las Vegas, Nevada, United States	War Machine	Jared Rollins	win	loss	10999	5781	TKO	Punches	Steve Mazzagatti	3	2:01
5459	6	UFC - The Ultimate Fighter 6 Finale	2007-12-08	Palms Casino Resort, Las Vegas, Nevada, United States	George Sotiropoulos	Billy Miles	win	loss	11702	8845	Submission	Rear-Naked Choke	John McCarthy	1	1:36
5459	3	UFC - The Ultimate Fighter 6 Finale	2007-12-08	Palms Casino Resort, Las Vegas, Nevada, United States	Matt Arroyo	John Kolosci	win	loss	19456	9062	Submission	Armbar	John McCarthy	1	4:42
5459	2	UFC - The Ultimate Fighter 6 Finale	2007-12-08	Palms Casino Resort, Las Vegas, Nevada, United States	Roman Mitichyan	Dorian Price	win	loss	6525	9786	Submission	Achilles Lock	Yves Lavigne	1	0:23
5458	10	UFC 79 - Nemesis	2007-12-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Georges St. Pierre	Matt Hughes	win	loss	3500	232	Submission	Armbar	Steve Mazzagatti	2	4:54
5458	9	UFC 79 - Nemesis	2007-12-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Chuck Liddell	Wanderlei Silva	win	loss	192	209	Decision	Unanimous	Herb Dean	3	5:00
5458	8	UFC 79 - Nemesis	2007-12-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Eddie Sanchez	Soa Palelei	win	loss	12098	9680	TKO	Punches	Mario Yamasaki	3	3:24
5458	7	UFC 79 - Nemesis	2007-12-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Lyoto Machida	Rameau Thierry Sokoudjou	win	loss	7513	17010	Submission	Arm-Triangle Choke	Mario Yamasaki	2	4:20
5458	6	UFC 79 - Nemesis	2007-12-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Rich Clementi	Melvin Guillard	win	loss	1046	7431	Submission	Rear-Naked Choke	Herb Dean	1	4:40
5458	5	UFC 79 - Nemesis	2007-12-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	James Irvin	Luiz Cane	win	loss	7780	17559	DQ	Illegal Knee to the Head	Steve Mazzagatti	1	1:51
5458	4	UFC 79 - Nemesis	2007-12-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Manny Gamburyan	Nate Mohr	win	loss	5185	8396	Submission	Achilles Lock	Herb Dean	1	1:31
5458	3	UFC 79 - Nemesis	2007-12-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Dean Lister	Jordan Radev	win	loss	338	5925	Decision	Unanimous	Mario Yamasaki	3	5:00
5458	2	UFC 79 - Nemesis	2007-12-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Roan Carneiro	Tony DeSouza	win	loss	2886	487	TKO	Punches	Steve Mazzagatti	2	3:33
5458	1	UFC 79 - Nemesis	2007-12-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Mark Bocek	Douglas Evans	win	loss	9781	18184	Decision	Unanimous	Herb Dean	3	5:00
5982	9	UFC 80 - Rapid Fire	2008-01-19	Metro Radio Arena, Newcastle upon Tyne, Tyne and Wear, England	B.J. Penn	Joe Stevenson	win	loss	1307	65	Submission	Rear-Naked Choke	Herb Dean	2	4:02
5982	8	UFC 80 - Rapid Fire	2008-01-19	Metro Radio Arena, Newcastle upon Tyne, Tyne and Wear, England	Fabricio Werdum	Gabriel Gonzaga	win	loss	8390	7306	TKO	Punches	Dan Miragliotta	2	4:34
5982	6	UFC 80 - Rapid Fire	2008-01-19	Metro Radio Arena, Newcastle upon Tyne, Tyne and Wear, England	Wilson Gouveia	Jason Lambert	win	loss	3070	495	KO	Punch	Herb Dean	2	0:37
5982	5	UFC 80 - Rapid Fire	2008-01-19	Metro Radio Arena, Newcastle upon Tyne, Tyne and Wear, England	Jorge Rivera	Kendall Grove	win	loss	2712	10126	KO	Punches	Dan Miragliotta	1	1:20
5982	4	UFC 80 - Rapid Fire	2008-01-19	Metro Radio Arena, Newcastle upon Tyne, Tyne and Wear, England	Antoni Hardonk	Colin Robinson	win	loss	1518	13660	TKO	Punch	Mario Yamasaki	1	0:17
5982	3	UFC 80 - Rapid Fire	2008-01-19	Metro Radio Arena, Newcastle upon Tyne, Tyne and Wear, England	Paul Kelly	Paul Taylor	win	loss	14028	6326	Decision	Unanimous	Herb Dean	3	5:00
5982	2	UFC 80 - Rapid Fire	2008-01-19	Metro Radio Arena, Newcastle upon Tyne, Tyne and Wear, England	Alessio Sakara	James Lee	win	loss	5366	2224	TKO	Punches	Dan Miragliotta	1	1:30
5982	1	UFC 80 - Rapid Fire	2008-01-19	Metro Radio Arena, Newcastle upon Tyne, Tyne and Wear, England	Sam Stout	Per Eklund	win	loss	9901	3707	Decision	Unanimous	Mario Yamasaki	3	5:00
6179	9	UFC Fight Night 12 - Swick vs. Burkman	2008-01-23	Palms Casino Resort, Las Vegas, Nevada, United States	Mike Swick	Joshua Burkman	win	loss	5199	10003	Decision	Majority	Steve Mazzagatti	3	5:00
6179	8	UFC Fight Night 12 - Swick vs. Burkman	2008-01-23	Palms Casino Resort, Las Vegas, Nevada, United States	Patrick Cote	Drew McFedries	win	loss	6612	2386	TKO	Punches	Herb Dean	1	1:44
6179	7	UFC Fight Night 12 - Swick vs. Burkman	2008-01-23	Palms Casino Resort, Las Vegas, Nevada, United States	Thiago Tavares	Michihiro Omigawa	win	loss	4647	13005	Decision	Unanimous	Josh Rosenthal	3	5:00
6179	6	UFC Fight Night 12 - Swick vs. Burkman	2008-01-23	Palms Casino Resort, Las Vegas, Nevada, United States	Nate Diaz	Alvin Robinson	win	loss	11451	12212	Submission	Triangle Choke	Steve Mazzagatti	1	3:39
6179	5	UFC Fight Night 12 - Swick vs. Burkman	2008-01-23	Palms Casino Resort, Las Vegas, Nevada, United States	Kurt Pellegrino	Alberto Crane	win	loss	4153	4767	TKO	Punches	Herb Dean	2	1:55
6179	4	UFC Fight Night 12 - Swick vs. Burkman	2008-01-23	Palms Casino Resort, Las Vegas, Nevada, United States	Gray Maynard	Dennis Siver	win	loss	15835	9817	Decision	Unanimous	Josh Rosenthal	3	5:00
6179	3	UFC Fight Night 12 - Swick vs. Burkman	2008-01-23	Palms Casino Resort, Las Vegas, Nevada, United States	Jeremy Stephens	Cole Miller	win	loss	12179	13133	TKO	Punches and Elbows	Steve Mazzagatti	2	4:44
6179	2	UFC Fight Night 12 - Swick vs. Burkman	2008-01-23	Palms Casino Resort, Las Vegas, Nevada, United States	Corey Hill	Joe Veres	win	loss	23864	7329	TKO	Punches	Herb Dean	2	0:37
6179	1	UFC Fight Night 12 - Swick vs. Burkman	2008-01-23	Palms Casino Resort, Las Vegas, Nevada, United States	Matt Wiman	Justin Buchholz	win	loss	12236	18062	Submission	Rear-Naked Choke	Josh Rosenthal	1	2:56
6038	9	UFC 81 - Breaking Point	2008-02-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Antonio Rodrigo Nogueira	Tim Sylvia	win	loss	1440	1061	Submission	Guillotine Choke	Herb Dean	3	1:28
6038	8	UFC 81 - Breaking Point	2008-02-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Frank Mir	Brock Lesnar	win	loss	2329	17522	Submission	Kneebar	Steve Mazzagatti	1	1:30
6038	7	UFC 81 - Breaking Point	2008-02-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Nate Marquardt	Jeremy Horn	win	loss	1712	202	Submission	Guillotine Choke	Yves Lavigne	2	1:37
6038	6	UFC 81 - Breaking Point	2008-02-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Ricardo Almeida	Rob Yundt	win	loss	11	16858	Submission	Guillotine Choke	Herb Dean	1	1:08
6038	5	UFC 81 - Breaking Point	2008-02-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tyson Griffin	Gleison Tibau	win	loss	11689	5993	Decision	Unanimous	Steve Mazzagatti	3	5:00
6038	4	UFC 81 - Breaking Point	2008-02-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chris Lytle	Kyle Bradley	win	loss	267	7918	TKO	Punches	Yves Lavigne	1	0:33
6038	3	UFC 81 - Breaking Point	2008-02-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tim Boetsch	David Heath	win	loss	19544	11483	TKO	Slam and Punches	Herb Dean	1	4:52
6038	2	UFC 81 - Breaking Point	2008-02-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Marvin Eastman	Terry Martin	win	loss	339	7202	Decision	Unanimous	Yves Lavigne	3	5:00
6038	1	UFC 81 - Breaking Point	2008-02-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Robert Emerson	Keita Nakamura	win	loss	5286	9572	Decision	Split	Steve Mazzagatti	3	5:00
1424	2	UFC 41 - Onslaught	2003-02-28	Boardwalk Hall, Atlantic City, New Jersey, United States	Gan McGee	Alexandre Dantas	win	loss	273	264	TKO	Punches	N/A	1	4:49
6039	10	UFC 82 - Pride of a Champion	2008-03-01	Nationwide Arena, Columbus, Ohio, United States	Anderson Silva	Dan Henderson	win	loss	1356	195	Submission	Rear-Naked Choke	Herb Dean	2	4:52
6039	9	UFC 82 - Pride of a Champion	2008-03-01	Nationwide Arena, Columbus, Ohio, United States	Heath Herring	Cheick Kongo	win	loss	13	2193	Decision	Split	Dan Miragliotta	3	5:00
6039	8	UFC 82 - Pride of a Champion	2008-03-01	Nationwide Arena, Columbus, Ohio, United States	Chris Leben	Alessio Sakara	win	loss	6258	5366	TKO	Punches	Herb Dean	1	3:16
6039	7	UFC 82 - Pride of a Champion	2008-03-01	Nationwide Arena, Columbus, Ohio, United States	Yushin Okami	Evan Tanner	win	loss	5569	212	KO	Knee	Mark Matheny	2	3:00
6039	6	UFC 82 - Pride of a Champion	2008-03-01	Nationwide Arena, Columbus, Ohio, United States	Jon Fitch	Chris Wilson	win	loss	4865	9281	Decision	Unanimous	Jerry Krzys	3	5:00
6039	5	UFC 82 - Pride of a Champion	2008-03-01	Nationwide Arena, Columbus, Ohio, United States	Andrei Arlovski	Jake O'Brien	win	loss	270	14892	TKO	Punches	Mark Matheny	2	4:17
6039	4	UFC 82 - Pride of a Champion	2008-03-01	Nationwide Arena, Columbus, Ohio, United States	Luigi Fioravanti	Luke Cummo	win	loss	12199	6428	Decision	Unanimous	Dan Miragliotta	3	5:00
6039	3	UFC 82 - Pride of a Champion	2008-03-01	Nationwide Arena, Columbus, Ohio, United States	Josh Koscheck	Dustin Hazelett	win	loss	9418	11481	TKO	Head Kick and Punches	Herb Dean	2	1:24
6039	2	UFC 82 - Pride of a Champion	2008-03-01	Nationwide Arena, Columbus, Ohio, United States	Diego Sanchez	David Bielkheden	win	loss	4824	3863	Submission	Punches	Jerry Krzys	1	4:43
6039	1	UFC 82 - Pride of a Champion	2008-03-01	Nationwide Arena, Columbus, Ohio, United States	Jorge Gurgel	John Halverson	win	loss	4025	7407	Decision	Unanimous	Dan Miragliotta	3	5:00
6552	10	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	Thiago Alves	Karo Parisyan	win	loss	5998	5153	TKO	Knee and Punches	Steve Mazzagatti	2	0:34
6552	9	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	Matt Hamill	Tim Boetsch	win	loss	16695	19544	TKO	Punches	Adam Martinez	2	1:25
6552	8	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	Nate Diaz	Kurt Pellegrino	win	loss	11451	4153	Submission	Triangle Choke	Herb Dean	2	3:06
6552	7	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	James Irvin	Houston Alexander	win	loss	7780	2352	KO	Superman Punch	Steve Mazzagatti	1	0:08
6552	6	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	Josh Neer	Din Thomas	win	loss	9179	1301	Decision	Unanimous	Herb Dean	3	5:00
6552	5	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	Marcus Aurelio	Ryan Roberts	win	loss	4833	19761	Submission	Armbar	Tim Mills	1	0:16
6552	4	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	Manny Gamburyan	Jeff Cox	win	loss	5185	9785	Submission	Guillotine Choke	Steve Mazzagatti	1	1:41
6552	3	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	Clay Guida	Samy Schiavo	win	loss	8184	4038	TKO	Punches	Tim Mills	1	4:15
6552	2	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	George Sotiropoulos	Roman Mitichyan	win	loss	11702	6525	TKO	Punches	Adam Martinez	2	2:24
6552	1	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	Anthony Johnson	Tom Speer	win	loss	17662	16635	KO	Punches	Tim Mills	1	0:51
6339	11	UFC 83 - Serra vs. St. Pierre 2	2008-04-19	Bell Centre, Montreal, Quebec, Canada	Georges St. Pierre	Matt Serra	win	loss	3500	1305	TKO	Knees to the Body	Yves Lavigne	2	4:45
6339	10	UFC 83 - Serra vs. St. Pierre 2	2008-04-19	Bell Centre, Montreal, Quebec, Canada	Rich Franklin	Travis Lutter	win	loss	392	4586	TKO	Punches	Steve Mazzagatti	2	3:01
6339	9	UFC 83 - Serra vs. St. Pierre 2	2008-04-19	Bell Centre, Montreal, Quebec, Canada	Nate Quarry	Kalib Starnes	win	loss	2383	8095	Decision	Unanimous	Dan Miragliotta	3	5:00
6339	8	UFC 83 - Serra vs. St. Pierre 2	2008-04-19	Bell Centre, Montreal, Quebec, Canada	Michael Bisping	Charles McCarthy	win	loss	10196	7987	TKO	Arm Injury	Philippe Chartier	1	5:00
6339	7	UFC 83 - Serra vs. St. Pierre 2	2008-04-19	Bell Centre, Montreal, Quebec, Canada	Mac Danzig	Mark Bocek	win	loss	3396	9781	Submission	Rear-Naked Choke	Yves Lavigne	3	3:48
6339	6	UFC 83 - Serra vs. St. Pierre 2	2008-04-19	Bell Centre, Montreal, Quebec, Canada	Jason MacDonald	Joe Doerksen	win	loss	4389	390	TKO	Elbows	Steve Mazzagatti	2	0:54
6339	5	UFC 83 - Serra vs. St. Pierre 2	2008-04-19	Bell Centre, Montreal, Quebec, Canada	Jason Day	Alan Belcher	win	loss	6811	10967	TKO	Punches	Dan Miragliotta	1	3:58
6339	3	UFC 83 - Serra vs. St. Pierre 2	2008-04-19	Bell Centre, Montreal, Quebec, Canada	Rich Clementi	Sam Stout	win	loss	1046	9901	Decision	Split	Yves Lavigne	3	5:00
6339	2	UFC 83 - Serra vs. St. Pierre 2	2008-04-19	Bell Centre, Montreal, Quebec, Canada	Cain Velasquez	Brad Morris	win	loss	19102	9024	TKO	Punches	Steve Mazzagatti	1	2:10
6339	1	UFC 83 - Serra vs. St. Pierre 2	2008-04-19	Bell Centre, Montreal, Quebec, Canada	Jonathan Goulet	Kuniyoshi Hironaka	win	loss	4120	2575	TKO	Punches	Dan Miragliotta	2	2:07
6394	8	UFC 84 - Ill Will	2008-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Lyoto Machida	Tito Ortiz	win	loss	7513	158	Decision	Unanimous	Yves Lavigne	3	5:00
6394	7	UFC 84 - Ill Will	2008-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Thiago Silva	Antonio Mendes	win	loss	14396	7110	Submission	Punches	Herb Dean	1	2:24
6394	6	UFC 84 - Ill Will	2008-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rousimar Palhares	Ivan Salaverry	win	loss	16286	1351	Submission	Armbar	Mario Yamasaki	1	2:36
6394	5	UFC 84 - Ill Will	2008-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rameau Thierry Sokoudjou	Kazuhiro Nakamura	win	loss	17010	6943	TKO	Leg Injury	Steve Mazzagatti	1	5:00
1424	1	UFC 41 - Onslaught	2003-02-28	Boardwalk Hall, Atlantic City, New Jersey, United States	Yves Edwards	Rich Clementi	win	loss	344	1046	Submission	Rear-Naked Choke	N/A	3	4:07
1469	8	UFC 42 - Sudden Impact	2003-04-25	American Airlines Arena, Miami, Florida, United States	Matt Hughes	Sean Sherk	win	loss	232	277	Decision	Unanimous	N/A	5	5:00
6394	4	UFC 84 - Ill Will	2008-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rich Clementi	Terry Etim	win	loss	1046	13332	Decision	Unanimous	Yves Lavigne	3	5:00
6394	2	UFC 84 - Ill Will	2008-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dong Hyun Kim	Jason Tan	win	loss	16374	12369	TKO	Elbows	Steve Mazzagatti	3	0:25
6394	1	UFC 84 - Ill Will	2008-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Shane Carwin	Christian Wellisch	win	loss	14013	3328	KO	Punch	Yves Lavigne	1	0:44
6394	11	UFC 84 - Ill Will	2008-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	B.J. Penn	Sean Sherk	win	loss	1307	277	TKO	Knee and Punches	Mario Yamasaki	3	5:00
6394	10	UFC 84 - Ill Will	2008-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Wanderlei Silva	Keith Jardine	win	loss	209	2638	KO	Punches	Steve Mazzagatti	1	0:36
6394	9	UFC 84 - Ill Will	2008-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Goran Reljic	Wilson Gouveia	win	loss	10165	3070	TKO	Punches	Herb Dean	2	3:15
6778	11	UFC 85 - Bedlam	2008-06-07	O2 Arena, London, England, England	Thiago Alves	Matt Hughes	win	loss	5998	232	TKO	Flying Knee and Punches	Herb Dean	2	1:02
6778	10	UFC 85 - Bedlam	2008-06-07	O2 Arena, London, England, England	Michael Bisping	Jason Day	win	loss	10196	6811	TKO	Punches	Dan Miragliotta	1	3:42
7835	1	UFC Fight Night 14 - Silva vs. Irvin	2008-07-19	Palms Casino Resort, Las Vegas, Nevada, United States	Shannon Gugerty	Dale Hartt	win	loss	11001	11970	Submission	Rear-Naked Choke	Yves Lavigne	1	3:33
6779	10	UFC 87 - Seek and Destroy	2008-08-09	Target Center, Minneapolis, Minnesota, United States	Georges St. Pierre	Jon Fitch	win	loss	3500	4865	Decision	Unanimous	Yves Lavigne	5	5:00
6779	9	UFC 87 - Seek and Destroy	2008-08-09	Target Center, Minneapolis, Minnesota, United States	Brock Lesnar	Heath Herring	win	loss	17522	13	Decision	Unanimous	Dan Miragliotta	3	5:00
6779	8	UFC 87 - Seek and Destroy	2008-08-09	Target Center, Minneapolis, Minnesota, United States	Robert Emerson	Manny Gamburyan	win	loss	5286	5185	KO	Punches	Yves Lavigne	1	0:12
6779	7	UFC 87 - Seek and Destroy	2008-08-09	Target Center, Minneapolis, Minnesota, United States	Kenny Florian	Roger Huerta	win	loss	8021	10089	Decision	Unanimous	Dan Miragliotta	3	5:00
6779	6	UFC 87 - Seek and Destroy	2008-08-09	Target Center, Minneapolis, Minnesota, United States	Demian Maia	Jason MacDonald	win	loss	14637	4389	Submission	Rear-Naked Choke	Yves Lavigne	3	2:44
6779	5	UFC 87 - Seek and Destroy	2008-08-09	Target Center, Minneapolis, Minnesota, United States	Tamdan McCrory	Luke Cummo	win	loss	16470	6428	Decision	Unanimous	Dan Miragliotta	3	5:00
6779	4	UFC 87 - Seek and Destroy	2008-08-09	Target Center, Minneapolis, Minnesota, United States	Cheick Kongo	Dan Evensen	win	loss	2193	10584	TKO	Punches	Yves Lavigne	1	4:55
6779	3	UFC 87 - Seek and Destroy	2008-08-09	Target Center, Minneapolis, Minnesota, United States	Jon Jones	Andre Gusmao	win	loss	27944	15806	Decision	Unanimous	Daryl Guthmiller	3	5:00
6779	2	UFC 87 - Seek and Destroy	2008-08-09	Target Center, Minneapolis, Minnesota, United States	Chris Wilson	Steve Bruno	win	loss	9281	4367	Decision	Unanimous	Nick Gamst	3	5:00
7837	8	UFC 88 - Breakthrough	2008-09-06	Philips Arena, Atlanta, Georgia, United States	Rich Franklin	Matt Hamill	win	loss	392	16695	TKO	Kick to the Body	Mario Yamasaki	3	0:39
7837	7	UFC 88 - Breakthrough	2008-09-06	Philips Arena, Atlanta, Georgia, United States	Dan Henderson	Rousimar Palhares	win	loss	195	16286	Decision	Unanimous	Herb Dean	3	5:00
7837	6	UFC 88 - Breakthrough	2008-09-06	Philips Arena, Atlanta, Georgia, United States	Nate Marquardt	Martin Kampmann	win	loss	1712	5344	TKO	Punches	Mario Yamasaki	1	1:22
7837	5	UFC 88 - Breakthrough	2008-09-06	Philips Arena, Atlanta, Georgia, United States	Dong Hyun Kim	Matt Brown	win	loss	16374	14310	Decision	Split	Mario Yamasaki	3	5:00
7837	4	UFC 88 - Breakthrough	2008-09-06	Philips Arena, Atlanta, Georgia, United States	Kurt Pellegrino	Thiago Tavares	win	loss	4153	4647	Decision	Unanimous	Yves Lavigne	3	5:00
7837	2	UFC 88 - Breakthrough	2008-09-06	Philips Arena, Atlanta, Georgia, United States	Jason MacDonald	Jason Lambert	win	loss	4389	495	Submission	Rear-Naked Choke	Yves Lavigne	2	1:20
7837	1	UFC 88 - Breakthrough	2008-09-06	Philips Arena, Atlanta, Georgia, United States	Ryo Chonan	Roan Carneiro	win	loss	1831	2886	Decision	Split	Herb Dean	3	5:00
7916	10	UFC Fight Night 15 - Diaz vs. Neer	2008-09-17	Omaha Civic Auditorium, Omaha, Nebraska, United States	Nate Diaz	Josh Neer	win	loss	11451	9179	Decision	Split	Josh Rosenthal	3	5:00
7916	9	UFC Fight Night 15 - Diaz vs. Neer	2008-09-17	Omaha Civic Auditorium, Omaha, Nebraska, United States	Clay Guida	Mac Danzig	win	loss	8184	3396	Decision	Unanimous	Yves Lavigne	3	5:00
7916	8	UFC Fight Night 15 - Diaz vs. Neer	2008-09-17	Omaha Civic Auditorium, Omaha, Nebraska, United States	Alan Belcher	Ed Herman	win	loss	10967	6561	Decision	Split	Dan Miragliotta	3	5:00
7916	7	UFC Fight Night 15 - Diaz vs. Neer	2008-09-17	Omaha Civic Auditorium, Omaha, Nebraska, United States	Eric Schafer	Houston Alexander	win	loss	13275	2352	Submission	Arm-Triangle Choke	Josh Rosenthal	1	4:53
7916	6	UFC Fight Night 15 - Diaz vs. Neer	2008-09-17	Omaha Civic Auditorium, Omaha, Nebraska, United States	Alessio Sakara	Joe Vedepo	win	loss	5366	15833	KO	Head Kick	Yves Lavigne	1	1:27
7916	5	UFC Fight Night 15 - Diaz vs. Neer	2008-09-17	Omaha Civic Auditorium, Omaha, Nebraska, United States	Wilson Gouveia	Ryan Jensen	win	loss	3070	662	Submission	Armbar	Dan Miragliotta	2	2:04
7916	4	UFC Fight Night 15 - Diaz vs. Neer	2008-09-17	Omaha Civic Auditorium, Omaha, Nebraska, United States	Joe Lauzon	Kyle Bradley	win	loss	4923	7918	TKO	Punches	Josh Arney	2	1:34
7916	3	UFC Fight Night 15 - Diaz vs. Neer	2008-09-17	Omaha Civic Auditorium, Omaha, Nebraska, United States	Jason Brilz	Brad Morris	win	loss	1927	9024	TKO	Punches	Mark Powell	2	2:54
3815	8	UFC Fight Night 5 - Leben vs. Silva	2006-06-28	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Anderson Silva	Chris Leben	win	loss	1356	6258	KO	Knee	N/A	1	0:49
7916	2	UFC Fight Night 15 - Diaz vs. Neer	2008-09-17	Omaha Civic Auditorium, Omaha, Nebraska, United States	Mike Massenzio	Drew McFedries	win	loss	12852	2386	Submission	Kimura	Jim Axtel	1	1:28
7916	1	UFC Fight Night 15 - Diaz vs. Neer	2008-09-17	Omaha Civic Auditorium, Omaha, Nebraska, United States	Dan Miller	Rob Kimmons	win	loss	14464	9863	Submission	Rear-Naked Choke	Josh Arney	1	1:27
8070	11	UFC 89 - Bisping vs. Leben	2008-10-18	National Indoor Arena, Birmingham, West Midlands, England	Michael Bisping	Chris Leben	win	loss	10196	6258	Decision	Unanimous	Dan Miragliotta	3	5:00
8070	10	UFC 89 - Bisping vs. Leben	2008-10-18	National Indoor Arena, Birmingham, West Midlands, England	Keith Jardine	Brandon Vera	win	loss	2638	4886	Decision	Split	Kevin Mulhall	3	5:00
8070	9	UFC 89 - Bisping vs. Leben	2008-10-18	National Indoor Arena, Birmingham, West Midlands, England	Luiz Cane	Rameau Thierry Sokoudjou	win	loss	17559	17010	TKO	Punches	Marc Goddard	2	4:15
8070	8	UFC 89 - Bisping vs. Leben	2008-10-18	National Indoor Arena, Birmingham, West Midlands, England	Chris Lytle	Paul Taylor	win	loss	267	6326	Decision	Unanimous	Kevin Mulhall	3	5:00
8070	7	UFC 89 - Bisping vs. Leben	2008-10-18	National Indoor Arena, Birmingham, West Midlands, England	Marcus Davis	Paul Kelly	win	loss	8592	14028	Submission	Guillotine Choke	Marc Goddard	2	2:16
8070	6	UFC 89 - Bisping vs. Leben	2008-10-18	National Indoor Arena, Birmingham, West Midlands, England	Dan Hardy	Akihiro Gono	win	loss	10629	1217	Decision	Split	Dan Miragliotta	3	5:00
8070	3	UFC 89 - Bisping vs. Leben	2008-10-18	National Indoor Arena, Birmingham, West Midlands, England	Terry Etim	Sam Stout	win	loss	13332	9901	Decision	Unanimous	Leon Roberts	3	5:00
8070	2	UFC 89 - Bisping vs. Leben	2008-10-18	National Indoor Arena, Birmingham, West Midlands, England	Jim Miller	David Baron	win	loss	14463	2860	Submission	Rear-Naked Choke	Marc Goddard	3	3:19
8070	1	UFC 89 - Bisping vs. Leben	2008-10-18	National Indoor Arena, Birmingham, West Midlands, England	Per Eklund	Samy Schiavo	win	loss	3707	4038	Submission	Rear-Naked Choke	Leon Roberts	3	1:47
8188	9	UFC 90 - Silva vs. Cote	2008-10-25	Allstate Arena, Rosemont, Illinois, United States	Thiago Alves	Josh Koscheck	win	loss	5998	9418	Decision	Unanimous	David Smith	3	5:00
8188	8	UFC 90 - Silva vs. Cote	2008-10-25	Allstate Arena, Rosemont, Illinois, United States	Gray Maynard	Rich Clementi	win	loss	15835	1046	Decision	Unanimous	Todd Frederickson	3	5:00
8188	7	UFC 90 - Silva vs. Cote	2008-10-25	Allstate Arena, Rosemont, Illinois, United States	Junior dos Santos	Fabricio Werdum	win	loss	17272	8390	TKO	Punches	Marc Fennell	1	1:21
8188	6	UFC 90 - Silva vs. Cote	2008-10-25	Allstate Arena, Rosemont, Illinois, United States	Sean Sherk	Tyson Griffin	win	loss	277	11689	Decision	Unanimous	David Smith	3	5:00
8188	5	UFC 90 - Silva vs. Cote	2008-10-25	Allstate Arena, Rosemont, Illinois, United States	Thales Leites	Drew McFedries	win	loss	8593	2386	Submission	Rear-Naked Choke	Marc Fennell	1	1:18
8188	4	UFC 90 - Silva vs. Cote	2008-10-25	Allstate Arena, Rosemont, Illinois, United States	Spencer Fisher	Shannon Gugerty	win	loss	5118	11001	Submission	Triangle Choke	David Smith	3	3:56
8188	3	UFC 90 - Silva vs. Cote	2008-10-25	Allstate Arena, Rosemont, Illinois, United States	Dan Miller	Matt Horwich	win	loss	14464	8654	Decision	Unanimous	Mike Reid	3	5:00
8188	2	UFC 90 - Silva vs. Cote	2008-10-25	Allstate Arena, Rosemont, Illinois, United States	Hermes Franca	Marcus Aurelio	win	loss	3068	4833	Decision	Unanimous	Todd Frederickson	3	5:00
8188	1	UFC 90 - Silva vs. Cote	2008-10-25	Allstate Arena, Rosemont, Illinois, United States	Pete Sell	Joshua Burkman	win	loss	7795	10003	Decision	Unanimous	Mike Reid	3	5:00
8406	9	UFC 91 - Couture vs. Lesnar	2008-11-15	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brock Lesnar	Randy Couture	win	loss	17522	166	TKO	Punches	Mario Yamasaki	2	3:07
8406	8	UFC 91 - Couture vs. Lesnar	2008-11-15	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Kenny Florian	Joe Stevenson	win	loss	8021	65	Submission	Rear-Naked Choke	Herb Dean	1	4:03
8406	7	UFC 91 - Couture vs. Lesnar	2008-11-15	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dustin Hazelett	Tamdan McCrory	win	loss	11481	16470	Submission	Reverse Armbar	Steve Mazzagatti	1	3:59
8406	6	UFC 91 - Couture vs. Lesnar	2008-11-15	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Gabriel Gonzaga	Josh Hendricks	win	loss	7306	7652	KO	Punches	Steve Mazzagatti	1	1:01
8406	5	UFC 91 - Couture vs. Lesnar	2008-11-15	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Demian Maia	Nate Quarry	win	loss	14637	2383	Submission	Rear-Naked Choke	Herb Dean	1	2:13
8406	4	UFC 91 - Couture vs. Lesnar	2008-11-15	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Aaron Riley	Jorge Gurgel	win	loss	1567	4025	Decision	Unanimous	Mario Yamasaki	3	5:00
8406	3	UFC 91 - Couture vs. Lesnar	2008-11-15	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jeremy Stephens	Rafael dos Anjos	win	loss	12179	11675	KO	Punches	Steve Mazzagatti	3	0:39
8406	2	UFC 91 - Couture vs. Lesnar	2008-11-15	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mark Bocek	Alvin Robinson	win	loss	9781	12212	Submission	Rear-Naked Choke	Mario Yamasaki	3	3:16
8406	1	UFC 91 - Couture vs. Lesnar	2008-11-15	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Brown	Ryan Thomas	win	loss	14310	20224	Submission	Armbar	Herb Dean	2	0:57
8724	10	UFC Fight Night 16 - Fight for the Troops 1	2008-12-10	Crown Coliseum, Fayetteville, North Carolina, United States	Josh Koscheck	Yoshiyuki Yoshida	win	loss	9418	12073	KO	Punch	Mario Yamasaki	1	2:15
8724	9	UFC Fight Night 16 - Fight for the Troops 1	2008-12-10	Crown Coliseum, Fayetteville, North Carolina, United States	Mike Swick	Jonathan Goulet	win	loss	5199	4120	TKO	Punches	Dan Miragliotta	1	0:33
8724	7	UFC Fight Night 16 - Fight for the Troops 1	2008-12-10	Crown Coliseum, Fayetteville, North Carolina, United States	Tim Credeur	Nate Loughran	win	loss	1804	15626	TKO	Rib Injury	Dan Miragliotta	2	5:00
8724	6	UFC Fight Night 16 - Fight for the Troops 1	2008-12-10	Crown Coliseum, Fayetteville, North Carolina, United States	Jim Miller	Matt Wiman	win	loss	14463	12236	Decision	Unanimous	Mario Yamasaki	3	5:00
4026	4	UFC Fight Night 6 - Sanchez vs. Parisyan	2006-08-17	Red Rock Casino Resort and Spa, Las Vegas, Nevada, United States	Joe Riggs	Jason Von Flue	win	loss	2765	549	Submission	Triangle Choke	N/A	1	2:01
4026	3	UFC Fight Night 6 - Sanchez vs. Parisyan	2006-08-17	Red Rock Casino Resort and Spa, Las Vegas, Nevada, United States	Jake O'Brien	Kristof Midoux	win	loss	14892	3363	TKO	Punches	N/A	2	0:52
4026	2	UFC Fight Night 6 - Sanchez vs. Parisyan	2006-08-17	Red Rock Casino Resort and Spa, Las Vegas, Nevada, United States	Forrest Petz	Sam Morgan	win	loss	4411	3139	Decision	Unanimous	N/A	3	5:00
4026	1	UFC Fight Night 6 - Sanchez vs. Parisyan	2006-08-17	Red Rock Casino Resort and Spa, Las Vegas, Nevada, United States	Anthony Torres	Pat Healy	win	loss	1884	6246	Submission	Rear-Naked Choke	N/A	1	2:37
8724	5	UFC Fight Night 16 - Fight for the Troops 1	2008-12-10	Crown Coliseum, Fayetteville, North Carolina, United States	Luigi Fioravanti	Brodie Farber	win	loss	12199	6123	Decision	Unanimous	Al Coley	3	5:00
8724	4	UFC Fight Night 16 - Fight for the Troops 1	2008-12-10	Crown Coliseum, Fayetteville, North Carolina, United States	Steve Bruno	Johnny Rees	win	loss	4367	14891	Submission	Rear-Naked Choke	Donnie Jessup	2	3:44
8724	3	UFC Fight Night 16 - Fight for the Troops 1	2008-12-10	Crown Coliseum, Fayetteville, North Carolina, United States	Ben Saunders	Brandon Wolff	win	loss	10339	4673	TKO	Knees	Al Coley	1	1:49
8724	2	UFC Fight Night 16 - Fight for the Troops 1	2008-12-10	Crown Coliseum, Fayetteville, North Carolina, United States	Dale Hartt	Corey Hill	win	loss	11970	23864	TKO	Leg Injury	Donnie Jessup	2	0:20
8724	1	UFC Fight Night 16 - Fight for the Troops 1	2008-12-10	Crown Coliseum, Fayetteville, North Carolina, United States	Justin McCully	Eddie Sanchez	win	loss	930	12098	Decision	Unanimous	Dan Miragliotta	3	5:00
8765	10	UFC - The Ultimate Fighter 8 Finale	2008-12-13	Palms Casino Resort, Las Vegas, Nevada, United States	Efrain Escudero	Phillipe Nover	win	loss	16555	7415	Decision	Unanimous	Steve Mazzagatti	3	5:00
8765	9	UFC - The Ultimate Fighter 8 Finale	2008-12-13	Palms Casino Resort, Las Vegas, Nevada, United States	Ryan Bader	Vinny Magalhaes	win	loss	22858	10709	TKO	Punches	Herb Dean	1	2:18
8765	8	UFC - The Ultimate Fighter 8 Finale	2008-12-13	Palms Casino Resort, Las Vegas, Nevada, United States	Anthony Johnson	Kevin Burns	win	loss	17662	20512	KO	Head Kick	Mario Yamasaki	3	0:28
8765	7	UFC - The Ultimate Fighter 8 Finale	2008-12-13	Palms Casino Resort, Las Vegas, Nevada, United States	Wilson Gouveia	Jason MacDonald	win	loss	3070	4389	Submission	Elbows	Josh Rosenthal	1	2:18
8765	6	UFC - The Ultimate Fighter 8 Finale	2008-12-13	Palms Casino Resort, Las Vegas, Nevada, United States	Junie Allen Browning	David Kaplan	win	loss	28041	13848	Submission	Armbar	Steve Mazzagatti	2	1:32
8765	5	UFC - The Ultimate Fighter 8 Finale	2008-12-13	Palms Casino Resort, Las Vegas, Nevada, United States	Krzysztof Soszynski	Shane Primm	win	loss	9178	18304	Submission	Kimura	Herb Dean	2	3:27
8765	3	UFC - The Ultimate Fighter 8 Finale	2008-12-13	Palms Casino Resort, Las Vegas, Nevada, United States	Tom Lawlor	Kyle Kingsbury	win	loss	21940	16558	Decision	Unanimous	Josh Rosenthal	3	5:00
8765	2	UFC - The Ultimate Fighter 8 Finale	2008-12-13	Palms Casino Resort, Las Vegas, Nevada, United States	Shane Nelson	George Roop	win	loss	11262	16415	Decision	Split	Mario Yamasaki	3	5:00
8765	1	UFC - The Ultimate Fighter 8 Finale	2008-12-13	Palms Casino Resort, Las Vegas, Nevada, United States	Roli Delgado	John Polakowski	win	loss	3669	9512	Submission	Guillotine Choke	Josh Rosenthal	2	2:18
8732	10	UFC 92 - The Ultimate 2008	2008-12-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rashad Evans	Forrest Griffin	win	loss	10200	3526	TKO	Punches	Steve Mazzagatti	3	2:46
8732	9	UFC 92 - The Ultimate 2008	2008-12-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Frank Mir	Antonio Rodrigo Nogueira	win	loss	2329	1440	TKO	Punches	Herb Dean	2	1:54
8732	8	UFC 92 - The Ultimate 2008	2008-12-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	C.B. Dollaway	Mike Massenzio	win	loss	22350	12852	TKO	Punches	Yves Lavigne	1	3:01
8732	7	UFC 92 - The Ultimate 2008	2008-12-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Quinton Jackson	Wanderlei Silva	win	loss	348	209	KO	Punch	Yves Lavigne	1	3:21
8732	6	UFC 92 - The Ultimate 2008	2008-12-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Cheick Kongo	Mostapha Al-Turk	win	loss	2193	8224	TKO	Elbows and Punches	Steve Mazzagatti	1	4:37
8732	5	UFC 92 - The Ultimate 2008	2008-12-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Yushin Okami	Dean Lister	win	loss	5569	338	Decision	Unanimous	Herb Dean	3	5:00
8732	4	UFC 92 - The Ultimate 2008	2008-12-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Antoni Hardonk	Mike Wessel	win	loss	1518	25524	TKO	Punches	Yves Lavigne	2	2:09
8732	3	UFC 92 - The Ultimate 2008	2008-12-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Hamill	Reese Andy	win	loss	16695	12692	TKO	Punches	Steve Mazzagatti	2	2:19
8732	2	UFC 92 - The Ultimate 2008	2008-12-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brad Blackburn	Ryo Chonan	win	loss	2920	1831	Decision	Unanimous	Herb Dean	3	5:00
8732	1	UFC 92 - The Ultimate 2008	2008-12-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Pat Barry	Dan Evensen	win	loss	33342	10584	TKO	Leg Kicks	Yves Lavigne	1	2:36
8864	10	UFC 93 - Franklin vs. Henderson	2009-01-17	O2 Arena, Dublin, Ireland, Ireland	Dan Henderson	Rich Franklin	win	loss	195	392	Decision	Split	Dan Miragliotta	3	5:00
8864	9	UFC 93 - Franklin vs. Henderson	2009-01-17	O2 Arena, Dublin, Ireland, Ireland	Mauricio Rua	Mark Coleman	win	loss	5707	136	TKO	Punches	Kevin Mulhall	3	4:36
8864	8	UFC 93 - Franklin vs. Henderson	2009-01-17	O2 Arena, Dublin, Ireland, Ireland	Rousimar Palhares	Jeremy Horn	win	loss	16286	202	Decision	Unanimous	Leon Roberts	3	5:00
8864	7	UFC 93 - Franklin vs. Henderson	2009-01-17	O2 Arena, Dublin, Ireland, Ireland	Alan Belcher	Denis Kang	win	loss	10967	935	Submission	Guillotine Choke	Dan Miragliotta	2	4:36
8864	6	UFC 93 - Franklin vs. Henderson	2009-01-17	O2 Arena, Dublin, Ireland, Ireland	Marcus Davis	Chris Lytle	win	loss	8592	267	Decision	Split	Marc Goddard	3	5:00
8864	4	UFC 93 - Franklin vs. Henderson	2009-01-17	O2 Arena, Dublin, Ireland, Ireland	Martin Kampmann	Alexandre Barros	win	loss	5344	1424	TKO	Punches	Kevin Mulhall	2	3:07
8864	3	UFC 93 - Franklin vs. Henderson	2009-01-17	O2 Arena, Dublin, Ireland, Ireland	Eric Schafer	Antonio Mendes	win	loss	13275	7110	TKO	Punches	Dan Miragliotta	1	3:35
8864	1	UFC 93 - Franklin vs. Henderson	2009-01-17	O2 Arena, Dublin, Ireland, Ireland	Dennis Siver	Nate Mohr	win	loss	9817	8396	TKO	Spinning Back Kick and Punches	Kevin Mulhall	3	3:27
8465	10	UFC 94 - St. Pierre vs. Penn 2	2009-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Georges St. Pierre	B.J. Penn	win	loss	3500	1307	TKO	Corner Stoppage	Herb Dean	4	5:00
8465	9	UFC 94 - St. Pierre vs. Penn 2	2009-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Lyoto Machida	Thiago Silva	win	loss	7513	14396	KO	Punches	Yves Lavigne	1	4:59
8465	8	UFC 94 - St. Pierre vs. Penn 2	2009-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jon Jones	Stephan Bonnar	win	loss	27944	3014	Decision	Unanimous	Steve Mazzagatti	3	5:00
8465	6	UFC 94 - St. Pierre vs. Penn 2	2009-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Clay Guida	Nate Diaz	win	loss	8184	11451	Decision	Split	Yves Lavigne	3	5:00
8465	5	UFC 94 - St. Pierre vs. Penn 2	2009-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jon Fitch	Akihiro Gono	win	loss	4865	1217	Decision	Unanimous	Steve Mazzagatti	3	5:00
8465	4	UFC 94 - St. Pierre vs. Penn 2	2009-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Thiago Tavares	Manny Gamburyan	win	loss	4647	5185	Decision	Unanimous	Josh Rosenthal	3	5:00
8465	3	UFC 94 - St. Pierre vs. Penn 2	2009-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	John Howard	Chris Wilson	win	loss	11798	9281	Decision	Split	Herb Dean	3	5:00
8465	2	UFC 94 - St. Pierre vs. Penn 2	2009-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jake O'Brien	Christian Wellisch	win	loss	14892	3328	Decision	Split	Yves Lavigne	3	5:00
8465	1	UFC 94 - St. Pierre vs. Penn 2	2009-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dan Cramer	Matt Arroyo	win	loss	42310	19456	Decision	Split	Steve Mazzagatti	3	5:00
9307	10	UFC Fight Night 17 - Lauzon vs. Stephens	2009-02-07	USF Sun Dome, Tampa, Florida, United States	Joe Lauzon	Jeremy Stephens	win	loss	4923	12179	Submission	Armbar	Troy Waugh	2	4:43
9307	9	UFC Fight Night 17 - Lauzon vs. Stephens	2009-02-07	USF Sun Dome, Tampa, Florida, United States	Cain Velasquez	Denis Stojnic	win	loss	19102	12955	TKO	Punches	Jorge Ortiz	2	2:34
9307	8	UFC Fight Night 17 - Lauzon vs. Stephens	2009-02-07	USF Sun Dome, Tampa, Florida, United States	Josh Neer	Mac Danzig	win	loss	9179	3396	Submission	Triangle Choke	Jorge Alonso	2	3:36
9307	7	UFC Fight Night 17 - Lauzon vs. Stephens	2009-02-07	USF Sun Dome, Tampa, Florida, United States	Anthony Johnson	Luigi Fioravanti	win	loss	17662	12199	TKO	Punches	Troy Waugh	1	4:39
9307	5	UFC Fight Night 17 - Lauzon vs. Stephens	2009-02-07	USF Sun Dome, Tampa, Florida, United States	Dan Miller	Jake Rosholt	win	loss	14464	23322	Submission	Guillotine Choke	Jorge Alonso	1	1:03
9307	4	UFC Fight Night 17 - Lauzon vs. Stephens	2009-02-07	USF Sun Dome, Tampa, Florida, United States	Matt Veach	Matt Grice	win	loss	23350	14539	TKO	Punches	Troy Waugh	1	4:34
9307	3	UFC Fight Night 17 - Lauzon vs. Stephens	2009-02-07	USF Sun Dome, Tampa, Florida, United States	Gleison Tibau	Rich Clementi	win	loss	5993	1046	Submission	Guillotine Choke	Jorge Ortiz	1	4:35
9307	2	UFC Fight Night 17 - Lauzon vs. Stephens	2009-02-07	USF Sun Dome, Tampa, Florida, United States	Nick Catone	Derek Downey	win	loss	23006	12234	Submission	Keylock	Jorge Alonso	2	1:15
9307	1	UFC Fight Night 17 - Lauzon vs. Stephens	2009-02-07	USF Sun Dome, Tampa, Florida, United States	Matt Riddle	Steve Bruno	win	loss	34072	4367	Decision	Unanimous	Troy Waugh	3	5:00
9250	10	UFC 95 - Sanchez vs. Stevenson	2009-02-21	O2 Arena, London, England, England	Diego Sanchez	Joe Stevenson	win	loss	4824	65	Decision	Unanimous	Dan Miragliotta	3	5:00
9250	9	UFC 95 - Sanchez vs. Stevenson	2009-02-21	O2 Arena, London, England, England	Dan Hardy	Rory Markham	win	loss	10629	10768	KO	Punch	Kevin Mulhall	1	1:09
9250	8	UFC 95 - Sanchez vs. Stevenson	2009-02-21	O2 Arena, London, England, England	Nate Marquardt	Wilson Gouveia	win	loss	1712	3070	TKO	Knee and Punches	Leon Roberts	3	3:10
9250	3	UFC 95 - Sanchez vs. Stevenson	2009-02-21	O2 Arena, London, England, England	Evan Dunham	Per Eklund	win	loss	22038	3707	TKO	Punches	Marc Goddard	1	2:13
9250	2	UFC 95 - Sanchez vs. Stevenson	2009-02-21	O2 Arena, London, England, England	Mike Ciesnolevicz	Neil Grove	win	loss	14047	23219	Submission	Heel Hook	Leon Roberts	1	1:03
9250	1	UFC 95 - Sanchez vs. Stevenson	2009-02-21	O2 Arena, London, England, England	Paul Kelly	Troy Mandaloniz	win	loss	14028	12096	Decision	Unanimous	Kevin Mulhall	3	5:00
9427	10	UFC 96 - Jackson vs. Jardine	2009-03-07	Nationwide Arena, Columbus, Ohio, United States	Quinton Jackson	Keith Jardine	win	loss	348	2638	Decision	Unanimous	Yves Lavigne	3	5:00
9427	9	UFC 96 - Jackson vs. Jardine	2009-03-07	Nationwide Arena, Columbus, Ohio, United States	Shane Carwin	Gabriel Gonzaga	win	loss	14013	7306	TKO	Punches	Dan Miragliotta	1	1:09
9427	8	UFC 96 - Jackson vs. Jardine	2009-03-07	Nationwide Arena, Columbus, Ohio, United States	Matt Brown	Pete Sell	win	loss	14310	7795	TKO	Punches	Yves Lavigne	1	1:32
9427	7	UFC 96 - Jackson vs. Jardine	2009-03-07	Nationwide Arena, Columbus, Ohio, United States	Matt Hamill	Mark Munoz	win	loss	16695	22411	KO	Head Kick	Dan Miragliotta	1	3:53
9427	6	UFC 96 - Jackson vs. Jardine	2009-03-07	Nationwide Arena, Columbus, Ohio, United States	Gray Maynard	Jim Miller	win	loss	15835	14463	Decision	Unanimous	Dan Miragliotta	3	5:00
9427	4	UFC 96 - Jackson vs. Jardine	2009-03-07	Nationwide Arena, Columbus, Ohio, United States	Kendall Grove	Jason Day	win	loss	10126	6811	TKO	Punches and Elbows	Rick Fike	1	1:32
9427	3	UFC 96 - Jackson vs. Jardine	2009-03-07	Nationwide Arena, Columbus, Ohio, United States	Jason Brilz	Tim Boetsch	win	loss	1927	19544	Decision	Unanimous	Dan Miragliotta	3	5:00
9427	1	UFC 96 - Jackson vs. Jardine	2009-03-07	Nationwide Arena, Columbus, Ohio, United States	Shane Nelson	Aaron Riley	win	loss	11262	1567	TKO	Punch	Rick Fike	1	0:44
1469	7	UFC 42 - Sudden Impact	2003-04-25	American Airlines Arena, Miami, Florida, United States	Pete Spratt	Robbie Lawler	win	loss	3195	2245	Submission	Injury	N/A	2	2:28
1469	6	UFC 42 - Sudden Impact	2003-04-25	American Airlines Arena, Miami, Florida, United States	Dave Strasser	Romie Aram	win	loss	615	85	Decision	Unanimous	N/A	3	5:00
9448	11	UFC Fight Night 18 - Condit vs. Kampmann	2009-04-01	Sommet Center, Nashville, Tennessee, United States	Martin Kampmann	Carlos Condit	win	loss	5344	6765	Decision	Split	Herb Dean	3	5:00
9448	10	UFC Fight Night 18 - Condit vs. Kampmann	2009-04-01	Sommet Center, Nashville, Tennessee, United States	Ryan Bader	Carmelo Marrero	win	loss	22858	12855	Decision	Unanimous	Dan Miragliotta	3	5:00
9448	9	UFC Fight Night 18 - Condit vs. Kampmann	2009-04-01	Sommet Center, Nashville, Tennessee, United States	Tyson Griffin	Rafael dos Anjos	win	loss	11689	11675	Decision	Unanimous	Mario Yamasaki	3	5:00
9448	8	UFC Fight Night 18 - Condit vs. Kampmann	2009-04-01	Sommet Center, Nashville, Tennessee, United States	Cole Miller	Junie Allen Browning	win	loss	13133	28041	Submission	Guillotine Choke	Herb Dean	1	1:58
9448	7	UFC Fight Night 18 - Condit vs. Kampmann	2009-04-01	Sommet Center, Nashville, Tennessee, United States	Gleison Tibau	Jeremy Stephens	win	loss	5993	12179	Decision	Unanimous	Mario Yamasaki	3	5:00
9448	6	UFC Fight Night 18 - Condit vs. Kampmann	2009-04-01	Sommet Center, Nashville, Tennessee, United States	Ricardo Almeida	Matt Horwich	win	loss	11	8654	Decision	Unanimous	Dan Miragliotta	3	5:00
9448	3	UFC Fight Night 18 - Condit vs. Kampmann	2009-04-01	Sommet Center, Nashville, Tennessee, United States	Jorge Rivera	Nissen Osterneck	win	loss	2712	17591	Decision	Split	Dan Miragliotta	3	5:00
9448	1	UFC Fight Night 18 - Condit vs. Kampmann	2009-04-01	Sommet Center, Nashville, Tennessee, United States	Aaron Simpson	Tim McKenzie	win	loss	24986	3089	TKO	Punches	Mario Yamasaki	1	1:40
9432	11	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	Sam Stout	Matt Wiman	win	loss	9901	12236	Decision	Unanimous	Dan Miragliotta	3	5:00
9432	10	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	Mauricio Rua	Chuck Liddell	win	loss	5707	192	TKO	Punches	Mario Yamasaki	1	4:28
9432	9	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	Krzysztof Soszynski	Brian Stann	win	loss	9178	14829	Submission	Kimura	Dan Miragliotta	1	3:53
9432	8	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	Cheick Kongo	Antoni Hardonk	win	loss	2193	1518	TKO	Punches	Yves Lavigne	2	2:29
9432	7	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	Luiz Cane	Steve Cantwell	win	loss	17559	12785	Decision	Unanimous	Mario Yamasaki	3	5:00
9432	6	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	Denis Kang	Xavier Foupa-Pokam	win	loss	935	8761	Decision	Unanimous	Philippe Chartier	3	5:00
9432	5	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	Nate Quarry	Jason MacDonald	win	loss	2383	4389	TKO	Elbows	Mario Yamasaki	1	2:27
9432	4	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	Ed Herman	David Loiseau	win	loss	6561	903	Decision	Unanimous	Philippe Chartier	3	5:00
9432	3	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	Mark Bocek	David Bielkheden	win	loss	9781	3863	Submission	Rear-Naked Choke	Dan Miragliotta	1	4:57
9432	2	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	T.J. Grant	Ryo Chonan	win	loss	15906	1831	Decision	Split	Philippe Chartier	3	5:00
9432	1	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	Eliot Marshall	Vinny Magalhaes	win	loss	15104	10709	Decision	Unanimous	Yves Lavigne	3	5:00
9529	11	UFC 98 - Evans vs. Machida	2009-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Lyoto Machida	Rashad Evans	win	loss	7513	10200	KO	Punches	Mario Yamasaki	2	3:57
9529	10	UFC 98 - Evans vs. Machida	2009-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Hughes	Matt Serra	win	loss	232	1305	Decision	Unanimous	Steve Mazzagatti	3	5:00
9529	9	UFC 98 - Evans vs. Machida	2009-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Drew McFedries	Xavier Foupa-Pokam	win	loss	2386	8761	TKO	Punches	Yves Lavigne	1	0:37
9529	8	UFC 98 - Evans vs. Machida	2009-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chael Sonnen	Dan Miller	win	loss	4112	14464	Decision	Unanimous	Yves Lavigne	3	5:00
9529	7	UFC 98 - Evans vs. Machida	2009-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Frankie Edgar	Sean Sherk	win	loss	14204	277	Decision	Unanimous	Herb Dean	3	5:00
9529	6	UFC 98 - Evans vs. Machida	2009-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brock Larson	Mike Pyle	win	loss	6373	4577	Submission	Arm-Triangle Choke	Mario Yamasaki	1	3:06
9529	5	UFC 98 - Evans vs. Machida	2009-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tim Hague	Pat Barry	win	loss	19599	33342	Submission	Guillotine Choke	Steve Mazzagatti	1	1:42
9529	4	UFC 98 - Evans vs. Machida	2009-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Kyle Bradley	Phillipe Nover	win	loss	7918	7415	TKO	Punches	Yves Lavigne	1	1:03
9529	3	UFC 98 - Evans vs. Machida	2009-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Krzysztof Soszynski	Andre Gusmao	win	loss	9178	15806	KO	Punches	Herb Dean	1	3:17
9529	2	UFC 98 - Evans vs. Machida	2009-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Yoshiyuki Yoshida	Brandon Wolff	win	loss	12073	4673	Submission	Guillotine Choke	Steve Mazzagatti	1	2:24
9529	1	UFC 98 - Evans vs. Machida	2009-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	George Roop	David Kaplan	win	loss	16415	13848	Decision	Split	Herb Dean	3	5:00
9297	12	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	Rich Franklin	Wanderlei Silva	win	loss	392	209	Decision	Unanimous	Mario Yamasaki	3	5:00
9297	11	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	Cain Velasquez	Cheick Kongo	win	loss	19102	2193	Decision	Unanimous	Dan Miragliotta	3	5:00
9297	10	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	Mirko Filipovic	Mostapha Al-Turk	win	loss	2326	8224	TKO	Punches	Dan Miragliotta	1	3:06
1469	5	UFC 42 - Sudden Impact	2003-04-25	American Airlines Arena, Miami, Florida, United States	Wesley Correira	Sean Alvarez	win	loss	2829	1964	TKO	Knees and Punches	N/A	2	1:46
9297	9	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	Mike Swick	Ben Saunders	win	loss	5199	10339	TKO	Punches	Leon Roberts	2	3:47
9297	8	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	Spencer Fisher	Caol Uno	win	loss	5118	283	Decision	Unanimous	Mario Yamasaki	3	5:00
9297	7	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	Dan Hardy	Marcus Davis	win	loss	10629	8592	Decision	Split	Marc Goddard	3	5:00
9297	6	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	Terry Etim	Justin Buchholz	win	loss	13332	18062	Submission	Brabo Choke	Leon Roberts	2	2:38
9297	5	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	Dennis Siver	Dale Hartt	win	loss	9817	11970	Submission	Rear-Naked Choke	Marc Goddard	1	3:23
9297	4	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	Paul Taylor	Peter Sobotta	win	loss	6326	15816	Decision	Unanimous	Leon Roberts	3	5:00
9297	3	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	Paul Kelly	Roli Delgado	win	loss	14028	3669	Decision	Unanimous	Mario Yamasaki	3	5:00
9297	2	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	Stefan Struve	Denis Stojnic	win	loss	15063	12955	Submission	Rear-Naked Choke	Dan Miragliotta	2	2:37
9297	1	UFC 99 - The Comeback	2009-06-13	Lanxess Arena, Cologne, Germany, Germany	John Hathaway	Rick Story	win	loss	16704	25989	Decision	Unanimous	N/A	3	5:00
9751	10	UFC - The Ultimate Fighter 9 Finale	2009-06-20	Palms Casino Resort, Las Vegas, Nevada, United States	Diego Sanchez	Clay Guida	win	loss	4824	8184	Decision	Split	Josh Rosenthal	3	5:00
9751	9	UFC - The Ultimate Fighter 9 Finale	2009-06-20	Palms Casino Resort, Las Vegas, Nevada, United States	James Wilks	DaMarques Johnson	win	loss	10569	12913	Submission	Rear-Naked Choke	Steve Mazzagatti	1	4:54
9751	8	UFC - The Ultimate Fighter 9 Finale	2009-06-20	Palms Casino Resort, Las Vegas, Nevada, United States	Chris Lytle	Kevin Burns	win	loss	267	20512	Decision	Unanimous	Herb Dean	3	5:00
9751	7	UFC - The Ultimate Fighter 9 Finale	2009-06-20	Palms Casino Resort, Las Vegas, Nevada, United States	Ross Pearson	Andre Winner	win	loss	11884	17034	Decision	Unanimous	Herb Dean	3	5:00
9751	6	UFC - The Ultimate Fighter 9 Finale	2009-06-20	Palms Casino Resort, Las Vegas, Nevada, United States	Joe Stevenson	Nate Diaz	win	loss	65	11451	Decision	Unanimous	Steve Mazzagatti	3	5:00
9751	5	UFC - The Ultimate Fighter 9 Finale	2009-06-20	Palms Casino Resort, Las Vegas, Nevada, United States	Melvin Guillard	Gleison Tibau	win	loss	7431	5993	Decision	Split	Josh Rosenthal	3	5:00
9751	4	UFC - The Ultimate Fighter 9 Finale	2009-06-20	Palms Casino Resort, Las Vegas, Nevada, United States	Brad Blackburn	Edgar Garcia	win	loss	2920	23108	Decision	Split	Kim Winslow	3	5:00
9751	3	UFC - The Ultimate Fighter 9 Finale	2009-06-20	Palms Casino Resort, Las Vegas, Nevada, United States	Tomasz Drwal	Mike Ciesnolevicz	win	loss	10047	14047	TKO	Knee and Punches	Herb Dean	1	4:48
9751	2	UFC - The Ultimate Fighter 9 Finale	2009-06-20	Palms Casino Resort, Las Vegas, Nevada, United States	Nick Osipczak	Frank Lester	win	loss	30033	22791	Submission	Rear-Naked Choke	Kim Winslow	1	3:40
9751	1	UFC - The Ultimate Fighter 9 Finale	2009-06-20	Palms Casino Resort, Las Vegas, Nevada, United States	Jason Dent	Cameron Dollar	win	loss	8321	25531	Submission	Anaconda Choke	Josh Rosenthal	1	4:46
9568	11	UFC 100 - Lesnar vs. Mir 2	2009-07-11	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jon Fitch	Paulo Thiago	win	loss	4865	13336	Decision	Unanimous	Yves Lavigne	3	5:00
9568	7	UFC 100 - Lesnar vs. Mir 2	2009-07-11	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Yoshihiro Akiyama	Alan Belcher	win	loss	11895	10967	Decision	Split	Mario Yamasaki	3	5:00
9568	6	UFC 100 - Lesnar vs. Mir 2	2009-07-11	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Mark Coleman	Stephan Bonnar	win	loss	136	3014	Decision	Unanimous	Herb Dean	3	5:00
9568	5	UFC 100 - Lesnar vs. Mir 2	2009-07-11	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jim Miller	Mac Danzig	win	loss	14463	3396	Decision	Unanimous	Steve Mazzagatti	3	5:00
9568	4	UFC 100 - Lesnar vs. Mir 2	2009-07-11	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jon Jones	Jake O'Brien	win	loss	27944	14892	Submission	Guillotine Choke	Yves Lavigne	2	2:43
9568	3	UFC 100 - Lesnar vs. Mir 2	2009-07-11	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Dong Hyun Kim	T.J. Grant	win	loss	16374	15906	Decision	Unanimous	Mario Yamasaki	3	5:00
9568	1	UFC 100 - Lesnar vs. Mir 2	2009-07-11	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Shannon Gugerty	Matt Grice	win	loss	11001	14539	Submission	Guillotine Choke	Herb Dean	1	2:36
9925	6	UFC 101 - Declaration	2009-08-08	Wachovia Center, Philadelphia, Pennsylvania, United States	Kurt Pellegrino	Josh Neer	win	loss	4153	9179	Decision	Unanimous	N/A	3	5:00
9925	5	UFC 101 - Declaration	2009-08-08	Wachovia Center, Philadelphia, Pennsylvania, United States	John Howard	Tamdan McCrory	win	loss	11798	16470	Decision	Split	Mario Yamasaki	3	5:00
9925	4	UFC 101 - Declaration	2009-08-08	Wachovia Center, Philadelphia, Pennsylvania, United States	Alessio Sakara	Thales Leites	win	loss	5366	8593	Decision	Split	Marc Goddard	3	5:00
9925	3	UFC 101 - Declaration	2009-08-08	Wachovia Center, Philadelphia, Pennsylvania, United States	Matt Riddle	Dan Cramer	win	loss	34072	42310	Decision	Unanimous	N/A	3	5:00
9925	2	UFC 101 - Declaration	2009-08-08	Wachovia Center, Philadelphia, Pennsylvania, United States	George Sotiropoulos	George Roop	win	loss	11702	16415	Submission	Kimura	Marc Goddard	2	1:59
9925	1	UFC 101 - Declaration	2009-08-08	Wachovia Center, Philadelphia, Pennsylvania, United States	Jesse Lennox	Danillo Villefort	win	loss	17139	13093	TKO	Doctor Stoppage	Keith Peterson	3	3:37
9925	11	UFC 101 - Declaration	2009-08-08	Wachovia Center, Philadelphia, Pennsylvania, United States	B.J. Penn	Kenny Florian	win	loss	1307	8021	Submission	Rear-Naked Choke	Dan Miragliotta	4	3:54
9925	10	UFC 101 - Declaration	2009-08-08	Wachovia Center, Philadelphia, Pennsylvania, United States	Anderson Silva	Forrest Griffin	win	loss	1356	3526	KO	Punch	Kevin Mulhall	1	3:23
4311	2	UFC 67 - All or Nothing	2007-02-03	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Lyoto Machida	Sam Hoger	win	loss	7513	6445	Decision	Unanimous	John McCarthy	3	5:00
9925	9	UFC 101 - Declaration	2009-08-08	Wachovia Center, Philadelphia, Pennsylvania, United States	Aaron Riley	Shane Nelson	win	loss	1567	11262	Decision	Unanimous	Kevin Mulhall	3	5:00
9925	8	UFC 101 - Declaration	2009-08-08	Wachovia Center, Philadelphia, Pennsylvania, United States	Johny Hendricks	Amir Sadollah	win	loss	24539	34071	TKO	Punches	Dan Miragliotta	1	0:29
9925	7	UFC 101 - Declaration	2009-08-08	Wachovia Center, Philadelphia, Pennsylvania, United States	Ricardo Almeida	Kendall Grove	win	loss	11	10126	Decision	Unanimous	N/A	3	5:00
10147	11	UFC 102 - Couture vs. Nogueira	2009-08-29	Rose Garden Arena, Portland, Oregon, United States	Antonio Rodrigo Nogueira	Randy Couture	win	loss	1440	166	Decision	Unanimous	Mario Yamasaki	3	5:00
10147	10	UFC 102 - Couture vs. Nogueira	2009-08-29	Rose Garden Arena, Portland, Oregon, United States	Thiago Silva	Keith Jardine	win	loss	14396	2638	TKO	Punches	Herb Dean	1	1:35
10147	8	UFC 102 - Couture vs. Nogueira	2009-08-29	Rose Garden Arena, Portland, Oregon, United States	Nate Marquardt	Demian Maia	win	loss	1712	14637	KO	Punch	Dave Hagen	1	0:21
10147	7	UFC 102 - Couture vs. Nogueira	2009-08-29	Rose Garden Arena, Portland, Oregon, United States	Brandon Vera	Krzysztof Soszynski	win	loss	4886	9178	Decision	Unanimous	Herb Dean	3	5:00
10147	6	UFC 102 - Couture vs. Nogueira	2009-08-29	Rose Garden Arena, Portland, Oregon, United States	Aaron Simpson	Ed Herman	win	loss	24986	6561	TKO	Knee Injury	Yves Lavigne	2	0:17
10147	5	UFC 102 - Couture vs. Nogueira	2009-08-29	Rose Garden Arena, Portland, Oregon, United States	Gabriel Gonzaga	Chris Tuchscherer	win	loss	7306	10669	TKO	Punches	Dave Hagan	1	2:27
10147	4	UFC 102 - Couture vs. Nogueira	2009-08-29	Rose Garden Arena, Portland, Oregon, United States	Mike Russow	Justin McCully	win	loss	20552	930	Decision	Unanimous	Herb Dean	3	5:00
10147	3	UFC 102 - Couture vs. Nogueira	2009-08-29	Rose Garden Arena, Portland, Oregon, United States	Todd Duffee	Tim Hague	win	loss	22903	19599	KO	Punches	Mario Yamasaki	1	0:07
10147	2	UFC 102 - Couture vs. Nogueira	2009-08-29	Rose Garden Arena, Portland, Oregon, United States	Mark Munoz	Nick Catone	win	loss	22411	23006	Decision	Split	Yves Lavigne	3	5:00
10147	1	UFC 102 - Couture vs. Nogueira	2009-08-29	Rose Garden Arena, Portland, Oregon, United States	Evan Dunham	Marcus Aurelio	win	loss	22038	4833	Decision	Split	Shawn Gregory	3	5:00
10443	10	UFC Fight Night 19 - Diaz vs. Guillard	2009-09-16	Cox Convention Center, Oklahoma City, Oklahoma, United States	Nate Diaz	Melvin Guillard	win	loss	11451	7431	Submission	Guillotine Choke	Herb Dean	2	2:13
10443	9	UFC Fight Night 19 - Diaz vs. Guillard	2009-09-16	Cox Convention Center, Oklahoma City, Oklahoma, United States	Gray Maynard	Roger Huerta	win	loss	15835	10089	Decision	Split	Dan Miragliotta	3	5:00
10443	8	UFC Fight Night 19 - Diaz vs. Guillard	2009-09-16	Cox Convention Center, Oklahoma City, Oklahoma, United States	Carlos Condit	Jake Ellenberger	win	loss	6765	13068	Decision	Split	Leon Roberts	3	5:00
10443	6	UFC Fight Night 19 - Diaz vs. Guillard	2009-09-16	Cox Convention Center, Oklahoma City, Oklahoma, United States	Brian Stann	Steve Cantwell	win	loss	14829	12785	Decision	Unanimous	Kevin Nix	3	5:00
10443	5	UFC Fight Night 19 - Diaz vs. Guillard	2009-09-16	Cox Convention Center, Oklahoma City, Oklahoma, United States	Mike Pyle	Chris Wilson	win	loss	4577	9281	Submission	Guillotine Choke	Dan Miragliotta	3	2:15
10443	4	UFC Fight Night 19 - Diaz vs. Guillard	2009-09-16	Cox Convention Center, Oklahoma City, Oklahoma, United States	C.B. Dollaway	Jay Silva	win	loss	22350	34408	Decision	Unanimous	Leon Roberts	3	5:00
10443	3	UFC Fight Night 19 - Diaz vs. Guillard	2009-09-16	Cox Convention Center, Oklahoma City, Oklahoma, United States	Jeremy Stephens	Justin Buchholz	win	loss	12179	18062	TKO	Doctor Stoppage	Kevin Nix	1	3:32
10443	2	UFC Fight Night 19 - Diaz vs. Guillard	2009-09-16	Cox Convention Center, Oklahoma City, Oklahoma, United States	Mike Pierce	Brock Larson	win	loss	25415	6373	Decision	Unanimous	Tom Jones	3	5:00
10444	13	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Vitor Belfort	Rich Franklin	win	loss	156	392	TKO	Punches	Yves Lavigne	1	3:02
10444	12	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Junior dos Santos	Mirko Filipovic	win	loss	17272	2326	Submission	Punch	Dan Miragliotta	3	2:00
10444	11	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Paul Daley	Martin Kampmann	win	loss	4270	5344	TKO	Punches	Yves Lavigne	1	2:31
10444	10	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Josh Koscheck	Frank Trigg	win	loss	9418	311	TKO	Punches	Leon Roberts	1	1:25
10444	9	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Tyson Griffin	Hermes Franca	win	loss	11689	3068	TKO	Punches	Dan Miragliotta	2	3:26
10444	8	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Efrain Escudero	Cole Miller	win	loss	16555	13133	TKO	Punches	Yves Lavigne	1	3:36
10444	7	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Tomasz Drwal	Drew McFedries	win	loss	10047	2386	Submission	Rear-Naked Choke	Leon Roberts	2	1:03
10444	6	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Jim Miller	Steve Lopez	win	loss	14463	29129	TKO	Shoulder Injury	Don Turnage	2	0:48
10444	5	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Nik Lentz	Rafaello Oliveira	win	loss	15058	37260	Decision	Unanimous	Kerry Hatley	3	5:00
10444	4	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Rick Story	Brian Foster	win	loss	25989	17723	Submission	Arm-Triangle Choke	Dan Miragliotta	2	1:09
10444	3	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Eliot Marshall	Jason Brilz	win	loss	15104	1927	Decision	Split	Don Turnage	3	5:00
10444	2	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Vladimir Matyushenko	Igor Pokrajac	win	loss	435	7621	Decision	Unanimous	Leon Roberts	3	5:00
1469	4	UFC 42 - Sudden Impact	2003-04-25	American Airlines Arena, Miami, Florida, United States	Rich Franklin	Evan Tanner	win	loss	392	212	TKO	Punches	N/A	1	2:40
1469	3	UFC 42 - Sudden Impact	2003-04-25	American Airlines Arena, Miami, Florida, United States	Duane Ludwig	Genki Sudo	win	loss	101	1227	Decision	Unanimous	N/A	3	5:00
1469	2	UFC 42 - Sudden Impact	2003-04-25	American Airlines Arena, Miami, Florida, United States	Hermes Franca	Rich Crunkilton	win	loss	3068	1542	Decision	Unanimous	N/A	3	5:00
1469	1	UFC 42 - Sudden Impact	2003-04-25	American Airlines Arena, Miami, Florida, United States	David Loiseau	Mark Weir	win	loss	903	3599	KO	Punches	N/A	1	3:55
10444	1	UFC 103 - Franklin vs. Belfort	2009-09-19	American Airlines Center, Dallas, Texas, United States	Rafael dos Anjos	Robert Emerson	win	loss	11675	5286	Decision	Unanimous	Kerry Hatley	3	5:00
10333	11	UFC 104 - Machida vs. Shogun	2009-10-24	Staples Center, Los Angeles, California, United States	Lyoto Machida	Mauricio Rua	win	loss	7513	5707	Decision	Unanimous	Herb Dean	5	5:00
10333	10	UFC 104 - Machida vs. Shogun	2009-10-24	Staples Center, Los Angeles, California, United States	Cain Velasquez	Ben Rothwell	win	loss	19102	2262	TKO	Punches	Steve Mazzagatti	2	0:58
10333	9	UFC 104 - Machida vs. Shogun	2009-10-24	Staples Center, Los Angeles, California, United States	Gleison Tibau	Josh Neer	win	loss	5993	9179	Decision	Unanimous	Josh Rosenthal	3	5:00
10333	8	UFC 104 - Machida vs. Shogun	2009-10-24	Staples Center, Los Angeles, California, United States	Joe Stevenson	Spencer Fisher	win	loss	65	5118	Submission	Elbows	Herb Dean	2	4:03
10333	7	UFC 104 - Machida vs. Shogun	2009-10-24	Staples Center, Los Angeles, California, United States	Anthony Johnson	Yoshiyuki Yoshida	win	loss	17662	12073	TKO	Punches	Steve Mazzagatti	1	0:41
10333	6	UFC 104 - Machida vs. Shogun	2009-10-24	Staples Center, Los Angeles, California, United States	Ryan Bader	Eric Schafer	win	loss	22858	13275	Decision	Unanimous	Josh Rosenthal	3	5:00
10333	5	UFC 104 - Machida vs. Shogun	2009-10-24	Staples Center, Los Angeles, California, United States	Pat Barry	Antoni Hardonk	win	loss	33342	1518	TKO	Punches	Josh Rosenthal	2	2:30
10333	4	UFC 104 - Machida vs. Shogun	2009-10-24	Staples Center, Los Angeles, California, United States	Chael Sonnen	Yushin Okami	win	loss	4112	5569	Decision	Unanimous	Steve Mazzagatti	3	5:00
10333	3	UFC 104 - Machida vs. Shogun	2009-10-24	Staples Center, Los Angeles, California, United States	Jorge Rivera	Rob Kimmons	win	loss	2712	9863	TKO	Punches	Jason Herzog	3	1:53
10333	2	UFC 104 - Machida vs. Shogun	2009-10-24	Staples Center, Los Angeles, California, United States	Kyle Kingsbury	Razak Al-Hassan	win	loss	16558	23326	Decision	Split	Jason Herzog	3	5:00
11052	11	UFC 105 - Couture vs. Vera	2009-11-14	Manchester Evening News Arena, Manchester, Lancashire, England	Randy Couture	Brandon Vera	win	loss	166	4886	Decision	Unanimous	Marc Goddard	3	5:00
11052	10	UFC 105 - Couture vs. Vera	2009-11-14	Manchester Evening News Arena, Manchester, Lancashire, England	Dan Hardy	Mike Swick	win	loss	10629	5199	Decision	Unanimous	Kevin Mulhall	3	5:00
11052	9	UFC 105 - Couture vs. Vera	2009-11-14	Manchester Evening News Arena, Manchester, Lancashire, England	Michael Bisping	Denis Kang	win	loss	10196	935	TKO	Punches	Dan Miragliotta	2	4:24
11052	8	UFC 105 - Couture vs. Vera	2009-11-14	Manchester Evening News Arena, Manchester, Lancashire, England	Matt Brown	James Wilks	win	loss	14310	10569	TKO	Punches	Leon Roberts	3	2:27
11052	7	UFC 105 - Couture vs. Vera	2009-11-14	Manchester Evening News Arena, Manchester, Lancashire, England	Ross Pearson	Aaron Riley	win	loss	11884	1567	TKO	Doctor Stoppage	Marc Goddard	2	4:38
11052	5	UFC 105 - Couture vs. Vera	2009-11-14	Manchester Evening News Arena, Manchester, Lancashire, England	Terry Etim	Shannon Gugerty	win	loss	13332	11001	Submission	Guillotine Choke	Dan Miragliotta	2	1:24
11052	4	UFC 105 - Couture vs. Vera	2009-11-14	Manchester Evening News Arena, Manchester, Lancashire, England	Nick Osipczak	Matt Riddle	win	loss	30033	34072	TKO	Punches	Marc Goddard	3	3:53
11052	3	UFC 105 - Couture vs. Vera	2009-11-14	Manchester Evening News Arena, Manchester, Lancashire, England	Dennis Siver	Paul Kelly	win	loss	9817	14028	TKO	Spinning Back Kick and Punches	Dan Miragliotta	2	2:53
11052	2	UFC 105 - Couture vs. Vera	2009-11-14	Manchester Evening News Arena, Manchester, Lancashire, England	Alexander Gustafsson	Jared Hamman	win	loss	26162	15949	KO	Punches	Kevin Mulhall	1	0:41
11052	1	UFC 105 - Couture vs. Vera	2009-11-14	Manchester Evening News Arena, Manchester, Lancashire, England	Andre Winner	Roli Delgado	win	loss	17034	3669	KO	Punches	Leon Roberts	1	3:22
11053	10	UFC 106 - Ortiz vs. Griffin 2	2009-11-21	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Forrest Griffin	Tito Ortiz	win	loss	3526	158	Decision	Split	Josh Rosenthal	3	5:00
11053	9	UFC 106 - Ortiz vs. Griffin 2	2009-11-21	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Josh Koscheck	Anthony Johnson	win	loss	9418	17662	Submission	Rear-Naked Choke	Mario Yamasaki	2	4:47
11053	8	UFC 106 - Ortiz vs. Griffin 2	2009-11-21	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Paulo Thiago	Jacob Volkmann	win	loss	13336	24765	Decision	Unanimous	Steve Mazzagatti	3	5:00
11053	7	UFC 106 - Ortiz vs. Griffin 2	2009-11-21	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Antonio Rogerio Nogueira	Luiz Cane	win	loss	2270	17559	TKO	Punches	Steve Mazzagatti	1	1:56
11053	6	UFC 106 - Ortiz vs. Griffin 2	2009-11-21	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Amir Sadollah	Phil Baroni	win	loss	34071	278	Decision	Unanimous	Yves Lavigne	3	5:00
11053	5	UFC 106 - Ortiz vs. Griffin 2	2009-11-21	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Ben Saunders	Marcus Davis	win	loss	10339	8592	KO	Knees	Josh Rosenthal	1	3:24
11053	4	UFC 106 - Ortiz vs. Griffin 2	2009-11-21	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Kendall Grove	Jake Rosholt	win	loss	10126	23322	Submission	Triangle Choke	Mario Yamasaki	1	3:59
1614	8	UFC 43 - Meltdown	2003-06-06	Thomas and Mack Center, Las Vegas, Nevada, United States	Randy Couture	Chuck Liddell	win	loss	166	192	TKO	Punches	N/A	3	2:39
1614	7	UFC 43 - Meltdown	2003-06-06	Thomas and Mack Center, Las Vegas, Nevada, United States	Kimo Leopoldo	David Abbott	win	loss	43	110	Submission	Arm Triangle Choke	N/A	1	1:59
1614	6	UFC 43 - Meltdown	2003-06-06	Thomas and Mack Center, Las Vegas, Nevada, United States	Yves Edwards	Eddie Ruiz	win	loss	344	3265	Decision	Unanimous	N/A	3	5:00
11053	3	UFC 106 - Ortiz vs. Griffin 2	2009-11-21	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Brian Foster	Brock Larson	win	loss	17723	6373	Submission	Punches	Yves Lavigne	2	3:25
11053	2	UFC 106 - Ortiz vs. Griffin 2	2009-11-21	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Caol Uno	Fabricio Camoes	draw	draw	283	2427	Draw	Majority	Mario Yamasaki	3	5:00
11053	1	UFC 106 - Ortiz vs. Griffin 2	2009-11-21	Mandalay Bay Events Center, Las Vegas, Nevada, United States	George Sotiropoulos	Jason Dent	win	loss	11702	8321	Submission	Armbar	Yves Lavigne	2	4:36
11054	10	UFC - The Ultimate Fighter 10 Finale	2009-12-05	Palms Casino Resort, Las Vegas, Nevada, United States	Roy Nelson	Brendan Schaub	win	loss	10249	33926	KO	Punch	Herb Dean	1	3:45
11054	9	UFC - The Ultimate Fighter 10 Finale	2009-12-05	Palms Casino Resort, Las Vegas, Nevada, United States	Matt Hamill	Jon Jones	win	loss	16695	27944	DQ	Illegal Downward Elbows	Steve Mazzagatti	1	4:14
11054	8	UFC - The Ultimate Fighter 10 Finale	2009-12-05	Palms Casino Resort, Las Vegas, Nevada, United States	Kevin Ferguson	Houston Alexander	win	loss	22388	2352	Decision	Unanimous	Josh Rosenthal	3	5:00
11054	7	UFC - The Ultimate Fighter 10 Finale	2009-12-05	Palms Casino Resort, Las Vegas, Nevada, United States	Frankie Edgar	Matt Veach	win	loss	14204	23350	Submission	Rear-Naked Choke	Herb Dean	2	2:22
11054	6	UFC - The Ultimate Fighter 10 Finale	2009-12-05	Palms Casino Resort, Las Vegas, Nevada, United States	Matt Mitrione	Marcus Jones	win	loss	49519	25912	KO	Punches	Steve Mazzagatti	2	0:10
11054	5	UFC - The Ultimate Fighter 10 Finale	2009-12-05	Palms Casino Resort, Las Vegas, Nevada, United States	James McSweeney	Darrill Schoonover	win	loss	22111	33084	TKO	Punches and Knees	Josh Rosenthal	3	3:20
11054	4	UFC - The Ultimate Fighter 10 Finale	2009-12-05	Palms Casino Resort, Las Vegas, Nevada, United States	Jon Madsen	Justin Wren	win	loss	48820	21401	Decision	Split	Herb Dean	3	5:00
11054	3	UFC - The Ultimate Fighter 10 Finale	2009-12-05	Palms Casino Resort, Las Vegas, Nevada, United States	Brian Stann	Rodney Wallace	win	loss	14829	33343	Decision	Unanimous	Steve Mazzagatti	3	5:00
11054	2	UFC - The Ultimate Fighter 10 Finale	2009-12-05	Palms Casino Resort, Las Vegas, Nevada, United States	John Howard	Dennis Hallman	win	loss	11798	275	KO	Punches	Josh Rosenthal	3	4:55
11054	1	UFC - The Ultimate Fighter 10 Finale	2009-12-05	Palms Casino Resort, Las Vegas, Nevada, United States	Mark Bocek	Joe Brammer	win	loss	9781	17016	Submission	Rear-Naked Choke	Herb Dean	1	3:36
11118	11	UFC 107 - Penn vs. Sanchez	2009-12-12	FedEx Forum, Memphis, Tennessee, United States	B.J. Penn	Diego Sanchez	win	loss	1307	4824	TKO	Doctor Stoppage	Herb Dean	5	2:37
11118	9	UFC 107 - Penn vs. Sanchez	2009-12-12	FedEx Forum, Memphis, Tennessee, United States	Jon Fitch	Mike Pierce	win	loss	4865	25415	Decision	Unanimous	Mario Yamasaki	3	5:00
11118	8	UFC 107 - Penn vs. Sanchez	2009-12-12	FedEx Forum, Memphis, Tennessee, United States	Kenny Florian	Clay Guida	win	loss	8021	8184	Submission	Rear-Naked Choke	Mario Yamasaki	2	2:19
11118	7	UFC 107 - Penn vs. Sanchez	2009-12-12	FedEx Forum, Memphis, Tennessee, United States	Stefan Struve	Paul Buentello	win	loss	15063	347	Decision	Majority	Dan Miragliotta	3	5:00
11118	6	UFC 107 - Penn vs. Sanchez	2009-12-12	FedEx Forum, Memphis, Tennessee, United States	Alan Belcher	Wilson Gouveia	win	loss	10967	3070	TKO	Punches	Herb Dean	1	3:03
11118	5	UFC 107 - Penn vs. Sanchez	2009-12-12	FedEx Forum, Memphis, Tennessee, United States	Matt Wiman	Shane Nelson	win	loss	12236	11262	Decision	Unanimous	Mario Yamasaki	3	5:00
11118	4	UFC 107 - Penn vs. Sanchez	2009-12-12	FedEx Forum, Memphis, Tennessee, United States	Johny Hendricks	Ricardo Funch	win	loss	24539	24057	Decision	Unanimous	N/A	3	5:00
11118	3	UFC 107 - Penn vs. Sanchez	2009-12-12	FedEx Forum, Memphis, Tennessee, United States	Rousimar Palhares	Lucio Linhares	win	loss	16286	10543	Submission	Heel Hook	Greg Franklin	2	3:21
11118	1	UFC 107 - Penn vs. Sanchez	2009-12-12	FedEx Forum, Memphis, Tennessee, United States	T.J. Grant	Kevin Burns	win	loss	15906	20512	TKO	Punches	Greg Franklin	1	4:57
11471	10	UFC 108 - Evans vs. Silva	2010-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rashad Evans	Thiago Silva	win	loss	10200	14396	Decision	Unanimous	Yves Lavigne	3	5:00
11471	9	UFC 108 - Evans vs. Silva	2010-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Paul Daley	Dustin Hazelett	win	loss	4270	11481	KO	Punches	Herb Dean	1	2:24
11471	8	UFC 108 - Evans vs. Silva	2010-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Sam Stout	Joe Lauzon	win	loss	9901	4923	Decision	Unanimous	Steve Mazzagatti	3	5:00
11471	7	UFC 108 - Evans vs. Silva	2010-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jim Miller	Duane Ludwig	win	loss	14463	101	Submission	Armbar	Mario Yamasaki	1	2:31
11471	6	UFC 108 - Evans vs. Silva	2010-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Junior dos Santos	Gilbert Yvel	win	loss	17272	323	TKO	Punches	Herb Dean	1	2:07
11471	5	UFC 108 - Evans vs. Silva	2010-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Martin Kampmann	Jacob Volkmann	win	loss	5344	24765	Submission	Guillotine Choke	Yves Lavigne	1	4:03
11471	4	UFC 108 - Evans vs. Silva	2010-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Cole Miller	Dan Lauzon	win	loss	13133	16556	Submission	Kimura	Steve Mazzagatti	1	3:05
11471	3	UFC 108 - Evans vs. Silva	2010-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mark Munoz	Ryan Jensen	win	loss	22411	662	Submission	Punches	Mario Yamasaki	1	2:30
11471	2	UFC 108 - Evans vs. Silva	2010-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jake Ellenberger	Mike Pyle	win	loss	13068	4577	TKO	Punches	Yves Lavigne	2	0:22
11471	1	UFC 108 - Evans vs. Silva	2010-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rafaello Oliveira	John Gunderson	win	loss	37260	7018	Decision	Unanimous	Herb Dean	3	5:00
11617	11	UFC Fight Night 20 - Maynard vs. Diaz	2010-01-11	Patriot Center, Fairfax, Virginia, United States	Gray Maynard	Nate Diaz	win	loss	15835	11451	Decision	Split	Mario Yamasaki	3	5:00
11617	10	UFC Fight Night 20 - Maynard vs. Diaz	2010-01-11	Patriot Center, Fairfax, Virginia, United States	Evan Dunham	Efrain Escudero	win	loss	22038	16555	Submission	Armbar	Dan Miragliotta	3	1:59
11617	9	UFC Fight Night 20 - Maynard vs. Diaz	2010-01-11	Patriot Center, Fairfax, Virginia, United States	Aaron Simpson	Tom Lawlor	win	loss	24986	21940	Decision	Split	Kevin Mulhall	3	5:00
11617	8	UFC Fight Night 20 - Maynard vs. Diaz	2010-01-11	Patriot Center, Fairfax, Virginia, United States	Amir Sadollah	Brad Blackburn	win	loss	34071	2920	Decision	Unanimous	Mario Yamasaki	3	5:00
11617	7	UFC Fight Night 20 - Maynard vs. Diaz	2010-01-11	Patriot Center, Fairfax, Virginia, United States	Chris Leben	Jay Silva	win	loss	6258	34408	Decision	Unanimous	Dan Miragliotta	3	5:00
11617	6	UFC Fight Night 20 - Maynard vs. Diaz	2010-01-11	Patriot Center, Fairfax, Virginia, United States	Rick Story	Jesse Lennox	win	loss	25989	17139	Decision	Split	Kevin Mulhall	3	5:00
11617	5	UFC Fight Night 20 - Maynard vs. Diaz	2010-01-11	Patriot Center, Fairfax, Virginia, United States	Nik Lentz	Thiago Tavares	draw	draw	15058	4647	Draw	Majority	Mario Yamasaki	3	5:00
11617	4	UFC Fight Night 20 - Maynard vs. Diaz	2010-01-11	Patriot Center, Fairfax, Virginia, United States	Rory MacDonald	Michael Guymon	win	loss	14018	4015	Submission	Armbar	Dan Miragliotta	1	4:27
11617	3	UFC Fight Night 20 - Maynard vs. Diaz	2010-01-11	Patriot Center, Fairfax, Virginia, United States	Rafael dos Anjos	Kyle Bradley	win	loss	11675	7918	Decision	Unanimous	N/A	3	5:00
11617	2	UFC Fight Night 20 - Maynard vs. Diaz	2010-01-11	Patriot Center, Fairfax, Virginia, United States	Gerald Harris	John Salter	win	loss	17903	44683	TKO	Punches	N/A	3	3:24
11617	1	UFC Fight Night 20 - Maynard vs. Diaz	2010-01-11	Patriot Center, Fairfax, Virginia, United States	Nick Catone	Jesse Forbes	win	loss	23006	13453	Decision	Split	N/A	3	5:00
11741	11	UFC 109 - Relentless	2010-02-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Randy Couture	Mark Coleman	win	loss	166	136	Submission	Rear-Naked Choke	Steve Mazzagatti	2	1:09
11741	10	UFC 109 - Relentless	2010-02-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Chael Sonnen	Nate Marquardt	win	loss	4112	1712	Decision	Unanimous	Josh Rosenthal	3	5:00
11741	8	UFC 109 - Relentless	2010-02-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Demian Maia	Dan Miller	win	loss	14637	14464	Decision	Unanimous	Steve Mazzagatti	3	5:00
11741	7	UFC 109 - Relentless	2010-02-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Matt Serra	Frank Trigg	win	loss	1305	311	TKO	Punches	Josh Rosenthal	1	2:23
11741	6	UFC 109 - Relentless	2010-02-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Mac Danzig	Justin Buchholz	win	loss	3396	18062	Decision	Unanimous	Herb Dean	3	5:00
11741	5	UFC 109 - Relentless	2010-02-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Melvin Guillard	Ronys Torres	win	loss	7431	20447	Decision	Unanimous	Josh Rosenthal	3	5:00
11741	4	UFC 109 - Relentless	2010-02-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Robert Emerson	Phillipe Nover	win	loss	5286	7415	Decision	Unanimous	Herb Dean	3	5:00
11741	3	UFC 109 - Relentless	2010-02-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Phil Davis	Brian Stann	win	loss	27802	14829	Decision	Unanimous	Steve Mazzagatti	3	5:00
11741	2	UFC 109 - Relentless	2010-02-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Chris Tuchscherer	Tim Hague	win	loss	10669	19599	Decision	Majority	Josh Rosenthal	3	5:00
11741	1	UFC 109 - Relentless	2010-02-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Joey Beltran	Rolles Gracie	win	loss	21219	24217	TKO	Punches	Herb Dean	2	1:31
11792	9	UFC 110 - Nogueira vs. Velasquez	2010-02-20	Acer Arena, Sydney, New South Wales, Australia	Cain Velasquez	Antonio Rodrigo Nogueira	win	loss	19102	1440	KO	Punches	Herb Dean	1	2:20
11792	8	UFC 110 - Nogueira vs. Velasquez	2010-02-20	Acer Arena, Sydney, New South Wales, Australia	Wanderlei Silva	Michael Bisping	win	loss	209	10196	Decision	Unanimous	Josh Rosenthal	3	5:00
11792	7	UFC 110 - Nogueira vs. Velasquez	2010-02-20	Acer Arena, Sydney, New South Wales, Australia	George Sotiropoulos	Joe Stevenson	win	loss	11702	65	Decision	Unanimous	Herb Dean	3	5:00
11792	6	UFC 110 - Nogueira vs. Velasquez	2010-02-20	Acer Arena, Sydney, New South Wales, Australia	Ryan Bader	Keith Jardine	win	loss	22858	2638	KO	Punch	Josh Rosenthal	3	2:10
11792	5	UFC 110 - Nogueira vs. Velasquez	2010-02-20	Acer Arena, Sydney, New South Wales, Australia	Mirko Filipovic	Anthony Perosh	win	loss	2326	9491	TKO	Doctor Stoppage	Herb Dean	2	5:00
11792	4	UFC 110 - Nogueira vs. Velasquez	2010-02-20	Acer Arena, Sydney, New South Wales, Australia	Krzysztof Soszynski	Stephan Bonnar	win	loss	9178	3014	TKO	Doctor Stoppage	John Sharp	3	1:04
11792	3	UFC 110 - Nogueira vs. Velasquez	2010-02-20	Acer Arena, Sydney, New South Wales, Australia	Chris Lytle	Brian Foster	win	loss	267	17723	Submission	Kneebar	Steve Perceval	1	1:41
11792	2	UFC 110 - Nogueira vs. Velasquez	2010-02-20	Acer Arena, Sydney, New South Wales, Australia	C.B. Dollaway	Goran Reljic	win	loss	22350	10165	Decision	Unanimous	John Sharp	3	5:00
11792	1	UFC 110 - Nogueira vs. Velasquez	2010-02-20	Acer Arena, Sydney, New South Wales, Australia	James Te Huna	Igor Pokrajac	win	loss	9033	7621	TKO	Punches	Steve Perceval	3	3:26
12389	11	UFC Live 1 - Vera vs. Jones	2010-03-21	1stBank Center, Broomfield, Colorado, United States	Jon Jones	Brandon Vera	win	loss	27944	4886	TKO	Elbows and Punches	Herb Dean	1	3:19
12389	10	UFC Live 1 - Vera vs. Jones	2010-03-21	1stBank Center, Broomfield, Colorado, United States	Junior dos Santos	Gabriel Gonzaga	win	loss	17272	7306	TKO	Punches	Josh Rosenthal	1	3:53
12389	9	UFC Live 1 - Vera vs. Jones	2010-03-21	1stBank Center, Broomfield, Colorado, United States	Cheick Kongo	Paul Buentello	win	loss	2193	347	Submission	Elbows to the Body	Herb Dean	3	1:16
12389	8	UFC Live 1 - Vera vs. Jones	2010-03-21	1stBank Center, Broomfield, Colorado, United States	Alessio Sakara	James Irvin	win	loss	5366	7780	TKO	Punch	Josh Rosenthal	1	3:01
5298	8	UFC 75 - Champion vs. Champion	2007-09-08	O2 Arena, London, England, England	Michael Bisping	Matt Hamill	win	loss	10196	16695	Decision	Split	Mario Yamasaki	3	5:00
5298	7	UFC 75 - Champion vs. Champion	2007-09-08	O2 Arena, London, England, England	Cheick Kongo	Mirko Filipovic	win	loss	2193	2326	Decision	Unanimous	John McCarthy	3	5:00
12389	7	UFC Live 1 - Vera vs. Jones	2010-03-21	1stBank Center, Broomfield, Colorado, United States	Clay Guida	Shannon Gugerty	win	loss	8184	11001	Submission	Arm-Triangle Choke	Herb Dean	2	3:40
12389	6	UFC Live 1 - Vera vs. Jones	2010-03-21	1stBank Center, Broomfield, Colorado, United States	Vladimir Matyushenko	Eliot Marshall	win	loss	435	15104	Decision	Split	Adam Martinez	3	5:00
12389	5	UFC Live 1 - Vera vs. Jones	2010-03-21	1stBank Center, Broomfield, Colorado, United States	Darren Elkins	Duane Ludwig	win	loss	22094	101	TKO	Ankle Injury	Tim Mills	1	0:44
12389	4	UFC Live 1 - Vera vs. Jones	2010-03-21	1stBank Center, Broomfield, Colorado, United States	John Howard	Daniel Roberts	win	loss	11798	23999	KO	Punch	Tom Johnson	1	2:01
12389	2	UFC Live 1 - Vera vs. Jones	2010-03-21	1stBank Center, Broomfield, Colorado, United States	Mike Pierce	Julio Paulino	win	loss	25415	18106	Decision	Unanimous	Tim Mills	3	5:00
12389	1	UFC Live 1 - Vera vs. Jones	2010-03-21	1stBank Center, Broomfield, Colorado, United States	Jason Brilz	Eric Schafer	win	loss	1927	13275	Decision	Unanimous	Tom Johnson	3	5:00
12131	10	UFC 111 - St. Pierre vs. Hardy	2010-03-27	Prudential Center, Newark, New Jersey, United States	Georges St. Pierre	Dan Hardy	win	loss	3500	10629	Decision	Unanimous	Kevin Mulhall	5	5:00
12131	9	UFC 111 - St. Pierre vs. Hardy	2010-03-27	Prudential Center, Newark, New Jersey, United States	Shane Carwin	Frank Mir	win	loss	14013	2329	KO	Punches	Dan Miragliotta	1	3:48
12131	8	UFC 111 - St. Pierre vs. Hardy	2010-03-27	Prudential Center, Newark, New Jersey, United States	Kurt Pellegrino	Fabricio Camoes	win	loss	4153	2427	Submission	Rear-Naked Choke	Yves Lavigne	2	4:20
12131	7	UFC 111 - St. Pierre vs. Hardy	2010-03-27	Prudential Center, Newark, New Jersey, United States	Jon Fitch	Ben Saunders	win	loss	4865	10339	Decision	Unanimous	Dan Miragliotta	3	5:00
12131	6	UFC 111 - St. Pierre vs. Hardy	2010-03-27	Prudential Center, Newark, New Jersey, United States	Jim Miller	Mark Bocek	win	loss	14463	9781	Decision	Unanimous	Yves Lavigne	3	5:00
12131	5	UFC 111 - St. Pierre vs. Hardy	2010-03-27	Prudential Center, Newark, New Jersey, United States	Nate Diaz	Rory Markham	win	loss	11451	10768	TKO	Punches	Keith Peterson	1	2:47
12131	4	UFC 111 - St. Pierre vs. Hardy	2010-03-27	Prudential Center, Newark, New Jersey, United States	Ricardo Almeida	Matt Brown	win	loss	11	14310	Submission	Rear-Naked Choke	Dan Miragliotta	2	3:30
12131	3	UFC 111 - St. Pierre vs. Hardy	2010-03-27	Prudential Center, Newark, New Jersey, United States	Rousimar Palhares	Tomasz Drwal	win	loss	16286	10047	Submission	Heel Hook	Kevin Mulhall	1	0:45
12131	2	UFC 111 - St. Pierre vs. Hardy	2010-03-27	Prudential Center, Newark, New Jersey, United States	Jared Hamman	Rodney Wallace	win	loss	15949	33343	Decision	Unanimous	Kevin Mulhall	3	5:00
12131	1	UFC 111 - St. Pierre vs. Hardy	2010-03-27	Prudential Center, Newark, New Jersey, United States	Matt Riddle	Greg Soto	win	loss	34072	19080	DQ	Illegal Upkick	Keith Peterson	3	1:30
12474	11	UFC Fight Night 21 - Florian vs. Gomi	2010-03-31	Bojangles Coliseum, Charlotte, North Carolina, United States	Kenny Florian	Takanori Gomi	win	loss	8021	425	Submission	Rear-Naked Choke	Mario Yamasaki	3	2:52
12474	10	UFC Fight Night 21 - Florian vs. Gomi	2010-03-31	Bojangles Coliseum, Charlotte, North Carolina, United States	Roy Nelson	Stefan Struve	win	loss	10249	15063	TKO	Punches	Dan Miragliotta	1	0:39
12474	9	UFC Fight Night 21 - Florian vs. Gomi	2010-03-31	Bojangles Coliseum, Charlotte, North Carolina, United States	Jorge Rivera	Nate Quarry	win	loss	2712	2383	TKO	Punches	Mario Yamasaki	2	0:29
12474	8	UFC Fight Night 21 - Florian vs. Gomi	2010-03-31	Bojangles Coliseum, Charlotte, North Carolina, United States	Ross Pearson	Dennis Siver	win	loss	11884	9817	Decision	Unanimous	Dan Miragliotta	3	5:00
12474	7	UFC Fight Night 21 - Florian vs. Gomi	2010-03-31	Bojangles Coliseum, Charlotte, North Carolina, United States	Andre Winner	Rafaello Oliveira	win	loss	17034	37260	Decision	Unanimous	Dale Frye	3	5:00
12474	6	UFC Fight Night 21 - Florian vs. Gomi	2010-03-31	Bojangles Coliseum, Charlotte, North Carolina, United States	Jacob Volkmann	Ronys Torres	win	loss	24765	20447	Decision	Split	Bill Clancy	3	5:00
12474	5	UFC Fight Night 21 - Florian vs. Gomi	2010-03-31	Bojangles Coliseum, Charlotte, North Carolina, United States	Nik Lentz	Robert Emerson	win	loss	15058	5286	Decision	Unanimous	Dale Frye	3	5:00
12474	4	UFC Fight Night 21 - Florian vs. Gomi	2010-03-31	Bojangles Coliseum, Charlotte, North Carolina, United States	Gleison Tibau	Caol Uno	win	loss	5993	283	TKO	Punches	Bill Clancy	1	4:13
12474	3	UFC Fight Night 21 - Florian vs. Gomi	2010-03-31	Bojangles Coliseum, Charlotte, North Carolina, United States	Yushin Okami	Lucio Linhares	win	loss	5569	10543	TKO	Doctor Stoppage	Dale Frye	2	2:47
12474	2	UFC Fight Night 21 - Florian vs. Gomi	2010-03-31	Bojangles Coliseum, Charlotte, North Carolina, United States	Gerald Harris	Mario Miranda	win	loss	17903	23852	TKO	Punches	Bill Clancy	1	4:49
12474	1	UFC Fight Night 21 - Florian vs. Gomi	2010-03-31	Bojangles Coliseum, Charlotte, North Carolina, United States	Charlie Brenneman	Jason High	win	loss	23403	14185	Decision	Unanimous	Dale Frye	3	5:00
12184	10	UFC 112 - Invincible	2010-04-10	Ferrari World Concert Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Anderson Silva	Demian Maia	win	loss	1356	14637	Decision	Unanimous	Dan Miragliotta	5	5:00
12184	9	UFC 112 - Invincible	2010-04-10	Ferrari World Concert Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Frankie Edgar	B.J. Penn	win	loss	14204	1307	Decision	Unanimous	Herb Dean	5	5:00
12184	8	UFC 112 - Invincible	2010-04-10	Ferrari World Concert Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Matt Hughes	Renzo Gracie	win	loss	232	290	TKO	Punches	Herb Dean	3	4:40
12184	7	UFC 112 - Invincible	2010-04-10	Ferrari World Concert Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Rafael dos Anjos	Terry Etim	win	loss	11675	13332	Submission	Armbar	Marc Goddard	2	4:30
12184	6	UFC 112 - Invincible	2010-04-10	Ferrari World Concert Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Mark Munoz	Kendall Grove	win	loss	22411	10126	TKO	Punches	Marc Goddard	2	2:50
12184	5	UFC 112 - Invincible	2010-04-10	Ferrari World Concert Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Phil Davis	Alexander Gustafsson	win	loss	27802	26162	Submission	Anaconda Choke	Dan Miragliotta	1	4:55
12184	4	UFC 112 - Invincible	2010-04-10	Ferrari World Concert Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Rick Story	Nick Osipczak	win	loss	25989	30033	Decision	Split	Marc Goddard	3	5:00
12184	3	UFC 112 - Invincible	2010-04-10	Ferrari World Concert Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	DaMarques Johnson	Brad Blackburn	win	loss	12913	2920	TKO	Kick to the Body	Dan Miragliotta	3	2:08
12184	2	UFC 112 - Invincible	2010-04-10	Ferrari World Concert Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Paul Kelly	Matt Veach	win	loss	14028	23350	Submission	Guillotine Choke	Herb Dean	2	3:41
12184	1	UFC 112 - Invincible	2010-04-10	Ferrari World Concert Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Jon Madsen	Mostapha Al-Turk	win	loss	48820	8224	Decision	Unanimous	N/A	3	5:00
12390	11	UFC 113 - Machida vs. Shogun 2	2010-05-08	Bell Centre, Montreal, Quebec, Canada	Mauricio Rua	Lyoto Machida	win	loss	5707	7513	KO	Punches	Yves Lavigne	1	3:35
12390	10	UFC 113 - Machida vs. Shogun 2	2010-05-08	Bell Centre, Montreal, Quebec, Canada	Josh Koscheck	Paul Daley	win	loss	9418	4270	Decision	Unanimous	Dan Miragliotta	3	5:00
12390	9	UFC 113 - Machida vs. Shogun 2	2010-05-08	Bell Centre, Montreal, Quebec, Canada	Jeremy Stephens	Sam Stout	win	loss	12179	9901	Decision	Split	Mario Yamasaki	3	5:00
12390	8	UFC 113 - Machida vs. Shogun 2	2010-05-08	Bell Centre, Montreal, Quebec, Canada	Matt Mitrione	Kevin Ferguson	win	loss	49519	22388	TKO	Punches	Dan Miragliotta	2	4:24
12390	7	UFC 113 - Machida vs. Shogun 2	2010-05-08	Bell Centre, Montreal, Quebec, Canada	Alan Belcher	Patrick Cote	win	loss	10967	6612	Submission	Rear-Naked Choke	Mario Yamasaki	2	3:25
12390	6	UFC 113 - Machida vs. Shogun 2	2010-05-08	Bell Centre, Montreal, Quebec, Canada	Joe Doerksen	Tom Lawlor	win	loss	390	21940	Submission	Rear-Naked Choke	Yves Lavigne	2	2:10
12390	5	UFC 113 - Machida vs. Shogun 2	2010-05-08	Bell Centre, Montreal, Quebec, Canada	Marcus Davis	Jonathan Goulet	win	loss	8592	4120	TKO	Punches	Phillipe Chatrier	2	1:23
12390	4	UFC 113 - Machida vs. Shogun 2	2010-05-08	Bell Centre, Montreal, Quebec, Canada	Johny Hendricks	T.J. Grant	win	loss	24539	15906	Decision	Majority	Marc-Andre Cote	3	5:00
12390	3	UFC 113 - Machida vs. Shogun 2	2010-05-08	Bell Centre, Montreal, Quebec, Canada	Joey Beltran	Tim Hague	win	loss	21219	19599	Decision	Unanimous	Mario Yamasaki	3	5:00
12390	2	UFC 113 - Machida vs. Shogun 2	2010-05-08	Bell Centre, Montreal, Quebec, Canada	Michael Guymon	Yoshiyuki Yoshida	win	loss	4015	12073	Decision	Unanimous	Phillipe Chatrier	3	5:00
12390	1	UFC 113 - Machida vs. Shogun 2	2010-05-08	Bell Centre, Montreal, Quebec, Canada	John Salter	Jason MacDonald	win	loss	44683	4389	TKO	Leg Injury	Dan Miragliotta	1	2:42
12446	11	UFC 114 - Rampage vs. Evans	2010-05-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rashad Evans	Quinton Jackson	win	loss	10200	348	Decision	Unanimous	Herb Dean	3	5:00
12446	10	UFC 114 - Rampage vs. Evans	2010-05-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Michael Bisping	Dan Miller	win	loss	10196	14464	Decision	Unanimous	Steve Mazzagatti	3	5:00
12446	9	UFC 114 - Rampage vs. Evans	2010-05-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mike Russow	Todd Duffee	win	loss	20552	22903	KO	Punch	Josh Rosenthal	3	2:32
12446	8	UFC 114 - Rampage vs. Evans	2010-05-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Antonio Rogerio Nogueira	Jason Brilz	win	loss	2270	1927	Decision	Split	Yves Lavigne	3	5:00
12446	7	UFC 114 - Rampage vs. Evans	2010-05-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	John Hathaway	Diego Sanchez	win	loss	16704	4824	Decision	Unanimous	Herb Dean	3	5:00
12446	6	UFC 114 - Rampage vs. Evans	2010-05-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dong Hyun Kim	Amir Sadollah	win	loss	16374	34071	Decision	Unanimous	Steve Mazzagatti	3	5:00
12446	5	UFC 114 - Rampage vs. Evans	2010-05-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Efrain Escudero	Dan Lauzon	win	loss	16555	16556	Decision	Unanimous	Josh Rosenthal	3	5:00
12446	4	UFC 114 - Rampage vs. Evans	2010-05-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Melvin Guillard	Waylon Lowe	win	loss	7431	18744	KO	Knee to the Body	Yves Lavigne	1	3:28
12446	3	UFC 114 - Rampage vs. Evans	2010-05-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Cyrille Diabate	Luiz Cane	win	loss	2191	17559	TKO	Punches	Herb Dean	1	2:13
12446	2	UFC 114 - Rampage vs. Evans	2010-05-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Aaron Riley	Joe Brammer	win	loss	1567	17016	Decision	Unanimous	Steve Mazzagatti	3	5:00
12446	1	UFC 114 - Rampage vs. Evans	2010-05-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Ryan Jensen	Jesse Forbes	win	loss	662	13453	Submission	Guillotine Choke	Josh Rosenthal	1	1:06
12447	8	UFC 115 - Liddell vs. Franklin	2010-06-12	GM Place, Vancouver, British Columbia, Canada	Ben Rothwell	Gilbert Yvel	win	loss	2262	323	Decision	Unanimous	Yves Lavigne	3	5:00
12447	7	UFC 115 - Liddell vs. Franklin	2010-06-12	GM Place, Vancouver, British Columbia, Canada	Carlos Condit	Rory MacDonald	win	loss	6765	14018	TKO	Punches	Kevin Dornan	3	4:53
12447	6	UFC 115 - Liddell vs. Franklin	2010-06-12	GM Place, Vancouver, British Columbia, Canada	Evan Dunham	Tyson Griffin	win	loss	22038	11689	Decision	Split	Herb Dean	3	5:00
12447	4	UFC 115 - Liddell vs. Franklin	2010-06-12	GM Place, Vancouver, British Columbia, Canada	Mario Miranda	David Loiseau	win	loss	23852	903	TKO	Punches	Tony Williamson	2	4:07
12447	3	UFC 115 - Liddell vs. Franklin	2010-06-12	GM Place, Vancouver, British Columbia, Canada	James Wilks	Peter Sobotta	win	loss	10569	15816	Decision	Unanimous	Kevin Dornan	3	5:00
12447	2	UFC 115 - Liddell vs. Franklin	2010-06-12	GM Place, Vancouver, British Columbia, Canada	Claude Patrick	Ricardo Funch	win	loss	4114	24057	Submission	Guillotine Choke	Tony Williamson	2	1:48
12897	10	UFC - The Ultimate Fighter 11 Finale	2010-06-19	Palms Casino Resort, Las Vegas, Nevada, United States	Court McGee	Kris McCray	win	loss	34124	39432	Submission	Rear-Naked Choke	Steve Mazzagatti	2	3:41
12897	9	UFC - The Ultimate Fighter 11 Finale	2010-06-19	Palms Casino Resort, Las Vegas, Nevada, United States	Matt Hamill	Keith Jardine	win	loss	16695	2638	Decision	Majority	Herb Dean	3	5:00
1614	5	UFC 43 - Meltdown	2003-06-06	Thomas and Mack Center, Las Vegas, Nevada, United States	Vitor Belfort	Marvin Eastman	win	loss	156	339	TKO	Knees and Punches	N/A	1	1:07
1614	4	UFC 43 - Meltdown	2003-06-06	Thomas and Mack Center, Las Vegas, Nevada, United States	Vernon White	Ian Freeman	draw	draw	296	242	Draw	\N	N/A	3	5:00
1614	3	UFC 43 - Meltdown	2003-06-06	Thomas and Mack Center, Las Vegas, Nevada, United States	Frank Mir	Wes Sims	win	loss	2329	2713	DQ	Kicking a Downed Opponent	N/A	1	2:55
1614	2	UFC 43 - Meltdown	2003-06-06	Thomas and Mack Center, Las Vegas, Nevada, United States	Falaniko Vitale	Matt Lindland	win	loss	370	276	TKO	Slam	N/A	1	1:56
1614	1	UFC 43 - Meltdown	2003-06-06	Thomas and Mack Center, Las Vegas, Nevada, United States	Pedro Rizzo	Tra Telligman	win	loss	208	157	TKO	Doctor Stoppage	N/A	2	4:24
1688	9	UFC 44 - Undisputed	2003-09-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Randy Couture	Tito Ortiz	win	loss	166	158	Decision	Unanimous	N/A	5	5:00
12897	8	UFC - The Ultimate Fighter 11 Finale	2010-06-19	Palms Casino Resort, Las Vegas, Nevada, United States	Chris Leben	Aaron Simpson	win	loss	6258	24986	TKO	Punches	Josh Rosenthal	2	4:17
12897	7	UFC - The Ultimate Fighter 11 Finale	2010-06-19	Palms Casino Resort, Las Vegas, Nevada, United States	Dennis Siver	Spencer Fisher	win	loss	9817	5118	Decision	Unanimous	Kim Winslow	3	5:00
12897	6	UFC - The Ultimate Fighter 11 Finale	2010-06-19	Palms Casino Resort, Las Vegas, Nevada, United States	Rich Attonito	Jamie Yager	win	loss	11955	42309	TKO	Punches	Steve Mazzagatti	2	4:25
12897	5	UFC - The Ultimate Fighter 11 Finale	2010-06-19	Palms Casino Resort, Las Vegas, Nevada, United States	John Gunderson	Mark Holst	win	loss	7018	14862	Decision	Unanimous	Josh Rosenthal	3	5:00
12897	4	UFC - The Ultimate Fighter 11 Finale	2010-06-19	Palms Casino Resort, Las Vegas, Nevada, United States	Brad Tavares	Seth Baczynski	win	loss	33095	13827	Decision	Unanimous	Herb Dean	3	5:00
12897	3	UFC - The Ultimate Fighter 11 Finale	2010-06-19	Palms Casino Resort, Las Vegas, Nevada, United States	Kyle Noke	Josh Bryant	win	loss	7632	21971	TKO	Punches	Kim Winslow	2	3:12
12897	2	UFC - The Ultimate Fighter 11 Finale	2010-06-19	Palms Casino Resort, Las Vegas, Nevada, United States	Chris Camozzi	James Hammortree	win	loss	17224	42479	Decision	Unanimous	Josh Rosenthal	3	5:00
12897	1	UFC - The Ultimate Fighter 11 Finale	2010-06-19	Palms Casino Resort, Las Vegas, Nevada, United States	Travis Browne	James McSweeney	win	loss	16785	22111	TKO	Punches	Kim Winslow	1	4:32
12765	11	UFC 116 - Lesnar vs. Carwin	2010-07-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brock Lesnar	Shane Carwin	win	loss	17522	14013	Submission	Arm-Triangle Choke	Josh Rosenthal	2	2:19
12765	10	UFC 116 - Lesnar vs. Carwin	2010-07-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chris Leben	Yoshihiro Akiyama	win	loss	6258	11895	Submission	Triangle Choke	Herb Dean	3	4:40
12765	9	UFC 116 - Lesnar vs. Carwin	2010-07-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chris Lytle	Matt Brown	win	loss	267	14310	Submission	Straight Armbar	Steve Mazzagatti	2	2:02
12765	8	UFC 116 - Lesnar vs. Carwin	2010-07-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Stephan Bonnar	Krzysztof Soszynski	win	loss	3014	9178	TKO	Punches	Mario Yamasaki	2	3:08
12765	7	UFC 116 - Lesnar vs. Carwin	2010-07-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	George Sotiropoulos	Kurt Pellegrino	win	loss	11702	4153	Decision	Unanimous	Josh Rosenthal	3	5:00
12765	6	UFC 116 - Lesnar vs. Carwin	2010-07-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brendan Schaub	Chris Tuchscherer	win	loss	33926	10669	TKO	Punches	Herb Dean	1	1:07
12765	5	UFC 116 - Lesnar vs. Carwin	2010-07-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Ricardo Romero	Seth Petruzelli	win	loss	23978	2738	Submission	Straight Armbar	Steve Mazzagatti	2	3:05
12765	4	UFC 116 - Lesnar vs. Carwin	2010-07-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Kendall Grove	Goran Reljic	win	loss	10126	10165	Decision	Split	Mario Yamasaki	3	5:00
12765	3	UFC 116 - Lesnar vs. Carwin	2010-07-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Gerald Harris	David Branch	win	loss	17903	32431	KO	Slam	Herb Dean	3	2:35
12765	2	UFC 116 - Lesnar vs. Carwin	2010-07-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Daniel Roberts	Forrest Petz	win	loss	23999	4411	Decision	Split	Steve Mazzagatti	3	5:00
12765	1	UFC 116 - Lesnar vs. Carwin	2010-07-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jon Madsen	Karlos Vemola	win	loss	48820	40238	Decision	Unanimous	Mario Yamasaki	3	5:00
13294	10	UFC Live 2 - Jones vs. Matyushenko	2010-08-01	San Diego Sports Arena, San Diego, California, United States	Jon Jones	Vladimir Matyushenko	win	loss	27944	435	TKO	Elbows	Herb Dean	1	1:52
13294	9	UFC Live 2 - Jones vs. Matyushenko	2010-08-01	San Diego Sports Arena, San Diego, California, United States	Yushin Okami	Mark Munoz	win	loss	5569	22411	Decision	Split	John McCarthy	3	5:00
13294	8	UFC Live 2 - Jones vs. Matyushenko	2010-08-01	San Diego Sports Arena, San Diego, California, United States	Jake Ellenberger	John Howard	win	loss	13068	11798	TKO	Doctor Stoppage	Herb Dean	3	2:21
13294	5	UFC Live 2 - Jones vs. Matyushenko	2010-08-01	San Diego Sports Arena, San Diego, California, United States	Matt Riddle	DaMarques Johnson	win	loss	34072	12913	TKO	Punches	Jason Herzog	2	4:29
13294	4	UFC Live 2 - Jones vs. Matyushenko	2010-08-01	San Diego Sports Arena, San Diego, California, United States	Igor Pokrajac	James Irvin	win	loss	7621	7780	Submission	Rear-Naked Choke	Herb Dean	1	2:29
13294	3	UFC Live 2 - Jones vs. Matyushenko	2010-08-01	San Diego Sports Arena, San Diego, California, United States	Brian Stann	Mike Massenzio	win	loss	14829	12852	Submission	Triangle Choke	John McCarthy	3	3:10
13294	2	UFC Live 2 - Jones vs. Matyushenko	2010-08-01	San Diego Sports Arena, San Diego, California, United States	Charles Oliveira	Darren Elkins	win	loss	30300	22094	Submission	Armbar	Herb Dean	1	0:41
13294	1	UFC Live 2 - Jones vs. Matyushenko	2010-08-01	San Diego Sports Arena, San Diego, California, United States	Rob Kimmons	Steve Steinbeiss	win	loss	9863	21627	Decision	Unanimous	Jason Herzog	3	5:00
13310	11	UFC 117 - Silva vs. Sonnen	2010-08-07	Oracle Arena, Oakland, California, United States	Anderson Silva	Chael Sonnen	win	loss	1356	4112	Submission	Triangle Armbar	Josh Rosenthal	5	3:10
13310	10	UFC 117 - Silva vs. Sonnen	2010-08-07	Oracle Arena, Oakland, California, United States	Jon Fitch	Thiago Alves	win	loss	4865	5998	Decision	Unanimous	Herb Dean	3	5:00
13310	9	UFC 117 - Silva vs. Sonnen	2010-08-07	Oracle Arena, Oakland, California, United States	Clay Guida	Rafael dos Anjos	win	loss	8184	11675	Submission	Jaw Injury	Herb Dean	3	1:51
13310	7	UFC 117 - Silva vs. Sonnen	2010-08-07	Oracle Arena, Oakland, California, United States	Junior dos Santos	Roy Nelson	win	loss	17272	10249	Decision	Unanimous	Marcos Rosales	3	5:00
13310	6	UFC 117 - Silva vs. Sonnen	2010-08-07	Oracle Arena, Oakland, California, United States	Rick Story	Dustin Hazelett	win	loss	25989	11481	TKO	Punches	Josh Rosenthal	2	1:15
13310	5	UFC 117 - Silva vs. Sonnen	2010-08-07	Oracle Arena, Oakland, California, United States	Phil Davis	Rodney Wallace	win	loss	27802	33343	Decision	Unanimous	Herb Dean	3	5:00
13310	4	UFC 117 - Silva vs. Sonnen	2010-08-07	Oracle Arena, Oakland, California, United States	Johny Hendricks	Charlie Brenneman	win	loss	24539	23403	TKO	Punches	Josh Rosenthal	2	0:40
13310	3	UFC 117 - Silva vs. Sonnen	2010-08-07	Oracle Arena, Oakland, California, United States	Tim Boetsch	Todd Brown	win	loss	19544	21887	Decision	Unanimous	Marcos Rosales	3	5:00
13310	2	UFC 117 - Silva vs. Sonnen	2010-08-07	Oracle Arena, Oakland, California, United States	Stefan Struve	Christian Morecraft	win	loss	15063	34376	KO	Punches	Herb Dean	2	0:22
13310	1	UFC 117 - Silva vs. Sonnen	2010-08-07	Oracle Arena, Oakland, California, United States	Dennis Hallman	Ben Saunders	win	loss	275	10339	Decision	Unanimous	Marcos Rosales	3	5:00
13380	10	UFC 118 - Edgar vs. Penn 2	2010-08-28	TD Garden, Boston, Massachusetts, United States	Frankie Edgar	B.J. Penn	win	loss	14204	1307	Decision	Unanimous	Herb Dean	5	5:00
13380	9	UFC 118 - Edgar vs. Penn 2	2010-08-28	TD Garden, Boston, Massachusetts, United States	Randy Couture	James Toney	win	loss	166	60940	Submission	Arm-Triangle Choke	Mario Yamasaki	1	3:19
13380	8	UFC 118 - Edgar vs. Penn 2	2010-08-28	TD Garden, Boston, Massachusetts, United States	Demian Maia	Mario Miranda	win	loss	14637	23852	Decision	Unanimous	Herb Dean	3	5:00
13380	7	UFC 118 - Edgar vs. Penn 2	2010-08-28	TD Garden, Boston, Massachusetts, United States	Gray Maynard	Kenny Florian	win	loss	15835	8021	Decision	Unanimous	Mario Yamasaki	3	5:00
13380	5	UFC 118 - Edgar vs. Penn 2	2010-08-28	TD Garden, Boston, Massachusetts, United States	Joe Lauzon	Gabe Ruediger	win	loss	4923	5542	Submission	Armbar	Herb Dean	1	2:01
13380	4	UFC 118 - Edgar vs. Penn 2	2010-08-28	TD Garden, Boston, Massachusetts, United States	Nik Lentz	Andre Winner	win	loss	15058	17034	Decision	Unanimous	Josh Rosenthal	3	5:00
13380	3	UFC 118 - Edgar vs. Penn 2	2010-08-28	TD Garden, Boston, Massachusetts, United States	Dan Miller	John Salter	win	loss	14464	44683	Submission	Guillotine Choke	Mario Yamasaki	2	1:53
13380	2	UFC 118 - Edgar vs. Penn 2	2010-08-28	TD Garden, Boston, Massachusetts, United States	Greg Soto	Nick Osipczak	win	loss	19080	30033	Decision	Unanimous	Yves Lavigne	3	5:00
13380	1	UFC 118 - Edgar vs. Penn 2	2010-08-28	TD Garden, Boston, Massachusetts, United States	Mike Pierce	Amilcar Alves	win	loss	25415	23841	Submission	Straight Armbar	Josh Rosenthal	3	3:11
14024	10	UFC Fight Night 22 - Marquardt vs. Palhares	2010-09-15	Frank Erwin Center, Austin, Texas, United States	Nate Marquardt	Rousimar Palhares	win	loss	1712	16286	TKO	Punches	Herb Dean	1	3:28
14024	9	UFC Fight Night 22 - Marquardt vs. Palhares	2010-09-15	Frank Erwin Center, Austin, Texas, United States	Charles Oliveira	Efrain Escudero	win	loss	30300	16555	Submission	Rear-Naked Choke	Kerry Hatley	3	2:25
14024	8	UFC Fight Night 22 - Marquardt vs. Palhares	2010-09-15	Frank Erwin Center, Austin, Texas, United States	Jim Miller	Gleison Tibau	win	loss	14463	5993	Decision	Unanimous	Jon Schorle	3	5:00
14024	7	UFC Fight Night 22 - Marquardt vs. Palhares	2010-09-15	Frank Erwin Center, Austin, Texas, United States	Cole Miller	Ross Pearson	win	loss	13133	11884	Submission	Rear-Naked Choke	Herb Dean	2	1:49
14024	6	UFC Fight Night 22 - Marquardt vs. Palhares	2010-09-15	Frank Erwin Center, Austin, Texas, United States	Yves Edwards	John Gunderson	win	loss	344	7018	Decision	Unanimous	Kerry Hatley	3	5:00
14024	5	UFC Fight Night 22 - Marquardt vs. Palhares	2010-09-15	Frank Erwin Center, Austin, Texas, United States	Kyle Kingsbury	Jared Hamman	win	loss	16558	15949	Decision	Unanimous	Jon Schorle	3	5:00
14024	4	UFC Fight Night 22 - Marquardt vs. Palhares	2010-09-15	Frank Erwin Center, Austin, Texas, United States	David Branch	Tomasz Drwal	win	loss	32431	10047	Decision	Unanimous	Herb Dean	3	5:00
14024	3	UFC Fight Night 22 - Marquardt vs. Palhares	2010-09-15	Frank Erwin Center, Austin, Texas, United States	Rich Attonito	Rafael Natal	win	loss	11955	13968	Decision	Unanimous	Kerry Hatley	3	5:00
14024	2	UFC Fight Night 22 - Marquardt vs. Palhares	2010-09-15	Frank Erwin Center, Austin, Texas, United States	T.J. Waldburger	David Mitchell	win	loss	15125	16830	Decision	Unanimous	Jon Schorle	3	5:00
14024	1	UFC Fight Night 22 - Marquardt vs. Palhares	2010-09-15	Frank Erwin Center, Austin, Texas, United States	Brian Foster	Forrest Petz	win	loss	17723	4411	TKO	Punches	Herb Dean	1	1:07
13732	9	UFC 119 - Mir vs. Cro Cop	2010-09-25	Conseco Fieldhouse, Indianapolis, Indiana, United States	Chris Lytle	Matt Serra	win	loss	267	1305	Decision	Unanimous	Herb Dean	3	5:00
13732	8	UFC 119 - Mir vs. Cro Cop	2010-09-25	Conseco Fieldhouse, Indianapolis, Indiana, United States	Sean Sherk	Evan Dunham	win	loss	277	22038	Decision	Split	Rob Hinds	3	5:00
13732	7	UFC 119 - Mir vs. Cro Cop	2010-09-25	Conseco Fieldhouse, Indianapolis, Indiana, United States	Melvin Guillard	Jeremy Stephens	win	loss	7431	12179	Decision	Split	Josh Rosenthal	3	5:00
13732	6	UFC 119 - Mir vs. Cro Cop	2010-09-25	Conseco Fieldhouse, Indianapolis, Indiana, United States	C.B. Dollaway	Joe Doerksen	win	loss	22350	390	Submission	Guillotine Choke	Jeff Malott	1	2:13
1688	8	UFC 44 - Undisputed	2003-09-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Andrei Arlovski	Vladimir Matyushenko	win	loss	270	435	KO	Punch	N/A	1	1:59
13732	5	UFC 119 - Mir vs. Cro Cop	2010-09-25	Conseco Fieldhouse, Indianapolis, Indiana, United States	Matt Mitrione	Joey Beltran	win	loss	49519	21219	Decision	Unanimous	Herb Dean	3	5:00
13732	4	UFC 119 - Mir vs. Cro Cop	2010-09-25	Conseco Fieldhouse, Indianapolis, Indiana, United States	Thiago Tavares	Pat Audinwood	win	loss	4647	25476	Submission	Guillotine Choke	Rob Hinds	1	3:47
13732	3	UFC 119 - Mir vs. Cro Cop	2010-09-25	Conseco Fieldhouse, Indianapolis, Indiana, United States	Waylon Lowe	Steve Lopez	win	loss	18744	29129	Decision	Split	Herb Dean	3	5:00
13732	2	UFC 119 - Mir vs. Cro Cop	2010-09-25	Conseco Fieldhouse, Indianapolis, Indiana, United States	T.J. Grant	Julio Paulino	win	loss	15906	18106	Decision	Unanimous	Jeff Malott	3	5:00
13732	1	UFC 119 - Mir vs. Cro Cop	2010-09-25	Conseco Fieldhouse, Indianapolis, Indiana, United States	Sean McCorkle	Mark Hunt	win	loss	19640	10668	Submission	Straight Armbar	Josh Rosenthal	1	1:03
14025	10	UFC 120 - Bisping vs. Akiyama	2010-10-16	O2 Arena, London, England, England	Michael Bisping	Yoshihiro Akiyama	win	loss	10196	11895	Decision	Unanimous	Marc Goddard	3	5:00
14025	8	UFC 120 - Bisping vs. Akiyama	2010-10-16	O2 Arena, London, England, England	Mike Pyle	John Hathaway	win	loss	4577	16704	Decision	Unanimous	Leon Roberts	3	5:00
14025	7	UFC 120 - Bisping vs. Akiyama	2010-10-16	O2 Arena, London, England, England	Cheick Kongo	Travis Browne	draw	draw	2193	16785	Draw	Unanimous	Marc Goddard	3	5:00
14025	6	UFC 120 - Bisping vs. Akiyama	2010-10-16	O2 Arena, London, England, England	Claude Patrick	James Wilks	win	loss	4114	10569	Decision	Unanimous	Dan Miragliotta	3	5:00
14025	5	UFC 120 - Bisping vs. Akiyama	2010-10-16	O2 Arena, London, England, England	Alexander Gustafsson	Cyrille Diabate	win	loss	26162	2191	Submission	Rear-Naked Choke	Leon Roberts	2	2:41
14025	4	UFC 120 - Bisping vs. Akiyama	2010-10-16	O2 Arena, London, England, England	Rob Broughton	Vinicius Kappke de Queiroz	win	loss	10924	48631	Submission	Rear-Naked Choke	Marc Goddard	3	1:43
14025	3	UFC 120 - Bisping vs. Akiyama	2010-10-16	O2 Arena, London, England, England	Paul Sass	Mark Holst	win	loss	23531	14862	Submission	Triangle Choke	Dan Miragliotta	1	4:45
14025	1	UFC 120 - Bisping vs. Akiyama	2010-10-16	O2 Arena, London, England, England	Fabio Maldonado	James McSweeney	win	loss	16426	22111	TKO	Punches	Marc Goddard	3	0:48
14039	6	UFC 121 - Lesnar vs. Velasquez	2010-10-23	Honda Center, Anaheim, California, United States	Court McGee	Ryan Jensen	win	loss	34124	662	Submission	Arm-Triangle Choke	Herb Dean	3	1:21
14039	5	UFC 121 - Lesnar vs. Velasquez	2010-10-23	Honda Center, Anaheim, California, United States	Tom Lawlor	Patrick Cote	win	loss	21940	6612	Decision	Unanimous	John McCarthy	3	5:00
14039	3	UFC 121 - Lesnar vs. Velasquez	2010-10-23	Honda Center, Anaheim, California, United States	Sam Stout	Paul Taylor	win	loss	9901	6326	Decision	Split	Herb Dean	3	5:00
14039	2	UFC 121 - Lesnar vs. Velasquez	2010-10-23	Honda Center, Anaheim, California, United States	Chris Camozzi	Dongi Yang	win	loss	17224	23501	Decision	Split	Jason Herzog	3	5:00
14039	1	UFC 121 - Lesnar vs. Velasquez	2010-10-23	Honda Center, Anaheim, California, United States	Jon Madsen	Gilbert Yvel	win	loss	48820	323	TKO	Punches	John McCarthy	1	1:48
14039	11	UFC 121 - Lesnar vs. Velasquez	2010-10-23	Honda Center, Anaheim, California, United States	Cain Velasquez	Brock Lesnar	win	loss	19102	17522	TKO	Punches	Herb Dean	1	4:12
14039	10	UFC 121 - Lesnar vs. Velasquez	2010-10-23	Honda Center, Anaheim, California, United States	Jake Shields	Martin Kampmann	win	loss	502	5344	Decision	Split	John McCarthy	3	5:00
14039	9	UFC 121 - Lesnar vs. Velasquez	2010-10-23	Honda Center, Anaheim, California, United States	Diego Sanchez	Paulo Thiago	win	loss	4824	13336	Decision	Unanimous	Jason Herzog	3	5:00
14039	8	UFC 121 - Lesnar vs. Velasquez	2010-10-23	Honda Center, Anaheim, California, United States	Matt Hamill	Tito Ortiz	win	loss	16695	158	Decision	Unanimous	John McCarthy	3	5:00
14039	7	UFC 121 - Lesnar vs. Velasquez	2010-10-23	Honda Center, Anaheim, California, United States	Brendan Schaub	Gabriel Gonzaga	win	loss	33926	7306	Decision	Unanimous	Jason Herzog	3	5:00
14430	10	UFC 122 - Marquardt vs. Okami	2010-11-13	Konig Pilsener Arena, Oberhausen, Germany, Germany	Yushin Okami	Nate Marquardt	win	loss	5569	1712	Decision	Unanimous	Leon Roberts	3	5:00
14430	9	UFC 122 - Marquardt vs. Okami	2010-11-13	Konig Pilsener Arena, Oberhausen, Germany, Germany	Dennis Siver	Andre Winner	win	loss	9817	17034	Submission	Rear-Naked Choke	Kevin Mulhall	1	3:37
14430	8	UFC 122 - Marquardt vs. Okami	2010-11-13	Konig Pilsener Arena, Oberhausen, Germany, Germany	Amir Sadollah	Peter Sobotta	win	loss	34071	15816	Decision	Unanimous	Leon Roberts	3	5:00
14430	7	UFC 122 - Marquardt vs. Okami	2010-11-13	Konig Pilsener Arena, Oberhausen, Germany, Germany	Krzysztof Soszynski	Goran Reljic	win	loss	9178	10165	Decision	Unanimous	Marc Goddard	3	5:00
14430	6	UFC 122 - Marquardt vs. Okami	2010-11-13	Konig Pilsener Arena, Oberhausen, Germany, Germany	Duane Ludwig	Nick Osipczak	win	loss	101	30033	Decision	Split	Marc Goddard	3	5:00
14430	5	UFC 122 - Marquardt vs. Okami	2010-11-13	Konig Pilsener Arena, Oberhausen, Germany, Germany	Vladimir Matyushenko	Alexandre Ferreira	win	loss	435	1398	TKO	Punches and Elbows	Kevin Mulhall	1	2:20
14430	3	UFC 122 - Marquardt vs. Okami	2010-11-13	Konig Pilsener Arena, Oberhausen, Germany, Germany	Kyle Noke	Rob Kimmons	win	loss	7632	9863	Submission	Rear-Naked Choke	Kevin Mulhall	2	1:33
14430	2	UFC 122 - Marquardt vs. Okami	2010-11-13	Konig Pilsener Arena, Oberhausen, Germany, Germany	Karlos Vemola	Seth Petruzelli	win	loss	40238	2738	TKO	Punches and Elbows	Leon Roberts	1	3:46
14430	1	UFC 122 - Marquardt vs. Okami	2010-11-13	Konig Pilsener Arena, Oberhausen, Germany, Germany	Carlos Eduardo Rocha	Kris McCray	win	loss	35142	39432	Submission	Kneebar	Marc Goddard	1	2:21
14529	11	UFC 123 - Rampage vs. Machida	2010-11-20	The Palace of Auburn Hills, Auburn Hills, Michigan, United States	Quinton Jackson	Lyoto Machida	win	loss	348	7513	Decision	Split	Herb Dean	3	5:00
14529	10	UFC 123 - Rampage vs. Machida	2010-11-20	The Palace of Auburn Hills, Auburn Hills, Michigan, United States	B.J. Penn	Matt Hughes	win	loss	1307	232	KO	Punches	Dan Miragliotta	1	0:21
1688	7	UFC 44 - Undisputed	2003-09-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Tim Sylvia	Gan McGee	win	loss	1061	273	TKO	Punches	N/A	1	1:54
14529	9	UFC 123 - Rampage vs. Machida	2010-11-20	The Palace of Auburn Hills, Auburn Hills, Michigan, United States	Maiquel Falcao	Gerald Harris	win	loss	30304	17903	Decision	Unanimous	Dan Miragliotta	3	5:00
14529	8	UFC 123 - Rampage vs. Machida	2010-11-20	The Palace of Auburn Hills, Auburn Hills, Michigan, United States	Phil Davis	Tim Boetsch	win	loss	27802	19544	Submission	Kimura	Herb Dean	2	2:55
14529	5	UFC 123 - Rampage vs. Machida	2010-11-20	The Palace of Auburn Hills, Auburn Hills, Michigan, United States	Mark Munoz	Aaron Simpson	win	loss	22411	24986	Decision	Unanimous	Marc Fennel	3	5:00
14529	4	UFC 123 - Rampage vs. Machida	2010-11-20	The Palace of Auburn Hills, Auburn Hills, Michigan, United States	Dennis Hallman	Karo Parisyan	win	loss	275	5153	TKO	Punches	Dan Miragliotta	1	1:47
14529	3	UFC 123 - Rampage vs. Machida	2010-11-20	The Palace of Auburn Hills, Auburn Hills, Michigan, United States	Edson Barboza	Mike Lullo	win	loss	46259	36885	TKO	Leg Kicks	Marc Fennel	3	0:26
14529	2	UFC 123 - Rampage vs. Machida	2010-11-20	The Palace of Auburn Hills, Auburn Hills, Michigan, United States	Paul Kelly	T.J. O'Brien	win	loss	14028	22127	TKO	Elbows	Dan Miragliotta	2	3:16
14529	1	UFC 123 - Rampage vs. Machida	2010-11-20	The Palace of Auburn Hills, Auburn Hills, Michigan, United States	Nik Lentz	Tyson Griffin	win	loss	15058	11689	Decision	Split	Herb Dean	3	5:00
14462	11	UFC - The Ultimate Fighter 12 Finale	2010-12-04	Palms Casino Resort, Las Vegas, Nevada, United States	Jonathan Brookins	Michael Johnson	win	loss	17316	68788	Decision	Unanimous	Steve Mazzagatti	3	5:00
14462	10	UFC - The Ultimate Fighter 12 Finale	2010-12-04	Palms Casino Resort, Las Vegas, Nevada, United States	Stephan Bonnar	Igor Pokrajac	win	loss	3014	7621	Decision	Unanimous	Steve Mazzagatti	3	5:00
14462	9	UFC - The Ultimate Fighter 12 Finale	2010-12-04	Palms Casino Resort, Las Vegas, Nevada, United States	Demian Maia	Kendall Grove	win	loss	14637	10126	Decision	Unanimous	Josh Rosenthal	3	5:00
14462	8	UFC - The Ultimate Fighter 12 Finale	2010-12-04	Palms Casino Resort, Las Vegas, Nevada, United States	Rick Story	Johny Hendricks	win	loss	25989	24539	Decision	Unanimous	Steve Mazzagatti	3	5:00
14462	7	UFC - The Ultimate Fighter 12 Finale	2010-12-04	Palms Casino Resort, Las Vegas, Nevada, United States	Leonard Garcia	Nam Phan	win	loss	2815	5778	Decision	Split	Herb Dean	3	5:00
14462	6	UFC - The Ultimate Fighter 12 Finale	2010-12-04	Palms Casino Resort, Las Vegas, Nevada, United States	Cody McKenzie	Aaron Wilkinson	win	loss	22173	39265	Submission	Guillotine Choke	Chris Tognoni	1	2:03
14462	5	UFC - The Ultimate Fighter 12 Finale	2010-12-04	Palms Casino Resort, Las Vegas, Nevada, United States	Ian Loveland	Tyler Toner	win	loss	13793	13539	Decision	Unanimous	Josh Rosenthal	3	5:00
14462	3	UFC - The Ultimate Fighter 12 Finale	2010-12-04	Palms Casino Resort, Las Vegas, Nevada, United States	Nick Pace	Will Campuzano	win	loss	40956	35521	Submission	Pillory Choke	Chris Tognoni	3	4:33
14462	2	UFC - The Ultimate Fighter 12 Finale	2010-12-04	Palms Casino Resort, Las Vegas, Nevada, United States	Pablo Garza	Fredson Paixao	win	loss	35448	10432	KO	Flying Knee	Steve Mazzagatti	1	0:51
14462	1	UFC - The Ultimate Fighter 12 Finale	2010-12-04	Palms Casino Resort, Las Vegas, Nevada, United States	David Branch	Rich Attonito	win	loss	32431	11955	Decision	Unanimous	Josh Rosenthal	3	5:00
14504	11	UFC 124 - St. Pierre vs. Koscheck 2	2010-12-11	Bell Centre, Montreal, Quebec, Canada	Georges St. Pierre	Josh Koscheck	win	loss	3500	9418	Decision	Unanimous	Herb Dean	5	5:00
14504	10	UFC 124 - St. Pierre vs. Koscheck 2	2010-12-11	Bell Centre, Montreal, Quebec, Canada	Stefan Struve	Sean McCorkle	win	loss	15063	19640	TKO	Punches	Yves Lavigne	1	3:55
14504	9	UFC 124 - St. Pierre vs. Koscheck 2	2010-12-11	Bell Centre, Montreal, Quebec, Canada	Jim Miller	Charles Oliveira	win	loss	14463	30300	Submission	Kneebar	Dan Miragliotta	1	1:59
14504	7	UFC 124 - St. Pierre vs. Koscheck 2	2010-12-11	Bell Centre, Montreal, Quebec, Canada	Thiago Alves	John Howard	win	loss	5998	11798	Decision	Unanimous	Yves Lavigne	3	5:00
14504	6	UFC 124 - St. Pierre vs. Koscheck 2	2010-12-11	Bell Centre, Montreal, Quebec, Canada	Dan Miller	Joe Doerksen	win	loss	14464	390	Decision	Split	Marc-Andre Cote	3	5:00
14504	5	UFC 124 - St. Pierre vs. Koscheck 2	2010-12-11	Bell Centre, Montreal, Quebec, Canada	Mark Bocek	Dustin Hazelett	win	loss	9781	11481	Submission	Triangle Choke	Philippe Chartier	1	2:33
14504	4	UFC 124 - St. Pierre vs. Koscheck 2	2010-12-11	Bell Centre, Montreal, Quebec, Canada	Rafael Natal	Jesse Bongfeldt	draw	draw	13968	6809	Draw	Majority	Dan Miragliotta	3	5:00
14504	3	UFC 124 - St. Pierre vs. Koscheck 2	2010-12-11	Bell Centre, Montreal, Quebec, Canada	Sean Pierson	Matt Riddle	win	loss	573	34072	Decision	Unanimous	Yves Lavigne	3	5:00
14504	2	UFC 124 - St. Pierre vs. Koscheck 2	2010-12-11	Bell Centre, Montreal, Quebec, Canada	Ricardo Almeida	T.J. Grant	win	loss	11	15906	Decision	Unanimous	Philippe Chartier	3	5:00
14504	1	UFC 124 - St. Pierre vs. Koscheck 2	2010-12-11	Bell Centre, Montreal, Quebec, Canada	John Makdessi	Pat Audinwood	win	loss	37402	25476	Decision	Unanimous	Herb Dean	3	5:00
14530	11	UFC 125 - Resolution	2011-01-01	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Frankie Edgar	Gray Maynard	draw	draw	14204	15835	Draw	Split	Yves Lavigne	5	5:00
14530	10	UFC 125 - Resolution	2011-01-01	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brian Stann	Chris Leben	win	loss	14829	6258	TKO	Knee and Punches	Josh Rosenthal	1	3:37
14530	7	UFC 125 - Resolution	2011-01-01	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Clay Guida	Takanori Gomi	win	loss	8184	425	Submission	Guillotine Choke	Josh Rosenthal	2	4:27
14530	6	UFC 125 - Resolution	2011-01-01	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jeremy Stephens	Marcus Davis	win	loss	12179	8592	KO	Punch	Kim Winslow	3	2:33
14530	5	UFC 125 - Resolution	2011-01-01	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dustin Poirier	Josh Grispi	win	loss	50529	20416	Decision	Unanimous	Steve Mazzagatti	3	5:00
14530	4	UFC 125 - Resolution	2011-01-01	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brad Tavares	Phil Baroni	win	loss	33095	278	KO	Knees and Punches	Josh Rosenthal	1	4:20
1688	6	UFC 44 - Undisputed	2003-09-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jorge Rivera	David Loiseau	win	loss	2712	903	Decision	Unanimous	N/A	3	5:00
1688	5	UFC 44 - Undisputed	2003-09-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Rich Franklin	Edwin Dewees	win	loss	392	720	TKO	Punches and Knees	N/A	1	3:35
14530	3	UFC 125 - Resolution	2011-01-01	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Diego Nunes	Mike Thomas Brown	win	loss	25981	3069	Decision	Split	Yves Lavigne	3	5:00
14530	2	UFC 125 - Resolution	2011-01-01	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Daniel Roberts	Greg Soto	win	loss	23999	19080	Submission	Kimura	Kim Winslow	1	3:45
14530	1	UFC 125 - Resolution	2011-01-01	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jacob Volkmann	Antonio McKee	win	loss	24765	515	Decision	Split	Steve Mazzagatti	3	5:00
15120	11	UFC Fight Night 23 - Fight for the Troops 2	2011-01-22	Fort Hood, Killeen, Texas, United States	Melvin Guillard	Evan Dunham	win	loss	7431	22038	TKO	Knees	Mario Yamasaki	1	2:58
15120	10	UFC Fight Night 23 - Fight for the Troops 2	2011-01-22	Fort Hood, Killeen, Texas, United States	Matt Mitrione	Tim Hague	win	loss	49519	19599	TKO	Punches	Dan Miragliotta	1	2:59
15120	9	UFC Fight Night 23 - Fight for the Troops 2	2011-01-22	Fort Hood, Killeen, Texas, United States	Mark Hominick	George Roop	win	loss	4728	16415	TKO	Punches	Don Turnage	1	1:28
15120	8	UFC Fight Night 23 - Fight for the Troops 2	2011-01-22	Fort Hood, Killeen, Texas, United States	Pat Barry	Joey Beltran	win	loss	33342	21219	Decision	Unanimous	Mario Yamasaki	3	5:00
15120	7	UFC Fight Night 23 - Fight for the Troops 2	2011-01-22	Fort Hood, Killeen, Texas, United States	Matt Wiman	Cole Miller	win	loss	12236	13133	Decision	Unanimous	Dan Miragliotta	3	5:00
15120	5	UFC Fight Night 23 - Fight for the Troops 2	2011-01-22	Fort Hood, Killeen, Texas, United States	DaMarques Johnson	Michael Guymon	win	loss	12913	4015	Submission	Body Triangle	Don Turnage	1	3:22
15120	4	UFC Fight Night 23 - Fight for the Troops 2	2011-01-22	Fort Hood, Killeen, Texas, United States	Rani Yahya	Mike Thomas Brown	win	loss	10425	3069	Decision	Unanimous	Mario Yamasaki	3	5:00
15120	3	UFC Fight Night 23 - Fight for the Troops 2	2011-01-22	Fort Hood, Killeen, Texas, United States	Waylon Lowe	Willamy Freire	win	loss	18744	12553	Decision	Unanimous	Dan Miragliotta	3	5:00
15120	2	UFC Fight Night 23 - Fight for the Troops 2	2011-01-22	Fort Hood, Killeen, Texas, United States	Charlie Brenneman	Amilcar Alves	win	loss	23403	23841	Decision	Unanimous	Jon Schorle	3	5:00
15120	1	UFC Fight Night 23 - Fight for the Troops 2	2011-01-22	Fort Hood, Killeen, Texas, United States	Chris Cariaso	Will Campuzano	win	loss	16467	35521	Decision	Unanimous	Don Turnage	3	5:00
15104	11	UFC 126 - Silva vs. Belfort	2011-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Anderson Silva	Vitor Belfort	win	loss	1356	156	KO	Front Kick and Punches	Mario Yamasaki	1	3:25
15104	10	UFC 126 - Silva vs. Belfort	2011-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Forrest Griffin	Rich Franklin	win	loss	3526	392	Decision	Unanimous	Steve Mazzagatti	3	5:00
15104	9	UFC 126 - Silva vs. Belfort	2011-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jon Jones	Ryan Bader	win	loss	27944	22858	Submission	Guillotine Choke	Herb Dean	2	4:20
15104	8	UFC 126 - Silva vs. Belfort	2011-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jake Ellenberger	Carlos Eduardo Rocha	win	loss	13068	35142	Decision	Split	Kim Winslow	3	5:00
15104	7	UFC 126 - Silva vs. Belfort	2011-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Miguel Torres	Antonio Banuelos	win	loss	3006	2580	Decision	Unanimous	Mario Yamasaki	3	5:00
15104	6	UFC 126 - Silva vs. Belfort	2011-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Donald Cerrone	Paul Kelly	win	loss	15105	14028	Submission	Rear-Naked Choke	Steve Mazzagatti	2	3:48
15104	5	UFC 126 - Silva vs. Belfort	2011-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Chad Mendes	Michihiro Omigawa	win	loss	38393	13005	Decision	Unanimous	Herb Dean	3	5:00
15104	4	UFC 126 - Silva vs. Belfort	2011-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Demetrious Johnson	Norifumi Yamamoto	win	loss	45452	1354	Decision	Unanimous	Mario Yamasaki	3	5:00
15104	3	UFC 126 - Silva vs. Belfort	2011-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Paul Taylor	Gabe Ruediger	win	loss	6326	5542	KO	Head Kick	Kim Winslow	2	1:42
15104	2	UFC 126 - Silva vs. Belfort	2011-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Kyle Kingsbury	Ricardo Romero	win	loss	16558	23978	TKO	Knee to the Body and Punches	Steve Mazzagatti	1	0:21
15104	1	UFC 126 - Silva vs. Belfort	2011-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Mike Pierce	Kenny Robertson	win	loss	25415	31978	TKO	Punches	Herb Dean	2	0:29
15202	12	UFC 127 - Penn vs. Fitch	2011-02-27	Acer Arena, Sydney, New South Wales, Australia	Jon Fitch	B.J. Penn	draw	draw	4865	1307	Draw	Majority	Herb Dean	3	5:00
15202	11	UFC 127 - Penn vs. Fitch	2011-02-27	Acer Arena, Sydney, New South Wales, Australia	Michael Bisping	Jorge Rivera	win	loss	10196	2712	TKO	Punches	Marc Goddard	2	1:54
15202	10	UFC 127 - Penn vs. Fitch	2011-02-27	Acer Arena, Sydney, New South Wales, Australia	Dennis Siver	George Sotiropoulos	win	loss	9817	11702	Decision	Unanimous	Leon Roberts	3	5:00
15202	9	UFC 127 - Penn vs. Fitch	2011-02-27	Acer Arena, Sydney, New South Wales, Australia	Brian Ebersole	Chris Lytle	win	loss	3015	267	Decision	Unanimous	Steve Perceval	3	5:00
15202	8	UFC 127 - Penn vs. Fitch	2011-02-27	Acer Arena, Sydney, New South Wales, Australia	Kyle Noke	Chris Camozzi	win	loss	7632	17224	Submission	Rear-Naked Choke	John Sharp	1	1:35
15202	3	UFC 127 - Penn vs. Fitch	2011-02-27	Acer Arena, Sydney, New South Wales, Australia	Tiequan Zhang	Jason Reinhardt	win	loss	16984	2347	Submission	Guillotine Choke	Steve Perceval	1	0:48
15559	3	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	Johny Hendricks	T.J. Waldburger	win	loss	24539	15125	TKO	Punches	Mario Yamasaki	1	1:35
15559	2	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	Aaron Simpson	Mario Miranda	win	loss	24986	23852	Decision	Unanimous	Dan Miragliotta	3	5:00
1688	4	UFC 44 - Undisputed	2003-09-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Karo Parisyan	Dave Strasser	win	loss	5153	615	Submission	Kimura	N/A	1	3:52
15559	1	UFC Fight Night 24 - Nogueira vs. Davis	2011-03-26	Key Arena, Seattle, Washington, United States	Nik Lentz	Waylon Lowe	win	loss	15058	18744	Submission	Guillotine Choke	Anthony Hamlett	3	2:24
15427	12	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	Georges St. Pierre	Jake Shields	win	loss	3500	502	Decision	Unanimous	Herb Dean	5	5:00
15427	11	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	Jose Aldo	Mark Hominick	win	loss	11506	4728	Decision	Unanimous	John McCarthy	5	5:00
15427	10	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	Lyoto Machida	Randy Couture	win	loss	7513	166	KO	Front Kick	Yves Lavigne	2	1:05
15427	9	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	Vladimir Matyushenko	Jason Brilz	win	loss	435	1927	KO	Punches	Dan Miragliotta	1	0:20
15427	8	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	Benson Henderson	Mark Bocek	win	loss	20548	9781	Decision	Unanimous	Yves Lavigne	3	5:00
15427	7	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	Rory MacDonald	Nate Diaz	win	loss	14018	11451	Decision	Unanimous	John McCarthy	3	5:00
15427	6	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	Jake Ellenberger	Sean Pierson	win	loss	13068	573	KO	Punch	Herb Dean	1	2:42
15427	5	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	Claude Patrick	Daniel Roberts	win	loss	4114	23999	Decision	Unanimous	Dan Miragliotta	3	5:00
15427	4	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	Ivan Menjivar	Charlie Valencia	win	loss	993	503	TKO	Elbow and Punches	John McCarthy	1	1:30
15427	3	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	Jason MacDonald	Ryan Jensen	win	loss	4389	662	Submission	Triangle Choke	Herb Dean	1	1:37
15427	2	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	John Makdessi	Kyle Watson	win	loss	37402	7127	KO	Spinning Back Fist	Dan Miragliotta	3	1:27
15427	1	UFC 129 - St. Pierre vs. Shields	2011-04-30	Rogers Centre, Toronto, Ontario, Canada	Pablo Garza	Yves Jabouin	win	loss	35448	1693	Submission	Flying Triangle Choke	Yves Lavigne	1	4:31
15685	10	UFC 130 - Rampage vs. Hamill	2011-05-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Quinton Jackson	Matt Hamill	win	loss	348	16695	Decision	Unanimous	Herb Dean	3	5:00
15685	9	UFC 130 - Rampage vs. Hamill	2011-05-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Frank Mir	Roy Nelson	win	loss	2329	10249	Decision	Unanimous	Josh Rosenthal	3	5:00
15685	8	UFC 130 - Rampage vs. Hamill	2011-05-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Travis Browne	Stefan Struve	win	loss	16785	15063	KO	Punch	Steve Mazzagatti	1	4:11
15685	7	UFC 130 - Rampage vs. Hamill	2011-05-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rick Story	Thiago Alves	win	loss	25989	5998	Decision	Unanimous	Kim Winslow	3	5:00
15685	6	UFC 130 - Rampage vs. Hamill	2011-05-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brian Stann	Jorge Santiago	win	loss	14829	5735	TKO	Punches	Herb Dean	2	4:29
15685	5	UFC 130 - Rampage vs. Hamill	2011-05-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Demetrious Johnson	Miguel Torres	win	loss	45452	3006	Decision	Unanimous	Josh Rosenthal	3	5:00
15685	4	UFC 130 - Rampage vs. Hamill	2011-05-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tim Boetsch	Kendall Grove	win	loss	19544	10126	Decision	Unanimous	Steve Mazzagatti	3	5:00
15685	3	UFC 130 - Rampage vs. Hamill	2011-05-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Gleison Tibau	Rafaello Oliveira	win	loss	5993	37260	Submission	Rear-Naked Choke	Kim Winslow	2	3:28
15685	2	UFC 130 - Rampage vs. Hamill	2011-05-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Michael McDonald	Chris Cariaso	win	loss	30297	16467	Decision	Split	Josh Rosenthal	3	5:00
15685	1	UFC 130 - Rampage vs. Hamill	2011-05-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Renan Barao	Cole Escovedo	win	loss	23156	2291	Decision	Unanimous	Steve Mazzagatti	3	5:00
15811	11	UFC - The Ultimate Fighter 13 Finale	2011-06-04	Palms Casino Resort, Las Vegas, Nevada, United States	Tony Ferguson	Ramsey Nijem	win	loss	31239	36963	KO	Punches	Josh Rosenthal	1	3:54
15811	10	UFC - The Ultimate Fighter 13 Finale	2011-06-04	Palms Casino Resort, Las Vegas, Nevada, United States	Clay Guida	Anthony Pettis	win	loss	8184	26627	Decision	Unanimous	Steve Mazzagatti	3	5:00
15811	9	UFC - The Ultimate Fighter 13 Finale	2011-06-04	Palms Casino Resort, Las Vegas, Nevada, United States	Ed Herman	Tim Credeur	win	loss	6561	1804	TKO	Punches	Herb Dean	1	0:48
15811	8	UFC - The Ultimate Fighter 13 Finale	2011-06-04	Palms Casino Resort, Las Vegas, Nevada, United States	Kyle Kingsbury	Fabio Maldonado	win	loss	16558	16426	Decision	Unanimous	Chris Tognoni	3	5:00
15811	7	UFC - The Ultimate Fighter 13 Finale	2011-06-04	Palms Casino Resort, Las Vegas, Nevada, United States	Chris Cope	Chuck O'Neil	win	loss	25784	15855	Decision	Unanimous	Josh Rosenthal	3	5:00
15811	6	UFC - The Ultimate Fighter 13 Finale	2011-06-04	Palms Casino Resort, Las Vegas, Nevada, United States	Jeremy Stephens	Daniel Downes	win	loss	12179	41666	Decision	Unanimous	Steve Mazzagatti	3	5:00
15811	5	UFC - The Ultimate Fighter 13 Finale	2011-06-04	Palms Casino Resort, Las Vegas, Nevada, United States	George Roop	Josh Grispi	win	loss	16415	20416	KO	Punch to the Body	Herb Dean	3	3:14
15811	4	UFC - The Ultimate Fighter 13 Finale	2011-06-04	Palms Casino Resort, Las Vegas, Nevada, United States	Shamar Bailey	Ryan McGillivray	win	loss	20744	18533	Decision	Unanimous	Chris Tognoni	3	5:00
15811	3	UFC - The Ultimate Fighter 13 Finale	2011-06-04	Palms Casino Resort, Las Vegas, Nevada, United States	Clay Harvison	Justin Edwards	win	loss	21131	37452	Decision	Split	Josh Rosenthal	3	5:00
15811	2	UFC - The Ultimate Fighter 13 Finale	2011-06-04	Palms Casino Resort, Las Vegas, Nevada, United States	Scott Jorgensen	Ken Stone	win	loss	16852	24913	KO	Punches	Steve Mazzagatti	1	4:01
6779	1	UFC 87 - Seek and Destroy	2008-08-09	Target Center, Minneapolis, Minnesota, United States	Ben Saunders	Ryan Thomas	win	loss	10339	20224	Submission	Armbar	Daryl Guthmiller	2	2:28
7837	9	UFC 88 - Breakthrough	2008-09-06	Philips Arena, Atlanta, Georgia, United States	Rashad Evans	Chuck Liddell	win	loss	10200	192	KO	Punch	Herb Dean	2	1:51
15811	1	UFC - The Ultimate Fighter 13 Finale	2011-06-04	Palms Casino Resort, Las Vegas, Nevada, United States	Reuben Duran	Francisco Rivera	win	loss	26602	11908	Submission	Rear-Naked Choke	Herb Dean	3	1:57
15720	12	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Junior dos Santos	Shane Carwin	win	loss	17272	14013	Decision	Unanimous	Herb Dean	3	5:00
15720	11	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Kenny Florian	Diego Nunes	win	loss	8021	25981	Decision	Unanimous	John McCarthy	3	5:00
15720	10	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Mark Munoz	Demian Maia	win	loss	22411	14637	Decision	Unanimous	Jerin Valel	3	5:00
15720	9	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Dave Herman	John Olav Einemo	win	loss	19720	2873	TKO	Punches	Kevin Dornan	2	3:19
15720	8	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Donald Cerrone	Vagner Rocha	win	loss	15105	43107	Decision	Unanimous	Herb Dean	3	5:00
15720	7	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Sam Stout	Yves Edwards	win	loss	9901	344	KO	Punch	John McCarthy	1	3:52
15720	6	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Chris Weidman	Jesse Bongfeldt	win	loss	42804	6809	Submission	Guillotine Choke	Jerin Valel	1	4:54
15720	5	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Krzysztof Soszynski	Mike Massenzio	win	loss	9178	12852	Decision	Unanimous	Kevin Dornan	3	5:00
15720	4	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Nick Ring	James Head	win	loss	6748	23253	Submission	Rear-Naked Choke	Herb Dean	3	3:33
15720	3	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Dustin Poirier	Jason Young	win	loss	50529	17758	Decision	Unanimous	John McCarthy	3	5:00
15720	2	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Joey Beltran	Aaron Rosa	win	loss	21219	15129	TKO	Punches	Jerin Valel	3	1:26
15720	1	UFC 131 - Dos Santos vs. Carwin	2011-06-11	Rogers Arena, Vancouver, British Columbia, Colombia	Darren Elkins	Michihiro Omigawa	win	loss	22094	13005	Decision	Unanimous	Kevin Dornan	3	5:00
16309	11	UFC Live 4 - Kongo vs. Barry	2011-06-26	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Cheick Kongo	Pat Barry	win	loss	2193	33342	KO	Punch	Dan Miragliotta	1	2:39
16309	10	UFC Live 4 - Kongo vs. Barry	2011-06-26	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Charlie Brenneman	Rick Story	win	loss	23403	25989	Decision	Unanimous	Mark Matheny	3	5:00
16309	9	UFC Live 4 - Kongo vs. Barry	2011-06-26	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Matt Brown	John Howard	win	loss	14310	11798	Decision	Unanimous	Dan Miragliotta	3	5:00
16309	8	UFC Live 4 - Kongo vs. Barry	2011-06-26	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Matt Mitrione	Christian Morecraft	win	loss	49519	34376	KO	Punches	Mark Matheny	2	4:28
16309	7	UFC Live 4 - Kongo vs. Barry	2011-06-26	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Tyson Griffin	Manny Gamburyan	win	loss	11689	5185	Decision	Majority	Chip Snider	3	5:00
16309	6	UFC Live 4 - Kongo vs. Barry	2011-06-26	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Javier Vazquez	Joe Stevenson	win	loss	511	65	Decision	Unanimous	Keith Peterson	3	5:00
16309	4	UFC Live 4 - Kongo vs. Barry	2011-06-26	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Rich Attonito	Daniel Roberts	win	loss	11955	23999	Decision	Unanimous	Keith Peterson	3	5:00
16309	2	UFC Live 4 - Kongo vs. Barry	2011-06-26	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Ricardo Lamas	Matt Grice	win	loss	32051	14539	TKO	Head Kick and Punches	Keith Peterson	1	4:41
16309	1	UFC Live 4 - Kongo vs. Barry	2011-06-26	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Michael Johnson	Edward Faaloloto	win	loss	68788	55070	TKO	Punches	Mark Matheny	1	4:42
16495	11	UFC 132 - Cruz vs. Faber 2	2011-07-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dominick Cruz	Urijah Faber	win	loss	12107	8847	Decision	Unanimous	Steve Mazzagatti	5	5:00
16495	10	UFC 132 - Cruz vs. Faber 2	2011-07-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chris Leben	Wanderlei Silva	win	loss	6258	209	KO	Punches	Josh Rosenthal	1	0:27
16495	9	UFC 132 - Cruz vs. Faber 2	2011-07-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dennis Siver	Matt Wiman	win	loss	9817	12236	Decision	Unanimous	Yves Lavigne	3	5:00
16495	8	UFC 132 - Cruz vs. Faber 2	2011-07-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tito Ortiz	Ryan Bader	win	loss	158	22858	Submission	Guillotine Choke	Mario Yamasaki	1	1:56
16495	7	UFC 132 - Cruz vs. Faber 2	2011-07-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Carlos Condit	Dong Hyun Kim	win	loss	6765	16374	TKO	Flying Knee and Punches	Steve Mazzagatti	1	2:58
16495	6	UFC 132 - Cruz vs. Faber 2	2011-07-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Melvin Guillard	Shane Roller	win	loss	7431	24540	KO	Punches	Josh Rosenthal	1	2:12
16495	5	UFC 132 - Cruz vs. Faber 2	2011-07-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rafael dos Anjos	George Sotiropoulos	win	loss	11675	11702	KO	Punch	Yves Lavigne	1	0:59
16495	4	UFC 132 - Cruz vs. Faber 2	2011-07-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brian Bowles	Takeya Mizugaki	win	loss	18944	12074	Decision	Unanimous	Mario Yamasaki	3	5:00
1688	3	UFC 44 - Undisputed	2003-09-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Josh Thomson	Gerald Strebendt	win	loss	2394	2327	KO	Punches	N/A	1	2:45
1688	2	UFC 44 - Undisputed	2003-09-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Nick Diaz	Jeremy Jackson	win	loss	2831	2651	Submission	Armbar	N/A	3	2:04
1688	1	UFC 44 - Undisputed	2003-09-26	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Hermes Franca	Caol Uno	win	loss	3068	283	KO	Punch	N/A	2	2:46
1863	8	UFC 45 - Revolution	2003-11-21	Mohegan Sun Arena, Uncasville, Conneticut, United States	Matt Hughes	Frank Trigg	win	loss	232	311	Submission	Rear-Naked Choke	N/A	1	3:54
16495	3	UFC 132 - Cruz vs. Faber 2	2011-07-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Aaron Simpson	Brad Tavares	win	loss	24986	33095	Decision	Unanimous	Josh Rosenthal	3	5:00
16495	2	UFC 132 - Cruz vs. Faber 2	2011-07-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Anthony Njokuani	Andre Winner	win	loss	7540	17034	Decision	Unanimous	Yves Lavigne	3	5:00
16495	1	UFC 132 - Cruz vs. Faber 2	2011-07-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jeff Hougland	Donny Walker	win	loss	4870	11486	Decision	Unanimous	Mario Yamasaki	3	5:00
16787	11	UFC 133 - Evans vs. Ortiz 2	2011-08-06	Wells Fargo Center, Philadelphia, Pennsylvania, United States	Rashad Evans	Tito Ortiz	win	loss	10200	158	TKO	Knee to the Body and Punches	Dan Miragliotta	2	4:48
16787	10	UFC 133 - Evans vs. Ortiz 2	2011-08-06	Wells Fargo Center, Philadelphia, Pennsylvania, United States	Vitor Belfort	Yoshihiro Akiyama	win	loss	156	11895	KO	Punches	Mario Yamasaki	1	1:52
16787	9	UFC 133 - Evans vs. Ortiz 2	2011-08-06	Wells Fargo Center, Philadelphia, Pennsylvania, United States	Brian Ebersole	Dennis Hallman	win	loss	3015	275	TKO	Elbows	Kevin Mulhall	1	4:28
16787	8	UFC 133 - Evans vs. Ortiz 2	2011-08-06	Wells Fargo Center, Philadelphia, Pennsylvania, United States	Costas Philippou	Jorge Rivera	win	loss	32432	2712	Decision	Split	Mario Yamasaki	3	5:00
16787	7	UFC 133 - Evans vs. Ortiz 2	2011-08-06	Wells Fargo Center, Philadelphia, Pennsylvania, United States	Rory MacDonald	Mike Pyle	win	loss	14018	4577	TKO	Punches	Kevin Mulhall	1	3:54
16787	6	UFC 133 - Evans vs. Ortiz 2	2011-08-06	Wells Fargo Center, Philadelphia, Pennsylvania, United States	Alexander Gustafsson	Matt Hamill	win	loss	26162	16695	TKO	Punches and Elbows	Dan Miragliotta	2	3:41
16787	5	UFC 133 - Evans vs. Ortiz 2	2011-08-06	Wells Fargo Center, Philadelphia, Pennsylvania, United States	Chad Mendes	Rani Yahya	win	loss	38393	10425	Decision	Unanimous	Keith Peterson	3	5:00
16787	4	UFC 133 - Evans vs. Ortiz 2	2011-08-06	Wells Fargo Center, Philadelphia, Pennsylvania, United States	Ivan Menjivar	Nick Pace	win	loss	993	40956	Decision	Unanimous	Keith Peterson	3	5:00
16787	3	UFC 133 - Evans vs. Ortiz 2	2011-08-06	Wells Fargo Center, Philadelphia, Pennsylvania, United States	Johny Hendricks	Mike Pierce	win	loss	24539	25415	Decision	Split	Mario Yamasaki	3	5:00
16787	2	UFC 133 - Evans vs. Ortiz 2	2011-08-06	Wells Fargo Center, Philadelphia, Pennsylvania, United States	Mike Thomas Brown	Nam Phan	win	loss	3069	5778	Decision	Unanimous	Keith Peterson	3	5:00
16787	1	UFC 133 - Evans vs. Ortiz 2	2011-08-06	Wells Fargo Center, Philadelphia, Pennsylvania, United States	Rafael Natal	Paul Bradley	win	loss	13968	19726	Decision	Unanimous	Kevin Mulhall	3	5:00
16967	12	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Chris Lytle	Dan Hardy	win	loss	267	10629	Submission	Guillotine Choke	Herb Dean	3	4:16
16967	11	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Benson Henderson	Jim Miller	win	loss	20548	14463	Decision	Unanimous	Josh Rosenthal	3	5:00
16967	10	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Donald Cerrone	Charles Oliveira	win	loss	15105	30300	TKO	Punches	Mario Yamasaki	1	3:01
16967	9	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Duane Ludwig	Amir Sadollah	win	loss	101	34071	Decision	Unanimous	Rob Hinds	3	5:00
16967	8	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Jared Hamman	C.B. Dollaway	win	loss	15949	22350	TKO	Punches	Herb Dean	2	3:38
16967	7	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Joseph Benavidez	Eddie Wineland	win	loss	15008	4173	Decision	Unanimous	Josh Rosenthal	3	5:00
16967	6	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Ed Herman	Kyle Noke	win	loss	6561	7632	Submission	Inverted Heel Hook	Mario Yamasaki	1	4:15
16967	5	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Ronny Markes	Karlos Vemola	win	loss	21175	40238	Decision	Unanimous	Rob Hinds	3	5:00
16967	4	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Jim Hettes	Alex Caceres	win	loss	48046	41586	Submission	Rear-Naked Choke	Herb Dean	2	3:12
16967	3	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Cole Miller	T.J. O'Brien	win	loss	13133	22127	Submission	Guillotine Choke	Josh Rosenthal	2	2:38
16967	2	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Jacob Volkmann	Danny Castillo	win	loss	24765	26070	Decision	Unanimous	Mario Yamasaki	3	5:00
16967	1	UFC Live 5 - Hardy vs. Lytle	2011-08-14	Bradley Center, Milwaukee, Wisconsin, United States	Edwin Figueroa	Jason Reinhardt	win	loss	22490	2347	TKO	Elbows and Punches	Rob Hinds	2	0:50
15454	12	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Anderson Silva	Yushin Okami	win	loss	1356	5569	TKO	Punches	Herb Dean	2	2:04
15454	11	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Mauricio Rua	Forrest Griffin	win	loss	5707	3526	KO	Punches	Marc Goddard	1	1:53
1863	5	UFC 45 - Revolution	2003-11-21	Mohegan Sun Arena, Uncasville, Conneticut, United States	Evan Tanner	Phil Baroni	win	loss	212	278	TKO	Punches	N/A	1	4:42
15454	10	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Edson Barboza	Ross Pearson	win	loss	46259	11884	Decision	Split	Mario Yamasaki	3	5:00
15454	9	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Antonio Rodrigo Nogueira	Brendan Schaub	win	loss	1440	33926	KO	Punches	Herb Dean	1	3:09
15454	8	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Stanislav Nedkov	Luiz Cane	win	loss	27115	17559	TKO	Punches	Mario Yamasaki	1	4:20
15454	7	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Thiago Tavares	Spencer Fisher	win	loss	4647	5118	TKO	Punches	Marc Goddard	2	2:51
15454	6	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Rousimar Palhares	Dan Miller	win	loss	16286	14464	Decision	Unanimous	Herb Dean	3	5:00
15454	5	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Paulo Thiago	David Mitchell	win	loss	13336	16830	Decision	Unanimous	Mario Yamasaki	3	5:00
15454	4	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Raphael Assuncao	Johnny Eduardo	win	loss	9574	426	Decision	Unanimous	Marc Goddard	3	5:00
15454	3	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Erick Silva	Luis Ramos	win	loss	15009	3217	TKO	Punches	Herb Dean	1	0:40
15454	2	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Iuri Alcantara	Felipe Arantes	win	loss	16129	31372	Decision	Unanimous	Mario Yamasaki	3	5:00
15454	1	UFC 134 - Silva vs. Okami	2011-08-27	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Yves Jabouin	Ian Loveland	win	loss	1693	13793	Decision	Split	Marc Goddard	3	5:00
16712	8	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	Vagner Rocha	Cody McKenzie	win	loss	43107	22173	Submission	Rear-Naked Choke	Yves Lavigne	2	3:49
16712	7	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	Evan Dunham	Shamar Bailey	win	loss	22038	20744	Decision	Unanimous	Kevin Mulhall	3	5:00
16712	4	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	Seth Baczynski	Clay Harvison	win	loss	13827	21131	Submission	Rear-Naked Choke	Yves Lavigne	2	1:12
16712	3	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	T.J. Waldburger	Mike Stumpf	win	loss	15125	20967	Submission	Triangle Choke	Dan Miragliotta	1	3:52
16712	2	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	Robbie Peralta	Mike Lullo	win	loss	21339	36885	Decision	Unanimous	Myron Gaudet	3	5:00
16712	1	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	Justin Edwards	Jorge Lopez	win	loss	37452	23271	Decision	Unanimous	Kevin Mulhall	3	5:00
16712	12	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	Jake Ellenberger	Jake Shields	win	loss	13068	502	TKO	Knee and Punches	Kevin Mulhall	1	0:53
16712	11	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	Court McGee	Dongi Yang	win	loss	34124	23501	Decision	Unanimous	Yves Lavigne	3	5:00
16712	10	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	Erik Koch	Jonathan Brookins	win	loss	23390	17316	Decision	Unanimous	Myron Gaudet	3	5:00
16712	9	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	Alan Belcher	Jason MacDonald	win	loss	10967	4389	Submission	Punches	Dan Miragliotta	1	3:48
17043	8	UFC 135 - Jones vs. Rampage	2011-09-24	Pepsi Center, Denver, Colorado, United States	Mark Hunt	Ben Rothwell	win	loss	10668	2262	Decision	Unanimous	Adam Martinez	3	5:00
17043	7	UFC 135 - Jones vs. Rampage	2011-09-24	Pepsi Center, Denver, Colorado, United States	Travis Browne	Rob Broughton	win	loss	16785	10924	Decision	Unanimous	Josh Rosenthal	3	5:00
17043	6	UFC 135 - Jones vs. Rampage	2011-09-24	Pepsi Center, Denver, Colorado, United States	Nate Diaz	Takanori Gomi	win	loss	11451	425	Submission	Armbar	Mario Yamasaki	1	4:27
17043	5	UFC 135 - Jones vs. Rampage	2011-09-24	Pepsi Center, Denver, Colorado, United States	Tony Ferguson	Aaron Riley	win	loss	31239	1567	TKO	Jaw Injury	Tom Johnson	1	5:00
17043	4	UFC 135 - Jones vs. Rampage	2011-09-24	Pepsi Center, Denver, Colorado, United States	Tim Boetsch	Nick Ring	win	loss	19544	6748	Decision	Unanimous	Mario Yamasaki	3	5:00
17043	3	UFC 135 - Jones vs. Rampage	2011-09-24	Pepsi Center, Denver, Colorado, United States	Junior Assuncao	Eddie Yagin	win	loss	10380	2825	Decision	Unanimous	Josh Rosenthal	3	5:00
17043	2	UFC 135 - Jones vs. Rampage	2011-09-24	Pepsi Center, Denver, Colorado, United States	Takeya Mizugaki	Cole Escovedo	win	loss	12074	2291	TKO	Punches	Adam Martinez	2	4:30
17043	1	UFC 135 - Jones vs. Rampage	2011-09-24	Pepsi Center, Denver, Colorado, United States	James Te Huna	Ricardo Romero	win	loss	9033	23978	KO	Punches	Tim Mills	1	0:47
17789	10	UFC Live 6 - Cruz vs. Johnson	2011-10-01	Verizon Center, Washington, D.C., United States	Dominick Cruz	Demetrious Johnson	win	loss	12107	45452	Decision	Unanimous	Kevin Mulhall	5	5:00
17789	9	UFC Live 6 - Cruz vs. Johnson	2011-10-01	Verizon Center, Washington, D.C., United States	Stefan Struve	Pat Barry	win	loss	15063	33342	Submission	Triangle Choke	Dan Miragliotta	2	3:22
17789	8	UFC Live 6 - Cruz vs. Johnson	2011-10-01	Verizon Center, Washington, D.C., United States	Anthony Johnson	Charlie Brenneman	win	loss	17662	23403	KO	Head Kick	Mario Yamasaki	1	2:49
17789	7	UFC Live 6 - Cruz vs. Johnson	2011-10-01	Verizon Center, Washington, D.C., United States	Matt Wiman	Mac Danzig	win	loss	12236	3396	Decision	Unanimous	Fernando Yamasaki	3	5:00
17789	6	UFC Live 6 - Cruz vs. Johnson	2011-10-01	Verizon Center, Washington, D.C., United States	Yves Edwards	Rafaello Oliveira	win	loss	344	37260	TKO	Punches	Mario Yamasaki	2	2:44
1863	4	UFC 45 - Revolution	2003-11-21	Mohegan Sun Arena, Uncasville, Conneticut, United States	Robbie Lawler	Chris Lytle	win	loss	2245	267	Decision	Unanimous	N/A	3	5:00
1863	3	UFC 45 - Revolution	2003-11-21	Mohegan Sun Arena, Uncasville, Conneticut, United States	Pedro Rizzo	Ricco Rodriguez	win	loss	208	8	Decision	Unanimous	N/A	3	5:00
1863	1	UFC 45 - Revolution	2003-11-21	Mohegan Sun Arena, Uncasville, Conneticut, United States	Yves Edwards	Nick Agallar	win	loss	344	2295	TKO	Punches	N/A	2	2:14
1943	8	UFC 46 - Supernatural	2004-01-31	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Vitor Belfort	Randy Couture	win	loss	156	166	TKO	Cut	N/A	1	0:49
17789	5	UFC Live 6 - Cruz vs. Johnson	2011-10-01	Verizon Center, Washington, D.C., United States	Paul Sass	Michael Johnson	win	loss	23531	68788	Submission	Heel Hook	Dan Miragliotta	1	3:00
17789	4	UFC Live 6 - Cruz vs. Johnson	2011-10-01	Verizon Center, Washington, D.C., United States	Mike Easton	Byron Bloodworth	win	loss	9626	17355	TKO	Knee to the Body and Punches	Kevin Mulhall	2	4:52
17789	2	UFC Live 6 - Cruz vs. Johnson	2011-10-01	Verizon Center, Washington, D.C., United States	Josh Neer	Keith Wisniewski	win	loss	9179	2095	TKO	Doctor Stoppage	Dan Miragliotta	2	5:00
17789	1	UFC Live 6 - Cruz vs. Johnson	2011-10-01	Verizon Center, Washington, D.C., United States	Walel Watson	Joseph Sandoval	win	loss	36403	63897	TKO	Punches	Mario Yamasaki	1	1:17
17391	11	UFC 136 - Edgar vs. Maynard 3	2011-10-08	Toyota Center, Houston, Texas, United States	Frankie Edgar	Gray Maynard	win	loss	14204	15835	KO	Punches	Josh Rosenthal	4	3:54
17391	10	UFC 136 - Edgar vs. Maynard 3	2011-10-08	Toyota Center, Houston, Texas, United States	Jose Aldo	Kenny Florian	win	loss	11506	8021	Decision	Unanimous	Dan Miragliotta	5	5:00
17391	9	UFC 136 - Edgar vs. Maynard 3	2011-10-08	Toyota Center, Houston, Texas, United States	Chael Sonnen	Brian Stann	win	loss	4112	14829	Submission	Arm-Triangle Choke	Kerry Hatley	2	3:51
17391	8	UFC 136 - Edgar vs. Maynard 3	2011-10-08	Toyota Center, Houston, Texas, United States	Nam Phan	Leonard Garcia	win	loss	5778	2815	Decision	Unanimous	Jacob Montalvo	3	5:00
17391	7	UFC 136 - Edgar vs. Maynard 3	2011-10-08	Toyota Center, Houston, Texas, United States	Joe Lauzon	Melvin Guillard	win	loss	4923	7431	Submission	Rear-Naked Choke	Kerry Hatley	1	0:47
17391	6	UFC 136 - Edgar vs. Maynard 3	2011-10-08	Toyota Center, Houston, Texas, United States	Demian Maia	Jorge Santiago	win	loss	14637	5735	Decision	Unanimous	Jacob Montalvo	3	5:00
17391	5	UFC 136 - Edgar vs. Maynard 3	2011-10-08	Toyota Center, Houston, Texas, United States	Anthony Pettis	Jeremy Stephens	win	loss	26627	12179	Decision	Split	Kerry Hatley	3	5:00
17391	4	UFC 136 - Edgar vs. Maynard 3	2011-10-08	Toyota Center, Houston, Texas, United States	Stipe Miocic	Joey Beltran	win	loss	39537	21219	Decision	Unanimous	Josh Rosenthal	3	5:00
17391	3	UFC 136 - Edgar vs. Maynard 3	2011-10-08	Toyota Center, Houston, Texas, United States	Darren Elkins	Tiequan Zhang	win	loss	22094	16984	Decision	Unanimous	Dan Miragliotta	3	5:00
17391	2	UFC 136 - Edgar vs. Maynard 3	2011-10-08	Toyota Center, Houston, Texas, United States	Aaron Simpson	Eric Schafer	win	loss	24986	13275	Decision	Unanimous	Jacob Montalvo	3	5:00
17391	1	UFC 136 - Edgar vs. Maynard 3	2011-10-08	Toyota Center, Houston, Texas, United States	Mike Massenzio	Steve Cantwell	win	loss	12852	12785	Decision	Unanimous	Kerry Hatley	3	5:00
17377	11	UFC 137 - Penn vs. Diaz	2011-10-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Nick Diaz	B.J. Penn	win	loss	2831	1307	Decision	Unanimous	Josh Rosenthal	3	5:00
17377	10	UFC 137 - Penn vs. Diaz	2011-10-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Cheick Kongo	Matt Mitrione	win	loss	2193	49519	Decision	Unanimous	Herb Dean	3	5:00
17377	9	UFC 137 - Penn vs. Diaz	2011-10-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Roy Nelson	Mirko Filipovic	win	loss	10249	2326	TKO	Punches	Steve Mazzagatti	3	1:30
17377	8	UFC 137 - Penn vs. Diaz	2011-10-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Scott Jorgensen	Jeff Curran	win	loss	16852	770	Decision	Unanimous	Kim Winslow	3	5:00
17377	7	UFC 137 - Penn vs. Diaz	2011-10-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Hatsu Hioki	George Roop	win	loss	5466	16415	Decision	Split	Josh Rosenthal	3	5:00
17377	6	UFC 137 - Penn vs. Diaz	2011-10-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Donald Cerrone	Dennis Siver	win	loss	15105	9817	Submission	Rear-Naked Choke	Herb Dean	1	2:22
17377	5	UFC 137 - Penn vs. Diaz	2011-10-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Bart Palaszewski	Tyson Griffin	win	loss	3496	11689	KO	Punches	Steve Mazzagatti	1	2:45
17377	4	UFC 137 - Penn vs. Diaz	2011-10-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Brandon Vera	Eliot Marshall	win	loss	4886	15104	Decision	Unanimous	Kim Winslow	3	5:00
17377	3	UFC 137 - Penn vs. Diaz	2011-10-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Ramsey Nijem	Daniel Downes	win	loss	36963	41666	Decision	Unanimous	Josh Rosenthal	3	5:00
17377	2	UFC 137 - Penn vs. Diaz	2011-10-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Francis Carmont	Chris Camozzi	win	loss	9798	17224	Decision	Unanimous	Herb Dean	3	5:00
17377	1	UFC 137 - Penn vs. Diaz	2011-10-29	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Clifford Starks	Dustin Jacoby	win	loss	56902	73825	Decision	Unanimous	Steve Mazzagatti	3	5:00
17824	10	UFC 138 - Leben vs. Munoz	2011-11-05	LG Arena, Birmingham, West Midlands, England	Mark Munoz	Chris Leben	win	loss	22411	6258	TKO	Corner Stoppage	Marc Goddard	2	5:00
17824	9	UFC 138 - Leben vs. Munoz	2011-11-05	LG Arena, Birmingham, West Midlands, England	Renan Barao	Brad Pickett	win	loss	23156	11743	Submission	Rear-Naked Choke	Leon Roberts	1	4:09
17824	8	UFC 138 - Leben vs. Munoz	2011-11-05	LG Arena, Birmingham, West Midlands, England	Thiago Alves	Papy Abedi	win	loss	5998	20812	Submission	Rear-Naked Choke	Dan Miragliotta	1	3:32
17824	7	UFC 138 - Leben vs. Munoz	2011-11-05	LG Arena, Birmingham, West Midlands, England	Anthony Perosh	Cyrille Diabate	win	loss	9491	2191	Submission	Rear-Naked Choke	Marc Goddard	2	3:09
17824	5	UFC 138 - Leben vs. Munoz	2011-11-05	LG Arena, Birmingham, West Midlands, England	John Maguire	Justin Edwards	win	loss	15574	37452	Decision	Unanimous	Leon Roberts	3	5:00
17824	4	UFC 138 - Leben vs. Munoz	2011-11-05	LG Arena, Birmingham, West Midlands, England	Philip De Fries	Rob Broughton	win	loss	46202	10924	Decision	Unanimous	Dan Miragliotta	3	5:00
17824	3	UFC 138 - Leben vs. Munoz	2011-11-05	LG Arena, Birmingham, West Midlands, England	Michihiro Omigawa	Jason Young	win	loss	13005	17758	Decision	Unanimous	Leon Roberts	3	5:00
17824	2	UFC 138 - Leben vs. Munoz	2011-11-05	LG Arena, Birmingham, West Midlands, England	Che Mills	Chris Cope	win	loss	8800	25784	TKO	Knees and Punches	Marc Goddard	1	0:40
17824	1	UFC 138 - Leben vs. Munoz	2011-11-05	LG Arena, Birmingham, West Midlands, England	Chris Cariaso	Vaughan Lee	win	loss	16467	6946	Decision	Split	Dan Miragliotta	3	5:00
18201	10	UFC on Fox 1 - Velasquez vs. Dos Santos	2011-11-12	Honda Center, Anaheim, California, United States	Junior dos Santos	Cain Velasquez	win	loss	17272	19102	KO	Punches	John McCarthy	1	1:04
18201	9	UFC on Fox 1 - Velasquez vs. Dos Santos	2011-11-12	Honda Center, Anaheim, California, United States	Benson Henderson	Clay Guida	win	loss	20548	8184	Decision	Unanimous	Herb Dean	3	5:00
18201	8	UFC on Fox 1 - Velasquez vs. Dos Santos	2011-11-12	Honda Center, Anaheim, California, United States	Dustin Poirier	Pablo Garza	win	loss	50529	35448	Submission	Brabo Choke	Larry Landless	2	1:32
18201	7	UFC on Fox 1 - Velasquez vs. Dos Santos	2011-11-12	Honda Center, Anaheim, California, United States	Ricardo Lamas	Cub Swanson	win	loss	32051	11002	Submission	Arm-Triangle Choke	John McCarthy	2	2:16
18201	6	UFC on Fox 1 - Velasquez vs. Dos Santos	2011-11-12	Honda Center, Anaheim, California, United States	DaMarques Johnson	Clay Harvison	win	loss	12913	21131	KO	Punches	Herb Dean	1	1:34
18201	5	UFC on Fox 1 - Velasquez vs. Dos Santos	2011-11-12	Honda Center, Anaheim, California, United States	Darren Uyenoyama	Norifumi Yamamoto	win	loss	4679	1354	Decision	Unanimous	Larry Landless	3	5:00
18201	3	UFC on Fox 1 - Velasquez vs. Dos Santos	2011-11-12	Honda Center, Anaheim, California, United States	Alex Caceres	Cole Escovedo	win	loss	41586	2291	Decision	Unanimous	Herb Dean	3	5:00
18201	2	UFC on Fox 1 - Velasquez vs. Dos Santos	2011-11-12	Honda Center, Anaheim, California, United States	Mike Pierce	Paul Bradley	win	loss	25415	19726	Decision	Split	Larry Landless	3	5:00
17551	12	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Dan Henderson	Mauricio Rua	win	loss	195	5707	Decision	Unanimous	Josh Rosenthal	5	5:00
17551	11	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Wanderlei Silva	Cung Le	win	loss	209	14883	TKO	Knees and Punches	Dan Stell	2	4:49
17551	7	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Ryan Bader	Jason Brilz	win	loss	22858	1927	KO	Punch	Jason McCoy	1	1:17
17551	6	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Michael McDonald	Alex Soto	win	loss	30297	50367	KO	Punches	Josh Rosenthal	1	0:56
17551	4	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Gleison Tibau	Rafael dos Anjos	win	loss	5993	11675	Decision	Split	Jason McCoy	3	5:00
17551	3	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Miguel Torres	Nick Pace	win	loss	3006	40956	Decision	Unanimous	Josh Rosenthal	3	5:00
17551	2	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Seth Baczynski	Matt Brown	win	loss	13827	14310	Submission	Guillotine Choke	Dan Stell	2	0:42
17551	1	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Danny Castillo	Shamar Bailey	win	loss	26070	20744	TKO	Punches	Jason McCoy	1	4:52
17424	10	UFC - The Ultimate Fighter 14 Finale	2011-12-03	The Pearl at the Palms, Las Vegas, Nevada, United States	Michael Bisping	Jason Miller	win	loss	10196	7798	TKO	Knees to the Body and Punches	Steve Mazzagatti	3	3:34
17424	9	UFC - The Ultimate Fighter 14 Finale	2011-12-03	The Pearl at the Palms, Las Vegas, Nevada, United States	Diego Brandao	Dennis Bermudez	win	loss	25097	58065	Submission	Armbar	Josh Rosenthal	1	4:51
17424	8	UFC - The Ultimate Fighter 14 Finale	2011-12-03	The Pearl at the Palms, Las Vegas, Nevada, United States	John Dodson	T.J. Dillashaw	win	loss	11660	62507	TKO	Punches	Herb Dean	1	1:54
17424	7	UFC - The Ultimate Fighter 14 Finale	2011-12-03	The Pearl at the Palms, Las Vegas, Nevada, United States	Tony Ferguson	Yves Edwards	win	loss	31239	344	Decision	Unanimous	Chris Tognoni	3	5:00
17424	6	UFC - The Ultimate Fighter 14 Finale	2011-12-03	The Pearl at the Palms, Las Vegas, Nevada, United States	Johnny Bedford	Louis Gaudinot	win	loss	19717	45230	TKO	Knees to the Body	Steve Mazzagatti	3	1:58
17424	5	UFC - The Ultimate Fighter 14 Finale	2011-12-03	The Pearl at the Palms, Las Vegas, Nevada, United States	Marcus Brimage	Stephen Bass	win	loss	21618	28788	Decision	Unanimous	Josh Rosenthal	3	5:00
17424	4	UFC - The Ultimate Fighter 14 Finale	2011-12-03	The Pearl at the Palms, Las Vegas, Nevada, United States	John Albert	Dustin Pague	win	loss	43796	39781	TKO	Punches	Herb Dean	1	1:09
17424	3	UFC - The Ultimate Fighter 14 Finale	2011-12-03	The Pearl at the Palms, Las Vegas, Nevada, United States	Roland Delorme	Josh Ferguson	win	loss	37351	26649	Submission	Rear-Naked Choke	Chris Tognoni	3	0:22
17424	2	UFC - The Ultimate Fighter 14 Finale	2011-12-03	The Pearl at the Palms, Las Vegas, Nevada, United States	Steven Siler	Josh Clopton	win	loss	22537	22105	Decision	Unanimous	Herb Dean	3	5:00
17424	1	UFC - The Ultimate Fighter 14 Finale	2011-12-03	The Pearl at the Palms, Las Vegas, Nevada, United States	Bryan Caraway	Dustin Neace	win	loss	13791	13599	Submission	Rear-Naked Choke	Josh Rosenthal	2	3:38
17274	10	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	Antonio Rogerio Nogueira	Tito Ortiz	win	loss	2270	158	TKO	Punches and Elbows to the Body	Yves Lavigne	1	3:15
17274	9	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	Brian Ebersole	Claude Patrick	win	loss	3015	4114	Decision	Split	Josh Rosenthal	3	5:00
9250	7	UFC 95 - Sanchez vs. Stevenson	2009-02-21	O2 Arena, London, England, England	Demian Maia	Chael Sonnen	win	loss	14637	4112	Submission	Triangle Choke	Dan Miragliotta	1	2:37
9250	6	UFC 95 - Sanchez vs. Stevenson	2009-02-21	O2 Arena, London, England, England	Paulo Thiago	Josh Koscheck	win	loss	13336	9418	TKO	Punches	Marc Goddard	1	3:29
9250	5	UFC 95 - Sanchez vs. Stevenson	2009-02-21	O2 Arena, London, England, England	Terry Etim	Brian Cobb	win	loss	13332	5739	TKO	Head Kick and Punches	Kevin Mulhall	2	0:10
9250	4	UFC 95 - Sanchez vs. Stevenson	2009-02-21	O2 Arena, London, England, England	Junior dos Santos	Stefan Struve	win	loss	17272	15063	TKO	Punches	Dan Miragliotta	1	0:54
17274	8	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	Chan Sung Jung	Mark Hominick	win	loss	36155	4728	KO	Punches	Herb Dean	1	0:07
17274	7	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	Igor Pokrajac	Krzysztof Soszynski	win	loss	7621	9178	KO	Punches	Yves Lavigne	1	0:35
17274	6	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	Costas Philippou	Jared Hamman	win	loss	32432	15949	KO	Punches	John McCarthy	1	3:11
17274	5	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	Dennis Hallman	John Makdessi	win	loss	275	37402	Submission	Rear-Naked Choke	Josh Rosenthal	1	2:58
17274	4	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	Yves Jabouin	Walel Watson	win	loss	1693	36403	Decision	Split	Yves Lavigne	3	5:00
17274	3	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	Mark Bocek	Nik Lentz	win	loss	9781	15058	Decision	Unanimous	Herb Dean	3	5:00
17274	2	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	Jake Hecht	Rich Attonito	win	loss	15759	11955	TKO	Elbows and Punches	Josh Rosenthal	2	1:10
17274	1	UFC 140 - Jones vs. Machida	2011-12-10	Air Canada Centre, Toronto, Ontario, Canada	John Cholish	Mitch Clarke	win	loss	35867	22556	TKO	Punches	John McCarthy	2	4:36
18346	10	UFC 141 - Lesnar vs. Overeem	2011-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Alistair Overeem	Brock Lesnar	win	loss	461	17522	TKO	Kick to the Body and Punches	Mario Yamasaki	1	2:26
18346	9	UFC 141 - Lesnar vs. Overeem	2011-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Nate Diaz	Donald Cerrone	win	loss	11451	15105	Decision	Unanimous	Herb Dean	3	5:00
18346	8	UFC 141 - Lesnar vs. Overeem	2011-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Johny Hendricks	Jon Fitch	win	loss	24539	4865	KO	Punch	Steve Mazzagatti	1	0:12
18346	6	UFC 141 - Lesnar vs. Overeem	2011-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jim Hettes	Nam Phan	win	loss	48046	5778	Decision	Unanimous	Herb Dean	3	5:00
18346	5	UFC 141 - Lesnar vs. Overeem	2011-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Ross Pearson	Junior Assuncao	win	loss	11884	10380	Decision	Unanimous	Mario Yamasaki	3	5:00
18346	4	UFC 141 - Lesnar vs. Overeem	2011-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Danny Castillo	Anthony Njokuani	win	loss	26070	7540	Decision	Split	Steve Mazzagatti	3	5:00
18346	3	UFC 141 - Lesnar vs. Overeem	2011-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dong Hyun Kim	Sean Pierson	win	loss	16374	573	Decision	Unanimous	Yves Lavigne	3	5:00
18346	2	UFC 141 - Lesnar vs. Overeem	2011-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jacob Volkmann	Efrain Escudero	win	loss	24765	16555	Decision	Unanimous	Herb Dean	3	5:00
18346	1	UFC 141 - Lesnar vs. Overeem	2011-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Diego Nunes	Manny Gamburyan	win	loss	25981	5185	Decision	Unanimous	Steve Mazzagatti	3	5:00
18901	10	UFC 142 - Aldo vs. Mendes	2012-01-14	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Jose Aldo	Chad Mendes	win	loss	11506	38393	KO	Knee	Mario Yamasaki	1	4:59
18901	9	UFC 142 - Aldo vs. Mendes	2012-01-14	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Vitor Belfort	Anthony Johnson	win	loss	156	17662	Submission	Rear-Naked Choke	Dan Miragliotta	1	4:49
18901	8	UFC 142 - Aldo vs. Mendes	2012-01-14	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Rousimar Palhares	Mike Massenzio	win	loss	16286	12852	Submission	Heel Hook	Leon Roberts	1	1:03
18901	7	UFC 142 - Aldo vs. Mendes	2012-01-14	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Carlo Prater	Erick Silva	win	loss	6767	15009	DQ	Punches to Back of Head	Mario Yamasaki	1	0:29
18901	6	UFC 142 - Aldo vs. Mendes	2012-01-14	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Edson Barboza	Terry Etim	win	loss	46259	13332	KO	Spinning Wheel Kick	Dan Miragliotta	3	2:02
18901	5	UFC 142 - Aldo vs. Mendes	2012-01-14	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Thiago Tavares	Sam Stout	win	loss	4647	9901	Decision	Unanimous	Mario Yamasaki	3	5:00
18901	4	UFC 142 - Aldo vs. Mendes	2012-01-14	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Gabriel Gonzaga	Ednaldo Oliveira	win	loss	7306	14972	Submission	Rear-Naked Choke	Dan Miragliotta	1	3:22
18901	3	UFC 142 - Aldo vs. Mendes	2012-01-14	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Iuri Alcantara	Michihiro Omigawa	win	loss	16129	13005	Decision	Unanimous	Leon Roberts	3	5:00
18901	1	UFC 142 - Aldo vs. Mendes	2012-01-14	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Felipe Arantes	Antonio Carvalho	win	loss	31372	5346	Decision	Unanimous	Leon Roberts	3	5:00
19068	10	UFC on FX - Guillard vs. Miller	2012-01-20	Bridgestone Arena, Nashville, Tennessee, United States	Jim Miller	Melvin Guillard	win	loss	14463	7431	Submission	Rear-Naked Choke	Herb Dean	1	3:04
19068	8	UFC on FX - Guillard vs. Miller	2012-01-20	Bridgestone Arena, Nashville, Tennessee, United States	Mike Easton	Jared Papazian	win	loss	9626	33531	Decision	Majority	Mario Yamasaki	3	5:00
19068	7	UFC on FX - Guillard vs. Miller	2012-01-20	Bridgestone Arena, Nashville, Tennessee, United States	Pat Barry	Christian Morecraft	win	loss	33342	34376	KO	Punches	Herb Dean	1	3:38
9448	4	UFC Fight Night 18 - Condit vs. Kampmann	2009-04-01	Sommet Center, Nashville, Tennessee, United States	Tim Credeur	Nick Catone	win	loss	1804	23006	Submission	Guillotine Choke	Mario Yamasaki	2	3:45
9432	12	UFC 97 - Redemption	2009-04-18	Bell Centre, Montreal, Quebec, Canada	Anderson Silva	Thales Leites	win	loss	1356	8593	Decision	Unanimous	Yves Lavigne	5	5:00
19068	6	UFC on FX - Guillard vs. Miller	2012-01-20	Bridgestone Arena, Nashville, Tennessee, United States	Jorge Rivera	Eric Schafer	win	loss	2712	13275	TKO	Punches	Herb Dean	2	1:31
19068	5	UFC on FX - Guillard vs. Miller	2012-01-20	Bridgestone Arena, Nashville, Tennessee, United States	Khabib Nurmagomedov	Kamal Shalorus	win	loss	56035	31151	Submission	Rear-Naked Choke	Mario Yamasaki	3	2:08
19068	4	UFC on FX - Guillard vs. Miller	2012-01-20	Bridgestone Arena, Nashville, Tennessee, United States	Charlie Brenneman	Daniel Roberts	win	loss	23403	23999	Decision	Unanimous	Herb Dean	3	5:00
19068	3	UFC on FX - Guillard vs. Miller	2012-01-20	Bridgestone Arena, Nashville, Tennessee, United States	Fabricio Camoes	Tommy Hayden	win	loss	2427	30943	Submission	Rear-Naked Choke	Josh Rosenthal	1	4:03
19068	2	UFC on FX - Guillard vs. Miller	2012-01-20	Bridgestone Arena, Nashville, Tennessee, United States	Daniel Pineda	Pat Schilling	win	loss	21564	54054	Submission	Rear-Naked Choke	Mario Yamasaki	1	1:37
19068	1	UFC on FX - Guillard vs. Miller	2012-01-20	Bridgestone Arena, Nashville, Tennessee, United States	Nick Denis	Joseph Sandoval	win	loss	19128	63897	KO	Elbows	Josh Rosenthal	1	0:22
19039	10	UFC on Fox 2 - Evans vs. Davis	2012-01-28	United Center, Chicago, Illinois, United States	Rashad Evans	Phil Davis	win	loss	10200	27802	Decision	Unanimous	Herb Dean	5	5:00
19039	9	UFC on Fox 2 - Evans vs. Davis	2012-01-28	United Center, Chicago, Illinois, United States	Chael Sonnen	Michael Bisping	win	loss	4112	10196	Decision	Unanimous	John McCarthy	3	5:00
19039	8	UFC on Fox 2 - Evans vs. Davis	2012-01-28	United Center, Chicago, Illinois, United States	Chris Weidman	Demian Maia	win	loss	42804	14637	Decision	Unanimous	Herb Dean	3	5:00
19039	7	UFC on Fox 2 - Evans vs. Davis	2012-01-28	United Center, Chicago, Illinois, United States	Evan Dunham	Nik Lentz	win	loss	22038	15058	TKO	Doctor Stoppage	John McCarthy	2	5:00
19039	6	UFC on Fox 2 - Evans vs. Davis	2012-01-28	United Center, Chicago, Illinois, United States	Mike Russow	John Olav Einemo	win	loss	20552	2873	Decision	Unanimous	Herb Dean	3	5:00
19039	5	UFC on Fox 2 - Evans vs. Davis	2012-01-28	United Center, Chicago, Illinois, United States	Cub Swanson	George Roop	win	loss	11002	16415	TKO	Punches	John McCarthy	2	2:22
19039	4	UFC on Fox 2 - Evans vs. Davis	2012-01-28	United Center, Chicago, Illinois, United States	Charles Oliveira	Eric Wisely	win	loss	30300	25320	Submission	Calf Slicer	John McCarthy	1	1:43
19039	3	UFC on Fox 2 - Evans vs. Davis	2012-01-28	United Center, Chicago, Illinois, United States	Michael Johnson	Shane Roller	win	loss	68788	24540	Decision	Unanimous	Herb Dean	3	5:00
19039	2	UFC on Fox 2 - Evans vs. Davis	2012-01-28	United Center, Chicago, Illinois, United States	Lavar Johnson	Joey Beltran	win	loss	9511	21219	KO	Punches	Robert Madrigal	1	4:24
19039	1	UFC on Fox 2 - Evans vs. Davis	2012-01-28	United Center, Chicago, Illinois, United States	Chris Camozzi	Dustin Jacoby	win	loss	17224	73825	Submission	Guillotine Choke	N/A	3	1:08
18945	11	UFC 143 - Diaz vs. Condit	2012-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Carlos Condit	Nick Diaz	win	loss	6765	2831	Decision	Unanimous	Steve Mazzagatti	5	5:00
18945	10	UFC 143 - Diaz vs. Condit	2012-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Fabricio Werdum	Roy Nelson	win	loss	8390	10249	Decision	Unanimous	Josh Rosenthal	3	5:00
18945	9	UFC 143 - Diaz vs. Condit	2012-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Josh Koscheck	Mike Pierce	win	loss	9418	25415	Decision	Split	Herb Dean	3	5:00
18945	8	UFC 143 - Diaz vs. Condit	2012-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Renan Barao	Scott Jorgensen	win	loss	23156	16852	Decision	Unanimous	Kim Winslow	3	5:00
18945	7	UFC 143 - Diaz vs. Condit	2012-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Ed Herman	Clifford Starks	win	loss	6561	56902	Submission	Rear-Naked Choke	Josh Rosenthal	2	1:43
18945	6	UFC 143 - Diaz vs. Condit	2012-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Dustin Poirier	Max Holloway	win	loss	50529	38671	Submission	Triangle Armbar	Steve Mazzagatti	1	3:23
18945	5	UFC 143 - Diaz vs. Condit	2012-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Edwin Figueroa	Alex Caceres	win	loss	22490	41586	Decision	Split	Herb Dean	3	5:00
18945	3	UFC 143 - Diaz vs. Condit	2012-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Matt Riddle	Henry Martinez	win	loss	34072	13237	Decision	Split	Herb Dean	3	5:00
18945	2	UFC 143 - Diaz vs. Condit	2012-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Rafael Natal	Michael Kuiper	win	loss	13968	42901	Decision	Unanimous	Steve Mazzagatti	3	5:00
18945	1	UFC 143 - Diaz vs. Condit	2012-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Stephen Thompson	Daniel Stittgen	win	loss	59608	42258	KO	Head Kick	Josh Rosenthal	1	4:13
19187	9	UFC on Fuel TV 1 - Sanchez vs. Ellenberger	2012-02-15	Omaha Civic Auditorium, Omaha, Nebraska, United States	Jake Ellenberger	Diego Sanchez	win	loss	13068	4824	Decision	Unanimous	Dan Miragliotta	3	5:00
19187	8	UFC on Fuel TV 1 - Sanchez vs. Ellenberger	2012-02-15	Omaha Civic Auditorium, Omaha, Nebraska, United States	Stefan Struve	Dave Herman	win	loss	15063	19720	TKO	Punches	Josh Rosenthal	2	3:52
19187	7	UFC on Fuel TV 1 - Sanchez vs. Ellenberger	2012-02-15	Omaha Civic Auditorium, Omaha, Nebraska, United States	Ronny Markes	Aaron Simpson	win	loss	21175	24986	Decision	Split	Jim Axtell	3	5:00
19187	6	UFC on Fuel TV 1 - Sanchez vs. Ellenberger	2012-02-15	Omaha Civic Auditorium, Omaha, Nebraska, United States	Stipe Miocic	Philip De Fries	win	loss	39537	46202	KO	Punches	Dan Miragliotta	1	0:43
19187	5	UFC on Fuel TV 1 - Sanchez vs. Ellenberger	2012-02-15	Omaha Civic Auditorium, Omaha, Nebraska, United States	T.J. Dillashaw	Walel Watson	win	loss	62507	36403	Decision	Unanimous	Dan Miragliotta	3	5:00
1943	7	UFC 46 - Supernatural	2004-01-31	Mandalay Bay Events Center, Las Vegas, Nevada, United States	B.J. Penn	Matt Hughes	win	loss	1307	232	Submission	Rear-Naked Choke	N/A	1	4:39
19187	4	UFC on Fuel TV 1 - Sanchez vs. Ellenberger	2012-02-15	Omaha Civic Auditorium, Omaha, Nebraska, United States	Ivan Menjivar	John Albert	win	loss	993	43796	Submission	Rear-Naked Choke	Jim Axtell	1	3:45
19187	3	UFC on Fuel TV 1 - Sanchez vs. Ellenberger	2012-02-15	Omaha Civic Auditorium, Omaha, Nebraska, United States	Jonathan Brookins	Vagner Rocha	win	loss	17316	43107	KO	Punches	Dan Miragliotta	1	1:32
19187	2	UFC on Fuel TV 1 - Sanchez vs. Ellenberger	2012-02-15	Omaha Civic Auditorium, Omaha, Nebraska, United States	Justin Salas	Anton Kuivanen	win	loss	16180	14865	Decision	Unanimous	Mark Powell	3	5:00
19187	1	UFC on Fuel TV 1 - Sanchez vs. Ellenberger	2012-02-15	Omaha Civic Auditorium, Omaha, Nebraska, United States	Tim Means	Bernardo Magalhaes	win	loss	11281	26495	Decision	Unanimous	Bo Nesslein	3	5:00
18347	12	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Benson Henderson	Frankie Edgar	win	loss	20548	14204	Decision	Unanimous	Marc Goddard	5	5:00
18347	11	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Ryan Bader	Quinton Jackson	win	loss	22858	348	Decision	Unanimous	Leon Roberts	3	5:00
18347	9	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Jake Shields	Yoshihiro Akiyama	win	loss	502	11895	Decision	Unanimous	Marc Goddard	3	5:00
18347	8	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Tim Boetsch	Yushin Okami	win	loss	19544	5569	TKO	Punches	Leon Roberts	3	0:54
18347	7	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Hatsu Hioki	Bart Palaszewski	win	loss	5466	3496	Decision	Unanimous	Herb Dean	3	5:00
18347	6	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Anthony Pettis	Joe Lauzon	win	loss	26627	4923	KO	Head Kick and Punches	Marc Goddard	1	1:21
18347	5	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Takanori Gomi	Eiji Mitsuoka	win	loss	425	2235	TKO	Punches	Leon Roberts	2	2:21
18347	4	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Vaughan Lee	Norifumi Yamamoto	win	loss	6946	1354	Submission	Armbar	Herb Dean	1	4:29
18347	3	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Riki Fukuda	Steve Cantwell	win	loss	10229	12785	Decision	Unanimous	Marc Goddard	3	5:00
18347	2	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Chris Cariaso	Takeya Mizugaki	win	loss	16467	12074	Decision	Unanimous	Leon Roberts	3	5:00
18347	1	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Issei Tamura	Tiequan Zhang	win	loss	34371	16984	KO	Punch	Herb Dean	2	0:33
19379	11	UFC on FX 2 - Alves vs. Kampmann	2012-03-03	Allphones Arena, Sydney, New South Wales, Australia	Martin Kampmann	Thiago Alves	win	loss	5344	5998	Submission	Guillotine Choke	Herb Dean	3	4:12
19379	10	UFC on FX 2 - Alves vs. Kampmann	2012-03-03	Allphones Arena, Sydney, New South Wales, Australia	Joseph Benavidez	Yasuhiro Urushitani	win	loss	15008	1349	TKO	Punches	Steve Perceval	2	0:11
19379	9	UFC on FX 2 - Alves vs. Kampmann	2012-03-03	Allphones Arena, Sydney, New South Wales, Australia	Demetrious Johnson	Ian McCall	draw	draw	45452	5001	Draw	Majority	Leon Roberts	3	5:00
19379	8	UFC on FX 2 - Alves vs. Kampmann	2012-03-03	Allphones Arena, Sydney, New South Wales, Australia	Costas Philippou	Court McGee	win	loss	32432	34124	Decision	Unanimous	John Sharp	3	5:00
19379	7	UFC on FX 2 - Alves vs. Kampmann	2012-03-03	Allphones Arena, Sydney, New South Wales, Australia	James Te Huna	Aaron Rosa	win	loss	9033	15129	TKO	Punches	Leon Roberts	1	2:08
19379	6	UFC on FX 2 - Alves vs. Kampmann	2012-03-03	Allphones Arena, Sydney, New South Wales, Australia	Anthony Perosh	Nick Penner	win	loss	9491	23736	TKO	Punches and Elbows	John Sharp	1	4:59
19379	5	UFC on FX 2 - Alves vs. Kampmann	2012-03-03	Allphones Arena, Sydney, New South Wales, Australia	Steven Siler	Cole Miller	win	loss	22537	13133	Decision	Unanimous	Steve Perceval	3	5:00
19379	4	UFC on FX 2 - Alves vs. Kampmann	2012-03-03	Allphones Arena, Sydney, New South Wales, Australia	Andrew Craig	Kyle Noke	win	loss	63284	7632	Decision	Unanimous	Herb Dean	3	5:00
19379	3	UFC on FX 2 - Alves vs. Kampmann	2012-03-03	Allphones Arena, Sydney, New South Wales, Australia	T.J. Waldburger	Jake Hecht	win	loss	15125	15759	Submission	Armbar	John Sharp	1	0:55
19379	2	UFC on FX 2 - Alves vs. Kampmann	2012-03-03	Allphones Arena, Sydney, New South Wales, Australia	Daniel Pineda	Mackens Semerzier	win	loss	21564	38841	Submission	Triangle Armbar	Leon Roberts	1	2:06
19379	1	UFC on FX 2 - Alves vs. Kampmann	2012-03-03	Allphones Arena, Sydney, New South Wales, Australia	Shawn Jordan	Oli Thompson	win	loss	45624	54543	TKO	Punches	Steve Perceval	2	1:07
19857	12	UFC on Fuel TV 2 - Gustafsson vs. Silva	2012-04-14	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Alexander Gustafsson	Thiago Silva	win	loss	26162	14396	Decision	Unanimous	Leon Roberts	3	5:00
19857	11	UFC on Fuel TV 2 - Gustafsson vs. Silva	2012-04-14	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Brian Stann	Alessio Sakara	win	loss	14829	5366	KO	Punches	Marc Goddard	1	2:26
19857	10	UFC on Fuel TV 2 - Gustafsson vs. Silva	2012-04-14	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Siyar Bahadurzada	Paulo Thiago	win	loss	5453	13336	KO	Punch	Leon Roberts	1	0:42
19857	9	UFC on Fuel TV 2 - Gustafsson vs. Silva	2012-04-14	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Dennis Siver	Diego Nunes	win	loss	9817	25981	Decision	Unanimous	Marc Goddard	3	5:00
19857	8	UFC on Fuel TV 2 - Gustafsson vs. Silva	2012-04-14	Ericsson Globe Arena, Stockholm, Sweden, Sweden	John Maguire	DaMarques Johnson	win	loss	15574	12913	Submission	Armbar	Kristian Hacklou	2	4:40
19857	7	UFC on Fuel TV 2 - Gustafsson vs. Silva	2012-04-14	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Brad Pickett	Damacio Page	win	loss	11743	12158	Submission	Rear-Naked Choke	Marko Gyllenland	2	4:05
20355	6	UFC 148 - Silva vs. Sonnen 2	2012-07-07	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mike Easton	Ivan Menjivar	win	loss	9626	993	Decision	Unanimous	Josh Rosenthal	3	5:00
19857	6	UFC on Fuel TV 2 - Gustafsson vs. Silva	2012-04-14	Ericsson Globe Arena, Stockholm, Sweden, Sweden	James Head	Papy Abedi	win	loss	23253	20812	Submission	Rear-Naked Choke	Robert Sundel	1	4:33
19857	4	UFC on Fuel TV 2 - Gustafsson vs. Silva	2012-04-14	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Francis Carmont	Magnus Cedenblad	win	loss	9798	22137	Submission	Rear-Naked Choke	Kristian Hacklou	2	1:42
19857	3	UFC on Fuel TV 2 - Gustafsson vs. Silva	2012-04-14	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Reza Madadi	Yoislandy Izquierdo	win	loss	18921	64716	Submission	Guillotine Choke	Marko Gyllenland	2	1:28
19857	2	UFC on Fuel TV 2 - Gustafsson vs. Silva	2012-04-14	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Simeon Thoresen	Besam Yousef	win	loss	19977	32445	Submission	Rear-Naked Choke	Marc Goddard	2	2:36
19857	1	UFC on Fuel TV 2 - Gustafsson vs. Silva	2012-04-14	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Jason Young	Eric Wisely	win	loss	17758	25320	Decision	Unanimous	Robert Sundel	3	5:00
20031	11	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Rory MacDonald	Che Mills	win	loss	14018	8800	TKO	Punches	Mario Yamasaki	2	2:20
20031	10	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Ben Rothwell	Brendan Schaub	win	loss	2262	33926	KO	Punches	Herb Dean	1	1:10
20031	9	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Michael McDonald	Miguel Torres	win	loss	30297	3006	KO	Punches	Herb Dean	1	3:18
20031	8	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Eddie Yagin	Mark Hominick	win	loss	2825	4728	Decision	Split	Mario Yamasaki	3	5:00
20031	7	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Mark Bocek	John Alessio	win	loss	9781	259	Decision	Unanimous	Blake Grice	3	5:00
20031	6	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Travis Browne	Chad Griggs	win	loss	16785	15932	Submission	Arm-Triangle Choke	Mario Yamasaki	1	2:29
20031	5	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Matt Brown	Stephen Thompson	win	loss	14310	59608	Decision	Unanimous	Fernando Yamasaki	3	5:00
20031	4	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Anthony Njokuani	John Makdessi	win	loss	7540	37402	Decision	Unanimous	Herb Dean	3	5:00
20031	3	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Mac Danzig	Efrain Escudero	win	loss	3396	16555	Decision	Unanimous	Blake Grice	3	5:00
20031	2	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Chris Clements	Keith Wisniewski	win	loss	13469	2095	Decision	Split	Fernando Yamasaki	3	5:00
20031	1	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Marcus Brimage	Maximo Blanco	win	loss	21618	36618	Decision	Split	Will Fisher	3	5:00
20039	12	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	Nate Diaz	Jim Miller	win	loss	11451	14463	Submission	Guillotine Choke	Keith Peterson	2	4:09
20039	11	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	Johny Hendricks	Josh Koscheck	win	loss	24539	9418	Decision	Split	Kevin Mulhall	3	5:00
20039	10	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	Alan Belcher	Rousimar Palhares	win	loss	10967	16286	TKO	Punches and Elbows	Dan Miragliotta	1	4:18
20039	9	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	Lavar Johnson	Pat Barry	win	loss	9511	33342	TKO	Punches	Dan Miragliotta	1	4:38
20039	4	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	Danny Castillo	John Cholish	win	loss	26070	35867	Decision	Unanimous	Kevin Mulhall	3	5:00
20039	3	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	Dennis Bermudez	Pablo Garza	win	loss	58065	35448	Decision	Unanimous	Kevin Mulhall	3	5:00
20039	2	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	Roland Delorme	Nick Denis	win	loss	37351	19128	Submission	Rear-Naked Choke	Keith Peterson	1	4:59
20039	1	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	Karlos Vemola	Mike Massenzio	win	loss	40238	12852	Submission	Rear-Naked Choke	Dan Miragliotta	2	1:07
20203	11	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	Amir Sadollah	Jorge Lopez	win	loss	34071	23271	Decision	Split	Keith Peterson	3	5:00
20203	10	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	Donald Cerrone	Jeremy Stephens	win	loss	15105	12179	Decision	Unanimous	Mario Yamasaki	3	5:00
20203	9	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	Yves Jabouin	Jeff Hougland	win	loss	1693	4870	Decision	Unanimous	Todd McGovern	3	5:00
20203	8	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	Igor Pokrajac	Fabio Maldonado	win	loss	7621	16426	Decision	Unanimous	Dan Miragliotta	3	5:00
20203	7	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	Tom Lawlor	Jason MacDonald	win	loss	21940	4389	KO	Punches	Todd McGovern	1	0:50
20203	6	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	Brad Tavares	Dongi Yang	win	loss	33095	23501	Decision	Unanimous	Dan Miragliotta	3	5:00
20203	5	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	Cody McKenzie	Marcus LeVesseur	win	loss	22173	23538	Submission	Guillotine Choke	Keith Peterson	1	3:05
20203	4	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	T.J. Grant	Carlo Prater	win	loss	15906	6767	Decision	Unanimous	Mario Yamasaki	3	5:00
20203	3	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	Rafael dos Anjos	Kamal Shalorus	win	loss	11675	31151	Submission	Rear-Naked Choke	Todd McGovern	1	1:40
20203	2	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	Johnny Eduardo	Jeff Curran	win	loss	426	770	Decision	Unanimous	Rick McCoy	3	5:00
20203	1	UFC on Fuel TV 3 - Korean Zombie vs. Poirier	2012-05-15	Patriot Center, Fairfax, Virginia, United States	Francisco Rivera	Alex Soto	win	loss	11908	50367	Decision	Unanimous	Rick McCoy	3	5:00
20353	11	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Cain Velasquez	Antonio Silva	win	loss	19102	12354	TKO	Punches	Josh Rosenthal	1	3:36
20353	10	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Roy Nelson	Dave Herman	win	loss	10249	19720	KO	Punch	Steve Mazzagatti	1	0:51
20353	9	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Stipe Miocic	Shane del Rosario	win	loss	39537	17393	TKO	Elbows	Yves Lavigne	2	3:14
20353	8	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Stefan Struve	Lavar Johnson	win	loss	15063	9511	Submission	Armbar	Josh Rosenthal	1	1:05
20353	7	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Darren Elkins	Diego Brandao	win	loss	22094	25097	Decision	Unanimous	Herb Dean	3	5:00
20353	6	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jamie Varner	Edson Barboza	win	loss	7168	46259	TKO	Punches	Steve Mazzagatti	1	3:23
20353	5	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	C.B. Dollaway	Jason Miller	win	loss	22350	7798	Decision	Unanimous	Yves Lavigne	3	5:00
20353	4	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dan Hardy	Duane Ludwig	win	loss	10629	101	KO	Punch and Elbows	Josh Rosenthal	1	3:51
20353	3	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Paul Sass	Jacob Volkmann	win	loss	23531	24765	Submission	Triangle Armbar	Herb Dean	1	1:54
20353	2	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Glover Teixeira	Kyle Kingsbury	win	loss	4655	16558	Submission	Arm-Triangle Choke	Steve Mazzagatti	1	1:53
20353	1	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mike Thomas Brown	Daniel Pineda	win	loss	3069	21564	Decision	Unanimous	Yves Lavigne	3	5:00
19325	10	UFC - The Ultimate Fighter 15 Finale	2012-06-01	Palms Casino Resort, Las Vegas, Nevada, United States	Martin Kampmann	Jake Ellenberger	win	loss	5344	13068	TKO	Knee	Steve Mazzagatti	2	1:40
19325	8	UFC - The Ultimate Fighter 15 Finale	2012-06-01	Palms Casino Resort, Las Vegas, Nevada, United States	Charles Oliveira	Jonathan Brookins	win	loss	30300	17316	Submission	Guillotine Choke	Kim Winslow	2	2:42
19325	6	UFC - The Ultimate Fighter 15 Finale	2012-06-01	Palms Casino Resort, Las Vegas, Nevada, United States	Justin Lawrence	John Cofer	win	loss	73756	33523	KO	Head Kick	Herb Dean	3	0:19
19325	5	UFC - The Ultimate Fighter 15 Finale	2012-06-01	Palms Casino Resort, Las Vegas, Nevada, United States	Daron Cruickshank	Chris Tickle	win	loss	53717	22955	Decision	Unanimous	Steve Mazzagatti	3	5:00
19325	4	UFC - The Ultimate Fighter 15 Finale	2012-06-01	Palms Casino Resort, Las Vegas, Nevada, United States	Myles Jury	Chris Saunders	win	loss	34236	7358	Submission	Guillotine Choke	Kim Winslow	1	4:03
19325	3	UFC - The Ultimate Fighter 15 Finale	2012-06-01	Palms Casino Resort, Las Vegas, Nevada, United States	Sam Sicilia	Cristiano Marcello	win	loss	53205	3530	KO	Punches	Chris Tognoni	2	2:53
19325	2	UFC - The Ultimate Fighter 15 Finale	2012-06-01	Palms Casino Resort, Las Vegas, Nevada, United States	Joe Proctor	Jeremy Larsen	win	loss	46307	19863	TKO	Knee and Punches	Herb Dean	1	1:59
21037	1	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Sean Pierson	Jake Hecht	win	loss	573	15759	Decision	Unanimous	Chris Adams	3	5:00
21037	12	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Demetrious Johnson	Ian McCall	win	loss	45452	5001	Decision	Unanimous	Troy Waugh	3	5:00
21037	11	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Erick Silva	Charlie Brenneman	win	loss	15009	23403	Submission	Rear-Naked Choke	Frank Gentile	1	4:33
21037	10	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Mike Pyle	Josh Neer	win	loss	4577	9179	KO	Punch	Chris Adams	1	4:56
21037	9	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Eddie Wineland	Scott Jorgensen	win	loss	4173	16852	KO	Punches	Troy Waugh	2	4:10
21037	8	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Mike Pierce	Carlos Eduardo Rocha	win	loss	25415	35142	Decision	Unanimous	Frank Gentile	3	5:00
21037	7	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Seth Baczynski	Lance Benoist	win	loss	13827	59764	Decision	Split	Chris Adams	3	5:00
21037	6	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Matt Grice	Leonard Garcia	win	loss	14539	2815	Decision	Unanimous	Troy Waugh	3	5:00
21037	5	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Dustin Pague	Jared Papazian	win	loss	39781	33531	Submission	Rear-Naked Choke	Frank Gentile	1	3:21
21037	4	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Tim Means	Justin Salas	win	loss	11281	16180	TKO	Knees and Punches	Chris Adams	1	1:06
21037	3	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Buddy Roberts	Caio Magalhaes	win	loss	23811	51163	Decision	Unanimous	Troy Waugh	3	5:00
21037	2	UFC on FX 3 - Johnson vs. McCall	2012-06-08	BankAtlantic Center, Fort Lauderdale, Florida, United States	Henry Martinez	Bernardo Magalhaes	win	loss	13237	26495	Decision	Split	Frank Gentile	3	5:00
20385	12	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Gray Maynard	Clay Guida	win	loss	15835	8184	Decision	Split	Dan Miragliotta	5	5:00
20385	11	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Sam Stout	Spencer Fisher	win	loss	9901	5118	Decision	Unanimous	Kevin Mulhall	3	5:00
20385	10	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Brian Ebersole	T.J. Waldburger	win	loss	3015	15125	Decision	Unanimous	Kevin Mulhall	3	5:00
20385	9	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Cub Swanson	Ross Pearson	win	loss	11002	11884	TKO	Punches	Yves Lavigne	2	4:14
20385	8	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Ricardo Lamas	Hatsu Hioki	win	loss	32051	5466	Decision	Unanimous	Yves Lavigne	3	5:00
1943	6	UFC 46 - Supernatural	2004-01-31	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Renato Verissimo	Carlos Newton	win	loss	4095	7	Decision	Unanimous	N/A	3	5:00
20385	7	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Ramsey Nijem	C.J. Keith	win	loss	36963	70452	TKO	Punches	Yves Lavigne	1	2:29
20385	6	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Rick Story	Brock Jardine	win	loss	25989	36630	Decision	Unanimous	Dan Miragliotta	3	5:00
20385	5	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Steven Siler	Joey Gambino	win	loss	22537	55503	Submission	Guillotine Choke	Kevin Mulhall	1	2:47
20385	4	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Chris Camozzi	Nick Catone	win	loss	17224	23006	TKO	Doctor Stoppage	Dan Miragliotta	3	1:51
20385	3	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Matt Brown	Luis Ramos	win	loss	14310	3217	TKO	Knees and Punches	Gasper Oliver	2	4:20
20385	2	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Dan Miller	Ricardo Funch	win	loss	14464	24057	Submission	Guillotine Choke	Dan Miragliotta	3	3:12
20385	1	UFC on FX 4 - Maynard vs. Guida	2012-06-22	Revel Atlantic City, Atlantic City, New Jersey, United States	Ken Stone	Dustin Pague	win	loss	24913	39781	Decision	Split	Gasper Oliver	3	5:00
19449	11	UFC 147 - Silva vs. Franklin 2	2012-06-23	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Rich Franklin	Wanderlei Silva	win	loss	392	209	Decision	Unanimous	Mario Yamasaki	5	5:00
19449	10	UFC 147 - Silva vs. Franklin 2	2012-06-23	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Cezar Ferreira	Sergio Moraes	win	loss	22400	21343	Decision	Unanimous	Herb Dean	3	5:00
19449	9	UFC 147 - Silva vs. Franklin 2	2012-06-23	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Rony Mariano Bezerra	Godofredo Castro	win	loss	38190	40623	Decision	Unanimous	Marc Goddard	3	5:00
19449	8	UFC 147 - Silva vs. Franklin 2	2012-06-23	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Fabricio Werdum	Mike Russow	win	loss	8390	20552	TKO	Punches	Herb Dean	1	2:28
19449	7	UFC 147 - Silva vs. Franklin 2	2012-06-23	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Hacran Dias	Iuri Alcantara	win	loss	19789	16129	Decision	Unanimous	Marc Goddard	3	5:00
19449	6	UFC 147 - Silva vs. Franklin 2	2012-06-23	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Rodrigo Damm	Anistavio Medeiros de Figueiredo	win	loss	11507	21962	Submission	Rear-Naked Choke	Mario Yamasaki	1	2:12
19449	5	UFC 147 - Silva vs. Franklin 2	2012-06-23	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Francisco Trinaldo	Delson Heleno	win	loss	31103	5434	TKO	Punches	Herb Dean	1	4:21
19449	4	UFC 147 - Silva vs. Franklin 2	2012-06-23	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Hugo Viana	John Teixeira da Conceicao	win	loss	65456	44311	Decision	Split	Marc Goddard	3	5:00
19449	3	UFC 147 - Silva vs. Franklin 2	2012-06-23	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Thiago de Oliveira Perpetuo	Leonardo Mafra Texeira	win	loss	53207	76653	TKO	Punches	Mario Yamasaki	3	0:41
19449	2	UFC 147 - Silva vs. Franklin 2	2012-06-23	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Marcos Vinicius Borges Pancini	Wagner Campos	win	loss	51728	22197	TKO	Knees and Punches	Herb Dean	3	1:04
19449	1	UFC 147 - Silva vs. Franklin 2	2012-06-23	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Felipe Arantes	Milton Vieira	draw	draw	31372	4481	Draw	Split	Marc Goddard	3	5:00
20355	11	UFC 148 - Silva vs. Sonnen 2	2012-07-07	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Anderson Silva	Chael Sonnen	win	loss	1356	4112	TKO	Knee to the Body and Punches	Yves Lavigne	2	1:55
20355	10	UFC 148 - Silva vs. Sonnen 2	2012-07-07	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Forrest Griffin	Tito Ortiz	win	loss	3526	158	Decision	Unanimous	Steve Mazzagatti	3	5:00
20355	9	UFC 148 - Silva vs. Sonnen 2	2012-07-07	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Cung Le	Patrick Cote	win	loss	14883	6612	Decision	Unanimous	Josh Rosenthal	3	5:00
20355	8	UFC 148 - Silva vs. Sonnen 2	2012-07-07	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Demian Maia	Dong Hyun Kim	win	loss	14637	16374	TKO	Rib Injury	Mario Yamasaki	1	0:47
20355	7	UFC 148 - Silva vs. Sonnen 2	2012-07-07	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chad Mendes	Cody McKenzie	win	loss	38393	22173	KO	Punch to the Body	Steve Mazzagatti	1	0:31
20355	5	UFC 148 - Silva vs. Sonnen 2	2012-07-07	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Melvin Guillard	Fabricio Camoes	win	loss	7431	2427	Decision	Unanimous	Yves Lavigne	3	5:00
20355	4	UFC 148 - Silva vs. Sonnen 2	2012-07-07	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Khabib Nurmagomedov	Gleison Tibau	win	loss	56035	5993	Decision	Unanimous	Mario Yamasaki	3	5:00
20355	3	UFC 148 - Silva vs. Sonnen 2	2012-07-07	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Costas Philippou	Riki Fukuda	win	loss	32432	10229	Decision	Unanimous	Steve Mazzagatti	3	5:00
20355	2	UFC 148 - Silva vs. Sonnen 2	2012-07-07	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Shane Roller	John Alessio	win	loss	24540	259	Decision	Unanimous	Josh Rosenthal	3	5:00
20355	1	UFC 148 - Silva vs. Sonnen 2	2012-07-07	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rafaello Oliveira	Yoislandy Izquierdo	win	loss	37260	64716	Decision	Unanimous	Mario Yamasaki	3	5:00
21725	11	UFC on Fuel TV 4 - Munoz vs. Weidman	2012-07-11	HP Pavillion, San Jose, California, United States	Chris Weidman	Mark Munoz	win	loss	42804	22411	KO	Elbow and Punches	Josh Rosenthal	2	1:37
21725	10	UFC on Fuel TV 4 - Munoz vs. Weidman	2012-07-11	HP Pavillion, San Jose, California, United States	James Te Huna	Joey Beltran	win	loss	9033	21219	Decision	Unanimous	Jason McCoy	3	5:00
21725	9	UFC on Fuel TV 4 - Munoz vs. Weidman	2012-07-11	HP Pavillion, San Jose, California, United States	Aaron Simpson	Kenny Robertson	win	loss	24986	31978	Decision	Unanimous	Marcos Rosales	3	5:00
21725	8	UFC on Fuel TV 4 - Munoz vs. Weidman	2012-07-11	HP Pavillion, San Jose, California, United States	Francis Carmont	Karlos Vemola	win	loss	9798	40238	Submission	Rear-Naked Choke	Josh Rosenthal	2	1:39
1943	5	UFC 46 - Supernatural	2004-01-31	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Frank Mir	Wes Sims	win	loss	2329	2713	KO	Punches	N/A	2	4:21
1943	4	UFC 46 - Supernatural	2004-01-31	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Lee Murray	Jorge Rivera	win	loss	1659	2712	Submission	Triangle Armbar	N/A	1	1:45
1943	3	UFC 46 - Supernatural	2004-01-31	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Georges St. Pierre	Karo Parisyan	win	loss	3500	5153	Decision	Unanimous	N/A	3	5:00
21725	7	UFC on Fuel TV 4 - Munoz vs. Weidman	2012-07-11	HP Pavillion, San Jose, California, United States	T.J. Dillashaw	Vaughan Lee	win	loss	62507	6946	Submission	Neck Crank	Jason McCoy	1	2:33
21725	6	UFC on Fuel TV 4 - Munoz vs. Weidman	2012-07-11	HP Pavillion, San Jose, California, United States	Rafael dos Anjos	Anthony Njokuani	win	loss	11675	7540	Decision	Unanimous	Marcos Rosales	3	5:00
21725	5	UFC on Fuel TV 4 - Munoz vs. Weidman	2012-07-11	HP Pavillion, San Jose, California, United States	Alex Caceres	Damacio Page	win	loss	41586	12158	Submission	Triangle Choke	Josh Rosenthal	2	1:27
21725	4	UFC on Fuel TV 4 - Munoz vs. Weidman	2012-07-11	HP Pavillion, San Jose, California, United States	Chris Cariaso	Josh Ferguson	win	loss	16467	26649	Decision	Unanimous	Jason McCoy	3	5:00
21725	3	UFC on Fuel TV 4 - Munoz vs. Weidman	2012-07-11	HP Pavillion, San Jose, California, United States	Andrew Craig	Rafael Natal	win	loss	63284	13968	KO	Head Kick	Marcos Rosales	2	4:52
21725	2	UFC on Fuel TV 4 - Munoz vs. Weidman	2012-07-11	HP Pavillion, San Jose, California, United States	Marcelo Guimaraes	Daniel Stittgen	win	loss	20277	42258	Decision	Split	Josh Rosenthal	3	5:00
21725	1	UFC on Fuel TV 4 - Munoz vs. Weidman	2012-07-11	HP Pavillion, San Jose, California, United States	Raphael Assuncao	Issei Tamura	win	loss	9574	34371	TKO	Punches	Jason McCoy	2	0:25
20821	11	UFC 149 - Faber vs. Barao	2012-07-21	Scotiabank Saddledome, Calgary, Alberta, Canada	Renan Barao	Urijah Faber	win	loss	23156	8847	Decision	Unanimous	Mario Yamasaki	5	5:00
20821	9	UFC 149 - Faber vs. Barao	2012-07-21	Scotiabank Saddledome, Calgary, Alberta, Canada	Cheick Kongo	Shawn Jordan	win	loss	2193	45624	Decision	Unanimous	Yves Lavigne	3	5:00
20821	8	UFC 149 - Faber vs. Barao	2012-07-21	Scotiabank Saddledome, Calgary, Alberta, Canada	James Head	Brian Ebersole	win	loss	23253	3015	Decision	Split	Mario Yamasaki	3	5:00
20821	6	UFC 149 - Faber vs. Barao	2012-07-21	Scotiabank Saddledome, Calgary, Alberta, Canada	Nick Ring	Court McGee	win	loss	6748	34124	Decision	Unanimous	Yves Lavigne	3	5:00
20821	4	UFC 149 - Faber vs. Barao	2012-07-21	Scotiabank Saddledome, Calgary, Alberta, Canada	Ryan Jimmo	Anthony Perosh	win	loss	21044	9491	KO	Punch	Josh Rosenthal	1	0:07
20821	3	UFC 149 - Faber vs. Barao	2012-07-21	Scotiabank Saddledome, Calgary, Alberta, Canada	Bryan Caraway	Mitch Gagnon	win	loss	13791	37404	Submission	Rear-Naked Choke	Yves Lavigne	3	1:39
20821	2	UFC 149 - Faber vs. Barao	2012-07-21	Scotiabank Saddledome, Calgary, Alberta, Canada	Antonio Carvalho	Daniel Pineda	win	loss	5346	21564	KO	Punches	Mario Yamasaki	1	1:11
20821	1	UFC 149 - Faber vs. Barao	2012-07-21	Scotiabank Saddledome, Calgary, Alberta, Canada	Anton Kuivanen	Mitch Clarke	win	loss	14865	22556	Decision	Split	Josh Rosenthal	3	5:00
20081	10	UFC on Fox 4 - Shogun vs. Vera	2012-08-04	Staples Center, Los Angeles, California, United States	Mauricio Rua	Brandon Vera	win	loss	5707	4886	TKO	Punches	Herb Dean	4	4:09
20081	9	UFC on Fox 4 - Shogun vs. Vera	2012-08-04	Staples Center, Los Angeles, California, United States	Lyoto Machida	Ryan Bader	win	loss	7513	22858	KO	Punches	John McCarthy	2	1:32
20081	8	UFC on Fox 4 - Shogun vs. Vera	2012-08-04	Staples Center, Los Angeles, California, United States	Joe Lauzon	Jamie Varner	win	loss	4923	7168	Submission	Triangle Choke	Luis Cobian	3	2:44
20081	7	UFC on Fox 4 - Shogun vs. Vera	2012-08-04	Staples Center, Los Angeles, California, United States	Mike Swick	DaMarques Johnson	win	loss	5199	12913	KO	Punches	Herb Dean	2	1:20
20081	6	UFC on Fox 4 - Shogun vs. Vera	2012-08-04	Staples Center, Los Angeles, California, United States	Nam Phan	Cole Miller	win	loss	5778	13133	Decision	Split	John McCarthy	3	5:00
20081	4	UFC on Fox 4 - Shogun vs. Vera	2012-08-04	Staples Center, Los Angeles, California, United States	Rani Yahya	Josh Grispi	win	loss	10425	20416	Submission	North-South Choke	Herb Dean	1	3:15
20081	3	UFC on Fox 4 - Shogun vs. Vera	2012-08-04	Staples Center, Los Angeles, California, United States	Philip De Fries	Oli Thompson	win	loss	46202	54543	Submission	Rear-Naked Choke	John McCarthy	2	4:16
20081	2	UFC on Fox 4 - Shogun vs. Vera	2012-08-04	Staples Center, Los Angeles, California, United States	Manny Gamburyan	Michihiro Omigawa	win	loss	5185	13005	Decision	Unanimous	Luis Cobian	3	5:00
20081	1	UFC on Fox 4 - Shogun vs. Vera	2012-08-04	Staples Center, Los Angeles, California, United States	John Moraga	Ulysses Gomez	win	loss	55159	30396	KO	Elbows and Punches	Herb Dean	1	3:46
22013	10	UFC 150 - Henderson vs. Edgar 2	2012-08-11	Pepsi Center, Denver, Colorado, United States	Benson Henderson	Frankie Edgar	win	loss	20548	14204	Decision	Split	Herb Dean	5	5:00
22013	9	UFC 150 - Henderson vs. Edgar 2	2012-08-11	Pepsi Center, Denver, Colorado, United States	Donald Cerrone	Melvin Guillard	win	loss	15105	7431	KO	Head Kick and Punch	Josh Rosenthal	1	1:16
22013	7	UFC 150 - Henderson vs. Edgar 2	2012-08-11	Pepsi Center, Denver, Colorado, United States	Yushin Okami	Buddy Roberts	win	loss	5569	23811	TKO	Punches	Herb Dean	2	3:09
22013	6	UFC 150 - Henderson vs. Edgar 2	2012-08-11	Pepsi Center, Denver, Colorado, United States	Max Holloway	Justin Lawrence	win	loss	38671	73756	TKO	Punches	Josh Rosenthal	2	4:49
22013	5	UFC 150 - Henderson vs. Edgar 2	2012-08-11	Pepsi Center, Denver, Colorado, United States	Dennis Bermudez	Tommy Hayden	win	loss	58065	30943	Submission	Guillotine Choke	Tom Johnson	1	4:43
22013	4	UFC 150 - Henderson vs. Edgar 2	2012-08-11	Pepsi Center, Denver, Colorado, United States	Michael Kuiper	Jared Hamman	win	loss	42901	15949	TKO	Punches	Adam Martinez	2	2:16
22013	3	UFC 150 - Henderson vs. Edgar 2	2012-08-11	Pepsi Center, Denver, Colorado, United States	Erik Perez	Ken Stone	win	loss	35509	24913	KO	Punches	Herb Dean	1	0:17
22013	2	UFC 150 - Henderson vs. Edgar 2	2012-08-11	Pepsi Center, Denver, Colorado, United States	Chico Camus	Dustin Pague	win	loss	42850	39781	Decision	Unanimous	Tom Johnson	3	5:00
22013	1	UFC 150 - Henderson vs. Edgar 2	2012-08-11	Pepsi Center, Denver, Colorado, United States	Nik Lentz	Eiji Mitsuoka	win	loss	15058	2235	TKO	Punches	Tim Mills	1	3:45
21045	12	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	Jon Jones	Vitor Belfort	win	loss	27944	156	Submission	Keylock	John McCarthy	4	0:54
21045	11	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	Demetrious Johnson	Joseph Benavidez	win	loss	45452	15008	Decision	Split	Yves Lavigne	5	5:00
21045	10	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	Michael Bisping	Brian Stann	win	loss	10196	14829	Decision	Unanimous	Josh Rosenthal	3	5:00
21045	9	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	Matt Hamill	Roger Hollett	win	loss	16695	15907	Decision	Unanimous	Dan Miragliotta	3	5:00
21045	8	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	Cub Swanson	Charles Oliveira	win	loss	11002	30300	KO	Punch	Yves Lavigne	1	2:40
21045	7	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	Vinny Magalhaes	Igor Pokrajac	win	loss	10709	7621	Submission	Armbar	John McCarthy	2	1:14
21045	6	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	T.J. Grant	Evan Dunham	win	loss	15906	22038	Decision	Unanimous	Dan Miragliotta	3	5:00
21045	5	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	Sean Pierson	Lance Benoist	win	loss	573	59764	Decision	Unanimous	Josh Rosenthal	3	5:00
21045	4	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	Marcus Brimage	Jim Hettes	win	loss	21618	48046	Decision	Unanimous	Yves Lavigne	3	5:00
21045	3	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	Seth Baczynski	Simeon Thoresen	win	loss	13827	19977	KO	Punch	John McCarthy	1	4:10
21045	2	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	Mitch Gagnon	Walel Watson	win	loss	37404	36403	Submission	Rear-Naked Choke	Josh Rosenthal	1	1:09
21045	1	UFC 152 - Jones vs. Belfort	2012-09-22	Air Canada Centre, Toronto, Ontario, Canada	Kyle Noke	Charlie Brenneman	win	loss	7632	23403	TKO	Punches	Dan Miragliotta	1	0:45
22725	10	UFC on Fuel TV 5 - Struve vs. Miocic	2012-09-29	Capital FM Arena, Nottingham, England, England	Dan Hardy	Amir Sadollah	win	loss	10629	34071	Decision	Unanimous	Marc Goddard	3	5:00
22725	9	UFC on Fuel TV 5 - Struve vs. Miocic	2012-09-29	Capital FM Arena, Nottingham, England, England	Brad Pickett	Yves Jabouin	win	loss	11743	1693	KO	Punch	Leon Roberts	1	3:40
22725	8	UFC on Fuel TV 5 - Struve vs. Miocic	2012-09-29	Capital FM Arena, Nottingham, England, England	Matt Wiman	Paul Sass	win	loss	12236	23531	Submission	Armbar	Herb Dean	1	3:48
22725	7	UFC on Fuel TV 5 - Struve vs. Miocic	2012-09-29	Capital FM Arena, Nottingham, England, England	John Hathaway	John Maguire	win	loss	16704	15574	Decision	Unanimous	Marc Goddard	3	5:00
22725	6	UFC on Fuel TV 5 - Struve vs. Miocic	2012-09-29	Capital FM Arena, Nottingham, England, England	Che Mills	Duane Ludwig	win	loss	8800	101	TKO	Knee Injury	Herb Dean	1	2:28
22725	5	UFC on Fuel TV 5 - Struve vs. Miocic	2012-09-29	Capital FM Arena, Nottingham, England, England	Jimi Manuwa	Kyle Kingsbury	win	loss	37528	16558	TKO	Doctor Stoppage	Leon Roberts	2	5:00
22725	4	UFC on Fuel TV 5 - Struve vs. Miocic	2012-09-29	Capital FM Arena, Nottingham, England, England	Akira Corassani	Andy Ogle	win	loss	22641	42659	Decision	Split	Marc Goddard	3	5:00
22725	3	UFC on Fuel TV 5 - Struve vs. Miocic	2012-09-29	Capital FM Arena, Nottingham, England, England	Brad Tavares	Tom Watson	win	loss	33095	15179	Decision	Split	Leon Roberts	3	5:00
22725	2	UFC on Fuel TV 5 - Struve vs. Miocic	2012-09-29	Capital FM Arena, Nottingham, England, England	Gunnar Nelson	DaMarques Johnson	win	loss	25246	12913	Submission	Rear-Naked Choke	Herb Dean	1	3:34
22725	1	UFC on Fuel TV 5 - Struve vs. Miocic	2012-09-29	Capital FM Arena, Nottingham, England, England	Robbie Peralta	Jason Young	win	loss	21339	17758	KO	Punches	Marc Goddard	1	0:23
22541	10	UFC on FX 5 - Browne vs. Bigfoot	2012-10-05	Target Center, Minneapolis, Minnesota, United States	Antonio Silva	Travis Browne	win	loss	12354	16785	TKO	Punches	Herb Dean	1	3:27
22541	9	UFC on FX 5 - Browne vs. Bigfoot	2012-10-05	Target Center, Minneapolis, Minnesota, United States	Jake Ellenberger	Jay Hieron	win	loss	13068	9267	Decision	Unanimous	Josh Rosenthal	3	5:00
22541	8	UFC on FX 5 - Browne vs. Bigfoot	2012-10-05	Target Center, Minneapolis, Minnesota, United States	John Dodson	Jussier da Silva	win	loss	11660	36939	TKO	Punches	Daryl Guthmiller	2	4:35
22541	6	UFC on FX 5 - Browne vs. Bigfoot	2012-10-05	Target Center, Minneapolis, Minnesota, United States	Michael Johnson	Danny Castillo	win	loss	68788	26070	KO	Punches	Josh Rosenthal	2	1:06
22541	5	UFC on FX 5 - Browne vs. Bigfoot	2012-10-05	Target Center, Minneapolis, Minnesota, United States	Mike Pierce	Aaron Simpson	win	loss	25415	24986	KO	Punches	Daryl Guthmiller	2	0:29
22541	4	UFC on FX 5 - Browne vs. Bigfoot	2012-10-05	Target Center, Minneapolis, Minnesota, United States	Marcus LeVesseur	Carlo Prater	win	loss	23538	6767	Decision	Split	Josh Rosenthal	3	5:00
22541	3	UFC on FX 5 - Browne vs. Bigfoot	2012-10-05	Target Center, Minneapolis, Minnesota, United States	Jacob Volkmann	Shane Roller	win	loss	24765	24540	Submission	Rear-Naked Choke	Herb Dean	1	2:38
22541	2	UFC on FX 5 - Browne vs. Bigfoot	2012-10-05	Target Center, Minneapolis, Minnesota, United States	Diego Nunes	Bart Palaszewski	win	loss	25981	3496	Decision	Unanimous	Daryl Guthmiller	3	5:00
1943	2	UFC 46 - Supernatural	2004-01-31	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Josh Thomson	Hermes Franca	win	loss	2394	3068	Decision	Unanimous	N/A	3	5:00
22541	1	UFC on FX 5 - Browne vs. Bigfoot	2012-10-05	Target Center, Minneapolis, Minnesota, United States	Darren Uyenoyama	Phil Harris	win	loss	4679	8753	Submission	Rear-Naked Choke	Nick Gamst	2	3:38
23527	12	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Anderson Silva	Stephan Bonnar	win	loss	1356	3014	TKO	Knee to the Body and Punches	Marc Goddard	1	4:40
23527	11	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Antonio Rodrigo Nogueira	Dave Herman	win	loss	1440	19720	Submission	Armbar	Mario Yamasaki	2	4:31
23527	10	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Glover Teixeira	Fabio Maldonado	win	loss	4655	16426	TKO	Doctor Stoppage	Mario Yamasaki	2	5:00
23527	9	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Jon Fitch	Erick Silva	win	loss	4865	15009	Decision	Unanimous	Marc Goddard	3	5:00
23527	8	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Phil Davis	Wagner Prado	win	loss	27802	53134	Submission	Anaconda Choke	Marc Goddard	2	4:29
23527	7	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Demian Maia	Rick Story	win	loss	14637	25989	Submission	Neck Crank	Mario Yamasaki	1	2:30
23527	6	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Rony Mariano Bezerra	Sam Sicilia	win	loss	38190	53205	TKO	Punches	Fernando Yamasaki	2	4:16
23527	5	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Gleison Tibau	Francisco Trinaldo	win	loss	5993	31103	Decision	Unanimous	Marc Goddard	3	5:00
23527	4	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Diego Brandao	Joey Gambino	win	loss	25097	55503	Decision	Unanimous	Fernando Yamasaki	3	5:00
23527	3	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Sergio Moraes	Renee Forte	win	loss	21343	37684	Submission	Rear-Naked Choke	Mario Yamasaki	3	3:10
23527	2	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Chris Camozzi	Luiz Cane	win	loss	17224	17559	Decision	Unanimous	Marc Goddard	3	5:00
23527	1	UFC 153 - Silva vs. Bonnar	2012-10-13	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Cristiano Marcello	Reza Madadi	win	loss	3530	18921	Decision	Split	Fernando Yamasaki	3	5:00
23437	9	UFC on Fuel TV 6 - Franklin vs. Le	2012-11-10	Cotai Arena, Cotai, Macau, China	Cung Le	Rich Franklin	win	loss	14883	392	KO	Punch	Marc Goddard	1	2:17
23437	7	UFC on Fuel TV 6 - Franklin vs. Le	2012-11-10	Cotai Arena, Cotai, Macau, China	Dong Hyun Kim	Paulo Thiago	win	loss	16374	13336	Decision	Unanimous	Marc Goddard	3	5:00
22541	7	UFC on FX 5 - Browne vs. Bigfoot	2012-10-05	Target Center, Minneapolis, Minnesota, United States	Justin Edwards	Josh Neer	win	loss	37452	9179	TKO	Submission (Guillotine Choke	Nick Gamst	1	0:45
23437	6	UFC on Fuel TV 6 - Franklin vs. Le	2012-11-10	Cotai Arena, Cotai, Macau, China	Takanori Gomi	Mac Danzig	win	loss	425	3396	Decision	Split	Steve Perceval	3	5:00
23437	5	UFC on Fuel TV 6 - Franklin vs. Le	2012-11-10	Cotai Arena, Cotai, Macau, China	Jon Tuck	Tiequan Zhang	win	loss	45108	16984	Decision	Unanimous	Marc Goddard	3	5:00
23437	4	UFC on Fuel TV 6 - Franklin vs. Le	2012-11-10	Cotai Arena, Cotai, Macau, China	Takeya Mizugaki	Jeff Hougland	win	loss	12074	4870	Decision	Unanimous	Steve Perceval	3	5:00
23437	3	UFC on Fuel TV 6 - Franklin vs. Le	2012-11-10	Cotai Arena, Cotai, Macau, China	Alex Caceres	Motonobu Tezuka	win	loss	41586	19390	Decision	Split	Marc Goddard	3	5:00
23437	2	UFC on Fuel TV 6 - Franklin vs. Le	2012-11-10	Cotai Arena, Cotai, Macau, China	John Lineker	Yasuhiro Urushitani	win	loss	41906	1349	Decision	Unanimous	Steve Perceval	3	5:00
21047	12	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	Georges St. Pierre	Carlos Condit	win	loss	3500	6765	Decision	Unanimous	Yves Lavigne	5	5:00
21047	11	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	Johny Hendricks	Martin Kampmann	win	loss	24539	5344	KO	Punch	Dan Miragliotta	1	0:46
21047	10	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	Francis Carmont	Tom Lawlor	win	loss	9798	21940	Decision	Split	Philippe Chartier	3	5:00
21047	9	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	Rafael dos Anjos	Mark Bocek	win	loss	11675	9781	Decision	Unanimous	Yves Lavigne	3	5:00
21047	8	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	Pablo Garza	Mark Hominick	win	loss	35448	4728	Decision	Unanimous	Marc-Andre Cote	3	5:00
21047	7	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	Patrick Cote	Alessio Sakara	win	loss	6612	5366	DQ	Punches to Back of Head	Dan Miragliotta	1	1:26
21047	6	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	Cyrille Diabate	Chad Griggs	win	loss	2191	15932	Submission	Rear-Naked Choke	Marc-Andre Cote	1	2:44
21047	5	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	John Makdessi	Sam Stout	win	loss	37402	9901	Decision	Unanimous	Marc-Andre Cote	3	5:00
21047	4	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	Antonio Carvalho	Rodrigo Damm	win	loss	5346	11507	Decision	Split	Dan Miragliotta	3	5:00
21047	3	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	Matt Riddle	John Maguire	win	loss	34072	15574	Decision	Unanimous	Yves Lavigne	3	5:00
21047	2	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	Ivan Menjivar	Azamat Gashimov	win	loss	993	71175	Submission	Armbar	Philippe Chartier	1	2:44
21047	1	UFC 154 - St. Pierre vs. Condit	2012-11-17	Bell Centre, Montreal, Quebec, Canada	Darren Elkins	Steven Siler	win	loss	22094	22537	Decision	Unanimous	Marc-Andre Cote	3	5:00
23169	11	UFC on Fox 5 - Henderson vs. Diaz	2012-12-08	Key Arena, Seattle, Washington, United States	Benson Henderson	Nate Diaz	win	loss	20548	11451	Decision	Unanimous	Herb Dean	5	5:00
23169	10	UFC on Fox 5 - Henderson vs. Diaz	2012-12-08	Key Arena, Seattle, Washington, United States	Alexander Gustafsson	Mauricio Rua	win	loss	26162	5707	Decision	Unanimous	Dan Miragliotta	3	5:00
23169	9	UFC on Fox 5 - Henderson vs. Diaz	2012-12-08	Key Arena, Seattle, Washington, United States	Rory MacDonald	B.J. Penn	win	loss	14018	1307	Decision	Unanimous	Herb Dean	3	5:00
23169	8	UFC on Fox 5 - Henderson vs. Diaz	2012-12-08	Key Arena, Seattle, Washington, United States	Matt Brown	Mike Swick	win	loss	14310	5199	KO	Punches	Dan Miragliotta	2	2:31
23169	7	UFC on Fox 5 - Henderson vs. Diaz	2012-12-08	Key Arena, Seattle, Washington, United States	Yves Edwards	Jeremy Stephens	win	loss	344	12179	KO	Punches and Elbows	Steve Newport	1	1:55
23169	6	UFC on Fox 5 - Henderson vs. Diaz	2012-12-08	Key Arena, Seattle, Washington, United States	Raphael Assuncao	Mike Easton	win	loss	9574	9626	Decision	Unanimous	Steve Newport	3	5:00
23169	5	UFC on Fox 5 - Henderson vs. Diaz	2012-12-08	Key Arena, Seattle, Washington, United States	Ramsey Nijem	Joe Proctor	win	loss	36963	46307	Decision	Unanimous	Dan Miragliotta	3	5:00
23169	4	UFC on Fox 5 - Henderson vs. Diaz	2012-12-08	Key Arena, Seattle, Washington, United States	Daron Cruickshank	Henry Martinez	win	loss	53717	13237	KO	Head Kick	Anthony Hamlett	2	2:57
23169	3	UFC on Fox 5 - Henderson vs. Diaz	2012-12-08	Key Arena, Seattle, Washington, United States	Abel Trujillo	Marcus LeVesseur	win	loss	17129	23538	TKO	Knees to the Body	Anthony Hamlett	2	3:56
23169	2	UFC on Fox 5 - Henderson vs. Diaz	2012-12-08	Key Arena, Seattle, Washington, United States	Dennis Siver	Nam Phan	win	loss	9817	5778	Decision	Unanimous	Anthony Hamlett	3	5:00
23169	1	UFC on Fox 5 - Henderson vs. Diaz	2012-12-08	Key Arena, Seattle, Washington, United States	Scott Jorgensen	John Albert	win	loss	16852	43796	Submission	Rear-Naked Choke	Herb Dean	1	4:59
24707	10	UFC on FX 6 - Sotiropoulos vs. Pearson	2012-12-15	Gold Coast Convention Centre, Gold Coast, Queensland, Australia	Ross Pearson	George Sotiropoulos	win	loss	11884	11702	TKO	Punches	Marc Goddard	3	0:41
24707	9	UFC on FX 6 - Sotiropoulos vs. Pearson	2012-12-15	Gold Coast Convention Centre, Gold Coast, Queensland, Australia	Robert Whittaker	Bradley Scott	win	loss	45132	44442	Decision	Unanimous	Steve Perceval	3	5:00
24707	8	UFC on FX 6 - Sotiropoulos vs. Pearson	2012-12-15	Gold Coast Convention Centre, Gold Coast, Queensland, Australia	Norman Parke	Colin Fletcher	win	loss	47549	34621	Decision	Unanimous	John Sharp	3	5:00
24707	7	UFC on FX 6 - Sotiropoulos vs. Pearson	2012-12-15	Gold Coast Convention Centre, Gold Coast, Queensland, Australia	Hector Lombard	Rousimar Palhares	win	loss	11292	16286	KO	Punches	Marc Goddard	1	3:38
24707	6	UFC on FX 6 - Sotiropoulos vs. Pearson	2012-12-15	Gold Coast Convention Centre, Gold Coast, Queensland, Australia	Chad Mendes	Yaotzin Meza	win	loss	38393	15937	KO	Punches	Steve Perceval	1	1:55
24707	4	UFC on FX 6 - Sotiropoulos vs. Pearson	2012-12-15	Gold Coast Convention Centre, Gold Coast, Queensland, Australia	Mike Pierce	Seth Baczynski	win	loss	25415	13827	Decision	Unanimous	Marc Goddard	3	5:00
24707	3	UFC on FX 6 - Sotiropoulos vs. Pearson	2012-12-15	Gold Coast Convention Centre, Gold Coast, Queensland, Australia	Ben Alloway	Manuel Rodriguez	win	loss	60790	46484	KO	Front Kick and Punches	Steve Perceval	1	4:57
24707	1	UFC on FX 6 - Sotiropoulos vs. Pearson	2012-12-15	Gold Coast Convention Centre, Gold Coast, Queensland, Australia	Cody Donovan	Nick Penner	win	loss	22304	23736	KO	Punches	Marc Goddard	1	4:35
24719	11	UFC - The Ultimate Fighter 16 Finale	2012-12-15	The Joint at the Hard Rock Hotel & Casino, Las Vegas, Nevada, United States	Roy Nelson	Matt Mitrione	win	loss	10249	49519	TKO	Punches	Herb Dean	1	2:58
24719	10	UFC - The Ultimate Fighter 16 Finale	2012-12-15	The Joint at the Hard Rock Hotel & Casino, Las Vegas, Nevada, United States	Colton Smith	Mike Ricci	win	loss	63163	33532	Decision	Unanimous	Steve Mazzagatti	3	5:00
24719	9	UFC - The Ultimate Fighter 16 Finale	2012-12-15	The Joint at the Hard Rock Hotel & Casino, Las Vegas, Nevada, United States	Pat Barry	Shane del Rosario	win	loss	33342	17393	KO	Punches	Kim Winslow	2	0:26
24719	8	UFC - The Ultimate Fighter 16 Finale	2012-12-15	The Joint at the Hard Rock Hotel & Casino, Las Vegas, Nevada, United States	Dustin Poirier	Jonathan Brookins	win	loss	50529	17316	Submission	Brabo Choke	Herb Dean	1	4:15
24719	7	UFC - The Ultimate Fighter 16 Finale	2012-12-15	The Joint at the Hard Rock Hotel & Casino, Las Vegas, Nevada, United States	Mike Pyle	James Head	win	loss	4577	23253	TKO	Knee and Punches	Steve Mazzagatti	1	1:55
24719	6	UFC - The Ultimate Fighter 16 Finale	2012-12-15	The Joint at the Hard Rock Hotel & Casino, Las Vegas, Nevada, United States	Johnny Bedford	Marcos Vinicius Borges Pancini	win	loss	19717	51728	KO	Punches	Kim Winslow	2	1:00
24719	5	UFC - The Ultimate Fighter 16 Finale	2012-12-15	The Joint at the Hard Rock Hotel & Casino, Las Vegas, Nevada, United States	Rustam Khabilov	Vinc Pichel	win	loss	45417	57848	KO	Suplex and Punches	Chris Tognoni	1	2:15
24719	3	UFC - The Ultimate Fighter 16 Finale	2012-12-15	The Joint at the Hard Rock Hotel & Casino, Las Vegas, Nevada, United States	Hugo Viana	Reuben Duran	win	loss	65456	26602	KO	Punch	Steve Mazzagatti	1	4:05
24719	2	UFC - The Ultimate Fighter 16 Finale	2012-12-15	The Joint at the Hard Rock Hotel & Casino, Las Vegas, Nevada, United States	Mike Rio	John Cofer	win	loss	54833	33523	Submission	Armbar	Kim Winslow	3	4:11
24719	1	UFC - The Ultimate Fighter 16 Finale	2012-12-15	The Joint at the Hard Rock Hotel & Casino, Las Vegas, Nevada, United States	Tim Elliott	Jared Papazian	win	loss	49213	33531	Decision	Unanimous	Chris Tognoni	3	5:00
24185	12	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Cain Velasquez	Junior dos Santos	win	loss	19102	17272	Decision	Unanimous	Herb Dean	5	5:00
24185	11	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jim Miller	Joe Lauzon	win	loss	14463	4923	Decision	Unanimous	Yves Lavigne	3	5:00
24185	10	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Costas Philippou	Tim Boetsch	win	loss	32432	19544	TKO	Punches	Kim Winslow	3	2:11
24185	9	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Yushin Okami	Alan Belcher	win	loss	5569	10967	Decision	Unanimous	Chris Tognoni	3	5:00
24185	8	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Derek Brunson	Chris Leben	win	loss	68494	6258	Decision	Unanimous	Herb Dean	3	5:00
1943	1	UFC 46 - Supernatural	2004-01-31	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Matt Serra	Jeff Curran	win	loss	1305	770	Decision	Unanimous	N/A	3	5:00
2121	8	UFC 47 - It's On	2004-04-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Chuck Liddell	Tito Ortiz	win	loss	192	158	KO	Punches	N/A	2	0:38
2121	7	UFC 47 - It's On	2004-04-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Chris Lytle	Tiki Ghosn	win	loss	267	88	Submission	Bulldog Choke	N/A	2	1:55
24185	7	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Eddie Wineland	Brad Pickett	win	loss	4173	11743	Decision	Split	Yves Lavigne	3	5:00
24185	6	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Erik Perez	Byron Bloodworth	win	loss	35509	17355	TKO	Punches	Kim Winslow	1	3:50
24185	5	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jamie Varner	Melvin Guillard	win	loss	7168	7431	Decision	Split	Chris Tognoni	3	5:00
24185	4	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Myles Jury	Michael Johnson	win	loss	34236	68788	Decision	Unanimous	Herb Dean	3	5:00
24185	3	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Todd Duffee	Philip De Fries	win	loss	22903	46202	TKO	Punches	Yves Lavigne	1	2:04
24185	2	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Max Holloway	Leonard Garcia	win	loss	38671	2815	Decision	Split	Kim Winslow	3	5:00
24185	1	UFC 155 - Dos Santos vs. Velasquez 2	2012-12-29	MGM Grand Garden Arena, Las Vegas, Nevada, United States	John Moraga	Chris Cariaso	win	loss	55159	16467	Submission	Guillotine Choke	Chris Tognoni	3	1:11
26135	11	UFC on FX 7 - Belfort vs. Bisping	2013-01-19	Geraldo Jose de Almeida State Gymnasium, Sao Paulo, Brazil, Brazil	Vitor Belfort	Michael Bisping	win	loss	156	10196	TKO	Head Kick and Punches	Dan Miragliotta	2	1:27
26135	10	UFC on FX 7 - Belfort vs. Bisping	2013-01-19	Geraldo Jose de Almeida State Gymnasium, Sao Paulo, Brazil, Brazil	C.B. Dollaway	Daniel Sarafian	win	loss	22350	17665	Decision	Split	Mario Yamasaki	3	5:00
26135	9	UFC on FX 7 - Belfort vs. Bisping	2013-01-19	Geraldo Jose de Almeida State Gymnasium, Sao Paulo, Brazil, Brazil	Gabriel Gonzaga	Ben Rothwell	win	loss	7306	2262	Submission	Guillotine Choke	Marc Goddard	2	1:01
26135	8	UFC on FX 7 - Belfort vs. Bisping	2013-01-19	Geraldo Jose de Almeida State Gymnasium, Sao Paulo, Brazil, Brazil	Khabib Nurmagomedov	Thiago Tavares	win	loss	56035	4647	TKO	Punches and Elbows	Dan Miragliotta	1	1:55
26135	7	UFC on FX 7 - Belfort vs. Bisping	2013-01-19	Geraldo Jose de Almeida State Gymnasium, Sao Paulo, Brazil, Brazil	Godofredo Castro	Milton Vieira	win	loss	40623	4481	Decision	Split	Mario Yamasaki	3	5:00
26135	6	UFC on FX 7 - Belfort vs. Bisping	2013-01-19	Geraldo Jose de Almeida State Gymnasium, Sao Paulo, Brazil, Brazil	Ronny Markes	Andrew Craig	win	loss	21175	63284	Decision	Unanimous	Marc Goddard	3	5:00
26135	5	UFC on FX 7 - Belfort vs. Bisping	2013-01-19	Geraldo Jose de Almeida State Gymnasium, Sao Paulo, Brazil, Brazil	Nik Lentz	Diego Nunes	win	loss	15058	25981	Decision	Unanimous	Dan Miragliotta	3	5:00
26135	4	UFC on FX 7 - Belfort vs. Bisping	2013-01-19	Geraldo Jose de Almeida State Gymnasium, Sao Paulo, Brazil, Brazil	Edson Barboza	Lucas Martins	win	loss	46259	100031	TKO	Retirement	Mario Yamasaki	1	2:38
26135	2	UFC on FX 7 - Belfort vs. Bisping	2013-01-19	Geraldo Jose de Almeida State Gymnasium, Sao Paulo, Brazil, Brazil	Ildemar Alcantara	Wagner Prado	win	loss	22223	53134	Submission	Kneebar	Mario Yamasaki	2	2:39
26135	1	UFC on FX 7 - Belfort vs. Bisping	2013-01-19	Geraldo Jose de Almeida State Gymnasium, Sao Paulo, Brazil, Brazil	Francisco Trinaldo	C.J. Keith	win	loss	31103	70452	Submission	Arm-Triangle Choke	Marc Goddard	2	1:50
26199	11	UFC on Fox 6 - Johnson vs. Dodson	2013-01-26	United Center, Chicago, Illinois, United States	Demetrious Johnson	John Dodson	win	loss	45452	11660	Decision	Unanimous	John McCarthy	5	5:00
26199	10	UFC on Fox 6 - Johnson vs. Dodson	2013-01-26	United Center, Chicago, Illinois, United States	Glover Teixeira	Quinton Jackson	win	loss	4655	348	Decision	Unanimous	Herb Dean	3	5:00
26199	9	UFC on Fox 6 - Johnson vs. Dodson	2013-01-26	United Center, Chicago, Illinois, United States	Anthony Pettis	Donald Cerrone	win	loss	26627	15105	KO	Kick to the Body	Robert Madrigal	1	2:35
26199	8	UFC on Fox 6 - Johnson vs. Dodson	2013-01-26	United Center, Chicago, Illinois, United States	Ricardo Lamas	Erik Koch	win	loss	32051	23390	TKO	Elbows	John McCarthy	2	2:32
26199	7	UFC on Fox 6 - Johnson vs. Dodson	2013-01-26	United Center, Chicago, Illinois, United States	T.J. Grant	Matt Wiman	win	loss	15906	12236	KO	Elbows and Punches	John McCarthy	1	4:51
26199	6	UFC on Fox 6 - Johnson vs. Dodson	2013-01-26	United Center, Chicago, Illinois, United States	Clay Guida	Hatsu Hioki	win	loss	8184	5466	Decision	Split	Robert Madrigal	3	5:00
26199	5	UFC on Fox 6 - Johnson vs. Dodson	2013-01-26	United Center, Chicago, Illinois, United States	Pascal Krauss	Mike Stumpf	win	loss	43439	20967	Decision	Unanimous	Herb Dean	3	5:00
26199	4	UFC on Fox 6 - Johnson vs. Dodson	2013-01-26	United Center, Chicago, Illinois, United States	Ryan Bader	Vladimir Matyushenko	win	loss	22858	435	Submission	Guillotine Choke	John McCarthy	1	0:50
26199	3	UFC on Fox 6 - Johnson vs. Dodson	2013-01-26	United Center, Chicago, Illinois, United States	Shawn Jordan	Mike Russow	win	loss	45624	20552	TKO	Punches and Elbows	Herb Dean	2	3:48
26199	2	UFC on Fox 6 - Johnson vs. Dodson	2013-01-26	United Center, Chicago, Illinois, United States	Rafael Natal	Sean Spencer	win	loss	13968	60908	Submission	Arm-Triangle Choke	Robert Madrigal	3	2:13
2121	6	UFC 47 - It's On	2004-04-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Yves Edwards	Hermes Franca	win	loss	344	3068	Decision	Split	N/A	3	5:00
26199	1	UFC on Fox 6 - Johnson vs. Dodson	2013-01-26	United Center, Chicago, Illinois, United States	David Mitchell	Simeon Thoresen	win	loss	16830	19977	Decision	Unanimous	Herb Dean	3	5:00
26099	11	UFC 156 - Aldo vs. Edgar	2013-02-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jose Aldo	Frankie Edgar	win	loss	11506	14204	Decision	Unanimous	Steve Mazzagatti	5	5:00
26099	10	UFC 156 - Aldo vs. Edgar	2013-02-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Antonio Rogerio Nogueira	Rashad Evans	win	loss	2270	10200	Decision	Unanimous	Yves Lavigne	3	5:00
26099	9	UFC 156 - Aldo vs. Edgar	2013-02-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Antonio Silva	Alistair Overeem	win	loss	12354	461	KO	Punches	Herb Dean	3	0:25
26099	8	UFC 156 - Aldo vs. Edgar	2013-02-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Demian Maia	Jon Fitch	win	loss	14637	4865	Decision	Unanimous	Kim Winslow	3	5:00
26099	7	UFC 156 - Aldo vs. Edgar	2013-02-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Joseph Benavidez	Ian McCall	win	loss	15008	5001	Decision	Unanimous	Steve Mazzagatti	3	5:00
26099	6	UFC 156 - Aldo vs. Edgar	2013-02-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Evan Dunham	Gleison Tibau	win	loss	22038	5993	Decision	Split	Yves Lavigne	3	5:00
26099	5	UFC 156 - Aldo vs. Edgar	2013-02-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Tyron Woodley	Jay Hieron	win	loss	42605	9267	KO	Punches	Herb Dean	1	0:36
26099	4	UFC 156 - Aldo vs. Edgar	2013-02-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Bobby Green	Jacob Volkmann	win	loss	27953	24765	Submission	Rear-Naked Choke	Kim Winslow	3	4:25
26099	3	UFC 156 - Aldo vs. Edgar	2013-02-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Isaac Vallie-Flagg	Yves Edwards	win	loss	8180	344	Decision	Split	Yves Lavigne	3	5:00
26099	2	UFC 156 - Aldo vs. Edgar	2013-02-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Dustin Kimura	Chico Camus	win	loss	41247	42850	Submission	Rear-Naked Choke	Herb Dean	3	1:50
26099	1	UFC 156 - Aldo vs. Edgar	2013-02-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Francisco Rivera	Edwin Figueroa	win	loss	11908	22490	TKO	Punches	Kim Winslow	2	4:20
26459	12	UFC on Fuel TV 7 - Barao vs. McDonald	2013-02-16	Wembley Arena, London, England, England	Renan Barao	Michael McDonald	win	loss	23156	30297	Submission	Arm-Triangle Choke	Marc Goddard	4	3:57
26459	11	UFC on Fuel TV 7 - Barao vs. McDonald	2013-02-16	Wembley Arena, London, England, England	Cub Swanson	Dustin Poirier	win	loss	11002	50529	Decision	Unanimous	Kevin Mulhall	3	5:00
26459	10	UFC on Fuel TV 7 - Barao vs. McDonald	2013-02-16	Wembley Arena, London, England, England	Jimi Manuwa	Cyrille Diabate	win	loss	37528	2191	TKO	Retirement	Leon Roberts	1	5:00
26459	9	UFC on Fuel TV 7 - Barao vs. McDonald	2013-02-16	Wembley Arena, London, England, England	Gunnar Nelson	Jorge Santiago	win	loss	25246	5735	Decision	Unanimous	Marc Goddard	3	5:00
26459	8	UFC on Fuel TV 7 - Barao vs. McDonald	2013-02-16	Wembley Arena, London, England, England	James Te Huna	Ryan Jimmo	win	loss	9033	21044	Decision	Unanimous	Leon Roberts	3	5:00
26459	6	UFC on Fuel TV 7 - Barao vs. McDonald	2013-02-16	Wembley Arena, London, England, England	Renee Forte	Terry Etim	win	loss	37684	13332	Decision	Unanimous	Marc Goddard	3	5:00
26459	5	UFC on Fuel TV 7 - Barao vs. McDonald	2013-02-16	Wembley Arena, London, England, England	Danny Castillo	Paul Sass	win	loss	26070	23531	Decision	Unanimous	Neil Hall	3	5:00
26459	4	UFC on Fuel TV 7 - Barao vs. McDonald	2013-02-16	Wembley Arena, London, England, England	Andy Ogle	Josh Grispi	win	loss	42659	20416	Decision	Unanimous	Marc Goddard	3	5:00
26459	3	UFC on Fuel TV 7 - Barao vs. McDonald	2013-02-16	Wembley Arena, London, England, England	Tom Watson	Stanislav Nedkov	win	loss	15179	27115	TKO	Knee to the Body and Punches	Kevin Mulhall	2	4:42
26459	1	UFC on Fuel TV 7 - Barao vs. McDonald	2013-02-16	Wembley Arena, London, England, England	Phil Harris	Ulysses Gomez	win	loss	8753	30396	Decision	Unanimous	Neil Hall	3	5:00
26381	12	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Ronda Rousey	Liz Carmouche	win	loss	73073	67007	Submission	Armbar	John McCarthy	1	4:49
26381	11	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Lyoto Machida	Dan Henderson	win	loss	7513	195	Decision	Split	Herb Dean	3	5:00
26381	10	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Urijah Faber	Ivan Menjivar	win	loss	8847	993	Submission	Rear-Naked Choke	Jason Herzog	1	4:34
26381	9	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Court McGee	Josh Neer	win	loss	34124	9179	Decision	Unanimous	John McCarthy	3	5:00
26381	8	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Robbie Lawler	Josh Koscheck	win	loss	2245	9418	TKO	Punches	Herb Dean	1	3:57
26381	7	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Brendan Schaub	Lavar Johnson	win	loss	33926	9511	Decision	Unanimous	Jason Herzog	3	5:00
26381	6	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Michael Chiesa	Anton Kuivanen	win	loss	46224	14865	Submission	Rear-Naked Choke	John McCarthy	2	2:29
26381	5	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Dennis Bermudez	Matt Grice	win	loss	58065	14539	Decision	Split	Herb Dean	3	5:00
26381	4	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Sam Stout	Caros Fodor	win	loss	9901	45430	Decision	Split	Jason Herzog	3	5:00
26381	3	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Kenny Robertson	Brock Jardine	win	loss	31978	36630	Submission	Kneebar	John McCarthy	1	2:57
26381	2	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Neil Magny	Jon Manley	win	loss	69166	26632	Decision	Unanimous	Herb Dean	3	5:00
26381	1	UFC 157 - Rousey vs. Carmouche	2013-02-23	Honda Center, Anaheim, California, United States	Nah-Shon Burrell	Yuri Villefort	win	loss	53596	47069	Decision	Unanimous	Jason Herzog	3	5:00
26333	11	UFC on Fuel TV 8 - Silva vs. Stann	2013-03-03	Saitama Super Arena, Saitama, Japan, Japan	Wanderlei Silva	Brian Stann	win	loss	209	14829	KO	Punches	Marc Goddard	2	4:08
26333	10	UFC on Fuel TV 8 - Silva vs. Stann	2013-03-03	Saitama Super Arena, Saitama, Japan, Japan	Mark Hunt	Stefan Struve	win	loss	10668	15063	TKO	Punches	Herb Dean	3	1:44
26333	9	UFC on Fuel TV 8 - Silva vs. Stann	2013-03-03	Saitama Super Arena, Saitama, Japan, Japan	Diego Sanchez	Takanori Gomi	win	loss	4824	425	Decision	Split	Marc Goddard	3	5:00
26333	8	UFC on Fuel TV 8 - Silva vs. Stann	2013-03-03	Saitama Super Arena, Saitama, Japan, Japan	Yushin Okami	Hector Lombard	win	loss	5569	11292	Decision	Split	Herb Dean	3	5:00
26333	7	UFC on Fuel TV 8 - Silva vs. Stann	2013-03-03	Saitama Super Arena, Saitama, Japan, Japan	Rani Yahya	Mizuto Hirota	win	loss	10425	12078	Decision	Unanimous	Marc Goddard	3	5:00
26333	6	UFC on Fuel TV 8 - Silva vs. Stann	2013-03-03	Saitama Super Arena, Saitama, Japan, Japan	Dong Hyun Kim	Siyar Bahadurzada	win	loss	16374	5453	Decision	Unanimous	Herb Dean	3	5:00
26333	5	UFC on Fuel TV 8 - Silva vs. Stann	2013-03-03	Saitama Super Arena, Saitama, Japan, Japan	Brad Tavares	Riki Fukuda	win	loss	33095	10229	Decision	Unanimous	Thomas Fan	3	5:00
26333	4	UFC on Fuel TV 8 - Silva vs. Stann	2013-03-03	Saitama Super Arena, Saitama, Japan, Japan	Takeya Mizugaki	Bryan Caraway	win	loss	12074	13791	Decision	Split	Marc Goddard	3	5:00
26333	3	UFC on Fuel TV 8 - Silva vs. Stann	2013-03-03	Saitama Super Arena, Saitama, Japan, Japan	Kazuki Tokudome	Cristiano Marcello	win	loss	26192	3530	Decision	Unanimous	Thomas Fan	3	5:00
26333	1	UFC on Fuel TV 8 - Silva vs. Stann	2013-03-03	Saitama Super Arena, Saitama, Japan, Japan	Hyun Gyu Lim	Marcelo Guimaraes	win	loss	21040	20277	KO	Knee	Thomas Fan	2	4:00
27073	3	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	Rick Story	Quinn Mulhern	win	loss	25989	22873	TKO	Punches	Marc-Andre Cote	1	3:05
27073	2	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	T.J. Dillashaw	Issei Tamura	win	loss	62507	34371	KO	Head Kick and Punches	Yves Lavigne	2	0:26
27073	1	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	George Roop	Reuben Duran	win	loss	16415	26602	Decision	Unanimous	Philippe Chartier	3	5:00
27073	12	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	Georges St. Pierre	Nick Diaz	win	loss	3500	2831	Decision	Unanimous	Yves Lavigne	5	5:00
27073	11	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	Johny Hendricks	Carlos Condit	win	loss	24539	6765	Decision	Unanimous	Marc Goddard	3	5:00
27073	10	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	Jake Ellenberger	Nate Marquardt	win	loss	13068	1712	KO	Punches	Philippe Chartier	1	3:00
27073	9	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	Chris Camozzi	Nick Ring	win	loss	17224	6748	Decision	Split	Marc-Andre Cote	3	5:00
27073	8	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	Mike Ricci	Colin Fletcher	win	loss	33532	34621	Decision	Unanimous	Marc Goddard	3	5:00
27073	7	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	Patrick Cote	Bobby Voelker	win	loss	6612	15156	Decision	Unanimous	Philippe Chartier	3	5:00
27073	6	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	Darren Elkins	Antonio Carvalho	win	loss	22094	5346	TKO	Punches	Yves Lavigne	1	3:06
27073	5	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	Jordan Mein	Dan Miller	win	loss	6749	14464	TKO	Punches	Marc-Andre Cote	1	4:42
27073	4	UFC 158 - St. Pierre vs. Diaz	2013-03-16	Bell Centre, Montreal, Quebec, Canada	John Makdessi	Daron Cruickshank	win	loss	37402	53717	Decision	Unanimous	Marc Goddard	3	5:00
27589	13	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Gegard Mousasi	Ilir Latifi	win	loss	7466	40207	Decision	Unanimous	Marc Goddard	3	5:00
27589	12	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Ross Pearson	Ryan Couture	win	loss	11884	51228	TKO	Punches	Leon Roberts	2	3:45
27589	11	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Matt Mitrione	Philip De Fries	win	loss	49519	46202	KO	Punches	Marc Goddard	1	0:19
27589	10	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Brad Pickett	Mike Easton	win	loss	11743	9626	Decision	Split	Leon Roberts	3	5:00
27589	9	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Diego Brandao	Pablo Garza	win	loss	25097	35448	Submission	Arm-Triangle Choke	Marko Gyllenland	1	3:27
27589	8	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Akira Corassani	Robbie Peralta	win	loss	22641	21339	Decision	Unanimous	Kristian Hacklou	3	5:00
27589	7	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Reza Madadi	Michael Johnson	win	loss	18921	68788	Submission	Brabo Choke	Marko Gyllenland	3	1:33
27589	6	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Tor Troeng	Adam Cella	win	loss	6850	69956	Submission	Rear-Naked Choke	Marc Goddard	1	3:11
27589	5	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Adlan Amagov	Chris Spang	win	loss	41523	40205	Decision	Unanimous	Leon Roberts	3	5:00
27589	4	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Conor McGregor	Marcus Brimage	win	loss	29688	21618	TKO	Punches	Robert Sundel	1	1:07
27589	3	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Ryan LaFlare	Ben Alloway	win	loss	34409	60790	Decision	Unanimous	Kristian Hacklou	3	5:00
27589	2	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Tom Lawlor	Michael Kuiper	win	loss	21940	42901	Submission	Guillotine Choke	Marko Gyllenland	2	1:05
27589	1	UFC on Fuel TV 9 - Mousasi vs. Latifi	2013-04-06	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Papy Abedi	Besam Yousef	win	loss	20812	32445	Decision	Split	Robert Sundel	3	5:00
28015	12	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Jose Aldo	Chan Sung Jung	win	loss	11506	36155	TKO	Punches	Herb Dean	4	2:00
2121	5	UFC 47 - It's On	2004-04-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Andrei Arlovski	Wesley Correira	win	loss	270	2829	TKO	Punches	N/A	2	1:15
28023	12	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Urijah Faber	Scott Jorgensen	win	loss	8847	16852	Submission	Rear-Naked Choke	Steve Mazzagatti	4	3:16
28023	11	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Kelvin Gastelum	Uriah Hall	win	loss	74700	14210	Decision	Split	Herb Dean	3	5:00
28023	10	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Cat Zingano	Miesha Tate	win	loss	33932	26252	TKO	Knees and Elbow	Kim Winslow	3	2:55
28023	9	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Travis Browne	Gabriel Gonzaga	win	loss	16785	7306	KO	Elbows	Chris Tognoni	1	1:11
28023	8	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Bubba McDaniel	Gilbert Smith	win	loss	14600	65128	Submission	Triangle Armbar	Steve Mazzagatti	3	2:49
28023	7	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Josh Samman	Kevin Casey	win	loss	17460	24121	TKO	Knees	Herb Dean	2	2:17
28023	6	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Luke Barnatt	Collin Hart	win	loss	56567	47991	Decision	Unanimous	Kim Winslow	3	5:00
28023	5	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Dylan Andrews	Jimmy Quinlan	win	loss	21803	84661	TKO	Punches	Chris Tognoni	1	3:22
28023	4	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Clint Hester	Bristol Marunde	win	loss	43866	12961	KO	Elbow	Steve Mazzagatti	3	3:53
28023	3	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Cole Miller	Bart Palaszewski	win	loss	13133	3496	Submission	Rear-Naked Choke	Herb Dean	1	4:23
28023	2	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Maximo Blanco	Sam Sicilia	win	loss	36618	53205	Decision	Unanimous	Kim Winslow	3	5:00
28023	1	UFC - The Ultimate Fighter 17 Finale	2013-04-13	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Daniel Pineda	Justin Lawrence	win	loss	21564	73756	Submission	Kimura	Chris Tognoni	1	1:35
26213	12	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	Benson Henderson	Gilbert Melendez	win	loss	20548	5545	Decision	Split	John McCarthy	5	5:00
26213	11	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	Daniel Cormier	Frank Mir	win	loss	52311	2329	Decision	Unanimous	Herb Dean	3	5:00
26213	10	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	Josh Thomson	Nate Diaz	win	loss	2394	11451	TKO	Head Kick and Punches	Mike Beltran	2	3:44
26213	9	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	Matt Brown	Jordan Mein	win	loss	14310	6749	TKO	Elbows	John McCarthy	2	1:00
26213	8	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	Chad Mendes	Darren Elkins	win	loss	38393	22094	KO	Punches	Herb Dean	1	1:08
26213	7	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	Francis Carmont	Lorenz Larkin	win	loss	9798	51345	Decision	Unanimous	Mike Beltran	3	5:00
26213	6	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	Myles Jury	Ramsey Nijem	win	loss	34236	36963	KO	Punch	John McCarthy	2	1:02
26213	5	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	Joseph Benavidez	Darren Uyenoyama	win	loss	15008	4679	KO	Punch to the Body	Herb Dean	2	4:50
26213	4	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	Jorge Masvidal	Tim Means	win	loss	7688	11281	Decision	Unanimous	Mike Beltran	3	5:00
25825	11	UFC 159 - Jones vs. Sonnen	2013-04-27	Prudential Center, Newark, New Jersey, United States	Jon Jones	Chael Sonnen	win	loss	27944	4112	TKO	Elbows and Punches	Keith Peterson	1	4:33
25825	9	UFC 159 - Jones vs. Sonnen	2013-04-27	Prudential Center, Newark, New Jersey, United States	Roy Nelson	Cheick Kongo	win	loss	10249	2193	KO	Punches	Kevin Mulhall	1	2:03
25825	8	UFC 159 - Jones vs. Sonnen	2013-04-27	Prudential Center, Newark, New Jersey, United States	Phil Davis	Vinny Magalhaes	win	loss	27802	10709	Decision	Unanimous	Dan Miragliotta	3	5:00
25825	6	UFC 159 - Jones vs. Sonnen	2013-04-27	Prudential Center, Newark, New Jersey, United States	Rustam Khabilov	Yancy Medeiros	win	loss	45417	27738	TKO	Thumb Injury	Dan Miragliotta	1	2:32
25825	4	UFC 159 - Jones vs. Sonnen	2013-04-27	Prudential Center, Newark, New Jersey, United States	Sara McMann	Sheila Gaff	win	loss	67094	43445	TKO	Punches	Gasper Oliver	1	4:06
25825	3	UFC 159 - Jones vs. Sonnen	2013-04-27	Prudential Center, Newark, New Jersey, United States	Bryan Caraway	Johnny Bedford	win	loss	13791	19717	Submission	Guillotine Choke	Keith Peterson	3	4:44
25825	2	UFC 159 - Jones vs. Sonnen	2013-04-27	Prudential Center, Newark, New Jersey, United States	Cody McKenzie	Leonard Garcia	win	loss	22173	2815	Decision	Unanimous	Dan Miragliotta	3	5:00
25825	1	UFC 159 - Jones vs. Sonnen	2013-04-27	Prudential Center, Newark, New Jersey, United States	Steven Siler	Kurt Holobaugh	win	loss	22537	68751	Decision	Unanimous	Gasper Oliver	3	5:00
28215	13	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Vitor Belfort	Luke Rockhold	win	loss	156	23345	KO	Spinning Heel Kick and Punches	Leon Roberts	1	2:32
28215	11	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Rafael dos Anjos	Evan Dunham	win	loss	11675	22038	Decision	Unanimous	Kevin Mulhall	3	5:00
28215	10	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Rafael Natal	Joao Zeferino	win	loss	13968	17577	Decision	Unanimous	Leon Roberts	3	5:00
28215	9	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Nik Lentz	Hacran Dias	win	loss	15058	19789	Decision	Unanimous	Mario Yamasaki	3	5:00
2121	4	UFC 47 - It's On	2004-04-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Nick Diaz	Robbie Lawler	win	loss	2831	2245	KO	Punches	N/A	2	1:31
28215	8	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Francisco Trinaldo	Mike Rio	win	loss	31103	54833	Submission	Arm-Triangle Choke	Kevin Mulhall	1	3:08
28215	7	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Gleison Tibau	John Cholish	win	loss	5993	35867	Submission	Guillotine Choke	Leon Roberts	2	2:34
28215	6	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Paulo Thiago	Michel Richard Cunha dos Prazeres	win	loss	13336	22218	Decision	Unanimous	Mario Yamasaki	3	5:00
28215	5	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Iuri Alcantara	Iliarde Santos	win	loss	16129	39391	KO	Punches	Kevin Mulhall	1	2:31
28215	4	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Fabio Maldonado	Roger Hollett	win	loss	16426	15907	Decision	Unanimous	Leon Roberts	3	5:00
28215	3	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	John Lineker	Azamat Gashimov	win	loss	41906	71175	TKO	Punches	Mario Yamasaki	2	1:07
28215	2	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Jussier da Silva	Chris Cariaso	win	loss	36939	16467	Decision	Unanimous	Kevin Mulhall	3	5:00
28215	1	UFC on FX 8 - Belfort vs. Rockhold	2013-05-18	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Lucas Martins	Jeremy Larsen	win	loss	100031	19863	KO	Punch	Mario Yamasaki	3	0:13
28051	12	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Cain Velasquez	Antonio Silva	win	loss	19102	12354	TKO	Punches	Mario Yamasaki	1	1:21
28051	11	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Junior dos Santos	Mark Hunt	win	loss	17272	10668	KO	Spinning Hook Kick	Steve Mazzagatti	3	4:18
28051	10	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Glover Teixeira	James Te Huna	win	loss	4655	9033	Submission	Guillotine Choke	Herb Dean	1	2:38
28051	9	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	T.J. Grant	Gray Maynard	win	loss	15906	15835	TKO	Punches	Chris Tognoni	1	2:07
28051	8	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Donald Cerrone	K.J. Noons	win	loss	15105	6727	Decision	Unanimous	Mario Yamasaki	3	5:00
28051	7	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mike Pyle	Rick Story	win	loss	4577	25989	Decision	Split	Steve Mazzagatti	3	5:00
28051	6	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dennis Bermudez	Max Holloway	win	loss	58065	38671	Decision	Split	Herb Dean	3	5:00
28051	5	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Robert Whittaker	Colton Smith	win	loss	45132	63163	TKO	Punches	Chris Tognoni	3	0:41
25825	10	UFC 159 - Jones vs. Sonnen	2013-04-27	Prudential Center, Newark, New Jersey, United States	Michael Bisping	Alan Belcher	win	loss	10196	10967	TKO	Decision (Unanimous	Herb Dean	3	4:31
28051	3	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Stephen Thompson	Nah-Shon Burrell	win	loss	59608	53596	Decision	Unanimous	Steve Mazzagatti	3	5:00
28051	2	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	George Roop	Brian Bowles	win	loss	16415	18944	TKO	Punches	Herb Dean	2	1:43
28051	1	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jeremy Stephens	Estevan Payan	win	loss	12179	24952	Decision	Unanimous	Chris Tognoni	3	5:00
26101	12	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Fabricio Werdum	Antonio Rodrigo Nogueira	win	loss	8390	1440	Submission	Armbar	Mario Yamasaki	2	2:41
28459	11	UFC 162 - Silva vs. Weidman	2013-07-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chris Weidman	Anderson Silva	win	loss	42804	1356	KO	Punches	Herb Dean	2	1:18
26101	11	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Leonardo Santos	William Macario	win	loss	4810	69624	Submission	Arm-Triangle Choke	Marc Goddard	2	4:43
26101	10	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Thiago Silva	Rafael Cavalcante	win	loss	14396	16161	KO	Punches	Dan Miragliotta	1	4:29
26101	9	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Erick Silva	Jason High	win	loss	15009	14185	Submission	Reverse Triangle Armbar	Mario Yamasaki	1	1:11
26101	8	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Daniel Sarafian	Eddie Mendez	win	loss	17665	37421	Submission	Arm-Triangle Choke	Dan Miragliotta	1	2:20
26101	6	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Raphael Assuncao	Vaughan Lee	win	loss	9574	6946	Submission	Armbar	Mario Yamasaki	2	1:51
26101	5	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Felipe Arantes	Godofredo Castro	win	loss	31372	40623	TKO	Elbows and Punches	Dan Miragliotta	1	3:32
26101	4	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Ildemar Alcantara	Leandro Silva	win	loss	22223	86382	Decision	Unanimous	Marc Goddard	3	5:00
26101	3	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Rodrigo Damm	Mizuto Hirota	win	loss	11507	12078	Decision	Split	Mario Yamasaki	3	5:00
26101	2	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Caio Magalhaes	Karlos Vemola	win	loss	51163	40238	Submission	Rear-Naked Choke	Dan Miragliotta	2	2:49
26101	1	UFC on Fuel TV 10 - Nogueira vs. Werdum	2013-06-08	Paulo Sarasate Gymnasium, Fortaleza, Ceara, Brazil	Antonio Braga Neto	Anthony Smith	win	loss	19530	29470	Submission	Kneebar	Marc Goddard	1	1:52
28457	11	UFC 161 - Evans vs. Henderson	2013-06-15	MTS Centre, Winnipeg, Manitoba, Canada	Rashad Evans	Dan Henderson	win	loss	10200	195	Decision	Split	Herb Dean	3	5:00
2121	3	UFC 47 - It's On	2004-04-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Mike Kyle	Wes Sims	win	loss	3619	2713	KO	Punch	N/A	1	4:59
28457	10	UFC 161 - Evans vs. Henderson	2013-06-15	MTS Centre, Winnipeg, Manitoba, Canada	Stipe Miocic	Roy Nelson	win	loss	39537	10249	Decision	Unanimous	Jerin Valel	3	5:00
28457	9	UFC 161 - Evans vs. Henderson	2013-06-15	MTS Centre, Winnipeg, Manitoba, Canada	Ryan Jimmo	Igor Pokrajac	win	loss	21044	7621	Decision	Unanimous	Yves Lavigne	3	5:00
28457	8	UFC 161 - Evans vs. Henderson	2013-06-15	MTS Centre, Winnipeg, Manitoba, Canada	Alexis Davis	Rosi Sexton	win	loss	22071	5358	Decision	Unanimous	Herb Dean	3	5:00
28457	7	UFC 161 - Evans vs. Henderson	2013-06-15	MTS Centre, Winnipeg, Manitoba, Canada	Shawn Jordan	Pat Barry	win	loss	45624	33342	TKO	Punches	Jerin Valel	1	0:59
28457	6	UFC 161 - Evans vs. Henderson	2013-06-15	MTS Centre, Winnipeg, Manitoba, Canada	Jake Shields	Tyron Woodley	win	loss	502	42605	Decision	Split	Yves Lavigne	3	5:00
28457	5	UFC 161 - Evans vs. Henderson	2013-06-15	MTS Centre, Winnipeg, Manitoba, Canada	James Krause	Sam Stout	win	loss	31766	9901	Submission	Guillotine Choke	Adam Cheadle	3	4:47
28457	4	UFC 161 - Evans vs. Henderson	2013-06-15	MTS Centre, Winnipeg, Manitoba, Canada	Sean Pierson	Kenny Robertson	win	loss	573	31978	Decision	Majority	Herb Dean	3	5:00
28457	3	UFC 161 - Evans vs. Henderson	2013-06-15	MTS Centre, Winnipeg, Manitoba, Canada	Roland Delorme	Edwin Figueroa	win	loss	37351	22490	Decision	Unanimous	Yves Lavigne	3	5:00
28457	2	UFC 161 - Evans vs. Henderson	2013-06-15	MTS Centre, Winnipeg, Manitoba, Canada	Mitch Clarke	John Maguire	win	loss	22556	15574	Decision	Unanimous	Jerin Valel	3	5:00
28457	1	UFC 161 - Evans vs. Henderson	2013-06-15	MTS Centre, Winnipeg, Manitoba, Canada	Yves Jabouin	Dustin Pague	win	loss	1693	39781	Decision	Split	Adam Cheadle	3	5:00
28459	10	UFC 162 - Silva vs. Weidman	2013-07-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Frankie Edgar	Charles Oliveira	win	loss	14204	30300	Decision	Unanimous	Yves Lavigne	3	5:00
28459	9	UFC 162 - Silva vs. Weidman	2013-07-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tim Kennedy	Roger Gracie	win	loss	2830	19854	Decision	Unanimous	Kim Winslow	3	5:00
28459	8	UFC 162 - Silva vs. Weidman	2013-07-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mark Munoz	Tim Boetsch	win	loss	22411	19544	Decision	Unanimous	Steve Mazzagatti	3	5:00
28459	7	UFC 162 - Silva vs. Weidman	2013-07-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Cub Swanson	Dennis Siver	win	loss	11002	9817	TKO	Punches	Herb Dean	3	2:24
28459	6	UFC 162 - Silva vs. Weidman	2013-07-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Andrew Craig	Chris Leben	win	loss	63284	6258	Decision	Split	Yves Lavigne	3	5:00
28459	5	UFC 162 - Silva vs. Weidman	2013-07-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Norman Parke	Kazuki Tokudome	win	loss	47549	26192	Decision	Unanimous	Steve Mazzagatti	3	5:00
28459	4	UFC 162 - Silva vs. Weidman	2013-07-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Gabriel Gonzaga	Dave Herman	win	loss	7306	19720	KO	Punches	Kim Winslow	1	0:17
28459	3	UFC 162 - Silva vs. Weidman	2013-07-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Edson Barboza	Rafaello Oliveira	win	loss	46259	37260	TKO	Leg Kicks	Herb Dean	2	1:44
28459	2	UFC 162 - Silva vs. Weidman	2013-07-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brian Melancon	Seth Baczynski	win	loss	43621	13827	KO	Punches	Yves Lavigne	1	4:59
28459	1	UFC 162 - Silva vs. Weidman	2013-07-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mike Pierce	David Mitchell	win	loss	25415	16830	TKO	Punches	Steve Mazzagatti	2	2:55
26215	12	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Demetrious Johnson	John Moraga	win	loss	45452	55159	Submission	Armbar	Herb Dean	5	3:43
26215	11	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Rory MacDonald	Jake Ellenberger	win	loss	14018	13068	Decision	Unanimous	Herb Dean	3	5:00
26215	10	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Robbie Lawler	Bobby Voelker	win	loss	2245	15156	KO	Head Kick and Punch	Dan Miragliotta	2	0:24
26215	9	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Liz Carmouche	Jessica Andrade	win	loss	67007	100715	TKO	Punches and Elbows	Herb Dean	2	3:57
26215	8	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Jorge Masvidal	Michael Chiesa	win	loss	7688	46224	Submission	Brabo Choke	Dan Miragliotta	2	4:59
26215	7	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Danny Castillo	Tim Means	win	loss	26070	11281	Decision	Unanimous	Dan Miragliotta	3	5:00
26215	6	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Melvin Guillard	Mac Danzig	win	loss	7431	3396	KO	Punches	Steve Newport	2	2:47
26215	5	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Daron Cruickshank	Yves Edwards	win	loss	53717	344	Decision	Split	Steve Newport	3	5:00
26215	4	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Ed Herman	Trevor Smith	win	loss	6561	51113	Decision	Split	Herb Dean	3	5:00
26215	3	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Germaine de Randamie	Julie Kedzie	win	loss	41745	10093	Decision	Split	Randy Corley	3	5:00
26215	2	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Justin Salas	Aaron Riley	win	loss	16180	1567	Decision	Split	Randy Corley	3	5:00
26215	1	UFC on Fox 8 - Johnson vs. Moraga	2013-07-27	KeyArena, Seattle, Washington, United States	Yaotzin Meza	John Albert	win	loss	15937	43796	Submission	Rear-Naked Choke	Randy Corley	2	2:49
28015	11	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Phil Davis	Lyoto Machida	win	loss	27802	7513	Decision	Unanimous	Leon Roberts	3	5:00
28015	10	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Cezar Ferreira	Thiago Santos	win	loss	22400	90021	Submission	Guillotine Choke	Mario Yamasaki	1	0:47
28015	9	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Thales Leites	Tom Watson	win	loss	8593	15179	Decision	Unanimous	Herb Dean	3	5:00
13732	11	UFC 119 - Mir vs. Cro Cop	2010-09-25	Conseco Fieldhouse, Indianapolis, Indiana, United States	Frank Mir	Mirko Filipovic	win	loss	2329	2326	KO	Knee	Herb Dean	3	4:02
13732	10	UFC 119 - Mir vs. Cro Cop	2010-09-25	Conseco Fieldhouse, Indianapolis, Indiana, United States	Ryan Bader	Antonio Rogerio Nogueira	win	loss	22858	2270	Decision	Unanimous	Josh Rosenthal	3	5:00
28015	8	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	John Lineker	Jose Maria Tome	win	loss	41906	37681	TKO	Punches	Leon Roberts	2	1:03
28015	7	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Anthony Perosh	Vinny Magalhaes	win	loss	9491	10709	KO	Punches	Mario Yamasaki	1	0:14
28015	6	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Amanda Nunes	Sheila Gaff	win	loss	31496	43445	TKO	Punches and Elbows	Herb Dean	1	2:08
28015	5	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Sergio Moraes	Neil Magny	win	loss	21343	69166	Submission	Triangle Choke	Leon Roberts	1	3:13
28015	4	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Ian McCall	Iliarde Santos	win	loss	5001	39391	Decision	Unanimous	Mario Yamasaki	3	5:00
28015	3	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Rani Yahya	Josh Clopton	win	loss	10425	22105	Decision	Unanimous	Herb Dean	3	5:00
28015	2	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Francimar Barroso	Ednaldo Oliveira	win	loss	14702	14972	Decision	Unanimous	Leon Roberts	3	5:00
28015	1	UFC 163 - Aldo vs. Korean Zombie	2013-08-03	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Viscardi Andrade	Bristol Marunde	win	loss	30298	12961	TKO	Punches	Mario Yamasaki	1	1:36
29795	13	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	Chael Sonnen	Mauricio Rua	win	loss	4112	5707	Submission	Guillotine Choke	Herb Dean	1	4:47
29795	12	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	Travis Browne	Alistair Overeem	win	loss	16785	461	KO	Front Kick and Punches	Mario Yamasaki	1	4:08
29795	11	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	Urijah Faber	Iuri Alcantara	win	loss	8847	16129	Decision	Unanimous	Yves Lavigne	3	5:00
29795	10	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	Matt Brown	Mike Pyle	win	loss	14310	4577	KO	Punches	Kevin MacDonald	1	0:29
29795	9	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	John Howard	Uriah Hall	win	loss	11798	14210	Decision	Split	Mario Yamasaki	3	5:00
29795	8	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	Michael Johnson	Joe Lauzon	win	loss	68788	4923	Decision	Unanimous	Yves Lavigne	3	5:00
29795	7	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	Michael McDonald	Brad Pickett	win	loss	30297	11743	Submission	Triangle Choke	Kevin MacDonald	2	3:43
29795	6	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	Conor McGregor	Max Holloway	win	loss	29688	38671	Decision	Unanimous	Herb Dean	3	5:00
29795	5	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	Steven Siler	Mike Thomas Brown	win	loss	22537	3069	KO	Punches	Yves Lavigne	1	0:50
29795	4	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	Diego Brandao	Daniel Pineda	win	loss	25097	21564	Decision	Unanimous	Mario Yamasaki	3	5:00
29795	3	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	Manny Gamburyan	Cole Miller	win	loss	5185	13133	Decision	Unanimous	Yves Lavigne	3	5:00
29795	2	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	Ovince St. Preux	Cody Donovan	win	loss	38842	22304	KO	Punches	Herb Dean	1	2:07
29795	1	UFC Fight Night 26 - Shogun vs. Sonnen	2013-08-17	TD Garden, Boston, Massachusetts, United States	James Vick	Ramsey Nijem	win	loss	81956	36963	Submission	Guillotine Choke	Kevin MacDonald	1	0:58
30211	12	UFC Fight Night 27 - Condit vs. Kampmann 2	2013-08-28	Bankers Life Fieldhouse, Indianapolis, Indiana, United States	Carlos Condit	Martin Kampmann	win	loss	6765	5344	TKO	Punches and Knees	Herb Dean	4	0:54
30211	11	UFC Fight Night 27 - Condit vs. Kampmann 2	2013-08-28	Bankers Life Fieldhouse, Indianapolis, Indiana, United States	Rafael dos Anjos	Donald Cerrone	win	loss	11675	15105	Decision	Unanimous	Dan Miragliotta	3	5:00
30211	10	UFC Fight Night 27 - Condit vs. Kampmann 2	2013-08-28	Bankers Life Fieldhouse, Indianapolis, Indiana, United States	Kelvin Gastelum	Brian Melancon	win	loss	74700	43621	Submission	Rear-Naked Choke	Rob Hinds	1	2:26
30211	9	UFC Fight Night 27 - Condit vs. Kampmann 2	2013-08-28	Bankers Life Fieldhouse, Indianapolis, Indiana, United States	Court McGee	Robert Whittaker	win	loss	34124	45132	Decision	Split	Herb Dean	3	5:00
30211	8	UFC Fight Night 27 - Condit vs. Kampmann 2	2013-08-28	Bankers Life Fieldhouse, Indianapolis, Indiana, United States	Takeya Mizugaki	Erik Perez	win	loss	12074	35509	Decision	Split	Gary Copeland	3	5:00
30211	7	UFC Fight Night 27 - Condit vs. Kampmann 2	2013-08-28	Bankers Life Fieldhouse, Indianapolis, Indiana, United States	Brad Tavares	Bubba McDaniel	win	loss	33095	14600	Decision	Unanimous	Dan Miragliotta	3	5:00
30211	6	UFC Fight Night 27 - Condit vs. Kampmann 2	2013-08-28	Bankers Life Fieldhouse, Indianapolis, Indiana, United States	Dylan Andrews	Papy Abedi	win	loss	21803	20812	KO	Punches	Herb Dean	3	1:32
30211	5	UFC Fight Night 27 - Condit vs. Kampmann 2	2013-08-28	Bankers Life Fieldhouse, Indianapolis, Indiana, United States	Brandon Thatch	Justin Edwards	win	loss	22298	37452	TKO	Knees and Punches	Rob Hinds	1	1:23
30211	4	UFC Fight Night 27 - Condit vs. Kampmann 2	2013-08-28	Bankers Life Fieldhouse, Indianapolis, Indiana, United States	Darren Elkins	Hatsu Hioki	win	loss	22094	5466	Decision	Unanimous	Dan Miragliotta	3	5:00
30211	3	UFC Fight Night 27 - Condit vs. Kampmann 2	2013-08-28	Bankers Life Fieldhouse, Indianapolis, Indiana, United States	Jason High	James Head	win	loss	14185	23253	Submission	Guillotine Choke	Herb Dean	1	1:41
14039	4	UFC 121 - Lesnar vs. Velasquez	2010-10-23	Honda Center, Anaheim, California, United States	Daniel Roberts	Michael Guymon	win	loss	23999	4015	Submission	Anaconda Choke	Jason Herzog	1	1:13
30249	4	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	John Makdessi	Renee Forte	win	loss	37402	37684	KO	Punches	Todd Anderson	1	2:01
30211	2	UFC Fight Night 27 - Condit vs. Kampmann 2	2013-08-28	Bankers Life Fieldhouse, Indianapolis, Indiana, United States	Zak Cummings	Ben Alloway	win	loss	31808	60790	Submission	Brabo Choke	Gary Copeland	1	4:19
28701	12	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Anthony Pettis	Benson Henderson	win	loss	26627	20548	Submission	Armbar	Herb Dean	1	4:31
28701	11	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Josh Barnett	Frank Mir	win	loss	272	2329	TKO	Knee	Rob Hinds	1	1:56
28701	10	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Chad Mendes	Clay Guida	win	loss	38393	8184	TKO	Punches	Yves Lavigne	3	0:30
28701	9	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Ben Rothwell	Brandon Vera	win	loss	2262	4886	TKO	Punches and Knees	Herb Dean	3	1:54
28701	8	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Dustin Poirier	Erik Koch	win	loss	50529	23390	Decision	Unanimous	Rob Hinds	3	5:00
28701	7	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Gleison Tibau	Jamie Varner	win	loss	5993	7168	Decision	Split	Yves Lavigne	3	5:00
28701	6	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Tim Elliott	Louis Gaudinot	win	loss	49213	45230	Decision	Unanimous	Herb Dean	3	5:00
28701	5	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Hyun Gyu Lim	Pascal Krauss	win	loss	21040	43439	KO	Knee and Punches	Rob Hinds	1	3:58
28701	4	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Chico Camus	Kyung Ho Kang	win	loss	42850	24067	Decision	Unanimous	Yves Lavigne	3	5:00
28701	3	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Soa Palelei	Nikita Krylov	win	loss	9680	110937	TKO	Punches	Al Wichgers	3	1:34
28701	2	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Al Iaquinta	Ryan Couture	win	loss	42817	51228	Decision	Unanimous	Yves Lavigne	3	5:00
28701	1	UFC 164 - Henderson vs. Pettis 2	2013-08-31	BMO Harris Bradley Center, Milwaukee, Wisconsin, United States	Magnus Cedenblad	Jared Hamman	win	loss	22137	15949	Submission	Guillotine Choke	Al Wichgers	1	0:57
30213	11	UFC Fight Night 28 - Teixeira vs. Bader	2013-09-04	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Glover Teixeira	Ryan Bader	win	loss	4655	22858	TKO	Punches	Herb Dean	1	2:55
30213	10	UFC Fight Night 28 - Teixeira vs. Bader	2013-09-04	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Ronaldo Souza	Yushin Okami	win	loss	8394	5569	TKO	Punches	Leon Roberts	1	2:47
30213	9	UFC Fight Night 28 - Teixeira vs. Bader	2013-09-04	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Joseph Benavidez	Jussier da Silva	win	loss	15008	36939	TKO	Knee to the Body and Punches	Mario Yamasaki	1	3:07
30213	8	UFC Fight Night 28 - Teixeira vs. Bader	2013-09-04	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Piotr Hallmann	Francisco Trinaldo	win	loss	53375	31103	Submission	Kimura	Neil Hall	2	3:50
30213	7	UFC Fight Night 28 - Teixeira vs. Bader	2013-09-04	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Rafael Natal	Tor Troeng	win	loss	13968	6850	Decision	Unanimous	Leon Roberts	3	5:00
30213	6	UFC Fight Night 28 - Teixeira vs. Bader	2013-09-04	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Ali Bagautinov	Marcos Vinicius Borges Pancini	win	loss	81198	51728	TKO	Punches	Mario Yamasaki	3	3:28
30213	1	UFC Fight Night 28 - Teixeira vs. Bader	2013-09-04	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Sean Spencer	Yuri Villefort	win	loss	60908	47069	Decision	Split	Neil Hall	3	5:00
30249	13	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Jon Jones	Alexander Gustafsson	win	loss	27944	26162	Decision	Unanimous	John McCarthy	5	5:00
30249	12	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Renan Barao	Eddie Wineland	win	loss	23156	4173	TKO	Spinning Back-Kick and Punches	Yves Lavigne	2	0:35
30249	10	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Francis Carmont	Costas Philippou	win	loss	9798	32432	Decision	Unanimous	John McCarthy	3	5:00
30249	9	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Khabib Nurmagomedov	Pat Healy	win	loss	56035	6246	Decision	Unanimous	Yves Lavigne	3	5:00
30249	8	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Myles Jury	Mike Ricci	win	loss	34236	33532	Decision	Split	John McCarthy	3	5:00
30249	7	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Wilson Reis	Ivan Menjivar	win	loss	23401	993	Decision	Unanimous	Yves Lavigne	3	5:00
30249	6	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Stephen Thompson	Chris Clements	win	loss	59608	13469	TKO	Punches	John McCarthy	2	1:27
30249	3	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Michel Richard Cunha dos Prazeres	Jesse Ronson	win	loss	22218	56579	Decision	Split	Yves Lavigne	3	5:00
30249	2	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Alex Caceres	Roland Delorme	win	loss	41586	37351	Decision	Split	Todd Anderson	3	5:00
30249	1	UFC 165 - Jones vs. Gustafsson	2013-09-21	Air Canada Centre, Toronto, Ontario, Canada	Daniel Omielanczuk	Nandor Guelmino	win	loss	54303	28286	KO	Punch	Dan Miragliotta	3	3:18
14529	7	UFC 123 - Rampage vs. Machida	2010-11-20	The Palace of Auburn Hills, Auburn Hills, Michigan, United States	George Sotiropoulos	Joe Lauzon	win	loss	11702	4923	Submission	Kimura	Marc Fennel	2	2:43
14529	6	UFC 123 - Rampage vs. Machida	2010-11-20	The Palace of Auburn Hills, Auburn Hills, Michigan, United States	Brian Foster	Matt Brown	win	loss	17723	14310	Submission	Guillotine Choke	Herb Dean	2	2:11
31869	10	UFC Fight Night 29 - Maia vs. Shields	2013-10-09	Jose Correa Gymnasium, Barueri, Sao Paulo, Brazil	Jake Shields	Demian Maia	win	loss	502	14637	Decision	Split	Marc Goddard	5	5:00
31869	9	UFC Fight Night 29 - Maia vs. Shields	2013-10-09	Jose Correa Gymnasium, Barueri, Sao Paulo, Brazil	Dong Hyun Kim	Erick Silva	win	loss	16374	15009	KO	Punch	Mario Yamasaki	2	3:01
31869	8	UFC Fight Night 29 - Maia vs. Shields	2013-10-09	Jose Correa Gymnasium, Barueri, Sao Paulo, Brazil	Thiago Silva	Matt Hamill	win	loss	14396	16695	Decision	Unanimous	Keith Peterson	3	5:00
31869	7	UFC Fight Night 29 - Maia vs. Shields	2013-10-09	Jose Correa Gymnasium, Barueri, Sao Paulo, Brazil	Fabio Maldonado	Joey Beltran	win	loss	16426	21219	Decision	Split	Mario Yamasaki	3	5:00
31869	6	UFC Fight Night 29 - Maia vs. Shields	2013-10-09	Jose Correa Gymnasium, Barueri, Sao Paulo, Brazil	Rousimar Palhares	Mike Pierce	win	loss	16286	25415	Submission	Heel Hook	Keith Peterson	1	0:31
31869	5	UFC Fight Night 29 - Maia vs. Shields	2013-10-09	Jose Correa Gymnasium, Barueri, Sao Paulo, Brazil	Raphael Assuncao	T.J. Dillashaw	win	loss	9574	62507	Decision	Split	Mario Yamasaki	3	5:00
31869	3	UFC Fight Night 29 - Maia vs. Shields	2013-10-09	Jose Correa Gymnasium, Barueri, Sao Paulo, Brazil	Yan Cabral	David Mitchell	win	loss	27090	16830	Decision	Unanimous	Mario Yamasaki	3	5:00
31869	2	UFC Fight Night 29 - Maia vs. Shields	2013-10-09	Jose Correa Gymnasium, Barueri, Sao Paulo, Brazil	Chris Cariaso	Iliarde Santos	win	loss	16467	39391	TKO	Punches	Keith Peterson	2	4:31
31869	1	UFC Fight Night 29 - Maia vs. Shields	2013-10-09	Jose Correa Gymnasium, Barueri, Sao Paulo, Brazil	Alan Patrick Silva Alves	Garett Whiteley	win	loss	31096	39261	TKO	Punches	Marc Goddard	1	3:54
30813	13	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	Cain Velasquez	Junior dos Santos	win	loss	19102	17272	TKO	Slam and Punch	Herb Dean	5	3:09
30813	12	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	Daniel Cormier	Roy Nelson	win	loss	52311	10249	Decision	Unanimous	Jacob Montalvo	3	5:00
30813	11	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	Gilbert Melendez	Diego Sanchez	win	loss	5545	4824	Decision	Unanimous	Kerry Hatley	3	5:00
30813	10	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	Gabriel Gonzaga	Shawn Jordan	win	loss	7306	45624	KO	Punches	Jay Stafin	1	1:33
30813	9	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	John Dodson	Darrell Montague	win	loss	11660	34214	KO	Punch	Jacob Montalvo	1	4:13
30813	8	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	Tim Boetsch	C.B. Dollaway	win	loss	19544	22350	Decision	Split	Kerry Hatley	3	5:00
30813	7	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	Hector Lombard	Nate Marquardt	win	loss	11292	1712	KO	Punches	Jay Stafin	1	1:48
30813	5	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	K.J. Noons	George Sotiropoulos	win	loss	6727	11702	Decision	Unanimous	Herb Dean	3	5:00
30213	4	UFC Fight Night 28 - Teixeira vs. Bader	2013-09-04	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Lucas Martins	Ramiro Hernandez	win	loss	100031	26934	TKO	Submission (Rear-Naked Choke	Herb Dean	1	1:10
30813	3	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	Tony Ferguson	Mike Rio	win	loss	31239	54833	Submission	Brabo Choke	Kerry Hatley	1	1:52
30813	2	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	Andre Fili	Jeremy Larsen	win	loss	58385	19863	TKO	Punches	Jacob Montalvo	2	0:53
30813	1	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	Kyoji Horiguchi	Dustin Pague	win	loss	64413	39781	TKO	Punches	Herb Dean	2	3:51
31371	10	UFC Fight Night 30 - Machida vs. Munoz	2013-10-26	Phones 4U Arena, Manchester, Greater Manchester, England	Jimi Manuwa	Ryan Jimmo	win	loss	37528	21044	TKO	Leg Injury	Neil Hall	2	4:41
31371	9	UFC Fight Night 30 - Machida vs. Munoz	2013-10-26	Phones 4U Arena, Manchester, Greater Manchester, England	Norman Parke	Jon Tuck	win	loss	47549	45108	Decision	Unanimous	Leon Roberts	3	5:00
31371	8	UFC Fight Night 30 - Machida vs. Munoz	2013-10-26	Phones 4U Arena, Manchester, Greater Manchester, England	Nicholas Musoke	Alessio Sakara	win	loss	26160	5366	Submission	Armbar	Marc Goddard	1	3:07
31371	7	UFC Fight Night 30 - Machida vs. Munoz	2013-10-26	Phones 4U Arena, Manchester, Greater Manchester, England	John Lineker	Phil Harris	win	loss	41906	8753	KO	Punch to the Body	Neil Hall	1	2:51
31371	6	UFC Fight Night 30 - Machida vs. Munoz	2013-10-26	Phones 4U Arena, Manchester, Greater Manchester, England	Al Iaquinta	Piotr Hallmann	win	loss	42817	53375	Decision	Unanimous	Leon Roberts	3	5:00
31371	5	UFC Fight Night 30 - Machida vs. Munoz	2013-10-26	Phones 4U Arena, Manchester, Greater Manchester, England	Luke Barnatt	Andrew Craig	win	loss	56567	63284	Submission	Rear-Naked Choke	Marc Goddard	2	2:12
31371	4	UFC Fight Night 30 - Machida vs. Munoz	2013-10-26	Phones 4U Arena, Manchester, Greater Manchester, England	Jessica Andrade	Rosi Sexton	win	loss	100715	5358	Decision	Unanimous	Neil Hall	3	5:00
31371	3	UFC Fight Night 30 - Machida vs. Munoz	2013-10-26	Phones 4U Arena, Manchester, Greater Manchester, England	Cole Miller	Andy Ogle	win	loss	13133	42659	Decision	Unanimous	Leon Roberts	3	5:00
31371	1	UFC Fight Night 30 - Machida vs. Munoz	2013-10-26	Phones 4U Arena, Manchester, Greater Manchester, England	Bradley Scott	Michael Kuiper	win	loss	44442	42901	Submission	Guillotine Choke	Marc Goddard	1	4:17
31371	12	UFC Fight Night 30 - Machida vs. Munoz	2013-10-26	Phones 4U Arena, Manchester, Greater Manchester, England	Lyoto Machida	Mark Munoz	win	loss	7513	22411	KO	Head Kick	Leon Roberts	1	3:10
2121	2	UFC 47 - It's On	2004-04-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jonathan Wiezorek	Wade Shipp	win	loss	2688	2304	TKO	Punches	N/A	1	4:40
32077	13	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Tim Kennedy	Rafael Natal	win	loss	2830	13968	KO	Punches	Herb Dean	1	4:40
32077	12	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Alexis Davis	Liz Carmouche	win	loss	22071	67007	Decision	Unanimous	Gary Copeland	3	5:00
32077	11	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Yoel Romero	Ronny Markes	win	loss	60762	21175	KO	Punches	Mario Yamasaki	3	1:39
32077	10	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Rustam Khabilov	Jorge Masvidal	win	loss	45417	7688	Decision	Unanimous	John McCarthy	3	5:00
32077	9	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Michael Chiesa	Colton Smith	win	loss	46224	63163	Submission	Rear-Naked Choke	Gary Copeland	2	1:41
32077	8	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Bobby Green	James Krause	win	loss	27953	31766	TKO	Kick to the Body	John McCarthy	1	3:50
32077	7	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Francisco Rivera	George Roop	win	loss	11908	16415	TKO	Punches	Mario Yamasaki	2	2:20
32077	6	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Dennis Bermudez	Steven Siler	win	loss	58065	22537	Decision	Unanimous	Mario Yamasaki	3	5:00
32077	5	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Amanda Nunes	Germaine de Randamie	win	loss	31496	41745	TKO	Elbows	Herb Dean	1	3:56
32077	4	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Lorenz Larkin	Chris Camozzi	win	loss	51345	17224	Decision	Unanimous	Herb Dean	3	5:00
32077	2	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Seth Baczynski	Neil Magny	win	loss	13827	69166	Decision	Unanimous	John McCarthy	3	5:00
32077	1	UFC Fight Night 31 - Fight for the Troops 3	2013-11-06	Fort Campbell, Hopkinsville, Kentucky, United States	Derek Brunson	Brian Houston	win	loss	68494	59769	Submission	Rear-Naked Choke	Gary Copeland	1	0:48
32067	11	UFC Fight Night 32 - Belfort vs. Henderson	2013-11-09	Goiania Arena, Goiania, Goias, Brazil	Vitor Belfort	Dan Henderson	win	loss	156	195	KO	Head Kick	Dan Miragliotta	1	1:17
32067	10	UFC Fight Night 32 - Belfort vs. Henderson	2013-11-09	Goiania Arena, Goiania, Goias, Brazil	Cezar Ferreira	Daniel Sarafian	win	loss	22400	17665	Decision	Split	Mario Yamasaki	3	5:00
32067	9	UFC Fight Night 32 - Belfort vs. Henderson	2013-11-09	Goiania Arena, Goiania, Goias, Brazil	Rafael Cavalcante	Igor Pokrajac	win	loss	16161	7621	TKO	Knees and Punches	Kevin MacDonald	1	1:18
32067	8	UFC Fight Night 32 - Belfort vs. Henderson	2013-11-09	Goiania Arena, Goiania, Goias, Brazil	Brandon Thatch	Paulo Thiago	win	loss	22298	13336	KO	Knee to the Body	Dan Miragliotta	1	2:10
32067	7	UFC Fight Night 32 - Belfort vs. Henderson	2013-11-09	Goiania Arena, Goiania, Goias, Brazil	Ryan LaFlare	Santiago Ponzinibbio	win	loss	34409	64593	Decision	Unanimous	Mario Yamasaki	3	5:00
31371	2	UFC Fight Night 30 - Machida vs. Munoz	2013-10-26	Phones 4U Arena, Manchester, Greater Manchester, England	Jim Hettes	Robert Whiteford	win	loss	48046	47105	TKO	Submission (Triangle Choke	Neil Hall	2	2:17
32067	6	UFC Fight Night 32 - Belfort vs. Henderson	2013-11-09	Goiania Arena, Goiania, Goias, Brazil	Jeremy Stephens	Rony Mariano Bezerra	win	loss	12179	38190	KO	Head Kick	Kevin MacDonald	1	0:40
32067	5	UFC Fight Night 32 - Belfort vs. Henderson	2013-11-09	Goiania Arena, Goiania, Goias, Brazil	Sam Sicilia	Godofredo Castro	win	loss	53205	40623	TKO	Punches	Dan Miragliotta	1	1:42
32067	4	UFC Fight Night 32 - Belfort vs. Henderson	2013-11-09	Goiania Arena, Goiania, Goias, Brazil	Omari Akhmedov	Thiago de Oliveira Perpetuo	win	loss	83462	53207	KO	Punches	Kevin MacDonald	1	3:31
32067	3	UFC Fight Night 32 - Belfort vs. Henderson	2013-11-09	Goiania Arena, Goiania, Goias, Brazil	Thiago Tavares	Justin Salas	win	loss	4647	16180	Submission	Rear-Naked Choke	Dan Miragliotta	1	2:38
32067	2	UFC Fight Night 32 - Belfort vs. Henderson	2013-11-09	Goiania Arena, Goiania, Goias, Brazil	Adriano Martins	Daron Cruickshank	win	loss	9907	53717	Submission	Straight Armbar	Mario Yamasaki	2	2:49
32067	1	UFC Fight Night 32 - Belfort vs. Henderson	2013-11-09	Goiania Arena, Goiania, Goias, Brazil	Dustin Ortiz	Jose Maria Tome	win	loss	58097	37681	TKO	Punches	Kevin MacDonald	3	3:19
30815	12	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Georges St. Pierre	Johny Hendricks	win	loss	3500	24539	Decision	Split	Mario Yamasaki	5	5:00
30815	11	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rashad Evans	Chael Sonnen	win	loss	10200	4112	TKO	Punches	Herb Dean	1	4:05
30815	10	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Robbie Lawler	Rory MacDonald	win	loss	2245	14018	Decision	Split	Mario Yamasaki	3	5:00
30815	9	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tyron Woodley	Josh Koscheck	win	loss	42605	9418	KO	Punches	Herb Dean	1	4:38
30815	8	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Ali Bagautinov	Tim Elliott	win	loss	81198	49213	Decision	Unanimous	Kim Winslow	3	5:00
30815	7	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Donald Cerrone	Evan Dunham	win	loss	15105	22038	Submission	Triangle Choke	Mario Yamasaki	2	3:49
30815	6	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Thales Leites	Ed Herman	win	loss	8593	6561	Decision	Unanimous	Kim Winslow	3	5:00
2121	1	UFC 47 - It's On	2004-04-02	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Genki Sudo	Mike Thomas Brown	win	loss	1227	3069	Submission	Triangle Armbar	N/A	1	3:31
30815	5	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rick Story	Brian Ebersole	win	loss	25989	3015	Decision	Unanimous	Herb Dean	3	5:00
30815	4	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Erik Perez	Edwin Figueroa	win	loss	35509	22490	Decision	Unanimous	Kim Winslow	3	5:00
30815	3	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jason High	Anthony Lapsley	win	loss	14185	18590	Decision	Unanimous	Mario Yamasaki	3	5:00
30815	2	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Sergio Pettis	Will Campuzano	win	loss	50987	35521	Decision	Unanimous	Herb Dean	3	5:00
30815	1	UFC 167 - St. Pierre vs. Hendricks	2013-11-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Gian Villante	Cody Donovan	win	loss	42802	22304	TKO	Punches	Kim Winslow	2	1:22
32325	10	UFC - The Ultimate Fighter 18 Finale	2013-11-30	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Nate Diaz	Gray Maynard	win	loss	11451	15835	TKO	Punches	Yves Lavigne	1	2:38
32325	9	UFC - The Ultimate Fighter 18 Finale	2013-11-30	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Julianna Pena	Jessica Rakoczy	win	loss	50883	53506	TKO	Punches	Mario Yamasaki	1	4:59
32325	8	UFC - The Ultimate Fighter 18 Finale	2013-11-30	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Chris Holdsworth	Davey Grant	win	loss	51225	30564	Submission	Rear-Naked Choke	Yves Lavigne	2	2:10
32325	7	UFC - The Ultimate Fighter 18 Finale	2013-11-30	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jessamyn Duke	Peggy Morgan	win	loss	71307	91565	Decision	Unanimous	Kim Winslow	3	5:00
32325	6	UFC - The Ultimate Fighter 18 Finale	2013-11-30	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Raquel Pennington	Roxanne Modafferi	win	loss	75564	8785	Decision	Unanimous	Chris Tognoni	3	5:00
32325	5	UFC - The Ultimate Fighter 18 Finale	2013-11-30	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Akira Corassani	Maximo Blanco	win	loss	22641	36618	DQ	Knee to Head of Grounded Fighter	Mario Yamasaki	1	0:25
32325	4	UFC - The Ultimate Fighter 18 Finale	2013-11-30	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Tom Niinimaki	Rani Yahya	win	loss	5639	10425	Decision	Split	Kim Winslow	3	5:00
32325	3	UFC - The Ultimate Fighter 18 Finale	2013-11-30	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jared Rosholt	Walt Harris	win	loss	76763	72046	Decision	Unanimous	Chris Tognoni	3	5:00
32325	2	UFC - The Ultimate Fighter 18 Finale	2013-11-30	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Sean Spencer	Drew Dober	win	loss	60908	23982	Decision	Unanimous	Yves Lavigne	3	5:00
32325	1	UFC - The Ultimate Fighter 18 Finale	2013-11-30	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Josh Sampo	Ryan Benoit	win	loss	66883	48566	Submission	Rear-Naked Choke	Chris Tognoni	2	4:31
32293	11	UFC Fight Night 33 - Hunt vs. Bigfoot	2013-12-07	Brisbane Entertainment Centre, Brisbane, Queensland, Australia	Mark Hunt	Antonio Silva	draw	draw	10668	12354	Draw	Majority	Steve Perceval	5	5:00
32293	10	UFC Fight Night 33 - Hunt vs. Bigfoot	2013-12-07	Brisbane Entertainment Centre, Brisbane, Queensland, Australia	Mauricio Rua	James Te Huna	win	loss	5707	9033	KO	Punch	John Sharp	1	1:03
32293	9	UFC Fight Night 33 - Hunt vs. Bigfoot	2013-12-07	Brisbane Entertainment Centre, Brisbane, Queensland, Australia	Ryan Bader	Anthony Perosh	win	loss	22858	9491	Decision	Unanimous	John Sharp	3	5:00
32293	8	UFC Fight Night 33 - Hunt vs. Bigfoot	2013-12-07	Brisbane Entertainment Centre, Brisbane, Queensland, Australia	Soa Palelei	Pat Barry	win	loss	9680	33342	KO	Punches	Steve Perceval	1	2:09
32293	7	UFC Fight Night 33 - Hunt vs. Bigfoot	2013-12-07	Brisbane Entertainment Centre, Brisbane, Queensland, Australia	Clint Hester	Dylan Andrews	win	loss	43866	21803	TKO	Doctor Stoppage	Cameron Quinn	2	5:00
32293	6	UFC Fight Night 33 - Hunt vs. Bigfoot	2013-12-07	Brisbane Entertainment Centre, Brisbane, Queensland, Australia	Bethe Correia	Julie Kedzie	win	loss	103069	10093	Decision	Split	Steve Perceval	3	5:00
32293	5	UFC Fight Night 33 - Hunt vs. Bigfoot	2013-12-07	Brisbane Entertainment Centre, Brisbane, Queensland, Australia	Takeya Mizugaki	Nam Phan	win	loss	12074	5778	Decision	Unanimous	John Sharp	3	5:00
32293	4	UFC Fight Night 33 - Hunt vs. Bigfoot	2013-12-07	Brisbane Entertainment Centre, Brisbane, Queensland, Australia	Caio Magalhaes	Nick Ring	win	loss	51163	6748	Decision	Unanimous	Cameron Quinn	3	5:00
32293	3	UFC Fight Night 33 - Hunt vs. Bigfoot	2013-12-07	Brisbane Entertainment Centre, Brisbane, Queensland, Australia	Justin Scoggins	Richie Vaculik	win	loss	71120	21798	TKO	Punches	Steve Perceval	1	4:43
32293	2	UFC Fight Night 33 - Hunt vs. Bigfoot	2013-12-07	Brisbane Entertainment Centre, Brisbane, Queensland, Australia	Krzysztof Jotko	Bruno Santos	win	loss	53380	48052	Decision	Unanimous	John Sharp	3	5:00
32293	1	UFC Fight Night 33 - Hunt vs. Bigfoot	2013-12-07	Brisbane Entertainment Centre, Brisbane, Queensland, Australia	Alex Garcia	Ben Wall	win	loss	54124	78164	KO	Punches	Cameron Quinn	1	0:43
26217	11	UFC on Fox 9 - Johnson vs. Benavidez 2	2013-12-14	Sleep Train Arena, Sacramento, California, United States	Demetrious Johnson	Joseph Benavidez	win	loss	45452	15008	KO	Punches	John McCarthy	1	2:08
26217	10	UFC on Fox 9 - Johnson vs. Benavidez 2	2013-12-14	Sleep Train Arena, Sacramento, California, United States	Urijah Faber	Michael McDonald	win	loss	8847	30297	Submission	Guillotine Choke	Herb Dean	2	3:22
26217	9	UFC on Fox 9 - Johnson vs. Benavidez 2	2013-12-14	Sleep Train Arena, Sacramento, California, United States	Chad Mendes	Nik Lentz	win	loss	38393	15058	Decision	Unanimous	John McCarthy	3	5:00
26217	8	UFC on Fox 9 - Johnson vs. Benavidez 2	2013-12-14	Sleep Train Arena, Sacramento, California, United States	Joe Lauzon	Mac Danzig	win	loss	4923	3396	Decision	Unanimous	John McCarthy	3	5:00
26217	7	UFC on Fox 9 - Johnson vs. Benavidez 2	2013-12-14	Sleep Train Arena, Sacramento, California, United States	Ryan LaFlare	Court McGee	win	loss	34409	34124	Decision	Unanimous	Herb Dean	3	5:00
26217	6	UFC on Fox 9 - Johnson vs. Benavidez 2	2013-12-14	Sleep Train Arena, Sacramento, California, United States	Edson Barboza	Danny Castillo	win	loss	46259	26070	Decision	Majority	Mike Beltran	3	5:00
15202	7	UFC 127 - Penn vs. Fitch	2011-02-27	Acer Arena, Sydney, New South Wales, Australia	Ross Pearson	Spencer Fisher	win	loss	11884	5118	Decision	Unanimous	Herb Dean	3	5:00
15202	6	UFC 127 - Penn vs. Fitch	2011-02-27	Acer Arena, Sydney, New South Wales, Australia	Alexander Gustafsson	James Te Huna	win	loss	26162	9033	Submission	Rear-Naked Choke	Marc Goddard	1	4:27
15202	5	UFC 127 - Penn vs. Fitch	2011-02-27	Acer Arena, Sydney, New South Wales, Australia	Nick Ring	Riki Fukuda	win	loss	6748	10229	Decision	Unanimous	Leon Roberts	3	5:00
26217	5	UFC on Fox 9 - Johnson vs. Benavidez 2	2013-12-14	Sleep Train Arena, Sacramento, California, United States	Bobby Green	Pat Healy	win	loss	27953	6246	Decision	Unanimous	Herb Dean	3	5:00
26217	4	UFC on Fox 9 - Johnson vs. Benavidez 2	2013-12-14	Sleep Train Arena, Sacramento, California, United States	Zach Makovsky	Scott Jorgensen	win	loss	20522	16852	Decision	Unanimous	Mike Beltran	3	5:00
26217	3	UFC on Fox 9 - Johnson vs. Benavidez 2	2013-12-14	Sleep Train Arena, Sacramento, California, United States	Sam Stout	Cody McKenzie	win	loss	9901	22173	Decision	Unanimous	Herb Dean	3	5:00
26217	2	UFC on Fox 9 - Johnson vs. Benavidez 2	2013-12-14	Sleep Train Arena, Sacramento, California, United States	Abel Trujillo	Roger Bowling	win	loss	17129	23052	TKO	Punches	John McCarthy	2	1:35
26217	1	UFC on Fox 9 - Johnson vs. Benavidez 2	2013-12-14	Sleep Train Arena, Sacramento, California, United States	Alptekin Ozkilic	Darren Uyenoyama	win	loss	73826	4679	Decision	Split	Mike Beltran	3	5:00
31257	11	UFC 168 - Weidman vs. Silva 2	2013-12-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chris Weidman	Anderson Silva	win	loss	42804	1356	TKO	Leg Injury	Herb Dean	2	1:16
31257	10	UFC 168 - Weidman vs. Silva 2	2013-12-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Ronda Rousey	Miesha Tate	win	loss	73073	26252	Submission	Armbar	Mario Yamasaki	3	0:58
31257	9	UFC 168 - Weidman vs. Silva 2	2013-12-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Travis Browne	Josh Barnett	win	loss	16785	272	KO	Elbows	Yves Lavigne	1	1:00
31257	8	UFC 168 - Weidman vs. Silva 2	2013-12-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jim Miller	Fabricio Camoes	win	loss	14463	2427	Submission	Armbar	Herb Dean	1	3:42
31257	7	UFC 168 - Weidman vs. Silva 2	2013-12-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dustin Poirier	Diego Brandao	win	loss	50529	25097	KO	Punches	Mario Yamasaki	1	4:54
31257	6	UFC 168 - Weidman vs. Silva 2	2013-12-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Uriah Hall	Chris Leben	win	loss	14210	6258	TKO	Retirement	Steve Mazzagatti	1	5:00
31257	5	UFC 168 - Weidman vs. Silva 2	2013-12-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Michael Johnson	Gleison Tibau	win	loss	68788	5993	KO	Punches	Yves Lavigne	2	1:32
31257	3	UFC 168 - Weidman vs. Silva 2	2013-12-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	John Howard	Siyar Bahadurzada	win	loss	11798	5453	Decision	Unanimous	Steve Mazzagatti	3	5:00
31257	2	UFC 168 - Weidman vs. Silva 2	2013-12-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	William Macario	Bobby Voelker	win	loss	69624	15156	Decision	Unanimous	Mario Yamasaki	3	5:00
31257	1	UFC 168 - Weidman vs. Silva 2	2013-12-28	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Robbie Peralta	Estevan Payan	win	loss	21339	24952	TKO	Punches	Yves Lavigne	3	0:12
32999	10	UFC Fight Night 34 - Saffiedine vs. Lim	2014-01-04	Marina Bay Sands, Marina Bay, Singapore, Singapore	Tarec Saffiedine	Hyun Gyu Lim	win	loss	21912	21040	Decision	Unanimous	Leon Roberts	5	5:00
32999	9	UFC Fight Night 34 - Saffiedine vs. Lim	2014-01-04	Marina Bay Sands, Marina Bay, Singapore, Singapore	Tatsuya Kawajiri	Sean Soriano	win	loss	1326	61682	Submission	Rear-Naked Choke	Steve Perceval	2	0:50
32999	8	UFC Fight Night 34 - Saffiedine vs. Lim	2014-01-04	Marina Bay Sands, Marina Bay, Singapore, Singapore	Kiichi Kunimoto	Luiz Jorge Dutra Jr.	win	loss	21039	8121	DQ	Elbows to Back of Head	John Sharp	1	2:57
32999	7	UFC Fight Night 34 - Saffiedine vs. Lim	2014-01-04	Marina Bay Sands, Marina Bay, Singapore, Singapore	Kyung Ho Kang	Shunichi Shimizu	win	loss	24067	22677	Submission	Arm-Triangle Choke	Steve Perceval	3	3:53
32999	6	UFC Fight Night 34 - Saffiedine vs. Lim	2014-01-04	Marina Bay Sands, Marina Bay, Singapore, Singapore	Max Holloway	Will Chope	win	loss	38671	69087	TKO	Punches	Leon Roberts	2	2:27
32999	5	UFC Fight Night 34 - Saffiedine vs. Lim	2014-01-04	Marina Bay Sands, Marina Bay, Singapore, Singapore	Katsunori Kikuno	Quinn Mulhern	win	loss	16806	22873	Decision	Unanimous	Steve Perceval	3	5:00
32999	4	UFC Fight Night 34 - Saffiedine vs. Lim	2014-01-04	Marina Bay Sands, Marina Bay, Singapore, Singapore	Royston Wee	Dave Galera	win	loss	88793	93863	Decision	Unanimous	John Sharp	3	5:00
32999	2	UFC Fight Night 34 - Saffiedine vs. Lim	2014-01-04	Marina Bay Sands, Marina Bay, Singapore, Singapore	Dustin Kimura	Jon delos Reyes	win	loss	41247	58594	Submission	Armbar	Steve Perceval	1	2:13
33929	12	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	Luke Rockhold	Costas Philippou	win	loss	23345	32432	KO	Kick to the Body	Herb Dean	1	2:31
33929	11	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	Brad Tavares	Lorenz Larkin	win	loss	33095	51345	Decision	Unanimous	Herb Dean	3	5:00
33929	10	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	T.J. Dillashaw	Mike Easton	win	loss	62507	9626	Decision	Unanimous	Dan Miragliotta	3	5:00
33929	9	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	Yoel Romero	Derek Brunson	win	loss	60762	68494	TKO	Punches and Elbows	Blake Grice	3	3:23
33929	8	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	John Moraga	Dustin Ortiz	win	loss	55159	58097	Decision	Split	Dan Miragliotta	3	5:00
2203	8	UFC 48 - Payback	2004-06-19	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Ken Shamrock	Kimo Leopoldo	win	loss	4	43	KO	Knee	N/A	1	1:26
33929	7	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	Cole Miller	Sam Sicilia	win	loss	13133	53205	Submission	Rear-Naked Choke	Herb Dean	2	1:54
33929	6	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	Ramsey Nijem	Justin Edwards	win	loss	36963	37452	Decision	Unanimous	George Allen	3	5:00
33929	5	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	Elias Silverio	Isaac Vallie-Flagg	win	loss	88613	8180	Decision	Unanimous	Blake Grice	3	5:00
33929	4	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	Trevor Smith	Brian Houston	win	loss	51113	59769	Decision	Split	Blake Grice	3	5:00
33929	3	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	Louis Smolka	Alptekin Ozkilic	win	loss	64792	73826	Decision	Unanimous	Herb Dean	3	5:00
33929	2	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	Vinc Pichel	Garett Whiteley	win	loss	57848	39261	Decision	Unanimous	George Allen	3	5:00
33929	1	UFC Fight Night 35 - Rockhold vs. Philippou	2014-01-15	The Arena at Gwinnett Center, Duluth, Georgia, United States	Beneil Dariush	Charlie Brenneman	win	loss	56583	23403	Submission	Rear-Naked Choke	Dan Miragliotta	1	1:45
33335	11	UFC on Fox 10 - Henderson vs. Thomson	2014-01-25	United Center, Chicago, Illinois, United States	Benson Henderson	Josh Thomson	win	loss	20548	2394	Decision	Split	John McCarthy	5	5:00
33335	10	UFC on Fox 10 - Henderson vs. Thomson	2014-01-25	United Center, Chicago, Illinois, United States	Stipe Miocic	Gabriel Gonzaga	win	loss	39537	7306	Decision	Unanimous	Herb Dean	3	5:00
33335	9	UFC on Fox 10 - Henderson vs. Thomson	2014-01-25	United Center, Chicago, Illinois, United States	Donald Cerrone	Adriano Martins	win	loss	15105	9907	KO	Head Kick	John McCarthy	1	4:40
33335	8	UFC on Fox 10 - Henderson vs. Thomson	2014-01-25	United Center, Chicago, Illinois, United States	Jeremy Stephens	Darren Elkins	win	loss	12179	22094	Decision	Unanimous	John McCarthy	3	5:00
33335	7	UFC on Fox 10 - Henderson vs. Thomson	2014-01-25	United Center, Chicago, Illinois, United States	Alex Caceres	Sergio Pettis	win	loss	41586	50987	Submission	Rear-Naked Choke	Herb Dean	3	4:39
33335	6	UFC on Fox 10 - Henderson vs. Thomson	2014-01-25	United Center, Chicago, Illinois, United States	Eddie Wineland	Yves Jabouin	win	loss	4173	1693	TKO	Punches	Rob Madrigal	2	4:16
33335	4	UFC on Fox 10 - Henderson vs. Thomson	2014-01-25	United Center, Chicago, Illinois, United States	Hugo Viana	Ramiro Hernandez	win	loss	65456	26934	Decision	Unanimous	Otto Torriero	3	5:00
33335	3	UFC on Fox 10 - Henderson vs. Thomson	2014-01-25	United Center, Chicago, Illinois, United States	Daron Cruickshank	Mike Rio	win	loss	53717	54833	TKO	Wheel Kick and Punches	Herb Dean	2	4:56
33335	2	UFC on Fox 10 - Henderson vs. Thomson	2014-01-25	United Center, Chicago, Illinois, United States	George Sullivan	Mike Rhodes	win	loss	15148	87296	Decision	Unanimous	John McCarthy	3	5:00
33335	1	UFC on Fox 10 - Henderson vs. Thomson	2014-01-25	United Center, Chicago, Illinois, United States	Nikita Krylov	Walt Harris	win	loss	110937	72046	TKO	Head Kick and Punches	Rob Madrigal	1	0:25
32773	12	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Renan Barao	Urijah Faber	win	loss	23156	8847	TKO	Punches	Herb Dean	1	3:42
32773	11	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Jose Aldo	Ricardo Lamas	win	loss	11506	32051	Decision	Unanimous	Keith Peterson	5	5:00
32773	10	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Alistair Overeem	Frank Mir	win	loss	461	2329	Decision	Unanimous	Dan Miragliotta	3	5:00
32773	9	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Ali Bagautinov	John Lineker	win	loss	81198	41906	Decision	Unanimous	Keith Peterson	3	5:00
32773	8	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Abel Trujillo	Jamie Varner	win	loss	17129	7168	KO	Punch	Dan Miragliotta	2	2:32
32773	7	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Alan Patrick Silva Alves	John Makdessi	win	loss	31096	37402	Decision	Unanimous	Dan Miragliotta	3	5:00
32773	6	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Chris Cariaso	Danny Martinez	win	loss	16467	16777	Decision	Unanimous	Keith Peterson	3	5:00
32773	5	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Nick Catone	Tom Watson	win	loss	23006	15179	Decision	Split	Herb Dean	3	5:00
32999	1	UFC Fight Night 34 - Saffiedine vs. Lim	2014-01-04	Marina Bay Sands, Marina Bay, Singapore, Singapore	Russell Doane	Leandro Issa	win	loss	30054	19521	TKO	Submission (Triangle Choke	John Sharp	2	4:59
32773	4	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Al Iaquinta	Kevin Lee	win	loss	42817	84342	Decision	Unanimous	Herb Dean	3	5:00
32773	3	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Clint Hester	Andy Enz	win	loss	43866	61422	Decision	Unanimous	Gasper Oliver	3	5:00
32773	2	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Rashid Magomedov	Tony Martin	win	loss	41524	80436	Decision	Unanimous	Gasper Oliver	3	5:00
32773	1	UFC 169 - Barao vs. Faber 2	2014-02-01	Prudential Center, Newark, New Jersey, United States	Neil Magny	Gasan Umalatov	win	loss	69166	53109	Decision	Unanimous	Gasper Oliver	3	5:00
33523	12	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Lyoto Machida	Gegard Mousasi	win	loss	7513	7466	Decision	Unanimous	Mario Yamasaki	5	5:00
33523	11	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Ronaldo Souza	Francis Carmont	win	loss	8394	9798	Decision	Unanimous	Keith Peterson	3	5:00
33523	10	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Erick Silva	Takenori Sato	win	loss	15009	12196	KO	Punches	Mario Yamasaki	1	0:52
33523	9	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Nicholas Musoke	Viscardi Andrade	win	loss	26160	30298	Decision	Unanimous	Keith Peterson	3	5:00
33523	8	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Charles Oliveira	Andy Ogle	win	loss	30300	42659	Submission	Triangle Choke	Mario Yamasaki	3	2:40
33523	7	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Joe Proctor	Cristiano Marcello	win	loss	46307	3530	Decision	Unanimous	Osiris Maia	3	5:00
33523	6	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Rodrigo Damm	Ivan Jorge	win	loss	11507	5432	Decision	Unanimous	Mario Yamasaki	3	5:00
33523	5	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Francisco Trinaldo	Jesse Ronson	win	loss	31103	56579	Decision	Split	Keith Peterson	3	5:00
33523	4	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Iuri Alcantara	Wilson Reis	win	loss	16129	23401	Decision	Split	Osiris Maia	3	5:00
33523	3	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Felipe Arantes	Maximo Blanco	win	loss	31372	36618	Decision	Unanimous	Mario Yamasaki	3	5:00
33523	2	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Ildemar Alcantara	Albert Tumenov	win	loss	22223	60198	Decision	Split	Keith Peterson	3	5:00
33523	1	UFC Fight Night 36 - Machida vs. Mousasi	2014-02-15	Arena Jaragua, Jaragua do Sul, Santa Catarina, Brazil	Zubaira Tukhugov	Douglas Silva de Andrade	win	loss	63813	87981	Decision	Unanimous	Osiris Maia	3	5:00
33337	11	UFC 170 - Rousey vs. McMann	2014-02-22	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Ronda Rousey	Sara McMann	win	loss	73073	67094	TKO	Knee to the Body	Herb Dean	1	1:06
33337	10	UFC 170 - Rousey vs. McMann	2014-02-22	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Daniel Cormier	Patrick Cummins	win	loss	52311	72981	TKO	Punches	Mario Yamasaki	1	1:19
33337	9	UFC 170 - Rousey vs. McMann	2014-02-22	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Rory MacDonald	Demian Maia	win	loss	14018	14637	Decision	Unanimous	Yves Lavigne	3	5:00
33337	8	UFC 170 - Rousey vs. McMann	2014-02-22	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Mike Pyle	T.J. Waldburger	win	loss	4577	15125	TKO	Elbows and Punches	Herb Dean	3	4:03
33337	7	UFC 170 - Rousey vs. McMann	2014-02-22	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Stephen Thompson	Robert Whittaker	win	loss	59608	45132	TKO	Punches	Mario Yamasaki	1	3:43
33337	6	UFC 170 - Rousey vs. McMann	2014-02-22	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Alexis Davis	Jessica Eye	win	loss	22071	39575	Decision	Split	Yves Lavigne	3	5:00
33337	5	UFC 170 - Rousey vs. McMann	2014-02-22	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Raphael Assuncao	Pedro Munhoz	win	loss	9574	52407	Decision	Unanimous	Chris Tognoni	3	5:00
33337	4	UFC 170 - Rousey vs. McMann	2014-02-22	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Aljamain Sterling	Cody Gibson	win	loss	66313	38903	Decision	Unanimous	Herb Dean	3	5:00
33337	3	UFC 170 - Rousey vs. McMann	2014-02-22	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Zach Makovsky	Josh Sampo	win	loss	20522	66883	Decision	Unanimous	Chris Tognoni	3	5:00
33337	2	UFC 170 - Rousey vs. McMann	2014-02-22	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Erik Koch	Rafaello Oliveira	win	loss	23390	37260	TKO	Punches	Yves Lavigne	1	1:24
33337	1	UFC 170 - Rousey vs. McMann	2014-02-22	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Ernest Chavez	Yosdenis Cedeno	win	loss	80837	47066	Decision	Split	Chris Tognoni	3	5:00
34819	8	UFC - The Ultimate Fighter China Finale	2014-03-01	Cotai Arena, Macau, China, China	Dong Hyun Kim	John Hathaway	win	loss	16374	16704	KO	Spinning Back Elbow	Leon Roberts	3	1:02
34819	6	UFC - The Ultimate Fighter China Finale	2014-03-01	Cotai Arena, Macau, China, China	Matt Mitrione	Shawn Jordan	win	loss	49519	45624	KO	Punches	Dan Miragliotta	1	4:59
34819	5	UFC - The Ultimate Fighter China Finale	2014-03-01	Cotai Arena, Macau, China, China	Hatsu Hioki	Ivan Menjivar	win	loss	5466	993	Decision	Unanimous	Dan Miragliotta	3	5:00
34819	4	UFC - The Ultimate Fighter China Finale	2014-03-01	Cotai Arena, Macau, China, China	Yui Chul Nam	Kazuki Tokudome	win	loss	15987	26192	Decision	Split	Jerin Valel	3	5:00
34819	1	UFC - The Ultimate Fighter China Finale	2014-03-01	Cotai Arena, Macau, China, China	Mark Eddiva	Jumabieke Tuerxun	win	loss	75370	83505	Decision	Unanimous	Jerin Valel	3	5:00
33383	9	UFC Fight Night 37 - Gustafsson vs. Manuwa	2014-03-08	O2 Arena, London, Greater London, England	Alexander Gustafsson	Jimi Manuwa	win	loss	26162	37528	TKO	Knee and Punches	Marc Goddard	2	1:18
33383	8	UFC Fight Night 37 - Gustafsson vs. Manuwa	2014-03-08	O2 Arena, London, Greater London, England	Michael Johnson	Melvin Guillard	win	loss	68788	7431	Decision	Unanimous	Leon Roberts	3	5:00
33383	7	UFC Fight Night 37 - Gustafsson vs. Manuwa	2014-03-08	O2 Arena, London, Greater London, England	Brad Pickett	Neil Seery	win	loss	11743	14062	Decision	Unanimous	Neil Hall	3	5:00
33383	5	UFC Fight Night 37 - Gustafsson vs. Manuwa	2014-03-08	O2 Arena, London, Greater London, England	Ilir Latifi	Cyrille Diabate	win	loss	40207	2191	Submission	Guillotine Choke	Leon Roberts	1	3:02
33383	4	UFC Fight Night 37 - Gustafsson vs. Manuwa	2014-03-08	O2 Arena, London, Greater London, England	Luke Barnatt	Mats Nilsson	win	loss	56567	32446	TKO	Head Kick and Punches	Marc Goddard	1	3:24
33383	3	UFC Fight Night 37 - Gustafsson vs. Manuwa	2014-03-08	O2 Arena, London, Greater London, England	Claudio Henrique da Silva	Bradley Scott	win	loss	25830	44442	Decision	Unanimous	Neil Hall	3	5:00
33949	13	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Johny Hendricks	Robbie Lawler	win	loss	24539	2245	Decision	Unanimous	Dan Miragliotta	5	5:00
33949	11	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Myles Jury	Diego Sanchez	win	loss	34236	4824	Decision	Unanimous	Kerry Hatley	3	5:00
33949	10	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Hector Lombard	Jake Shields	win	loss	11292	502	Decision	Unanimous	Don Turnage	3	5:00
2203	7	UFC 48 - Payback	2004-06-19	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Frank Trigg	Dennis Hallman	win	loss	311	275	TKO	Punches	N/A	1	4:15
33949	8	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Kelvin Gastelum	Rick Story	win	loss	74700	25989	Decision	Split	Jacob Montalvo	3	5:00
33949	7	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Jessica Andrade	Raquel Pennington	win	loss	100715	75564	Decision	Split	Don Turnage	3	5:00
33949	6	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Dennis Bermudez	Jim Hettes	win	loss	58065	48046	TKO	Punches and Knee	Kerry Hatley	3	2:57
33949	5	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Alex Garcia	Sean Spencer	win	loss	54124	60908	Decision	Split	Don Turnage	3	5:00
33949	4	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Francisco Trevino	Renee Forte	win	loss	38029	37684	Decision	Unanimous	Dan Miragliotta	3	5:00
33949	2	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Sean Strickland	Bubba McDaniel	win	loss	30452	14600	Submission	Rear-Naked Choke	Kerry Hatley	1	4:33
33949	1	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Robert Whiteford	Daniel Pineda	win	loss	47105	21564	Decision	Unanimous	Don Turnage	3	5:00
35299	11	UFC Fight Night 38 - Shogun vs. Henderson 2	2014-03-23	Nelio Dias Gymnasium, Natal, Rio Grande do Norte, Brazil	Dan Henderson	Mauricio Rua	win	loss	195	5707	TKO	Punches	Herb Dean	3	1:31
35299	10	UFC Fight Night 38 - Shogun vs. Henderson 2	2014-03-23	Nelio Dias Gymnasium, Natal, Rio Grande do Norte, Brazil	C.B. Dollaway	Cezar Ferreira	win	loss	22350	22400	KO	Punches	Mario Yamasaki	1	0:39
35299	9	UFC Fight Night 38 - Shogun vs. Henderson 2	2014-03-23	Nelio Dias Gymnasium, Natal, Rio Grande do Norte, Brazil	Leonardo Santos	Norman Parke	draw	draw	4810	47549	Draw	Majority	Wernei Cardoso	3	5:00
35299	8	UFC Fight Night 38 - Shogun vs. Henderson 2	2014-03-23	Nelio Dias Gymnasium, Natal, Rio Grande do Norte, Brazil	Fabio Maldonado	Gian Villante	win	loss	16426	42802	Decision	Unanimous	Herb Dean	3	5:00
35299	7	UFC Fight Night 38 - Shogun vs. Henderson 2	2014-03-23	Nelio Dias Gymnasium, Natal, Rio Grande do Norte, Brazil	Michel Richard Cunha dos Prazeres	Mairbek Taisumov	win	loss	22218	33161	Decision	Unanimous	Mario Yamasaki	3	5:00
35299	6	UFC Fight Night 38 - Shogun vs. Henderson 2	2014-03-23	Nelio Dias Gymnasium, Natal, Rio Grande do Norte, Brazil	Rony Mariano Bezerra	Steven Siler	win	loss	38190	22537	TKO	Punches	Wernei Cardoso	1	1:17
35299	5	UFC Fight Night 38 - Shogun vs. Henderson 2	2014-03-23	Nelio Dias Gymnasium, Natal, Rio Grande do Norte, Brazil	Thiago Santos	Ronny Markes	win	loss	90021	21175	TKO	Kick to the Body and Punches	Mario Yamasaki	1	0:53
35299	4	UFC Fight Night 38 - Shogun vs. Henderson 2	2014-03-23	Nelio Dias Gymnasium, Natal, Rio Grande do Norte, Brazil	Jussier da Silva	Scott Jorgensen	win	loss	36939	16852	Submission	Rear-Naked Choke	Wernei Cardoso	1	3:07
35299	3	UFC Fight Night 38 - Shogun vs. Henderson 2	2014-03-23	Nelio Dias Gymnasium, Natal, Rio Grande do Norte, Brazil	Kenny Robertson	Thiago de Oliveira Perpetuo	win	loss	31978	53207	Submission	Rear-Naked Choke	Herb Dean	1	1:45
35299	2	UFC Fight Night 38 - Shogun vs. Henderson 2	2014-03-23	Nelio Dias Gymnasium, Natal, Rio Grande do Norte, Brazil	Hans Stringer	Francimar Barroso	win	loss	14825	14702	Decision	Split	Mario Yamasaki	3	5:00
35669	8	UFC Fight Night 39 - Nogueira vs. Nelson	2014-04-11	DU Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Roy Nelson	Antonio Rodrigo Nogueira	win	loss	10249	1440	KO	Punch	Leon Roberts	1	3:37
35669	7	UFC Fight Night 39 - Nogueira vs. Nelson	2014-04-11	DU Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Clay Guida	Tatsuya Kawajiri	win	loss	8184	1326	Decision	Unanimous	Marc Goddard	3	5:00
35669	6	UFC Fight Night 39 - Nogueira vs. Nelson	2014-04-11	DU Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Ryan LaFlare	John Howard	win	loss	34409	11798	Decision	Unanimous	Leon Roberts	3	5:00
35669	5	UFC Fight Night 39 - Nogueira vs. Nelson	2014-04-11	DU Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Ramsey Nijem	Beneil Dariush	win	loss	36963	56583	TKO	Punches	Neil Hall	1	4:20
35669	4	UFC Fight Night 39 - Nogueira vs. Nelson	2014-04-11	DU Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Jared Rosholt	Daniel Omielanczuk	win	loss	76763	54303	Decision	Unanimous	Marc Goddard	3	5:00
35669	3	UFC Fight Night 39 - Nogueira vs. Nelson	2014-04-11	DU Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Thales Leites	Trevor Smith	win	loss	8593	51113	TKO	Punches	Neil Hall	1	0:45
35503	13	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	Tim Kennedy	Michael Bisping	win	loss	2830	10196	Decision	Unanimous	Yves Lavigne	5	5:00
35503	12	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	Patrick Cote	Kyle Noke	win	loss	6612	7632	Decision	Unanimous	Dan Miragliotta	3	5:00
35503	11	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	Elias Theodorou	Sheldon Westcott	win	loss	81765	23648	TKO	Punches and Elbows	Philippe Chartier	2	4:41
35503	10	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	Chad Laprise	Olivier Aubin-Mercier	win	loss	69681	86241	Decision	Split	Yves Lavigne	3	5:00
35503	9	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	Dustin Poirier	Akira Corassani	win	loss	50529	22641	TKO	Punches	Dan Miragliotta	2	0:42
35503	8	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	K.J. Noons	Sam Stout	win	loss	6727	9901	KO	Punches	Philippe Chartier	1	0:30
35503	7	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	Sarah Kaufman	Leslie Smith	win	loss	16524	46542	Decision	Unanimous	Yves Lavigne	3	5:00
35503	6	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	Ryan Jimmo	Sean O'Connell	win	loss	21044	33156	KO	Punches	Dan Miragliotta	1	4:27
2203	6	UFC 48 - Payback	2004-06-19	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Frank Mir	Tim Sylvia	win	loss	2329	1061	TKO	Submission (Armbar	N/A	1	0:50
2203	5	UFC 48 - Payback	2004-06-19	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Matt Hughes	Renato Verissimo	win	loss	232	4095	Decision	Unanimous	N/A	3	5:00
2203	4	UFC 48 - Payback	2004-06-19	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Evan Tanner	Phil Baroni	win	loss	212	278	Decision	Unanimous	N/A	3	5:00
35503	5	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	George Roop	Dustin Kimura	win	loss	16415	41247	Decision	Unanimous	Philippe Chartier	3	5:00
35503	4	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	Mark Bocek	Mike de la Torre	win	loss	9781	17915	Decision	Split	Yves Lavigne	3	5:00
35503	3	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	Nordine Taleb	Vik Grujic	win	loss	26261	69858	Decision	Unanimous	Dan Miragliotta	3	5:00
35503	2	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	Richard Walsh	Chris Indich	win	loss	55587	42419	Decision	Unanimous	Philippe Chartier	3	5:00
35503	1	UFC - The Ultimate Fighter Nations Finale	2014-04-16	Pepsi Coliseum, Quebec City, Quebec, Canada	Mitch Gagnon	Tim Gorman	win	loss	37404	17717	Decision	Unanimous	Dan Miragliotta	3	5:00
35107	13	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Fabricio Werdum	Travis Browne	win	loss	8390	16785	Decision	Unanimous	John McCarthy	5	5:00
35107	12	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Miesha Tate	Liz Carmouche	win	loss	26252	67007	Decision	Unanimous	Herb Dean	3	5:00
35107	11	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Donald Cerrone	Edson Barboza	win	loss	15105	46259	Submission	Rear-Naked Choke	Jorge Alsonso	1	3:15
35107	10	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Yoel Romero	Brad Tavares	win	loss	60762	33095	Decision	Unanimous	Jorge Ortiz	3	5:00
35107	9	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Khabib Nurmagomedov	Rafael dos Anjos	win	loss	56035	11675	Decision	Unanimous	John McCarthy	3	5:00
35107	8	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Thiago Alves	Seth Baczynski	win	loss	5998	13827	Decision	Unanimous	Herb Dean	3	5:00
35107	7	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Jorge Masvidal	Pat Healy	win	loss	7688	6246	Decision	Unanimous	Jorge Alonso	3	5:00
35107	6	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Alex White	Estevan Payan	win	loss	55954	24952	KO	Punches	Jorge Ortiz	1	1:28
35107	4	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Jordan Mein	Hernani Perpetuo	win	loss	6749	28185	Decision	Split	Herb Dean	3	5:00
35107	3	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Dustin Ortiz	Ray Borg	win	loss	58097	84752	Decision	Split	Jorge Alonso	3	5:00
35107	1	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Derrick Lewis	Jack May	win	loss	59284	83949	TKO	Punches	John McCarthy	1	4:23
34401	10	UFC 172 - Jones vs. Teixeira	2014-04-26	Baltimore Arena, Baltimore, Maryland, United States	Jon Jones	Glover Teixeira	win	loss	27944	4655	Decision	Unanimous	Dan Miragliotta	5	5:00
34401	9	UFC 172 - Jones vs. Teixeira	2014-04-26	Baltimore Arena, Baltimore, Maryland, United States	Anthony Johnson	Phil Davis	win	loss	17662	27802	Decision	Unanimous	Herb Dean	3	5:00
34401	8	UFC 172 - Jones vs. Teixeira	2014-04-26	Baltimore Arena, Baltimore, Maryland, United States	Luke Rockhold	Tim Boetsch	win	loss	23345	19544	Submission	Inverted Triangle Kimura	Mario Yamasaki	1	2:08
34401	6	UFC 172 - Jones vs. Teixeira	2014-04-26	Baltimore Arena, Baltimore, Maryland, United States	Max Holloway	Andre Fili	win	loss	38671	58385	Submission	Guillotine Choke	Kevin Mulhall	3	3:39
34401	5	UFC 172 - Jones vs. Teixeira	2014-04-26	Baltimore Arena, Baltimore, Maryland, United States	Joseph Benavidez	Tim Elliott	win	loss	15008	49213	Submission	Guillotine Choke	Mario Yamasaki	1	4:08
34401	4	UFC 172 - Jones vs. Teixeira	2014-04-26	Baltimore Arena, Baltimore, Maryland, United States	Takanori Gomi	Isaac Vallie-Flagg	win	loss	425	8180	Decision	Unanimous	Herb Dean	3	5:00
34401	3	UFC 172 - Jones vs. Teixeira	2014-04-26	Baltimore Arena, Baltimore, Maryland, United States	Bethe Correia	Jessamyn Duke	win	loss	103069	71307	Decision	Unanimous	Kevin Mulhall	3	5:00
34401	2	UFC 172 - Jones vs. Teixeira	2014-04-26	Baltimore Arena, Baltimore, Maryland, United States	Danny Castillo	Charlie Brenneman	win	loss	26070	23403	KO	Punch	Dan Miragliotta	2	0:21
36085	12	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Costas Philippou	Lorenz Larkin	win	loss	32432	51345	KO	Punches	Keith Peterson	1	3:47
36085	11	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Daron Cruickshank	Erik Koch	win	loss	53717	23390	TKO	Head Kick and Punches	Gary Copeland	1	3:21
36085	10	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Neil Magny	Tim Means	win	loss	69166	11281	Decision	Unanimous	Jerry Krzys	3	5:00
36085	9	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Soa Palelei	Ruan Potts	win	loss	9680	75842	KO	Punch	Keith Peterson	1	2:20
36085	8	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Chris Cariaso	Louis Smolka	win	loss	16467	64792	Decision	Split	Herb Dean	3	5:00
36085	7	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Ed Herman	Rafael Natal	win	loss	6561	13968	Decision	Unanimous	Jerry Krzys	3	5:00
36085	6	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Kyoji Horiguchi	Darrell Montague	win	loss	64413	34214	Decision	Unanimous	Gary Copeland	3	5:00
36085	5	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Zak Cummings	Yan Cabral	win	loss	31808	27090	Decision	Unanimous	Keith Peterson	3	5:00
36085	4	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Johnny Eduardo	Eddie Wineland	win	loss	426	4173	KO	Punches	Herb Dean	1	4:37
36085	3	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Nik Lentz	Manny Gamburyan	win	loss	15058	5185	Decision	Unanimous	Jerry Krzys	3	5:00
36085	2	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Justin Salas	Ben Wall	win	loss	16180	78164	KO	Punches	Gary Copeland	1	2:21
36085	1	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Albert Tumenov	Anthony Lapsley	win	loss	60198	18590	KO	Punch	Keith Peterson	1	3:56
35617	12	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	T.J. Dillashaw	Renan Barao	win	loss	62507	23156	TKO	Head Kick and Punches	Herb Dean	5	2:26
35507	3	UFC 178 - Johnson vs. Cariaso	2014-09-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brian Ebersole	John Howard	win	loss	3015	11798	Decision	Split	Chris Tognoni	3	5:00
35617	10	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Robbie Lawler	Jake Ellenberger	win	loss	2245	13068	TKO	Knee and Punches	Herb Dean	3	3:06
35617	9	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Takeya Mizugaki	Francisco Rivera	win	loss	12074	11908	Decision	Unanimous	Yves Lavigne	3	5:00
35617	8	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	James Krause	Jamie Varner	win	loss	31766	7168	TKO	Ankle Injury	Jason Herzog	1	5:00
35617	7	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Michael Chiesa	Francisco Trinaldo	win	loss	46224	31103	Decision	Unanimous	Herb Dean	3	5:00
35617	6	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tony Ferguson	Katsunori Kikuno	win	loss	31239	16806	KO	Punch	Yves Lavigne	1	4:06
35617	5	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chris Holdsworth	Chico Camus	win	loss	51225	42850	Decision	Unanimous	Mark Smith	3	5:00
35617	3	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Vinc Pichel	Anthony Njokuani	win	loss	57848	7540	Decision	Unanimous	Mark Smith	3	5:00
35617	2	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Sam Sicilia	Aaron Phillips	win	loss	53205	55298	Decision	Unanimous	Jason Herzog	3	5:00
35617	1	UFC 173 - Barao vs. Dillashaw	2014-05-24	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jingliang Li	David Michaud	win	loss	26381	53778	Decision	Split	Mark Smith	3	5:00
35955	7	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Rashid Magomedov	Rodrigo Damm	win	loss	41524	11507	Decision	Unanimous	Herb Dean	3	5:00
35955	6	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Elias Silverio	Ernest Chavez	win	loss	88613	80837	Submission	Rear-Naked Choke	Osiris Maia	3	4:21
35955	5	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Gasan Umalatov	Paulo Thiago	win	loss	53109	13336	Decision	Unanimous	Wernei Cardoso	3	5:00
35955	4	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Edimilson Souza	Mark Eddiva	win	loss	57343	75370	TKO	Punches	Herb Dean	2	4:52
35955	3	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Ricardo Abreu	Wagner Silva Gomes	win	loss	82392	115911	Submission	Rear-Naked Choke	Osiris Maia	2	1:06
35955	2	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Marcos Rogerio de Lima	Richardson Moreira	win	loss	51955	72825	KO	Punches	Wernei Cardoso	1	0:20
35955	1	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Pedro Munhoz	Matt Hobar	win	loss	52407	59713	TKO	Punches	Mario Yamasaki	1	2:47
36427	9	UFC Fight Night 41 - Munoz vs. Mousasi	2014-05-31	O2 World, Berlin, Germany, Germany	C.B. Dollaway	Francis Carmont	win	loss	22350	9798	Decision	Unanimous	Leon Roberts	3	5:00
36427	8	UFC Fight Night 41 - Munoz vs. Mousasi	2014-05-31	O2 World, Berlin, Germany, Germany	Sean Strickland	Luke Barnatt	win	loss	30452	56567	Decision	Split	Grant Waterman	3	5:00
36427	7	UFC Fight Night 41 - Munoz vs. Mousasi	2014-05-31	O2 World, Berlin, Germany, Germany	Niklas Backstrom	Tom Niinimaki	win	loss	54620	5639	Submission	Rear-Naked Choke	Leon Roberts	1	4:15
36427	6	UFC Fight Night 41 - Munoz vs. Mousasi	2014-05-31	O2 World, Berlin, Germany, Germany	Nick Hein	Drew Dober	win	loss	50774	23982	Decision	Unanimous	Marc Goddard	3	5:00
36427	5	UFC Fight Night 41 - Munoz vs. Mousasi	2014-05-31	O2 World, Berlin, Germany, Germany	Magnus Cedenblad	Krzysztof Jotko	win	loss	22137	53380	Submission	Guillotine Choke	Wolf Menninger	2	4:59
36427	4	UFC Fight Night 41 - Munoz vs. Mousasi	2014-05-31	O2 World, Berlin, Germany, Germany	Iuri Alcantara	Vaughan Lee	win	loss	16129	6946	KO	Punches	Grant Waterman	1	0:25
36427	3	UFC Fight Night 41 - Munoz vs. Mousasi	2014-05-31	O2 World, Berlin, Germany, Germany	Peter Sobotta	Pawel Pawlak	win	loss	15816	65543	Decision	Unanimous	Leon Roberts	3	5:00
36427	2	UFC Fight Night 41 - Munoz vs. Mousasi	2014-05-31	O2 World, Berlin, Germany, Germany	Maximo Blanco	Andy Ogle	win	loss	36618	42659	Decision	Unanimous	Wolf Menninger	3	5:00
36427	1	UFC Fight Night 41 - Munoz vs. Mousasi	2014-05-31	O2 World, Berlin, Germany, Germany	Ruslan Magomedov	Viktor Pesta	win	loss	74434	74176	Decision	Unanimous	Marc Goddard	3	5:00
2203	3	UFC 48 - Payback	2004-06-19	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Matt Serra	Ivan Menjivar	win	loss	1305	993	Decision	Unanimous	N/A	3	5:00
35955	12	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Stipe Miocic	Fabio Maldonado	win	loss	39537	16426	TKO	Punches	Mario Yamasaki	1	0:35
35955	11	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Antonio Carlos Jr.	Vitor Miranda	win	loss	143157	13004	Decision	Unanimous	Herb Dean	3	5:00
35955	9	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Demian Maia	Alexander Yakovlev	win	loss	14637	10846	Decision	Unanimous	Herb Dean	3	5:00
35955	8	UFC - The Ultimate Fighter Brazil 3 Finale	2014-05-31	Geraldo Jose de Almeida (Ibirapuera) Gymnasium, Sao Paulo, Sao Paulo, Brazil	Robbie Peralta	Rony Mariano Bezerra	win	loss	21339	38190	Decision	Split	Mario Yamasaki	3	5:00
36711	11	UFC Fight Night 42 - Henderson vs. Khabilov	2014-06-07	Tingley Coliseum, Albuquerque, New Mexico, United States	Benson Henderson	Rustam Khabilov	win	loss	20548	45417	Submission	Rear-Naked Choke	Mario Yamasaki	4	1:16
36711	10	UFC Fight Night 42 - Henderson vs. Khabilov	2014-06-07	Tingley Coliseum, Albuquerque, New Mexico, United States	Diego Sanchez	Ross Pearson	win	loss	4824	11884	Decision	Split	Kevin Mulhall	3	5:00
36711	9	UFC Fight Night 42 - Henderson vs. Khabilov	2014-06-07	Tingley Coliseum, Albuquerque, New Mexico, United States	John Dodson	John Moraga	win	loss	11660	55159	TKO	Doctor Stoppage	Mario Yamasaki	2	5:00
36711	8	UFC Fight Night 42 - Henderson vs. Khabilov	2014-06-07	Tingley Coliseum, Albuquerque, New Mexico, United States	Rafael dos Anjos	Jason High	win	loss	11675	14185	TKO	Punches	Kevin Mulhall	2	3:36
36711	7	UFC Fight Night 42 - Henderson vs. Khabilov	2014-06-07	Tingley Coliseum, Albuquerque, New Mexico, United States	Piotr Hallmann	Yves Edwards	win	loss	53375	344	Submission	Rear-Naked Choke	Mario Yamasaki	3	2:31
36711	6	UFC Fight Night 42 - Henderson vs. Khabilov	2014-06-07	Tingley Coliseum, Albuquerque, New Mexico, United States	Bryan Caraway	Erik Perez	win	loss	13791	35509	Submission	Rear-Naked Choke	Raul Porrata	2	1:52
36711	5	UFC Fight Night 42 - Henderson vs. Khabilov	2014-06-07	Tingley Coliseum, Albuquerque, New Mexico, United States	Sergio Pettis	Yaotzin Meza	win	loss	50987	15937	Decision	Unanimous	Kevin Mulhall	3	5:00
36711	4	UFC Fight Night 42 - Henderson vs. Khabilov	2014-06-07	Tingley Coliseum, Albuquerque, New Mexico, United States	Lance Benoist	Bobby Voelker	win	loss	59764	15156	Decision	Unanimous	Mario Yamasaki	3	5:00
36711	3	UFC Fight Night 42 - Henderson vs. Khabilov	2014-06-07	Tingley Coliseum, Albuquerque, New Mexico, United States	Scott Jorgensen	Danny Martinez	win	loss	16852	16777	Decision	Unanimous	Kevin Mulhall	3	5:00
36711	2	UFC Fight Night 42 - Henderson vs. Khabilov	2014-06-07	Tingley Coliseum, Albuquerque, New Mexico, United States	Jon Tuck	Jake Lindsey	win	loss	45108	57214	TKO	Submission to Heel Strikes	Raul Porrata	3	2:47
36711	1	UFC Fight Night 42 - Henderson vs. Khabilov	2014-06-07	Tingley Coliseum, Albuquerque, New Mexico, United States	Patrick Cummins	Roger Narvaez	win	loss	72981	60454	TKO	Punches	Raul Porrata	2	2:28
35505	11	UFC 174 - Johnson vs. Bagautinov	2014-06-14	Rogers Arena, Vancouver, British Columbia, Canada	Demetrious Johnson	Ali Bagautinov	win	loss	45452	81198	Decision	Unanimous	Jerin Valel	5	5:00
35505	10	UFC 174 - Johnson vs. Bagautinov	2014-06-14	Rogers Arena, Vancouver, British Columbia, Canada	Rory MacDonald	Tyron Woodley	win	loss	14018	42605	Decision	Unanimous	John McCarthy	3	5:00
35505	9	UFC 174 - Johnson vs. Bagautinov	2014-06-14	Rogers Arena, Vancouver, British Columbia, Canada	Ryan Bader	Rafael Cavalcante	win	loss	22858	16161	Decision	Unanimous	Yves Lavigne	3	5:00
35505	8	UFC 174 - Johnson vs. Bagautinov	2014-06-14	Rogers Arena, Vancouver, British Columbia, Canada	Andrei Arlovski	Brendan Schaub	win	loss	270	33926	Decision	Split	John McCarthy	3	5:00
35505	7	UFC 174 - Johnson vs. Bagautinov	2014-06-14	Rogers Arena, Vancouver, British Columbia, Canada	Ovince St. Preux	Ryan Jimmo	win	loss	38842	21044	Submission	Kimura	Kevin Dornan	2	2:10
35505	6	UFC 174 - Johnson vs. Bagautinov	2014-06-14	Rogers Arena, Vancouver, British Columbia, Canada	Kiichi Kunimoto	Daniel Sarafian	win	loss	21039	17665	Submission	Rear-Naked Choke	Yves Lavigne	1	2:52
35505	5	UFC 174 - Johnson vs. Bagautinov	2014-06-14	Rogers Arena, Vancouver, British Columbia, Canada	Valerie Letourneau	Elizabeth Phillips	win	loss	21851	83021	Decision	Split	Jerin Valel	3	5:00
35505	4	UFC 174 - Johnson vs. Bagautinov	2014-06-14	Rogers Arena, Vancouver, British Columbia, Canada	Yves Jabouin	Mike Easton	win	loss	1693	9626	Decision	Unanimous	Kevin Dornan	3	5:00
35505	2	UFC 174 - Johnson vs. Bagautinov	2014-06-14	Rogers Arena, Vancouver, British Columbia, Canada	Michinori Tanaka	Roland Delorme	win	loss	71942	37351	Decision	Unanimous	Yves Lavigne	3	5:00
35505	1	UFC 174 - Johnson vs. Bagautinov	2014-06-14	Rogers Arena, Vancouver, British Columbia, Canada	Jason Saggo	Josh Shockley	win	loss	58213	24948	TKO	Punches	Jerin Valel	1	4:57
36731	11	UFC Fight Night 44 - Swanson vs. Stephens	2014-06-28	AT&T Center, San Antonio, Texas, United States	Cub Swanson	Jeremy Stephens	win	loss	11002	12179	Decision	Unanimous	Herb Dean	5	5:00
36731	10	UFC Fight Night 44 - Swanson vs. Stephens	2014-06-28	AT&T Center, San Antonio, Texas, United States	Kelvin Gastelum	Nicholas Musoke	win	loss	74700	26160	Decision	Unanimous	Kerry Hatley	3	5:00
36731	9	UFC Fight Night 44 - Swanson vs. Stephens	2014-06-28	AT&T Center, San Antonio, Texas, United States	Cezar Ferreira	Andrew Craig	win	loss	22400	63284	Decision	Unanimous	Jacob Montalvo	3	5:00
36731	8	UFC Fight Night 44 - Swanson vs. Stephens	2014-06-28	AT&T Center, San Antonio, Texas, United States	Ricardo Lamas	Hacran Dias	win	loss	32051	19789	Decision	Unanimous	Kerry Hatley	3	5:00
36731	7	UFC Fight Night 44 - Swanson vs. Stephens	2014-06-28	AT&T Center, San Antonio, Texas, United States	Clint Hester	Antonio Braga Neto	win	loss	43866	19530	Decision	Split	Herb Dean	3	5:00
36731	6	UFC Fight Night 44 - Swanson vs. Stephens	2014-06-28	AT&T Center, San Antonio, Texas, United States	Joe Ellenberger	James Moontasri	win	loss	14173	36889	Decision	Split	Frank Collazo	3	5:00
36731	5	UFC Fight Night 44 - Swanson vs. Stephens	2014-06-28	AT&T Center, San Antonio, Texas, United States	Carlos Diego Ferreira	Colton Smith	win	loss	26358	63163	Submission	Rear-Naked Choke	Herb Dean	1	0:38
17043	9	UFC 135 - Jones vs. Rampage	2011-09-24	Pepsi Center, Denver, Colorado, United States	Josh Koscheck	Matt Hughes	win	loss	9418	232	KO	Punches	Mario Yamasaki	1	4:59
36731	4	UFC Fight Night 44 - Swanson vs. Stephens	2014-06-28	AT&T Center, San Antonio, Texas, United States	Cody Gibson	Johnny Bedford	win	loss	38903	19717	TKO	Punch	Kerry Hatley	1	0:38
36731	3	UFC Fight Night 44 - Swanson vs. Stephens	2014-06-28	AT&T Center, San Antonio, Texas, United States	Marcelo Guimaraes	Andy Enz	win	loss	20277	61422	Decision	Split	Frank Collazo	3	5:00
36731	1	UFC Fight Night 44 - Swanson vs. Stephens	2014-06-28	AT&T Center, San Antonio, Texas, United States	Alexey Oleinik	Anthony Hamilton	win	loss	2027	58947	Submission	Neck Crank	Herb Dean	1	2:18
37109	10	UFC Fight Night 43 - Te Huna vs. Marquardt	2014-06-28	Vector Arena, Auckland, New Zealand, New Zealand	Nate Marquardt	James Te Huna	win	loss	1712	9033	Submission	Armbar	John Sharp	1	4:34
37109	9	UFC Fight Night 43 - Te Huna vs. Marquardt	2014-06-28	Vector Arena, Auckland, New Zealand, New Zealand	Jared Rosholt	Soa Palelei	win	loss	76763	9680	Decision	Unanimous	Steve Perceval	3	5:00
37109	8	UFC Fight Night 43 - Te Huna vs. Marquardt	2014-06-28	Vector Arena, Auckland, New Zealand, New Zealand	Charles Oliveira	Hatsu Hioki	win	loss	30300	5466	Submission	Anaconda Choke	John Sharp	2	4:32
37109	7	UFC Fight Night 43 - Te Huna vs. Marquardt	2014-06-28	Vector Arena, Auckland, New Zealand, New Zealand	Robert Whittaker	Mike Rhodes	win	loss	45132	87296	Decision	Unanimous	Steve Perceval	3	5:00
37109	6	UFC Fight Night 43 - Te Huna vs. Marquardt	2014-06-28	Vector Arena, Auckland, New Zealand, New Zealand	Jake Matthews	Dashon Johnson	win	loss	122139	120663	Submission	Triangle Choke	Peter Hickmott	3	3:16
37109	5	UFC Fight Night 43 - Te Huna vs. Marquardt	2014-06-28	Vector Arena, Auckland, New Zealand, New Zealand	Richie Vaculik	Roldan Sangcha-an	win	loss	21798	103497	Decision	Unanimous	John Sharp	3	5:00
37109	4	UFC Fight Night 43 - Te Huna vs. Marquardt	2014-06-28	Vector Arena, Auckland, New Zealand, New Zealand	Vik Grujic	Chris Indich	win	loss	69858	42419	TKO	Punches	Peter Hickmott	1	4:55
37109	3	UFC Fight Night 43 - Te Huna vs. Marquardt	2014-06-28	Vector Arena, Auckland, New Zealand, New Zealand	Neil Magny	Rodrigo Goiana de Lima	win	loss	69166	81136	KO	Punches	John Sharp	2	2:32
37109	2	UFC Fight Night 43 - Te Huna vs. Marquardt	2014-06-28	Vector Arena, Auckland, New Zealand, New Zealand	Daniel Hooker	Ian Entwistle	win	loss	45122	50588	TKO	Elbows	Steve Perceval	1	3:34
37109	1	UFC Fight Night 43 - Te Huna vs. Marquardt	2014-06-28	Vector Arena, Auckland, New Zealand, New Zealand	Gian Villante	Sean O'Connell	win	loss	42802	33156	Decision	Split	Peter Hickmott	3	5:00
36735	10	UFC 175 - Weidman vs. Machida	2014-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Chris Weidman	Lyoto Machida	win	loss	42804	7513	Decision	Unanimous	Herb Dean	5	5:00
36735	9	UFC 175 - Weidman vs. Machida	2014-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Ronda Rousey	Alexis Davis	win	loss	73073	22071	KO	Punches	Yves Lavigne	1	0:16
36735	8	UFC 175 - Weidman vs. Machida	2014-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Uriah Hall	Thiago Santos	win	loss	14210	90021	Decision	Unanimous	Yves Lavigne	3	5:00
36735	7	UFC 175 - Weidman vs. Machida	2014-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Russell Doane	Marcus Brimage	win	loss	30054	21618	Decision	Split	Mario Yamasaki	3	5:00
36735	6	UFC 175 - Weidman vs. Machida	2014-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Urijah Faber	Alex Caceres	win	loss	8847	41586	Submission	Rear-Naked Choke	Herb Dean	3	1:09
36735	5	UFC 175 - Weidman vs. Machida	2014-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Kenny Robertson	Ildemar Alcantara	win	loss	31978	22223	Decision	Unanimous	Chris Tognoni	3	5:00
36735	4	UFC 175 - Weidman vs. Machida	2014-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Bruno Santos	Chris Camozzi	win	loss	48052	17224	Decision	Split	Mario Yamasaki	3	5:00
36735	3	UFC 175 - Weidman vs. Machida	2014-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Rob Font	George Roop	win	loss	76100	16415	KO	Punch	Chris Tognoni	1	2:19
36735	2	UFC 175 - Weidman vs. Machida	2014-07-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Luke Zachrich	Guilherme Vasconcelos	win	loss	15720	108499	Decision	Unanimous	Mario Yamasaki	3	5:00
36737	11	UFC - The Ultimate Fighter 19 Finale	2014-07-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Frankie Edgar	B.J. Penn	win	loss	14204	1307	TKO	Punches	Herb Dean	3	4:16
36737	9	UFC - The Ultimate Fighter 19 Finale	2014-07-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Eddie Gordon	Dhiego Lima	win	loss	66410	59607	KO	Punches	Yves Lavigne	1	1:11
36737	8	UFC - The Ultimate Fighter 19 Finale	2014-07-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Derrick Lewis	Carlos Augusto Inocente Filho	win	loss	59284	17786	KO	Punches	Herb Dean	1	3:30
36737	7	UFC - The Ultimate Fighter 19 Finale	2014-07-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Dustin Ortiz	Justin Scoggins	win	loss	58097	71120	Decision	Split	Mario Yamasaki	3	5:00
36737	6	UFC - The Ultimate Fighter 19 Finale	2014-07-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Kevin Lee	Jesse Ronson	win	loss	84342	56579	Decision	Split	Herb Dean	3	5:00
36737	5	UFC - The Ultimate Fighter 19 Finale	2014-07-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Leandro Issa	Jumabieke Tuerxun	win	loss	19521	83505	Submission	Armbar	Mario Yamasaki	3	3:49
36737	4	UFC - The Ultimate Fighter 19 Finale	2014-07-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Adriano Martins	Juan Manuel Puig	win	loss	9907	44638	KO	Punch	Yves Lavigne	1	2:21
36737	3	UFC - The Ultimate Fighter 19 Finale	2014-07-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Patrick Walsh	Dan Spohn	win	loss	67971	39485	Decision	Unanimous	Mark Smith	3	5:00
36737	2	UFC - The Ultimate Fighter 19 Finale	2014-07-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Sarah Moras	Alexis Dufresne	win	loss	61600	113687	Decision	Unanimous	Yves Lavigne	3	5:00
37359	11	UFC Fight Night 45 - Cerrone vs. Miller	2014-07-16	Revel Casino Hotel, Atlantic City, New Jersey, United States	Donald Cerrone	Jim Miller	win	loss	15105	14463	KO	Head Kick and Punches	Dan Miragliotta	2	3:31
37359	10	UFC Fight Night 45 - Cerrone vs. Miller	2014-07-16	Revel Casino Hotel, Atlantic City, New Jersey, United States	Edson Barboza	Evan Dunham	win	loss	46259	22038	TKO	Kick to the Body and Punches	Keith Peterson	1	3:06
37359	9	UFC Fight Night 45 - Cerrone vs. Miller	2014-07-16	Revel Casino Hotel, Atlantic City, New Jersey, United States	Rick Story	Leonardo Mafra Texeira	win	loss	25989	76653	Submission	Arm-Triangle Choke	Dan Miragliotta	2	2:12
37359	8	UFC Fight Night 45 - Cerrone vs. Miller	2014-07-16	Revel Casino Hotel, Atlantic City, New Jersey, United States	Joe Proctor	Justin Salas	win	loss	46307	16180	TKO	Punches	Gasper Oliver	2	3:27
37359	7	UFC Fight Night 45 - Cerrone vs. Miller	2014-07-16	Revel Casino Hotel, Atlantic City, New Jersey, United States	John Lineker	Alptekin Ozkilic	win	loss	41906	73826	TKO	Punches	Keith Peterson	3	4:51
37359	6	UFC Fight Night 45 - Cerrone vs. Miller	2014-07-16	Revel Casino Hotel, Atlantic City, New Jersey, United States	Lucas Martins	Alex White	win	loss	100031	55954	KO	Punches	Gasper Oliver	3	2:08
37359	5	UFC Fight Night 45 - Cerrone vs. Miller	2014-07-16	Revel Casino Hotel, Atlantic City, New Jersey, United States	Gleison Tibau	Pat Healy	win	loss	5993	6246	Decision	Unanimous	Dan Miragliotta	3	5:00
37359	4	UFC Fight Night 45 - Cerrone vs. Miller	2014-07-16	Revel Casino Hotel, Atlantic City, New Jersey, United States	Leslie Smith	Jessamyn Duke	win	loss	46542	71307	TKO	Punches	Vitor Ribeiro	1	2:24
37359	3	UFC Fight Night 45 - Cerrone vs. Miller	2014-07-16	Revel Casino Hotel, Atlantic City, New Jersey, United States	Aljamain Sterling	Hugo Viana	win	loss	66313	65456	TKO	Punches	Liam Kerrigan	3	3:50
37359	2	UFC Fight Night 45 - Cerrone vs. Miller	2014-07-16	Revel Casino Hotel, Atlantic City, New Jersey, United States	Yosdenis Cedeno	Jerrod Sanders	win	loss	47066	48156	TKO	Retirement	Vitor Ribeiro	1	5:00
37359	1	UFC Fight Night 45 - Cerrone vs. Miller	2014-07-16	Revel Casino Hotel, Atlantic City, New Jersey, United States	Claudia Gadelha	Tina Lahdemaki	win	loss	48404	70795	Decision	Unanimous	Liam Kerrigan	3	5:00
36425	9	UFC Fight Night 46 - McGregor vs. Brandao	2014-07-19	The O2, Dublin, Leinster, Ireland	Gunnar Nelson	Zak Cummings	win	loss	25246	31808	Submission	Rear-Naked Choke	Marc Goddard	2	4:48
36425	8	UFC Fight Night 46 - McGregor vs. Brandao	2014-07-19	The O2, Dublin, Leinster, Ireland	Ian McCall	Brad Pickett	win	loss	5001	11743	Decision	Unanimous	Neil Hall	3	5:00
36425	7	UFC Fight Night 46 - McGregor vs. Brandao	2014-07-19	The O2, Dublin, Leinster, Ireland	Norman Parke	Naoyuki Kotani	win	loss	47549	393	TKO	Punches and Elbows	Marc Goddard	2	3:41
36425	6	UFC Fight Night 46 - McGregor vs. Brandao	2014-07-19	The O2, Dublin, Leinster, Ireland	Ilir Latifi	Chris Dempsey	win	loss	40207	79277	KO	Punches	Leon Roberts	1	2:07
36425	5	UFC Fight Night 46 - McGregor vs. Brandao	2014-07-19	The O2, Dublin, Leinster, Ireland	Neil Seery	Phil Harris	win	loss	14062	8753	Decision	Unanimous	Neil Hall	3	5:00
36425	3	UFC Fight Night 46 - McGregor vs. Brandao	2014-07-19	The O2, Dublin, Leinster, Ireland	Trevor Smith	Tor Troeng	win	loss	51113	6850	Decision	Unanimous	Leon Roberts	3	5:00
36425	2	UFC Fight Night 46 - McGregor vs. Brandao	2014-07-19	The O2, Dublin, Leinster, Ireland	Nikita Krylov	Cody Donovan	win	loss	110937	22304	TKO	Punches	Marc Goddard	1	4:57
36425	1	UFC Fight Night 46 - McGregor vs. Brandao	2014-07-19	The O2, Dublin, Leinster, Ireland	Patrick Holohan	Josh Sampo	win	loss	63616	66883	Submission	Rear-Naked Choke	Neil Hall	1	3:06
37719	12	UFC on Fox 12 - Lawler vs. Brown	2014-07-26	SAP Center, San Jose, California, United States	Robbie Lawler	Matt Brown	win	loss	2245	14310	Decision	Unanimous	John McCarthy	5	5:00
37719	11	UFC on Fox 12 - Lawler vs. Brown	2014-07-26	SAP Center, San Jose, California, United States	Anthony Johnson	Antonio Rogerio Nogueira	win	loss	17662	2270	KO	Punches	Herb Dean	1	0:44
37719	10	UFC on Fox 12 - Lawler vs. Brown	2014-07-26	SAP Center, San Jose, California, United States	Dennis Bermudez	Clay Guida	win	loss	58065	8184	Submission	Rear-Naked Choke	John McCarthy	2	2:57
36425	4	UFC Fight Night 46 - McGregor vs. Brandao	2014-07-19	The O2, Dublin, Leinster, Ireland	Cathal Pendred	Mike King	win	loss	64373	50928	TKO	Submission (Rear-Naked Choke	Marc Goddard	2	3:33
37719	9	UFC on Fox 12 - Lawler vs. Brown	2014-07-26	SAP Center, San Jose, California, United States	Bobby Green	Josh Thomson	win	loss	27953	2394	Decision	Split	Herb Dean	3	5:00
37719	8	UFC on Fox 12 - Lawler vs. Brown	2014-07-26	SAP Center, San Jose, California, United States	Jorge Masvidal	Daron Cruickshank	win	loss	7688	53717	Decision	Unanimous	Herb Dean	3	5:00
37719	4	UFC on Fox 12 - Lawler vs. Brown	2014-07-26	SAP Center, San Jose, California, United States	Tiago dos Santos e Silva	Akbarh Arreola	win	loss	78479	6120	Decision	Unanimous	Mike Beltran	3	5:00
37719	3	UFC on Fox 12 - Lawler vs. Brown	2014-07-26	SAP Center, San Jose, California, United States	Gilbert Burns	Andreas Stahl	win	loss	91727	57322	Decision	Unanimous	Jason Herzog	3	5:00
37719	2	UFC on Fox 12 - Lawler vs. Brown	2014-07-26	SAP Center, San Jose, California, United States	Joanna Jedrzejczyk	Juliana Lima	win	loss	101411	73710	Decision	Unanimous	Mike Beltran	3	5:00
37727	10	UFC Fight Night 47 - Bader vs. St. Preux	2014-08-16	Cross Insurance Center, Bangor, Maine, United States	Ryan Bader	Ovince St. Preux	win	loss	22858	38842	Decision	Unanimous	Dan Miragliotta	5	5:00
37727	9	UFC Fight Night 47 - Bader vs. St. Preux	2014-08-16	Cross Insurance Center, Bangor, Maine, United States	Ross Pearson	Gray Maynard	win	loss	11884	15835	TKO	Punches	Keith Peterson	2	1:35
37727	8	UFC Fight Night 47 - Bader vs. St. Preux	2014-08-16	Cross Insurance Center, Bangor, Maine, United States	Tim Boetsch	Brad Tavares	win	loss	19544	33095	TKO	Punches	Kevin MacDonald	2	3:18
37727	7	UFC Fight Night 47 - Bader vs. St. Preux	2014-08-16	Cross Insurance Center, Bangor, Maine, United States	Alan Jouban	Seth Baczynski	win	loss	65878	13827	KO	Punch	Keith Peterson	1	4:23
37727	6	UFC Fight Night 47 - Bader vs. St. Preux	2014-08-16	Cross Insurance Center, Bangor, Maine, United States	Shawn Jordan	Jack May	win	loss	45624	83949	TKO	Punches	Dan Miragliotta	3	2:03
37727	5	UFC Fight Night 47 - Bader vs. St. Preux	2014-08-16	Cross Insurance Center, Bangor, Maine, United States	Thiago Tavares	Robbie Peralta	win	loss	4647	21339	Submission	Rear-Naked Choke	Kevin MacDonald	1	4:27
17824	6	UFC 138 - Leben vs. Munoz	2011-11-05	LG Arena, Birmingham, West Midlands, England	Terry Etim	Edward Faaloloto	win	loss	13332	55070	Submission	Guillotine Choke	Leon Roberts	1	0:17
37727	4	UFC Fight Night 47 - Bader vs. St. Preux	2014-08-16	Cross Insurance Center, Bangor, Maine, United States	Jussier da Silva	Zach Makovsky	win	loss	36939	20522	Decision	Unanimous	Keith Peterson	3	5:00
37727	3	UFC Fight Night 47 - Bader vs. St. Preux	2014-08-16	Cross Insurance Center, Bangor, Maine, United States	Sara McMann	Lauren Murphy	win	loss	67094	66725	Decision	Split	Kevin MacDonald	3	5:00
37727	2	UFC Fight Night 47 - Bader vs. St. Preux	2014-08-16	Cross Insurance Center, Bangor, Maine, United States	Tom Watson	Sam Alvey	win	loss	15179	35410	Decision	Unanimous	Dan Miragliotta	3	5:00
37727	1	UFC Fight Night 47 - Bader vs. St. Preux	2014-08-16	Cross Insurance Center, Bangor, Maine, United States	Frankie Saenz	Nolan Ticman	win	loss	55410	72084	Decision	Unanimous	Keith Peterson	3	5:00
37361	11	UFC Fight Night 49 - Henderson vs. dos Anjos	2014-08-23	BOK Center, Tulsa, Oklahoma, United States	Rafael dos Anjos	Benson Henderson	win	loss	11675	20548	KO	Punch	John McCarthy	1	2:31
37361	10	UFC Fight Night 49 - Henderson vs. dos Anjos	2014-08-23	BOK Center, Tulsa, Oklahoma, United States	Jordan Mein	Mike Pyle	win	loss	6749	4577	TKO	Punches	Dan Miragliotta	1	1:12
37361	9	UFC Fight Night 49 - Henderson vs. dos Anjos	2014-08-23	BOK Center, Tulsa, Oklahoma, United States	Thales Leites	Francis Carmont	win	loss	8593	9798	KO	Punches	John McCarthy	2	0:20
37361	8	UFC Fight Night 49 - Henderson vs. dos Anjos	2014-08-23	BOK Center, Tulsa, Oklahoma, United States	Max Holloway	Clay Collard	win	loss	38671	78465	TKO	Punches	Dan Miragliotta	3	3:47
37361	7	UFC Fight Night 49 - Henderson vs. dos Anjos	2014-08-23	BOK Center, Tulsa, Oklahoma, United States	James Vick	Valmir Lazaro	win	loss	81956	22216	Decision	Unanimous	Kevin Nix	3	5:00
37361	6	UFC Fight Night 49 - Henderson vs. dos Anjos	2014-08-23	BOK Center, Tulsa, Oklahoma, United States	Chas Skelly	Tom Niinimaki	win	loss	47227	5639	Submission	Rear-Naked Choke	Dan Miragliotta	1	2:35
37361	5	UFC Fight Night 49 - Henderson vs. dos Anjos	2014-08-23	BOK Center, Tulsa, Oklahoma, United States	Neil Magny	Alex Garcia	win	loss	69166	54124	Decision	Unanimous	John McCarthy	3	5:00
37361	4	UFC Fight Night 49 - Henderson vs. dos Anjos	2014-08-23	BOK Center, Tulsa, Oklahoma, United States	Beneil Dariush	Tony Martin	win	loss	56583	80436	Submission	Arm-Triangle Choke	Dan Miragliotta	2	3:38
37361	3	UFC Fight Night 49 - Henderson vs. dos Anjos	2014-08-23	BOK Center, Tulsa, Oklahoma, United States	Matt Hobar	Aaron Phillips	win	loss	59713	55298	Decision	Unanimous	Kevin Nix	3	5:00
37361	2	UFC Fight Night 49 - Henderson vs. dos Anjos	2014-08-23	BOK Center, Tulsa, Oklahoma, United States	Ben Saunders	Chris Heatherly	win	loss	10339	101117	Submission	Omoplata	John McCarthy	1	2:18
37361	1	UFC Fight Night 49 - Henderson vs. dos Anjos	2014-08-23	BOK Center, Tulsa, Oklahoma, United States	Wilson Reis	Joby Sanchez	win	loss	23401	50239	Decision	Unanimous	Kevin Nix	3	5:00
37741	10	UFC Fight Night 48 - Bisping vs. Le	2014-08-23	Cotai Arena, Macau, China, China	Michael Bisping	Cung Le	win	loss	10196	14883	TKO	Knee and Punches	John Sharp	4	0:57
37741	9	UFC Fight Night 48 - Bisping vs. Le	2014-08-23	Cotai Arena, Macau, China, China	Tyron Woodley	Dong Hyun Kim	win	loss	42605	16374	TKO	Punches	Leon Roberts	1	1:01
37741	8	UFC Fight Night 48 - Bisping vs. Le	2014-08-23	Cotai Arena, Macau, China, China	Lipeng Zhang	Brendan O'Reilly	win	loss	50416	52633	Decision	Unanimous	John Sharp	3	5:00
37741	7	UFC Fight Night 48 - Bisping vs. Le	2014-08-23	Cotai Arena, Macau, China, China	Guangyou Ning	Jianping Yang	win	loss	26389	26365	Decision	Unanimous	Steve Perceval	3	5:00
37741	6	UFC Fight Night 48 - Bisping vs. Le	2014-08-23	Cotai Arena, Macau, China, China	Sai Wang	Danny Mitchell	win	loss	47118	40523	Decision	Unanimous	Leon Roberts	3	5:00
37741	5	UFC Fight Night 48 - Bisping vs. Le	2014-08-23	Cotai Arena, Macau, China, China	Alberto Mina	Shinsho Anzai	win	loss	16705	47183	TKO	Punches	Thomas Fan	1	4:17
37741	4	UFC Fight Night 48 - Bisping vs. Le	2014-08-23	Cotai Arena, Macau, China, China	Yuta Sasaki	Roland Delorme	win	loss	63070	37351	Submission	Rear-Naked Choke	John Sharp	1	1:06
37741	3	UFC Fight Night 48 - Bisping vs. Le	2014-08-23	Cotai Arena, Macau, China, China	Colby Covington	Anying Wang	win	loss	57269	135315	Submission	Punches	Leon Roberts	1	4:50
37741	2	UFC Fight Night 48 - Bisping vs. Le	2014-08-23	Cotai Arena, Macau, China, China	Royston Wee	Zhikui Yao	win	loss	88793	122383	Decision	Split	Steve Perceval	3	5:00
38011	8	UFC 177 - Dillashaw vs. Soto	2014-08-30	Sleep Train Arena, Sacramento, California, United States	T.J. Dillashaw	Joe Soto	win	loss	62507	17004	KO	Head Kick and Punches	John McCarthy	5	2:20
38011	7	UFC 177 - Dillashaw vs. Soto	2014-08-30	Sleep Train Arena, Sacramento, California, United States	Tony Ferguson	Danny Castillo	win	loss	31239	26070	Decision	Split	Herb Dean	3	5:00
38011	6	UFC 177 - Dillashaw vs. Soto	2014-08-30	Sleep Train Arena, Sacramento, California, United States	Bethe Correia	Shayna Baszler	win	loss	103069	12116	TKO	Punches	John McCarthy	2	1:56
38011	5	UFC 177 - Dillashaw vs. Soto	2014-08-30	Sleep Train Arena, Sacramento, California, United States	Carlos Diego Ferreira	Ramsey Nijem	win	loss	26358	36963	TKO	Punches	Herb Dean	2	1:53
38011	4	UFC 177 - Dillashaw vs. Soto	2014-08-30	Sleep Train Arena, Sacramento, California, United States	Yancy Medeiros	Damon Jackson	win	loss	27738	113767	Submission	Reverse Bulldog Choke	Jason Herzog	2	1:54
38011	3	UFC 177 - Dillashaw vs. Soto	2014-08-30	Sleep Train Arena, Sacramento, California, United States	Derek Brunson	Lorenz Larkin	win	loss	68494	51345	Decision	Unanimous	Herb Dean	3	5:00
38011	2	UFC 177 - Dillashaw vs. Soto	2014-08-30	Sleep Train Arena, Sacramento, California, United States	Anthony Hamilton	Ruan Potts	win	loss	58947	75842	TKO	Punches to the Body	Steven Davis	2	4:17
38431	9	UFC Fight Night 50 - Jacare vs. Mousasi 2	2014-09-05	Foxwoods Resort Casino, Mashantucket, Connecticut, United States	Ronaldo Souza	Gegard Mousasi	win	loss	8394	7466	Submission	Guillotine Choke	Herb Dean	3	4:30
38431	8	UFC Fight Night 50 - Jacare vs. Mousasi 2	2014-09-05	Foxwoods Resort Casino, Mashantucket, Connecticut, United States	Ben Rothwell	Alistair Overeem	win	loss	2262	461	TKO	Punches	Keith Peterson	1	2:19
2203	2	UFC 48 - Payback	2004-06-19	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Trevor Prangley	Curtis Stout	win	loss	4789	279	Submission	Neck Crank	N/A	2	1:05
38431	7	UFC Fight Night 50 - Jacare vs. Mousasi 2	2014-09-05	Foxwoods Resort Casino, Mashantucket, Connecticut, United States	Matt Mitrione	Derrick Lewis	win	loss	49519	59284	KO	Punches	Mario Yamasaki	1	0:41
38431	6	UFC Fight Night 50 - Jacare vs. Mousasi 2	2014-09-05	Foxwoods Resort Casino, Mashantucket, Connecticut, United States	Joe Lauzon	Michael Chiesa	win	loss	4923	46224	TKO	Doctor Stoppage	Herb Dean	2	2:14
38431	5	UFC Fight Night 50 - Jacare vs. Mousasi 2	2014-09-05	Foxwoods Resort Casino, Mashantucket, Connecticut, United States	John Moraga	Justin Scoggins	win	loss	55159	71120	Submission	Guillotine Choke	Mario Yamasaki	2	0:47
38431	4	UFC Fight Night 50 - Jacare vs. Mousasi 2	2014-09-05	Foxwoods Resort Casino, Mashantucket, Connecticut, United States	Al Iaquinta	Rodrigo Damm	win	loss	42817	11507	TKO	Punches and Elbows	Herb Dean	3	2:26
38431	3	UFC Fight Night 50 - Jacare vs. Mousasi 2	2014-09-05	Foxwoods Resort Casino, Mashantucket, Connecticut, United States	Rafael Natal	Chris Camozzi	win	loss	13968	17224	Decision	Split	Keith Peterson	3	5:00
38431	2	UFC Fight Night 50 - Jacare vs. Mousasi 2	2014-09-05	Foxwoods Resort Casino, Mashantucket, Connecticut, United States	Chris Beal	Tateki Matsuda	win	loss	53369	45607	Decision	Unanimous	Mario Yamasaki	3	5:00
38431	1	UFC Fight Night 50 - Jacare vs. Mousasi 2	2014-09-05	Foxwoods Resort Casino, Mashantucket, Connecticut, United States	Chas Skelly	Sean Soriano	win	loss	47227	61682	Decision	Unanimous	Herb Dean	3	5:00
37743	11	UFC Fight Night 51 - Bigfoot vs. Arlovski 2	2014-09-13	Nilson Nelson Gymnasium, Brasilia, Federal District, Brazil	Andrei Arlovski	Antonio Silva	win	loss	270	12354	KO	Punches	Jerin Valel	1	2:59
37743	10	UFC Fight Night 51 - Bigfoot vs. Arlovski 2	2014-09-13	Nilson Nelson Gymnasium, Brasilia, Federal District, Brazil	Gleison Tibau	Piotr Hallmann	win	loss	5993	53375	Decision	Split	Mario Yamasaki	3	5:00
37743	9	UFC Fight Night 51 - Bigfoot vs. Arlovski 2	2014-09-13	Nilson Nelson Gymnasium, Brasilia, Federal District, Brazil	Leonardo Santos	Efrain Escudero	win	loss	4810	16555	Decision	Unanimous	Jerin Valel	3	5:00
37743	8	UFC Fight Night 51 - Bigfoot vs. Arlovski 2	2014-09-13	Nilson Nelson Gymnasium, Brasilia, Federal District, Brazil	Santiago Ponzinibbio	Wendell de Oliveira Marques	win	loss	64593	15393	KO	Punches	Mario Yamasaki	1	1:20
37743	7	UFC Fight Night 51 - Bigfoot vs. Arlovski 2	2014-09-13	Nilson Nelson Gymnasium, Brasilia, Federal District, Brazil	Iuri Alcantara	Russell Doane	win	loss	16129	30054	Decision	Unanimous	Jerin Valel	3	5:00
37743	6	UFC Fight Night 51 - Bigfoot vs. Arlovski 2	2014-09-13	Nilson Nelson Gymnasium, Brasilia, Federal District, Brazil	Jessica Andrade	Larissa Pacheco	win	loss	100715	144115	Submission	Guillotine Choke	Fernando Yamasaki	1	4:33
37743	5	UFC Fight Night 51 - Bigfoot vs. Arlovski 2	2014-09-13	Nilson Nelson Gymnasium, Brasilia, Federal District, Brazil	Godofredo Castro	Dashon Johnson	win	loss	40623	120663	Submission	Triangle Armbar	Mario Yamasaki	1	4:29
37743	3	UFC Fight Night 51 - Bigfoot vs. Arlovski 2	2014-09-13	Nilson Nelson Gymnasium, Brasilia, Federal District, Brazil	Francisco Trinaldo	Leandro Silva	win	loss	31103	86382	Decision	Unanimous	Mario Yamasaki	3	5:00
37743	2	UFC Fight Night 51 - Bigfoot vs. Arlovski 2	2014-09-13	Nilson Nelson Gymnasium, Brasilia, Federal District, Brazil	Sean Spencer	Paulo Thiago	win	loss	60908	13336	Decision	Unanimous	Fernando Yamasaki	3	5:00
37743	1	UFC Fight Night 51 - Bigfoot vs. Arlovski 2	2014-09-13	Nilson Nelson Gymnasium, Brasilia, Federal District, Brazil	Rani Yahya	Johnny Bedford	win	loss	10425	19717	Submission	Kimura	Jerin Valel	2	2:04
37745	12	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Mark Hunt	Roy Nelson	win	loss	10668	10249	KO	Punch	Leon Roberts	2	3:00
37745	11	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Myles Jury	Takanori Gomi	win	loss	34236	425	TKO	Punches	Steve Perceval	1	1:32
37745	10	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Yoshihiro Akiyama	Amir Sadollah	win	loss	11895	34071	Decision	Unanimous	Wolf Menninger	3	5:00
37745	9	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Miesha Tate	Rin Nakai	win	loss	26252	18887	Decision	Unanimous	Jerin Valel	3	5:00
37745	8	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Kiichi Kunimoto	Richard Walsh	win	loss	21039	55587	Decision	Split	Jerin Valel	3	5:00
37745	7	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Kyoji Horiguchi	Jon delos Reyes	win	loss	64413	58594	TKO	Punches	Steve Perceval	1	3:48
37745	5	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Katsunori Kikuno	Sam Sicilia	win	loss	16806	53205	Submission	Rear-Naked Choke	Wolf Menninger	2	1:38
37745	4	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Hyun Gyu Lim	Takenori Sato	win	loss	21040	12196	KO	Elbows	Leon Roberts	1	1:18
37745	3	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Kyung Ho Kang	Michinori Tanaka	win	loss	24067	71942	Decision	Split	Jerin Valel	3	5:00
37745	1	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Maximo Blanco	Daniel Hooker	win	loss	36618	45122	Decision	Unanimous	Wolf Menninger	3	5:00
35507	11	UFC 178 - Johnson vs. Cariaso	2014-09-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Demetrious Johnson	Chris Cariaso	win	loss	45452	16467	Submission	Kimura	Herb Dean	2	2:29
35507	10	UFC 178 - Johnson vs. Cariaso	2014-09-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Donald Cerrone	Eddie Alvarez	win	loss	15105	9265	Decision	Unanimous	John McCarthy	3	5:00
35507	9	UFC 178 - Johnson vs. Cariaso	2014-09-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Conor McGregor	Dustin Poirier	win	loss	29688	50529	TKO	Punches	Herb Dean	1	1:46
35507	8	UFC 178 - Johnson vs. Cariaso	2014-09-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Yoel Romero	Tim Kennedy	win	loss	60762	2830	TKO	Punches	John McCarthy	3	0:58
35507	7	UFC 178 - Johnson vs. Cariaso	2014-09-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Cat Zingano	Amanda Nunes	win	loss	33932	31496	TKO	Elbows and Punches	Jason Herzog	3	1:21
2203	1	UFC 48 - Payback	2004-06-19	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Georges St. Pierre	Jay Hieron	win	loss	3500	9267	TKO	Punches	N/A	1	1:42
35507	6	UFC 178 - Johnson vs. Cariaso	2014-09-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dominick Cruz	Takeya Mizugaki	win	loss	12107	12074	KO	Punches	Chris Tognoni	1	1:01
35507	5	UFC 178 - Johnson vs. Cariaso	2014-09-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jorge Masvidal	James Krause	win	loss	7688	31766	Decision	Unanimous	Herb Dean	3	5:00
35507	4	UFC 178 - Johnson vs. Cariaso	2014-09-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Stephen Thompson	Patrick Cote	win	loss	59608	6612	Decision	Unanimous	Jason Herzog	3	5:00
35507	2	UFC 178 - Johnson vs. Cariaso	2014-09-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Kevin Lee	Jon Tuck	win	loss	84342	45108	Decision	Unanimous	Jason Herzog	3	5:00
35507	1	UFC 178 - Johnson vs. Cariaso	2014-09-27	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Manny Gamburyan	Cody Gibson	win	loss	5185	38903	Submission	Guillotine Choke	Chris Tognoni	2	4:56
35509	12	UFC Fight Night 54 - MacDonald vs. Saffiedine	2014-10-04	Halifax Metro Centre, Halifax, Nova Scotia, Canada	Rory MacDonald	Tarec Saffiedine	win	loss	14018	21912	TKO	Punches	Herb Dean	3	1:28
35509	11	UFC Fight Night 54 - MacDonald vs. Saffiedine	2014-10-04	Halifax Metro Centre, Halifax, Nova Scotia, Canada	Raphael Assuncao	Bryan Caraway	win	loss	9574	13791	Decision	Unanimous	Dan Miragliotta	3	5:00
35509	10	UFC Fight Night 54 - MacDonald vs. Saffiedine	2014-10-04	Halifax Metro Centre, Halifax, Nova Scotia, Canada	Chad Laprise	Yosdenis Cedeno	win	loss	69681	47066	Decision	Unanimous	Cyril Desjardins	3	5:00
35509	9	UFC Fight Night 54 - MacDonald vs. Saffiedine	2014-10-04	Halifax Metro Centre, Halifax, Nova Scotia, Canada	Elias Theodorou	Bruno Santos	win	loss	81765	48052	Decision	Unanimous	Brad Jardine	3	5:00
35509	8	UFC Fight Night 54 - MacDonald vs. Saffiedine	2014-10-04	Halifax Metro Centre, Halifax, Nova Scotia, Canada	Nordine Taleb	Jingliang Li	win	loss	26261	26381	Decision	Split	Herb Dean	3	5:00
35509	7	UFC Fight Night 54 - MacDonald vs. Saffiedine	2014-10-04	Halifax Metro Centre, Halifax, Nova Scotia, Canada	Mitch Gagnon	Roman Salazar	win	loss	37404	24790	Submission	Rear-Naked Choke	Cyril Desjardins	1	2:06
35509	6	UFC Fight Night 54 - MacDonald vs. Saffiedine	2014-10-04	Halifax Metro Centre, Halifax, Nova Scotia, Canada	Daron Cruickshank	Anthony Njokuani	win	loss	53717	7540	Decision	Unanimous	Dan Miragliotta	3	5:00
35509	5	UFC Fight Night 54 - MacDonald vs. Saffiedine	2014-10-04	Halifax Metro Centre, Halifax, Nova Scotia, Canada	Olivier Aubin-Mercier	Jake Lindsey	win	loss	86241	57214	Submission	Inverted Triangle Kimura	Brad Jardine	2	3:22
35509	4	UFC Fight Night 54 - MacDonald vs. Saffiedine	2014-10-04	Halifax Metro Centre, Halifax, Nova Scotia, Canada	Paul Felder	Jason Saggo	win	loss	68205	58213	Decision	Split	Herb Dean	3	5:00
35509	3	UFC Fight Night 54 - MacDonald vs. Saffiedine	2014-10-04	Halifax Metro Centre, Halifax, Nova Scotia, Canada	Chris Kelades	Patrick Holohan	win	loss	51576	63616	Decision	Unanimous	Cyril Desjardins	3	5:00
35509	2	UFC Fight Night 54 - MacDonald vs. Saffiedine	2014-10-04	Halifax Metro Centre, Halifax, Nova Scotia, Canada	Albert Tumenov	Matt Dwyer	win	loss	60198	53933	KO	Head Kick and Punches	Dan Miragliotta	1	1:03
37747	11	UFC Fight Night 53 - Nelson vs. Story	2014-10-04	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Rick Story	Gunnar Nelson	win	loss	25989	25246	Decision	Split	Marc Goddard	5	5:00
37747	10	UFC Fight Night 53 - Nelson vs. Story	2014-10-04	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Max Holloway	Akira Corassani	win	loss	38671	22641	KO	Punches	Kristian Hacklou	1	3:11
37747	9	UFC Fight Night 53 - Nelson vs. Story	2014-10-04	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Jan Blachowicz	Ilir Latifi	win	loss	25821	40207	TKO	Kick to the Body and Punches	Grant Waterman	1	1:58
37747	8	UFC Fight Night 53 - Nelson vs. Story	2014-10-04	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Mike Wilkinson	Niklas Backstrom	win	loss	50586	54620	KO	Punches	Bobby Rehman	1	1:19
37747	7	UFC Fight Night 53 - Nelson vs. Story	2014-10-04	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Magnus Cedenblad	Scott Askham	win	loss	22137	40518	Decision	Unanimous	Marc Goddard	3	5:00
37747	6	UFC Fight Night 53 - Nelson vs. Story	2014-10-04	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Nicholas Musoke	Alexander Yakovlev	win	loss	26160	10846	Decision	Unanimous	Grant Waterman	3	5:00
37747	4	UFC Fight Night 53 - Nelson vs. Story	2014-10-04	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Cathal Pendred	Gasan Umalatov	win	loss	64373	53109	Decision	Split	Marc Goddard	3	5:00
37747	3	UFC Fight Night 53 - Nelson vs. Story	2014-10-04	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Krzysztof Jotko	Tor Troeng	win	loss	53380	6850	Decision	Unanimous	Grant Waterman	3	5:00
37747	2	UFC Fight Night 53 - Nelson vs. Story	2014-10-04	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Mairbek Taisumov	Marcin Bandel	win	loss	33161	55705	TKO	Punches	Kristian Hacklou	1	1:01
37747	1	UFC Fight Night 53 - Nelson vs. Story	2014-10-04	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Zubaira Tukhugov	Ernest Chavez	win	loss	63813	80837	TKO	Punches	Bobby Rehman	1	4:21
37749	11	UFC 179 - Aldo vs. Mendes 2	2014-10-25	Maracanazinho Gymnasium, Rio de Janeiro, Rio de Janeiro, Brazil	Jose Aldo	Chad Mendes	win	loss	11506	38393	Decision	Unanimous	Marc Goddard	5	5:00
37749	10	UFC 179 - Aldo vs. Mendes 2	2014-10-25	Maracanazinho Gymnasium, Rio de Janeiro, Rio de Janeiro, Brazil	Phil Davis	Glover Teixeira	win	loss	27802	4655	Decision	Unanimous	Mario Yamasaki	3	5:00
37749	9	UFC 179 - Aldo vs. Mendes 2	2014-10-25	Maracanazinho Gymnasium, Rio de Janeiro, Rio de Janeiro, Brazil	Fabio Maldonado	Hans Stringer	win	loss	16426	14825	TKO	Punches	Marc Goddard	2	4:06
37749	8	UFC 179 - Aldo vs. Mendes 2	2014-10-25	Maracanazinho Gymnasium, Rio de Janeiro, Rio de Janeiro, Brazil	Darren Elkins	Lucas Martins	win	loss	22094	100031	Decision	Split	Osiris Maia	3	5:00
37749	7	UFC 179 - Aldo vs. Mendes 2	2014-10-25	Maracanazinho Gymnasium, Rio de Janeiro, Rio de Janeiro, Brazil	Beneil Dariush	Carlos Diego Ferreira	win	loss	56583	26358	Decision	Unanimous	Mario Yamasaki	3	5:00
37749	6	UFC 179 - Aldo vs. Mendes 2	2014-10-25	Maracanazinho Gymnasium, Rio de Janeiro, Rio de Janeiro, Brazil	Neil Magny	William Macario	win	loss	69166	69624	TKO	Punches	Eduardo Herdy	3	2:40
37749	5	UFC 179 - Aldo vs. Mendes 2	2014-10-25	Maracanazinho Gymnasium, Rio de Janeiro, Rio de Janeiro, Brazil	Yan Cabral	Naoyuki Kotani	win	loss	27090	393	Submission	Rear-Naked Choke	Mario Yamasaki	2	3:06
37749	4	UFC 179 - Aldo vs. Mendes 2	2014-10-25	Maracanazinho Gymnasium, Rio de Janeiro, Rio de Janeiro, Brazil	Wilson Reis	Scott Jorgensen	win	loss	23401	16852	Submission	Arm-Triangle Choke	Marc Goddard	1	3:28
37749	3	UFC 179 - Aldo vs. Mendes 2	2014-10-25	Maracanazinho Gymnasium, Rio de Janeiro, Rio de Janeiro, Brazil	Andre Fili	Felipe Arantes	win	loss	58385	31372	Decision	Unanimous	Osiris Maia	3	5:00
37749	2	UFC 179 - Aldo vs. Mendes 2	2014-10-25	Maracanazinho Gymnasium, Rio de Janeiro, Rio de Janeiro, Brazil	Gilbert Burns	Christos Giagos	win	loss	91727	68130	Submission	Armbar	Eduardo Herdy	1	4:57
37749	1	UFC 179 - Aldo vs. Mendes 2	2014-10-25	Maracanazinho Gymnasium, Rio de Janeiro, Rio de Janeiro, Brazil	Tony Martin	Fabricio Camoes	win	loss	80436	2427	Submission	Kimura	Mario Yamasaki	1	4:16
40339	9	UFC Fight Night 55 - Rockhold vs. Bisping	2014-11-07	Allphones Arena, Sydney, New South Wales, Australia	Robert Whittaker	Clint Hester	win	loss	45132	43866	TKO	Knee and Punches	John Sharp	2	2:43
40339	8	UFC Fight Night 55 - Rockhold vs. Bisping	2014-11-07	Allphones Arena, Sydney, New South Wales, Australia	Soa Palelei	Walt Harris	win	loss	9680	72046	TKO	Punches	Leon Roberts	2	4:49
40339	6	UFC Fight Night 55 - Rockhold vs. Bisping	2014-11-07	Allphones Arena, Sydney, New South Wales, Australia	Anthony Perosh	Carlos Augusto Inocente Filho	win	loss	9491	17786	Submission	Rear-Naked Choke	Herb Dean	1	3:46
40339	5	UFC Fight Night 55 - Rockhold vs. Bisping	2014-11-07	Allphones Arena, Sydney, New South Wales, Australia	Sam Alvey	Dylan Andrews	win	loss	35410	21803	KO	Punches	Leon Roberts	1	2:16
40339	4	UFC Fight Night 55 - Rockhold vs. Bisping	2014-11-07	Allphones Arena, Sydney, New South Wales, Australia	Louis Smolka	Richie Vaculik	win	loss	64792	21798	KO	Side Kick and Punches	John Sharp	3	0:18
40339	3	UFC Fight Night 55 - Rockhold vs. Bisping	2014-11-07	Allphones Arena, Sydney, New South Wales, Australia	Chris Clements	Vik Grujic	win	loss	13469	69858	TKO	Knees and Punches	Herb Dean	1	3:06
40339	1	UFC Fight Night 55 - Rockhold vs. Bisping	2014-11-07	Allphones Arena, Sydney, New South Wales, Australia	Marcus Brimage	Jumabieke Tuerxun	win	loss	21618	83505	KO	Head Kick	John Sharp	1	2:58
40339	11	UFC Fight Night 55 - Rockhold vs. Bisping	2014-11-07	Allphones Arena, Sydney, New South Wales, Australia	Luke Rockhold	Michael Bisping	win	loss	23345	10196	Submission	Guillotine Choke	Herb Dean	2	0:57
40339	10	UFC Fight Night 55 - Rockhold vs. Bisping	2014-11-07	Allphones Arena, Sydney, New South Wales, Australia	Al Iaquinta	Ross Pearson	win	loss	42817	11884	TKO	Punches	Leon Roberts	2	1:39
40223	10	UFC Fight Night 56 - Shogun vs. St. Preux	2014-11-08	Tancredo Neves Municipal Gymnasium, Uberlandia, Minas Gerais, Brazil	Ovince St. Preux	Mauricio Rua	win	loss	38842	5707	KO	Punches	Mario Yamasaki	1	0:34
40223	9	UFC Fight Night 56 - Shogun vs. St. Preux	2014-11-08	Tancredo Neves Municipal Gymnasium, Uberlandia, Minas Gerais, Brazil	Warlley Alves	Alan Jouban	win	loss	70750	65878	Decision	Unanimous	Keith Peterson	3	5:00
40223	8	UFC Fight Night 56 - Shogun vs. St. Preux	2014-11-08	Tancredo Neves Municipal Gymnasium, Uberlandia, Minas Gerais, Brazil	Claudio Henrique da Silva	Leon Edwards	win	loss	25830	62665	Decision	Split	Mario Yamasaki	3	5:00
40223	7	UFC Fight Night 56 - Shogun vs. St. Preux	2014-11-08	Tancredo Neves Municipal Gymnasium, Uberlandia, Minas Gerais, Brazil	Dhiego Lima	Jorge Antonio Cezario de Oliveira	win	loss	59607	15380	Decision	Unanimous	Wernei Cardoso	3	5:00
40223	6	UFC Fight Night 56 - Shogun vs. St. Preux	2014-11-08	Tancredo Neves Municipal Gymnasium, Uberlandia, Minas Gerais, Brazil	Juliana Lima	Nina Ansaroff	win	loss	73710	69632	Decision	Unanimous	Keith Peterson	3	5:00
40223	5	UFC Fight Night 56 - Shogun vs. St. Preux	2014-11-08	Tancredo Neves Municipal Gymnasium, Uberlandia, Minas Gerais, Brazil	Diego Rivas	Rodolfo Rubio Perez	win	loss	81835	31897	Decision	Unanimous	Mario Yamasaki	3	5:00
40223	4	UFC Fight Night 56 - Shogun vs. St. Preux	2014-11-08	Tancredo Neves Municipal Gymnasium, Uberlandia, Minas Gerais, Brazil	Caio Magalhaes	Trevor Smith	win	loss	51163	51113	KO	Knee and Punches	Keith Peterson	1	0:31
40223	3	UFC Fight Night 56 - Shogun vs. St. Preux	2014-11-08	Tancredo Neves Municipal Gymnasium, Uberlandia, Minas Gerais, Brazil	Leandro Silva	Charlie Brenneman	win	loss	86382	23403	Submission	Rear-Naked Choke	Wernei Cardoso	1	4:15
37549	11	UFC 180 - Werdum vs. Hunt	2014-11-15	Mexico City Arena, Mexico City, Federal District, Mexico	Fabricio Werdum	Mark Hunt	win	loss	8390	10668	TKO	Knee and Punches	Herb Dean	2	2:27
37549	10	UFC 180 - Werdum vs. Hunt	2014-11-15	Mexico City Arena, Mexico City, Federal District, Mexico	Kelvin Gastelum	Jake Ellenberger	win	loss	74700	13068	Submission	Rear-Naked Choke	John McCarthy	1	4:46
37549	9	UFC 180 - Werdum vs. Hunt	2014-11-15	Mexico City Arena, Mexico City, Federal District, Mexico	Ricardo Lamas	Dennis Bermudez	win	loss	32051	58065	Submission	Guillotine Choke	Mario Yamasaki	1	3:18
37549	8	UFC 180 - Werdum vs. Hunt	2014-11-15	Mexico City Arena, Mexico City, Federal District, Mexico	Augusto Montano	Chris Heatherly	win	loss	41494	101117	TKO	Knees	John McCarthy	1	4:50
37549	7	UFC 180 - Werdum vs. Hunt	2014-11-15	Mexico City Arena, Mexico City, Federal District, Mexico	Hector Urbina	Edgar Garcia	win	loss	18168	23108	Submission	Guillotine Choke	Herb Dean	1	3:38
37549	6	UFC 180 - Werdum vs. Hunt	2014-11-15	Mexico City Arena, Mexico City, Federal District, Mexico	Yair Rodriguez	Leonardo Morales	win	loss	106305	111777	Decision	Unanimous	Mario Yamasaki	3	5:00
39915	12	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	Frankie Edgar	Cub Swanson	win	loss	14204	11002	Submission	Neck Crank	Dan Miragliotta	5	4:56
39915	11	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	Edson Barboza	Bobby Green	win	loss	46259	27953	Decision	Unanimous	Mario Yamasaki	3	5:00
39915	10	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	Chico Camus	Brad Pickett	win	loss	42850	11743	Decision	Split	Jacob Montalvo	3	5:00
39915	9	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	Alexey Oleinik	Jared Rosholt	win	loss	2027	76763	KO	Punches	Kerry Hatley	1	3:21
18347	10	UFC 144 - Edgar vs. Henderson	2012-02-26	Saitama Super Arena, Saitama, Japan, Japan	Mark Hunt	Cheick Kongo	win	loss	10668	2193	TKO	Punches	Herb Dean	1	2:11
39915	8	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	Joseph Benavidez	Dustin Ortiz	win	loss	15008	58097	Decision	Unanimous	Jacob Montalvo	3	5:00
39915	7	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	Matt Wiman	Isaac Vallie-Flagg	win	loss	12236	8180	Decision	Unanimous	Mario Yamasaki	3	5:00
39915	6	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	Ruslan Magomedov	Josh Copeland	win	loss	74434	75537	Decision	Unanimous	Kerry Hatley	3	5:00
39915	5	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	Roger Narvaez	Luke Barnatt	win	loss	60454	56567	Decision	Split	Dan Miragliotta	3	5:00
39915	4	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	James Vick	Nick Hein	win	loss	81956	50774	Decision	Unanimous	Jacob Montalvo	3	5:00
39915	3	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	Akbarh Arreola	Yves Edwards	win	loss	6120	344	Submission	Armbar	Dan Miragliotta	1	1:52
39915	2	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	Paige VanZant	Kailin Curran	win	loss	99019	62703	TKO	Punches	Kerry Hatley	3	2:54
39915	1	UFC Fight Night 57 - Edgar vs. Swanson	2014-11-22	Frank Erwin Center, Austin, Texas, United States	Doo Ho Choi	Juan Manuel Puig	win	loss	56689	44638	TKO	Punches	Mario Yamasaki	1	0:18
35511	11	UFC 181 - Hendricks vs. Lawler 2	2014-12-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Robbie Lawler	Johny Hendricks	win	loss	2245	24539	Decision	Split	Herb Dean	5	5:00
35511	10	UFC 181 - Hendricks vs. Lawler 2	2014-12-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Anthony Pettis	Gilbert Melendez	win	loss	26627	5545	Submission	Guillotine Choke	John McCarthy	2	1:53
35511	9	UFC 181 - Hendricks vs. Lawler 2	2014-12-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Travis Browne	Brendan Schaub	win	loss	16785	33926	TKO	Punches	Mario Yamasaki	1	4:50
35511	8	UFC 181 - Hendricks vs. Lawler 2	2014-12-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Todd Duffee	Anthony Hamilton	win	loss	22903	58947	KO	Punch	Herb Dean	1	0:33
35511	7	UFC 181 - Hendricks vs. Lawler 2	2014-12-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Tony Ferguson	Abel Trujillo	win	loss	31239	17129	Submission	Rear-Naked Choke	John McCarthy	2	4:19
35511	6	UFC 181 - Hendricks vs. Lawler 2	2014-12-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Urijah Faber	Francisco Rivera	win	loss	8847	11908	Submission	Bulldog Choke	Mario Yamasaki	2	1:34
35511	5	UFC 181 - Hendricks vs. Lawler 2	2014-12-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Josh Samman	Eddie Gordon	win	loss	17460	66410	KO	Head Kick	Herb Dean	2	3:08
35511	4	UFC 181 - Hendricks vs. Lawler 2	2014-12-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Corey Anderson	Justin Jones	win	loss	171723	93683	Decision	Unanimous	John McCarthy	3	5:00
35511	2	UFC 181 - Hendricks vs. Lawler 2	2014-12-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Sergio Pettis	Matt Hobar	win	loss	50987	59713	Decision	Unanimous	Mario Yamasaki	3	5:00
35511	1	UFC 181 - Hendricks vs. Lawler 2	2014-12-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Clay Collard	Alex White	win	loss	78465	55954	Decision	Unanimous	Mark Smith	3	5:00
40679	11	UFC - The Ultimate Fighter 20 Finale	2014-12-12	Palms Casino Resort, Las Vegas, Nevada, United States	Carla Esparza	Rose Namajunas	win	loss	63410	69083	Submission	Rear-Naked Choke	Yves Lavigne	3	1:26
40679	10	UFC - The Ultimate Fighter 20 Finale	2014-12-12	Palms Casino Resort, Las Vegas, Nevada, United States	Charles Oliveira	Jeremy Stephens	win	loss	30300	12179	Decision	Unanimous	Herb Dean	3	5:00
40679	8	UFC - The Ultimate Fighter 20 Finale	2014-12-12	Palms Casino Resort, Las Vegas, Nevada, United States	Yancy Medeiros	Joe Proctor	win	loss	27738	46307	Submission	Guillotine Choke	Yves Lavigne	1	4:37
40679	7	UFC - The Ultimate Fighter 20 Finale	2014-12-12	Palms Casino Resort, Las Vegas, Nevada, United States	Jessica Penne	Randa Markos	win	loss	21247	75417	Decision	Split	Herb Dean	3	5:00
40679	6	UFC - The Ultimate Fighter 20 Finale	2014-12-12	Palms Casino Resort, Las Vegas, Nevada, United States	Felice Herrig	Lisa Ellis	win	loss	42432	10071	Submission	Armbar	John McCarthy	2	3:05
40679	5	UFC - The Ultimate Fighter 20 Finale	2014-12-12	Palms Casino Resort, Las Vegas, Nevada, United States	Heather Clark	Bec Rawlings	win	loss	67132	84964	Decision	Unanimous	Yves Lavigne	3	5:00
40679	4	UFC - The Ultimate Fighter 20 Finale	2014-12-12	Palms Casino Resort, Las Vegas, Nevada, United States	Joanne Calderwood	Seo Hee Ham	win	loss	94103	21246	Decision	Unanimous	Herb Dean	3	5:00
40679	3	UFC - The Ultimate Fighter 20 Finale	2014-12-12	Palms Casino Resort, Las Vegas, Nevada, United States	Tecia Torres	Angela Magana	win	loss	85096	21720	Decision	Unanimous	Kim Winslow	3	5:00
40679	2	UFC - The Ultimate Fighter 20 Finale	2014-12-12	Palms Casino Resort, Las Vegas, Nevada, United States	Aisling Daly	Alex Chambers	win	loss	25245	65649	Submission	Armbar	John McCarthy	1	4:53
40679	1	UFC - The Ultimate Fighter 20 Finale	2014-12-12	Palms Casino Resort, Las Vegas, Nevada, United States	Angela Hill	Emily Kagan	win	loss	148517	68959	Decision	Unanimous	Kim Winslow	3	5:00
38839	12	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	Junior dos Santos	Stipe Miocic	win	loss	17272	39537	Decision	Unanimous	Herb Dean	5	5:00
38839	11	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	Rafael dos Anjos	Nate Diaz	win	loss	11675	11451	Decision	Unanimous	Jason Herzog	3	5:00
38839	10	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	Alistair Overeem	Stefan Struve	win	loss	461	15063	KO	Punches	John McCarthy	1	4:13
38839	9	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	Matt Mitrione	Gabriel Gonzaga	win	loss	49519	7306	TKO	Punches	Herb Dean	1	1:59
38839	8	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	Joanna Jedrzejczyk	Claudia Gadelha	win	loss	101411	48404	Decision	Split	Al Guinee	3	5:00
38839	7	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	John Moraga	Willie Gates	win	loss	55159	40436	Submission	Rear-Naked Choke	Jason Herzog	3	4:06
38839	6	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	Ben Saunders	Joe Riggs	win	loss	10339	2765	TKO	Neck Injury	John McCarthy	1	0:57
38839	5	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	Drew Dober	Jamie Varner	win	loss	23982	7168	Submission	Rear-Naked Choke	Herb Dean	1	1:52
38839	4	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	Bryan Barberena	Joe Ellenberger	win	loss	51471	14173	TKO	Punches	Herb Dean	3	3:24
38839	3	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	David Michaud	Garett Whiteley	win	loss	53778	39261	Decision	Unanimous	Al Guinee	3	5:00
38839	2	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	Henry Cejudo	Dustin Kimura	win	loss	125297	41247	Decision	Unanimous	Jason Herzog	3	5:00
38839	1	UFC on Fox 13 - Dos Santos vs. Miocic	2014-12-13	US Airways Center, Phoenix, Arizona, United States	Ian Entwistle	Anthony Birchak	win	loss	50588	53300	Submission	Heel Hook	Jason Herzog	1	1:04
40613	12	UFC Fight Night 58 - Machida vs. Dollaway	2014-12-20	Jose Correa Arena, Barueri, Sao Paulo, Brazil	Lyoto Machida	C.B. Dollaway	win	loss	7513	22350	TKO	Kick to the Body and Punches	Jerin Valel	1	1:02
40613	11	UFC Fight Night 58 - Machida vs. Dollaway	2014-12-20	Jose Correa Arena, Barueri, Sao Paulo, Brazil	Renan Barao	Mitch Gagnon	win	loss	23156	37404	Submission	Arm-Triangle Choke	Mario Yamasaki	3	3:53
40613	10	UFC Fight Night 58 - Machida vs. Dollaway	2014-12-20	Jose Correa Arena, Barueri, Sao Paulo, Brazil	Patrick Cummins	Antonio Carlos Jr.	win	loss	72981	143157	Decision	Unanimous	Mario Yamasaki	3	5:00
40613	9	UFC Fight Night 58 - Machida vs. Dollaway	2014-12-20	Jose Correa Arena, Barueri, Sao Paulo, Brazil	Rashid Magomedov	Elias Silverio	win	loss	41524	88613	TKO	Punches	Jerin Valel	3	4:57
40613	7	UFC Fight Night 58 - Machida vs. Dollaway	2014-12-20	Jose Correa Arena, Barueri, Sao Paulo, Brazil	Daniel Sarafian	Antonio dos Santos Jr.	win	loss	17665	46759	TKO	Finger Injury	Eduardo Herdy	2	1:01
40613	6	UFC Fight Night 58 - Machida vs. Dollaway	2014-12-20	Jose Correa Arena, Barueri, Sao Paulo, Brazil	Marcos Rogerio de Lima	Igor Pokrajac	win	loss	51955	7621	TKO	Punches	Fernando Yamasaki	1	1:59
40613	4	UFC Fight Night 58 - Machida vs. Dollaway	2014-12-20	Jose Correa Arena, Barueri, Sao Paulo, Brazil	Hacran Dias	Darren Elkins	win	loss	19789	22094	Decision	Unanimous	Jerin Valel	3	5:00
40613	3	UFC Fight Night 58 - Machida vs. Dollaway	2014-12-20	Jose Correa Arena, Barueri, Sao Paulo, Brazil	Leandro Issa	Yuta Sasaki	win	loss	19521	63070	Submission	Neck Crank	Osiris Maia	2	4:13
40613	2	UFC Fight Night 58 - Machida vs. Dollaway	2014-12-20	Jose Correa Arena, Barueri, Sao Paulo, Brazil	Tim Means	Marcio Alexandre Jr.	win	loss	11281	95457	Decision	Split	Eduardo Herdy	3	5:00
40613	1	UFC Fight Night 58 - Machida vs. Dollaway	2014-12-20	Jose Correa Arena, Barueri, Sao Paulo, Brazil	Vitor Miranda	Jake Collier	win	loss	13004	83599	TKO	Head Kick and Punches	Fernando Yamasaki	1	4:59
38841	11	UFC 182 - Jones vs. Cormier	2015-01-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jon Jones	Daniel Cormier	win	loss	27944	52311	Decision	Unanimous	Herb Dean	5	5:00
38841	10	UFC 182 - Jones vs. Cormier	2015-01-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Donald Cerrone	Myles Jury	win	loss	15105	34236	Decision	Unanimous	John McCarthy	3	5:00
38841	8	UFC 182 - Jones vs. Cormier	2015-01-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Kyoji Horiguchi	Louis Gaudinot	win	loss	64413	45230	Decision	Unanimous	Herb Dean	3	5:00
38841	6	UFC 182 - Jones vs. Cormier	2015-01-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Paul Felder	Danny Castillo	win	loss	68205	26070	KO	Spinning Back Fist	Yves Lavigne	2	2:09
38841	5	UFC 182 - Jones vs. Cormier	2015-01-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Cody Garbrandt	Marcus Brimage	win	loss	50381	21618	TKO	Punches	Herb Dean	3	4:50
38841	4	UFC 182 - Jones vs. Cormier	2015-01-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Shawn Jordan	Jared Cannonier	win	loss	45624	78628	KO	Punches	John McCarthy	1	2:57
38841	3	UFC 182 - Jones vs. Cormier	2015-01-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Evan Dunham	Rodrigo Damm	win	loss	22038	11507	Decision	Unanimous	Chris Tognoni	3	5:00
38841	2	UFC 182 - Jones vs. Cormier	2015-01-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Omari Akhmedov	Mats Nilsson	win	loss	83462	32446	Decision	Unanimous	Yves Lavigne	3	5:00
38841	1	UFC 182 - Jones vs. Cormier	2015-01-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Marion Reneau	Alexis Dufresne	win	loss	61266	113687	Decision	Unanimous	Chris Tognoni	3	5:00
41773	12	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Conor McGregor	Dennis Siver	win	loss	29688	9817	TKO	Punches	Herb Dean	2	1:54
41773	11	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Donald Cerrone	Benson Henderson	win	loss	15105	20548	Decision	Unanimous	Yves Lavigne	3	5:00
41773	10	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Uriah Hall	Ron Stallings	win	loss	14210	11950	TKO	Doctor Stoppage	Herb Dean	1	3:37
41773	9	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Gleison Tibau	Norman Parke	win	loss	5993	47549	Decision	Split	Kevin MacDonald	3	5:00
41773	8	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Cathal Pendred	Sean Spencer	win	loss	64373	60908	Decision	Unanimous	Yves Lavigne	3	5:00
41773	7	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Lorenz Larkin	John Howard	win	loss	51345	11798	TKO	Punches	Herb Dean	1	2:17
41773	6	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Chris Wade	Lipeng Zhang	win	loss	79335	50416	Decision	Unanimous	Kevin MacDonald	3	5:00
41773	5	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Patrick Holohan	Shane Howell	win	loss	63616	20906	Decision	Unanimous	Gary Forman	3	5:00
2400	8	UFC 49 - Unfinished Business	2004-08-21	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Randy Couture	Vitor Belfort	win	loss	166	156	TKO	Doctor Stoppage	N/A	3	5:00
2400	7	UFC 49 - Unfinished Business	2004-08-21	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Joe Riggs	Joe Doerksen	win	loss	2765	390	Submission	Elbows	N/A	2	3:39
2400	6	UFC 49 - Unfinished Business	2004-08-21	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chuck Liddell	Vernon White	win	loss	192	296	KO	Punch	N/A	1	4:05
41773	4	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Johnny Case	Frankie Perez	win	loss	28017	79784	TKO	Punches	Bryan Miner	3	1:54
41773	3	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Charles Rosa	Sean Soriano	win	loss	71116	61682	Submission	Brabo Choke	Kevin MacDonald	3	4:43
41773	2	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Sean O'Connell	Matt Van Buren	win	loss	33156	64754	TKO	Punches	Gary Forman	3	2:11
41773	1	UFC Fight Night 59 - McGregor vs. Siver	2015-01-18	TD Garden, Boston, Massachusetts, United States	Joby Sanchez	Tateki Matsuda	win	loss	50239	45607	Decision	Split	Bryan Miner	3	5:00
42123	12	UFC on Fox 14 - Gustafsson vs. Johnson	2015-01-24	Tele2 Arena, Stockholm, Sweden, Sweden	Anthony Johnson	Alexander Gustafsson	win	loss	17662	26162	TKO	Punches	Marc Goddard	1	2:15
42123	11	UFC on Fox 14 - Gustafsson vs. Johnson	2015-01-24	Tele2 Arena, Stockholm, Sweden, Sweden	Gegard Mousasi	Dan Henderson	win	loss	7466	195	TKO	Punches	Leon Roberts	1	1:10
42123	8	UFC on Fox 14 - Gustafsson vs. Johnson	2015-01-24	Tele2 Arena, Stockholm, Sweden, Sweden	Albert Tumenov	Nicholas Musoke	win	loss	60198	26160	Decision	Unanimous	Leon Roberts	3	5:00
42123	7	UFC on Fox 14 - Gustafsson vs. Johnson	2015-01-24	Tele2 Arena, Stockholm, Sweden, Sweden	Kenny Robertson	Sultan Aliev	win	loss	31978	89761	KO	Punches	Bobby Rehman	1	2:42
42123	6	UFC on Fox 14 - Gustafsson vs. Johnson	2015-01-24	Tele2 Arena, Stockholm, Sweden, Sweden	Makwan Amirkhani	Andy Ogle	win	loss	69406	42659	TKO	Flying Knee and Punches	Kevin Sataki	1	0:08
42123	5	UFC on Fox 14 - Gustafsson vs. Johnson	2015-01-24	Tele2 Arena, Stockholm, Sweden, Sweden	Nikita Krylov	Stanislav Nedkov	win	loss	110937	27115	Submission	Guillotine Choke	Marc Goddard	1	1:24
42123	4	UFC on Fox 14 - Gustafsson vs. Johnson	2015-01-24	Tele2 Arena, Stockholm, Sweden, Sweden	Mairbek Taisumov	Anthony Christodoulou	win	loss	33161	53712	KO	Punches	Leon Roberts	2	0:38
42123	2	UFC on Fox 14 - Gustafsson vs. Johnson	2015-01-24	Tele2 Arena, Stockholm, Sweden, Sweden	Viktor Pesta	Konstantin Erokhin	win	loss	74176	98151	Decision	Unanimous	Bobby Rehman	3	5:00
42123	1	UFC on Fox 14 - Gustafsson vs. Johnson	2015-01-24	Tele2 Arena, Stockholm, Sweden, Sweden	Neil Seery	Chris Beal	win	loss	14062	53369	Decision	Unanimous	Kevin Sataki	3	5:00
39291	10	UFC 183 - Silva vs. Diaz	2015-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tyron Woodley	Kelvin Gastelum	win	loss	42605	74700	Decision	Split	Herb Dean	3	5:00
39291	9	UFC 183 - Silva vs. Diaz	2015-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Al Iaquinta	Joe Lauzon	win	loss	42817	4923	TKO	Punches	Marc Goddard	2	3:34
39291	7	UFC 183 - Silva vs. Diaz	2015-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Thiago Alves	Jordan Mein	win	loss	5998	6749	KO	Kick to the Body	Herb Dean	2	0:39
39291	6	UFC 183 - Silva vs. Diaz	2015-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Miesha Tate	Sara McMann	win	loss	26252	67094	Decision	Majority	Marc Goddard	3	5:00
39291	4	UFC 183 - Silva vs. Diaz	2015-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	John Lineker	Ian McCall	win	loss	41906	5001	Decision	Unanimous	John McCarthy	3	5:00
39291	3	UFC 183 - Silva vs. Diaz	2015-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rafael Natal	Tom Watson	win	loss	13968	15179	Decision	Unanimous	Mark Smith	3	5:00
39291	2	UFC 183 - Silva vs. Diaz	2015-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Ildemar Alcantara	Richardson Moreira	win	loss	22223	72825	Decision	Split	Marc Goddard	3	5:00
39291	1	UFC 183 - Silva vs. Diaz	2015-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Thiago Santos	Andy Enz	win	loss	90021	61422	TKO	Punches	Mark Smith	1	1:56
42065	10	UFC Fight Night 60 - Henderson vs. Thatch	2015-02-14	1stBank Center, Broomfield, Colorado, United States	Benson Henderson	Brandon Thatch	win	loss	20548	22298	Submission	Rear-Naked Choke	Herb Dean	4	3:58
42065	9	UFC Fight Night 60 - Henderson vs. Thatch	2015-02-14	1stBank Center, Broomfield, Colorado, United States	Max Holloway	Cole Miller	win	loss	38671	13133	Decision	Unanimous	Adam Martinez	3	5:00
42065	8	UFC Fight Night 60 - Henderson vs. Thatch	2015-02-14	1stBank Center, Broomfield, Colorado, United States	Neil Magny	Kiichi Kunimoto	win	loss	69166	21039	Submission	Rear-Naked Choke	Herb Dean	3	1:22
42065	7	UFC Fight Night 60 - Henderson vs. Thatch	2015-02-14	1stBank Center, Broomfield, Colorado, United States	Daniel Kelly	Patrick Walsh	win	loss	49516	67971	Decision	Unanimous	Tom Johnson	3	5:00
42065	6	UFC Fight Night 60 - Henderson vs. Thatch	2015-02-14	1stBank Center, Broomfield, Colorado, United States	Kevin Lee	Michel Richard Cunha dos Prazeres	win	loss	84342	22218	Decision	Unanimous	Tim Mills	3	5:00
42065	5	UFC Fight Night 60 - Henderson vs. Thatch	2015-02-14	1stBank Center, Broomfield, Colorado, United States	Ray Borg	Chris Kelades	win	loss	84752	51576	Submission	Kimura	Adam Martinez	3	2:56
42065	4	UFC Fight Night 60 - Henderson vs. Thatch	2015-02-14	1stBank Center, Broomfield, Colorado, United States	Efrain Escudero	Rodrigo Goiana de Lima	win	loss	16555	81136	Decision	Unanimous	Don Thais	3	5:00
42065	3	UFC Fight Night 60 - Henderson vs. Thatch	2015-02-14	1stBank Center, Broomfield, Colorado, United States	Chas Skelly	Jim Alers	win	loss	47227	36581	TKO	Punches and Knee	Tim Mills	2	4:59
2400	5	UFC 49 - Unfinished Business	2004-08-21	MGM Grand Garden Arena, Las Vegas, Nevada, United States	David Terrell	Matt Lindland	win	loss	536	276	KO	Punches	N/A	1	0:24
42183	2	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Joseph Duffy	Jake Lindsey	win	loss	17052	57214	KO	Punch to the Body	Herb Dean	1	1:47
42065	2	UFC Fight Night 60 - Henderson vs. Thatch	2015-02-14	1stBank Center, Broomfield, Colorado, United States	Zach Makovsky	Tim Elliott	win	loss	20522	49213	Decision	Unanimous	Tom Johnson	3	5:00
42065	1	UFC Fight Night 60 - Henderson vs. Thatch	2015-02-14	1stBank Center, Broomfield, Colorado, United States	James Moontasri	Cody Pfister	win	loss	36889	48481	Submission	Rear-Naked Choke	Don Thais	2	1:49
38843	11	UFC Fight Night 61 - Bigfoot vs. Mir	2015-02-22	Gigantinho Gymnasium, Porto Alegre, Rio Grande do Sul, Brazil	Frank Mir	Antonio Silva	win	loss	2329	12354	KO	Elbows	Mario Yamasaki	1	1:40
38843	10	UFC Fight Night 61 - Bigfoot vs. Mir	2015-02-22	Gigantinho Gymnasium, Porto Alegre, Rio Grande do Sul, Brazil	Michael Johnson	Edson Barboza	win	loss	68788	46259	Decision	Unanimous	Leon Roberts	3	5:00
38843	9	UFC Fight Night 61 - Bigfoot vs. Mir	2015-02-22	Gigantinho Gymnasium, Porto Alegre, Rio Grande do Sul, Brazil	Sam Alvey	Cezar Ferreira	win	loss	35410	22400	KO	Punches	Mario Yamasaki	1	3:34
38843	8	UFC Fight Night 61 - Bigfoot vs. Mir	2015-02-22	Gigantinho Gymnasium, Porto Alegre, Rio Grande do Sul, Brazil	Adriano Martins	Rustam Khabilov	win	loss	9907	45417	Decision	Split	Leon Roberts	3	5:00
38843	7	UFC Fight Night 61 - Bigfoot vs. Mir	2015-02-22	Gigantinho Gymnasium, Porto Alegre, Rio Grande do Sul, Brazil	Frankie Saenz	Iuri Alcantara	win	loss	55410	16129	Decision	Unanimous	Mario Yamasaki	3	5:00
38843	6	UFC Fight Night 61 - Bigfoot vs. Mir	2015-02-22	Gigantinho Gymnasium, Porto Alegre, Rio Grande do Sul, Brazil	Santiago Ponzinibbio	Sean Strickland	win	loss	64593	30452	Decision	Unanimous	Wernei Cardoso	3	5:00
38843	5	UFC Fight Night 61 - Bigfoot vs. Mir	2015-02-22	Gigantinho Gymnasium, Porto Alegre, Rio Grande do Sul, Brazil	Marion Reneau	Jessica Andrade	win	loss	61266	100715	Submission	Triangle Choke	Camila Albuquerque	1	1:54
38843	4	UFC Fight Night 61 - Bigfoot vs. Mir	2015-02-22	Gigantinho Gymnasium, Porto Alegre, Rio Grande do Sul, Brazil	Matt Dwyer	William Macario	win	loss	53933	69624	KO	Superman Punch	Wernei Cardoso	1	3:14
38843	3	UFC Fight Night 61 - Bigfoot vs. Mir	2015-02-22	Gigantinho Gymnasium, Porto Alegre, Rio Grande do Sul, Brazil	Mike de la Torre	Tiago dos Santos e Silva	win	loss	17915	78479	KO	Punches	Leon Roberts	1	2:59
38843	2	UFC Fight Night 61 - Bigfoot vs. Mir	2015-02-22	Gigantinho Gymnasium, Porto Alegre, Rio Grande do Sul, Brazil	Douglas Silva de Andrade	Cody Gibson	win	loss	87981	38903	Decision	Unanimous	Camila Albuquerque	3	5:00
38843	1	UFC Fight Night 61 - Bigfoot vs. Mir	2015-02-22	Gigantinho Gymnasium, Porto Alegre, Rio Grande do Sul, Brazil	Ivan Jorge	Josh Shockley	win	loss	5432	24948	Decision	Unanimous	Mario Yamasaki	3	5:00
41893	11	UFC 184 - Rousey vs. Zingano	2015-02-28	Staples Center, Los Angeles, California, United States	Ronda Rousey	Cat Zingano	win	loss	73073	33932	Submission	Straight Armbar	John McCarthy	1	0:14
41893	10	UFC 184 - Rousey vs. Zingano	2015-02-28	Staples Center, Los Angeles, California, United States	Holly Holm	Raquel Pennington	win	loss	75125	75564	Decision	Split	Herb Dean	3	5:00
41893	9	UFC 184 - Rousey vs. Zingano	2015-02-28	Staples Center, Los Angeles, California, United States	Jake Ellenberger	Josh Koscheck	win	loss	13068	9418	Submission	North-South Choke	Jerin Valel	2	4:20
41893	8	UFC 184 - Rousey vs. Zingano	2015-02-28	Staples Center, Los Angeles, California, United States	Alan Jouban	Richard Walsh	win	loss	65878	55587	KO	Elbow and Punch	John McCarthy	1	2:19
41893	7	UFC 184 - Rousey vs. Zingano	2015-02-28	Staples Center, Los Angeles, California, United States	Tony Ferguson	Gleison Tibau	win	loss	31239	5993	Submission	Rear-Naked Choke	Herb Dean	1	2:37
41893	4	UFC 184 - Rousey vs. Zingano	2015-02-28	Staples Center, Los Angeles, California, United States	Tim Means	Dhiego Lima	win	loss	11281	59607	TKO	Punches	Herb Dean	1	2:17
41893	3	UFC 184 - Rousey vs. Zingano	2015-02-28	Staples Center, Los Angeles, California, United States	Derrick Lewis	Ruan Potts	win	loss	59284	75842	TKO	Punches	Jerin Valel	2	3:18
41893	2	UFC 184 - Rousey vs. Zingano	2015-02-28	Staples Center, Los Angeles, California, United States	Valmir Lazaro	James Krause	win	loss	22216	31766	Decision	Split	John McCarthy	3	5:00
41893	1	UFC 184 - Rousey vs. Zingano	2015-02-28	Staples Center, Los Angeles, California, United States	Masio Fullen	Alex Torres	win	loss	40356	172645	Decision	Split	Herb Dean	3	5:00
42183	12	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Rafael dos Anjos	Anthony Pettis	win	loss	11675	26627	Decision	Unanimous	Dan Miragliotta	5	5:00
42183	11	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Joanna Jedrzejczyk	Carla Esparza	win	loss	101411	63410	KO	Punches	Don Turnage	2	4:17
42183	10	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Johny Hendricks	Matt Brown	win	loss	24539	14310	Decision	Unanimous	Kerry Hatley	3	5:00
42183	9	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Alistair Overeem	Roy Nelson	win	loss	461	10249	Decision	Unanimous	Herb Dean	3	5:00
42183	8	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Henry Cejudo	Chris Cariaso	win	loss	125297	16467	Decision	Unanimous	Herb Dean	3	5:00
42183	7	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Ross Pearson	Sam Stout	win	loss	11884	9901	KO	Punch	Dan Miragliotta	2	1:33
42183	6	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Elias Theodorou	Roger Narvaez	win	loss	81765	60454	TKO	Punches	Kerry Hatley	2	4:07
42183	5	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Beneil Dariush	Daron Cruickshank	win	loss	56583	53717	Submission	Rear-Naked Choke	Don Turnage	2	2:48
20353	12	UFC 146 - Dos Santos vs. Mir	2012-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Junior dos Santos	Frank Mir	win	loss	17272	2329	TKO	Punches	Herb Dean	2	3:04
42183	4	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Jared Rosholt	Josh Copeland	win	loss	76763	75537	TKO	Elbows and Punches	Dan Miragliotta	3	3:12
42183	3	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Ryan Benoit	Sergio Pettis	win	loss	48566	50987	TKO	Punches	Kerry Hatley	2	1:34
42183	1	UFC 185 - Pettis vs. Dos Anjos	2015-03-14	American Airlines Center, Dallas, Texas, United States	Germaine de Randamie	Larissa Pacheco	win	loss	41745	144115	TKO	Punches	Don Turnage	2	2:02
42185	12	UFC Fight Night 62 - Maia vs. LaFlare	2015-03-21	Maracanazinho Gymnasium, Rio de Janeiro, Brazil, Brazil	Demian Maia	Ryan LaFlare	win	loss	14637	34409	Decision	Unanimous	John McCarthy	5	5:00
42185	11	UFC Fight Night 62 - Maia vs. LaFlare	2015-03-21	Maracanazinho Gymnasium, Rio de Janeiro, Brazil, Brazil	Erick Silva	Josh Koscheck	win	loss	15009	9418	Submission	Guillotine Choke	Mario Yamasaki	1	4:21
42185	10	UFC Fight Night 62 - Maia vs. LaFlare	2015-03-21	Maracanazinho Gymnasium, Rio de Janeiro, Brazil, Brazil	Leonardo Santos	Tony Martin	win	loss	4810	80436	Submission	Rear-Naked Choke	John McCarthy	2	2:29
42185	9	UFC Fight Night 62 - Maia vs. LaFlare	2015-03-21	Maracanazinho Gymnasium, Rio de Janeiro, Brazil, Brazil	Amanda Nunes	Shayna Baszler	win	loss	31496	12116	TKO	Leg Kick	Mario Yamasaki	1	1:56
42185	8	UFC Fight Night 62 - Maia vs. LaFlare	2015-03-21	Maracanazinho Gymnasium, Rio de Janeiro, Brazil, Brazil	Gilbert Burns	Alex Oliveira	win	loss	91727	110143	Submission	Armbar	Osiris Maia	3	4:14
42185	7	UFC Fight Night 62 - Maia vs. LaFlare	2015-03-21	Maracanazinho Gymnasium, Rio de Janeiro, Brazil, Brazil	Godofredo Castro	Andre Fili	win	loss	40623	58385	Submission	Triangle Choke	Eduardo Herdy	1	3:14
42185	6	UFC Fight Night 62 - Maia vs. LaFlare	2015-03-21	Maracanazinho Gymnasium, Rio de Janeiro, Brazil, Brazil	Francisco Trinaldo	Akbarh Arreola	win	loss	31103	6120	Decision	Unanimous	John McCarthy	3	5:00
42185	5	UFC Fight Night 62 - Maia vs. LaFlare	2015-03-21	Maracanazinho Gymnasium, Rio de Janeiro, Brazil, Brazil	Edimilson Souza	Katsunori Kikuno	win	loss	57343	16806	KO	Punch	Osiris Maia	1	1:31
42185	3	UFC Fight Night 62 - Maia vs. LaFlare	2015-03-21	Maracanazinho Gymnasium, Rio de Janeiro, Brazil, Brazil	Leonardo Mafra Texeira	Cain Carrizosa	win	loss	76653	84645	Decision	Unanimous	Mario Yamasaki	3	5:00
42185	2	UFC Fight Night 62 - Maia vs. LaFlare	2015-03-21	Maracanazinho Gymnasium, Rio de Janeiro, Brazil, Brazil	Christos Giagos	Jorge Antonio Cezario de Oliveira	win	loss	68130	15380	Submission	Rear-Naked Choke	Eduardo Herdy	1	3:12
42185	1	UFC Fight Night 62 - Maia vs. LaFlare	2015-03-21	Maracanazinho Gymnasium, Rio de Janeiro, Brazil, Brazil	Freddy Serrano	Bentley Syler	win	loss	112413	123973	KO	Punch	Osiris Maia	3	1:34
42187	10	UFC Fight Night 63 - Mendes vs. Lamas	2015-04-04	Patriot Center, Fairfax, Virginia, United States	Chad Mendes	Ricardo Lamas	win	loss	38393	32051	TKO	Punches	Dan Miragliotta	1	2:45
42187	9	UFC Fight Night 63 - Mendes vs. Lamas	2015-04-04	Patriot Center, Fairfax, Virginia, United States	Al Iaquinta	Jorge Masvidal	win	loss	42817	7688	Decision	Split	Keith Peterson	3	5:00
42187	8	UFC Fight Night 63 - Mendes vs. Lamas	2015-04-04	Patriot Center, Fairfax, Virginia, United States	Michael Chiesa	Mitch Clarke	win	loss	46224	22556	Decision	Unanimous	Dan Miragliotta	3	5:00
42187	7	UFC Fight Night 63 - Mendes vs. Lamas	2015-04-04	Patriot Center, Fairfax, Virginia, United States	Julianna Pena	Milana Dudieva	win	loss	50883	43885	TKO	Punches and Elbows	Keith Peterson	1	3:59
42187	6	UFC Fight Night 63 - Mendes vs. Lamas	2015-04-04	Patriot Center, Fairfax, Virginia, United States	Clay Guida	Robbie Peralta	win	loss	8184	21339	Decision	Unanimous	Mike King	3	5:00
42187	5	UFC Fight Night 63 - Mendes vs. Lamas	2015-04-04	Patriot Center, Fairfax, Virginia, United States	Dustin Poirier	Carlos Diego Ferreira	win	loss	50529	26358	KO	Punches	Todd McGovern	1	3:45
42187	4	UFC Fight Night 63 - Mendes vs. Lamas	2015-04-04	Patriot Center, Fairfax, Virginia, United States	Liz Carmouche	Lauren Murphy	win	loss	67007	66725	Decision	Unanimous	Keith Peterson	3	5:00
42193	2	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	Valerie Letourneau	Jessica Rakoczy	win	loss	21851	53506	Decision	Unanimous	Jerin Valel	3	5:00
42187	3	UFC Fight Night 63 - Mendes vs. Lamas	2015-04-04	Patriot Center, Fairfax, Virginia, United States	Alexander Yakovlev	Gray Maynard	win	loss	10846	15835	Decision	Unanimous	Dan Miragliotta	3	5:00
42187	1	UFC Fight Night 63 - Mendes vs. Lamas	2015-04-04	Patriot Center, Fairfax, Virginia, United States	Ron Stallings	Justin Jones	win	loss	11950	93683	Decision	Unanimous	Todd McGovern	3	5:00
42189	12	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Mirko Filipovic	Gabriel Gonzaga	win	loss	2326	7306	TKO	Elbows and Punches	Leon Roberts	3	3:30
42189	11	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Jimi Manuwa	Jan Blachowicz	win	loss	37528	25821	Decision	Unanimous	Marc Goddard	3	5:00
42189	10	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Pawel Pawlak	Sheldon Westcott	win	loss	65543	23648	Decision	Unanimous	Grant Waterman	3	5:00
42189	9	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Maryna Moroz	Joanne Calderwood	win	loss	151905	94103	Submission	Armbar	Lukasz Bosacki	1	1:30
42189	8	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Leon Edwards	Seth Baczynski	win	loss	62665	13827	KO	Punches	Grant Waterman	1	0:08
42189	7	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Bartosz Fabinski	Garreth McLellan	win	loss	87101	71237	Decision	Unanimous	Marc Goddard	3	5:00
42189	6	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Sergio Moraes	Mickael Lebout	win	loss	21343	81143	Decision	Unanimous	Marco Goddard	3	5:00
42189	5	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Yaotzin Meza	Damian Stasiak	win	loss	15937	86920	Decision	Unanimous	Leon Roberts	3	5:00
42189	4	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Anthony Hamilton	Daniel Omielanczuk	win	loss	58947	54303	Decision	Unanimous	Marc Goddard	3	5:00
42189	3	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Aleksandra Albu	Izabela Badurek	win	loss	144949	122349	Submission	Guillotine Choke	Grant Waterman	2	3:34
42189	2	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Steven Ray	Marcin Bandel	win	loss	59838	55705	TKO	Punches	Leon Roberts	2	1:35
42189	1	UFC Fight Night 64 - Gonzaga vs. Cro Cop 2	2015-04-11	Krakow Arena, Krakow, Lesser Poland, Poland	Taylor Lapilus	Rocky Lee	win	loss	97337	84854	Decision	Unanimous	Lukasz Bosacki	3	5:00
42191	11	UFC on Fox 15 - Machida vs. Rockhold	2015-04-18	Prudential Center, Newark, New Jersey, United States	Luke Rockhold	Lyoto Machida	win	loss	23345	7513	Submission	Rear-Naked Choke	Keith Peterson	2	2:31
42191	10	UFC on Fox 15 - Machida vs. Rockhold	2015-04-18	Prudential Center, Newark, New Jersey, United States	Ronaldo Souza	Chris Camozzi	win	loss	8394	17224	Submission	Armbar	Dan Miragliotta	1	2:33
42191	9	UFC on Fox 15 - Machida vs. Rockhold	2015-04-18	Prudential Center, Newark, New Jersey, United States	Max Holloway	Cub Swanson	win	loss	38671	11002	Submission	Guillotine Choke	Gasper Oliver	3	3:58
42191	8	UFC on Fox 15 - Machida vs. Rockhold	2015-04-18	Prudential Center, Newark, New Jersey, United States	Paige VanZant	Felice Herrig	win	loss	99019	42432	Decision	Unanimous	Vitor Ribeiro	3	5:00
42191	7	UFC on Fox 15 - Machida vs. Rockhold	2015-04-18	Prudential Center, Newark, New Jersey, United States	Beneil Dariush	Jim Miller	win	loss	56583	14463	Decision	Unanimous	Vitor Ribeiro	3	5:00
42191	6	UFC on Fox 15 - Machida vs. Rockhold	2015-04-18	Prudential Center, Newark, New Jersey, United States	Ovince St. Preux	Patrick Cummins	win	loss	38842	72981	KO	Punches	Dan Miragliotta	1	4:54
42191	5	UFC on Fox 15 - Machida vs. Rockhold	2015-04-18	Prudential Center, Newark, New Jersey, United States	Gian Villante	Corey Anderson	win	loss	42802	171723	TKO	Punches	Liam Kerrigan	3	4:18
42191	4	UFC on Fox 15 - Machida vs. Rockhold	2015-04-18	Prudential Center, Newark, New Jersey, United States	Aljamain Sterling	Takeya Mizugaki	win	loss	66313	12074	Submission	Arm-Triangle Choke	Gasper Oliver	3	2:11
42191	3	UFC on Fox 15 - Machida vs. Rockhold	2015-04-18	Prudential Center, Newark, New Jersey, United States	Tim Means	George Sullivan	win	loss	11281	15148	Submission	Arm-Triangle Choke	Keith Peterson	3	3:41
42191	2	UFC on Fox 15 - Machida vs. Rockhold	2015-04-18	Prudential Center, Newark, New Jersey, United States	Diego Brandao	Jim Hettes	win	loss	25097	48046	TKO	Doctor Stoppage	Dan Miragliotta	1	5:00
42191	1	UFC on Fox 15 - Machida vs. Rockhold	2015-04-18	Prudential Center, Newark, New Jersey, United States	Chris Dempsey	Eddie Gordon	win	loss	79277	66410	Decision	Split	Liam Kerrigan	3	5:00
42193	12	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	Demetrious Johnson	Kyoji Horiguchi	win	loss	45452	64413	Submission	Armbar	Yves Lavigne	5	4:59
42193	11	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	Quinton Jackson	Fabio Maldonado	win	loss	348	16426	Decision	Unanimous	Marc Goddard	3	5:00
42193	10	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	Michael Bisping	C.B. Dollaway	win	loss	10196	22350	Decision	Unanimous	Jerin Valel	3	5:00
42193	9	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	John Makdessi	Shane Campbell	win	loss	37402	34625	TKO	Punches	Philippe Chartier	1	4:53
42193	8	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	Thomas Almeida	Yves Jabouin	win	loss	87865	1693	TKO	Punches	Yves Lavigne	1	4:18
42193	7	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	Patrick Cote	Joe Riggs	win	loss	6612	2765	Decision	Unanimous	Marc Goddard	3	5:00
42193	6	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	Alexis Davis	Sarah Kaufman	win	loss	22071	16524	Submission	Armbar	Jerin Valel	2	3:08
42193	5	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	Chad Laprise	Bryan Barberena	win	loss	69681	51471	Decision	Unanimous	Philippe Chartier	3	5:00
42193	4	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	Olivier Aubin-Mercier	David Michaud	win	loss	86241	53778	Submission	Rear-Naked Choke	Yves Lavigne	3	1:26
42193	3	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	Nordine Taleb	Chris Clements	win	loss	26261	13469	Decision	Unanimous	Marc Goddard	3	5:00
42193	1	UFC 186 - Johnson vs. Horiguchi	2015-04-25	Bell Centre, Montreal, Quebec, Canada	Randa Markos	Aisling Daly	win	loss	75417	25245	Decision	Unanimous	Philippe Chartier	3	5:00
42195	12	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	Stipe Miocic	Mark Hunt	win	loss	39537	10668	TKO	Punches	John Sharp	5	2:47
42195	11	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	Robert Whittaker	Brad Tavares	win	loss	45132	33095	KO	Punches	Steve Perceval	1	0:44
42195	10	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	Sean O'Connell	Anthony Perosh	win	loss	33156	9491	TKO	Punches	Greg Kleynjans	1	0:56
42195	9	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	James Vick	Jake Matthews	win	loss	81956	122139	Submission	Guillotine Choke	Steve Perceval	1	4:53
42195	8	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	Daniel Hooker	Hatsu Hioki	win	loss	45122	5466	KO	Head Kick and Punches	John Sharp	2	4:13
42195	7	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	Kyle Noke	Jonavin Webb	win	loss	7632	81634	Decision	Split	Greg Kleynjans	3	5:00
42195	6	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	Sam Alvey	Daniel Kelly	win	loss	35410	49516	TKO	Punches	Steve Perceval	1	0:49
42195	5	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	Bec Rawlings	Lisa Ellis	win	loss	84964	10071	Submission	Rear-Naked Choke	John Sharp	1	4:09
2400	4	UFC 49 - Unfinished Business	2004-08-21	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Justin Eilers	Mike Kyle	win	loss	5936	3619	KO	Punch	N/A	1	1:14
42195	4	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	Bradley Scott	Dylan Andrews	win	loss	44442	21803	Submission	Guillotine Choke	Greg Kleynjans	2	4:54
42195	3	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	Alex Chambers	Kailin Curran	win	loss	65649	62703	Submission	Armbar	Steve Perceval	3	3:15
42195	2	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	Brendan O'Reilly	Vik Grujic	win	loss	52633	69858	Decision	Unanimous	John Sharp	3	5:00
42215	1	UFC Fight Night 71 - Mir vs. Duffee	2015-07-15	Valley View Casino Center, San Diego, California, United States	Lyman Good	Andrew Craig	win	loss	14207	63284	KO	Punches	Jason Herzog	2	3:37
42195	1	UFC Fight Night 65 - Miocic vs. Hunt	2015-05-10	Adelaide Entertainment Centre, Adelaide, South Australia, Australia	Ben Nguyen	Alptekin Ozkilic	win	loss	8183	73826	KO	Punches	Greg Kleynjans	1	4:59
42197	12	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Frankie Edgar	Urijah Faber	win	loss	14204	8847	Decision	Unanimous	Steve Perceval	5	5:00
42197	11	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Gegard Mousasi	Costas Philippou	win	loss	7466	32432	Decision	Unanimous	Greg Kleynjans	3	5:00
42197	10	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Mark Munoz	Luke Barnatt	win	loss	22411	56567	Decision	Unanimous	Terry Hill	3	5:00
42197	9	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Neil Magny	Hyun Gyu Lim	win	loss	69166	21040	TKO	Punches	Steve Perceval	2	1:24
42197	8	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Phillipe Nover	Yui Chul Nam	win	loss	7415	15987	Decision	Split	Greg Kleynjans	3	5:00
42197	7	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Levan Makashvili	Mark Eddiva	win	loss	126881	75370	Decision	Split	Terry Hill	3	5:00
42197	6	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Jon Tuck	Tae Hyun Bang	win	loss	45108	23167	Submission	Rear-Naked Choke	Steve Perceval	1	3:56
42197	5	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Kajan Johnson	Lipeng Zhang	win	loss	5615	50416	Decision	Unanimous	Greg Kleynjans	3	5:00
42197	4	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Jingliang Li	Dhiego Lima	win	loss	26381	59607	KO	Punches	Terry Hill	1	1:25
42197	3	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Guangyou Ning	Royston Wee	win	loss	26389	88793	TKO	Punches and Elbows	Steve Perceval	2	4:59
42197	2	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Jon delos Reyes	Roldan Sangcha-an	win	loss	58594	103497	Submission	Rear-Naked Choke	Greg Kleynjans	2	3:13
42197	1	UFC Fight Night 66 - Edgar vs. Faber	2015-05-16	Mall of Asia Arena, Pasay, Metro Manila, Philippines	Zhikui Yao	Nolan Ticman	win	loss	122383	72084	Decision	Split	Terry Hill	3	5:00
42199	11	UFC 187 - Johnson vs. Cormier	2015-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Daniel Cormier	Anthony Johnson	win	loss	52311	17662	Submission	Rear-Naked Choke	John McCarthy	3	2:39
42199	10	UFC 187 - Johnson vs. Cormier	2015-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chris Weidman	Vitor Belfort	win	loss	42804	156	TKO	Punches	Herb Dean	1	2:53
42199	9	UFC 187 - Johnson vs. Cormier	2015-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Donald Cerrone	John Makdessi	win	loss	15105	37402	TKO	Head Kick	Jason Herzog	2	4:44
42199	8	UFC 187 - Johnson vs. Cormier	2015-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Andrei Arlovski	Travis Browne	win	loss	270	16785	TKO	Punches	Mark Smith	1	4:41
42199	7	UFC 187 - Johnson vs. Cormier	2015-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Joseph Benavidez	John Moraga	win	loss	15008	55159	Decision	Unanimous	John McCarthy	3	5:00
42199	6	UFC 187 - Johnson vs. Cormier	2015-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	John Dodson	Zach Makovsky	win	loss	11660	20522	Decision	Unanimous	Herb Dean	3	5:00
42199	4	UFC 187 - Johnson vs. Cormier	2015-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Rafael Natal	Uriah Hall	win	loss	13968	14210	Decision	Split	Mark Smith	3	5:00
42199	3	UFC 187 - Johnson vs. Cormier	2015-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Colby Covington	Mike Pyle	win	loss	57269	4577	Decision	Unanimous	Herb Dean	3	5:00
42201	12	UFC Fight Night 67 - Condit vs. Alves	2015-05-30	Goiania Arena, Goiania, Goias, Brazil	Carlos Condit	Thiago Alves	win	loss	6765	5998	TKO	Doctor Stoppage	Mario Yamasaki	2	5:00
42201	11	UFC Fight Night 67 - Condit vs. Alves	2015-05-30	Goiania Arena, Goiania, Goias, Brazil	Charles Oliveira	Nik Lentz	win	loss	30300	15058	Submission	Guillotine Choke	Kevin MacDonald	3	1:10
42201	10	UFC Fight Night 67 - Condit vs. Alves	2015-05-30	Goiania Arena, Goiania, Goias, Brazil	Alex Oliveira	K.J. Noons	win	loss	110143	6727	Submission	Rear-Naked Choke	Mario Yamasaki	1	2:51
42201	9	UFC Fight Night 67 - Condit vs. Alves	2015-05-30	Goiania Arena, Goiania, Goias, Brazil	Francimar Barroso	Ryan Jimmo	win	loss	14702	21044	Decision	Unanimous	Kevin MacDonald	3	5:00
42201	8	UFC Fight Night 67 - Condit vs. Alves	2015-05-30	Goiania Arena, Goiania, Goias, Brazil	Francisco Trinaldo	Norman Parke	win	loss	31103	47549	Decision	Split	Camila Albuquerque	3	5:00
42201	7	UFC Fight Night 67 - Condit vs. Alves	2015-05-30	Goiania Arena, Goiania, Goias, Brazil	Darren Till	Wendell de Oliveira Marques	win	loss	73436	15393	KO	Elbows	Fernando Yamasaki	2	1:37
42201	5	UFC Fight Night 67 - Condit vs. Alves	2015-05-30	Goiania Arena, Goiania, Goias, Brazil	Jussier da Silva	Wilson Reis	win	loss	36939	23401	Decision	Unanimous	Camila Albuquerque	3	5:00
2400	3	UFC 49 - Unfinished Business	2004-08-21	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Chris Lytle	Ronald Jhun	win	loss	267	524	Submission	Guillotine Choke	N/A	2	1:17
42201	4	UFC Fight Night 67 - Condit vs. Alves	2015-05-30	Goiania Arena, Goiania, Goias, Brazil	Nicolas Dalby	Elizeu Zaleski dos Santos	win	loss	63608	63825	Decision	Split	Fernando Yamasaki	3	5:00
42201	2	UFC Fight Night 67 - Condit vs. Alves	2015-05-30	Goiania Arena, Goiania, Goias, Brazil	Juliana Lima	Ericka Almeida	win	loss	73710	98419	Decision	Unanimous	Camila Albuquerque	3	5:00
42201	1	UFC Fight Night 67 - Condit vs. Alves	2015-05-30	Goiania Arena, Goiania, Goias, Brazil	Tom Breese	Luiz Jorge Dutra Jr.	win	loss	45986	8121	TKO	Punches	Fernando Yamasaki	1	4:58
42203	12	UFC Fight Night 68 - Boetsch vs. Henderson	2015-06-06	Smoothie King Center, New Orleans, Louisiana, United States	Dan Henderson	Tim Boetsch	win	loss	195	19544	KO	Punches	John McCarthy	1	0:28
42203	11	UFC Fight Night 68 - Boetsch vs. Henderson	2015-06-06	Smoothie King Center, New Orleans, Louisiana, United States	Ben Rothwell	Matt Mitrione	win	loss	2262	49519	Submission	Guillotine Choke	Dan Miragliotta	1	1:54
42203	10	UFC Fight Night 68 - Boetsch vs. Henderson	2015-06-06	Smoothie King Center, New Orleans, Louisiana, United States	Dustin Poirier	Yancy Medeiros	win	loss	50529	27738	TKO	Punches	John McCarthy	1	2:38
42203	9	UFC Fight Night 68 - Boetsch vs. Henderson	2015-06-06	Smoothie King Center, New Orleans, Louisiana, United States	Brian Ortega	Thiago Tavares	win	loss	65310	4647	TKO	Punches	Dan Miragliotta	3	4:10
42203	8	UFC Fight Night 68 - Boetsch vs. Henderson	2015-06-06	Smoothie King Center, New Orleans, Louisiana, United States	Anthony Birchak	Joe Soto	win	loss	53300	17004	KO	Punches	John McCarthy	1	1:37
42203	7	UFC Fight Night 68 - Boetsch vs. Henderson	2015-06-06	Smoothie King Center, New Orleans, Louisiana, United States	Francisco Rivera	Alex Caceres	win	loss	11908	41586	KO	Punches	Dan Miragliotta	1	0:21
42203	6	UFC Fight Night 68 - Boetsch vs. Henderson	2015-06-06	Smoothie King Center, New Orleans, Louisiana, United States	Shawn Jordan	Derrick Lewis	win	loss	45624	59284	TKO	Hook Kick and Punches	Gabe Barahona	2	0:48
42203	5	UFC Fight Night 68 - Boetsch vs. Henderson	2015-06-06	Smoothie King Center, New Orleans, Louisiana, United States	Omari Akhmedov	Brian Ebersole	win	loss	83462	3015	TKO	Knee Injury	Jordan Bass	1	5:00
42203	4	UFC Fight Night 68 - Boetsch vs. Henderson	2015-06-06	Smoothie King Center, New Orleans, Louisiana, United States	Chris Wade	Christos Giagos	win	loss	79335	68130	Decision	Unanimous	Robbie Scheuermann	3	5:00
42203	2	UFC Fight Night 68 - Boetsch vs. Henderson	2015-06-06	Smoothie King Center, New Orleans, Louisiana, United States	Jake Collier	Ricardo Abreu	win	loss	83599	82392	Decision	Split	Jordan Bass	3	5:00
42205	1	UFC 188 - Velasquez vs. Werdum	2015-06-13	Mexico City Arena, Mexico City, Federal District, Mexico	Gabriel Benitez	Clay Collard	win	loss	25733	78465	Decision	Unanimous	Mario Yamasaki	3	5:00
42205	11	UFC 188 - Velasquez vs. Werdum	2015-06-13	Mexico City Arena, Mexico City, Federal District, Mexico	Fabricio Werdum	Cain Velasquez	win	loss	8390	19102	Submission	Guillotine Choke	Herb Dean	3	2:13
42205	10	UFC 188 - Velasquez vs. Werdum	2015-06-13	Mexico City Arena, Mexico City, Federal District, Mexico	Eddie Alvarez	Gilbert Melendez	win	loss	9265	5545	Decision	Split	John McCarthy	3	5:00
42205	9	UFC 188 - Velasquez vs. Werdum	2015-06-13	Mexico City Arena, Mexico City, Federal District, Mexico	Kelvin Gastelum	Nate Marquardt	win	loss	74700	1712	TKO	Corner Stoppage	Dan Miragliotta	2	5:00
42205	8	UFC 188 - Velasquez vs. Werdum	2015-06-13	Mexico City Arena, Mexico City, Federal District, Mexico	Yair Rodriguez	Charles Rosa	win	loss	106305	71116	Decision	Split	Mario Yamasaki	3	5:00
42205	7	UFC 188 - Velasquez vs. Werdum	2015-06-13	Mexico City Arena, Mexico City, Federal District, Mexico	Tecia Torres	Angela Hill	win	loss	85096	148517	Decision	Unanimous	John McCarthy	3	5:00
42205	6	UFC 188 - Velasquez vs. Werdum	2015-06-13	Mexico City Arena, Mexico City, Federal District, Mexico	Henry Cejudo	Chico Camus	win	loss	125297	42850	Decision	Unanimous	Mario Yamasaki	3	5:00
42205	5	UFC 188 - Velasquez vs. Werdum	2015-06-13	Mexico City Arena, Mexico City, Federal District, Mexico	Efrain Escudero	Drew Dober	win	loss	16555	23982	Submission	Guillotine Choke	Herb Dean	1	0:54
42205	3	UFC 188 - Velasquez vs. Werdum	2015-06-13	Mexico City Arena, Mexico City, Federal District, Mexico	Johnny Case	Francisco Trevino	win	loss	28017	38029	Decision	Unanimous	John McCarthy	3	5:00
42205	2	UFC 188 - Velasquez vs. Werdum	2015-06-13	Mexico City Arena, Mexico City, Federal District, Mexico	Cathal Pendred	Augusto Montano	win	loss	64373	41494	Decision	Unanimous	Herb Dean	3	5:00
42207	11	UFC Fight Night 69 - Jedrzejczyk vs. Penne	2015-06-20	O2 World, Berlin, Germany, Germany	Joanna Jedrzejczyk	Jessica Penne	win	loss	101411	21247	TKO	Punches and Knee	Marc Goddard	3	4:22
42207	10	UFC Fight Night 69 - Jedrzejczyk vs. Penne	2015-06-20	O2 World, Berlin, Germany, Germany	Tatsuya Kawajiri	Dennis Siver	win	loss	1326	9817	Decision	Unanimous	Leon Roberts	3	5:00
42207	9	UFC Fight Night 69 - Jedrzejczyk vs. Penne	2015-06-20	O2 World, Berlin, Germany, Germany	Peter Sobotta	Steve Kennedy	win	loss	15816	31092	Submission	Rear-Naked Choke	Wolf Menninger	1	2:57
42207	8	UFC Fight Night 69 - Jedrzejczyk vs. Penne	2015-06-20	O2 World, Berlin, Germany, Germany	Nick Hein	Lukasz Sajewski	win	loss	50774	31110	Decision	Unanimous	Kevin Sataki	3	5:00
42207	7	UFC Fight Night 69 - Jedrzejczyk vs. Penne	2015-06-20	O2 World, Berlin, Germany, Germany	Makwan Amirkhani	Masio Fullen	win	loss	69406	40356	Submission	Rear-Naked Choke	Leon Roberts	1	1:41
42207	6	UFC Fight Night 69 - Jedrzejczyk vs. Penne	2015-06-20	O2 World, Berlin, Germany, Germany	Mairbek Taisumov	Alan Patrick Silva Alves	win	loss	33161	31096	TKO	Head Kick and Punches	Kevin Sataki	2	1:30
42207	5	UFC Fight Night 69 - Jedrzejczyk vs. Penne	2015-06-20	O2 World, Berlin, Germany, Germany	Arnold Allen	Alan Omer	win	loss	97499	23437	Submission	Guillotine Choke	Wolf Menninger	3	1:41
42207	3	UFC Fight Night 69 - Jedrzejczyk vs. Penne	2015-06-20	O2 World, Berlin, Germany, Germany	Scott Askham	Antonio dos Santos Jr.	win	loss	40518	46759	KO	Knees	Leon Roberts	1	2:52
42207	2	UFC Fight Night 69 - Jedrzejczyk vs. Penne	2015-06-20	O2 World, Berlin, Germany, Germany	Magomed Mustafaev	Piotr Hallmann	win	loss	80231	53375	TKO	Doctor Stoppage	Kevin Sataki	2	3:24
42207	1	UFC Fight Night 69 - Jedrzejczyk vs. Penne	2015-06-20	O2 World, Berlin, Germany, Germany	Taylor Lapilus	Yuta Sasaki	win	loss	97337	63070	TKO	Punches	Wolf Menninger	2	1:26
42209	9	UFC Fight Night 70 - Machida vs. Romero	2015-06-27	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Yoel Romero	Lyoto Machida	win	loss	60762	7513	KO	Elbows	John McCarthy	3	1:38
42209	8	UFC Fight Night 70 - Machida vs. Romero	2015-06-27	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Lorenz Larkin	Santiago Ponzinibbio	win	loss	51345	64593	TKO	Punches	Herb Dean	2	3:07
42209	7	UFC Fight Night 70 - Machida vs. Romero	2015-06-27	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Antonio Carlos Jr.	Eddie Gordon	win	loss	143157	66410	Submission	Rear-Naked Choke	Jorge Alonso	3	4:37
42209	6	UFC Fight Night 70 - Machida vs. Romero	2015-06-27	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Thiago Santos	Steve Bosse	win	loss	90021	22732	KO	Head Kick	James Warring	1	0:29
42209	5	UFC Fight Night 70 - Machida vs. Romero	2015-06-27	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Hacran Dias	Levan Makashvili	win	loss	19789	126881	Decision	Split	John McCarthy	3	5:00
42209	4	UFC Fight Night 70 - Machida vs. Romero	2015-06-27	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Alex Oliveira	Joe Merritt	win	loss	110143	138127	Decision	Unanimous	Herb Dean	3	5:00
42209	3	UFC Fight Night 70 - Machida vs. Romero	2015-06-27	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Leandro Silva	Lewis Gonzalez	win	loss	86382	84278	Decision	Unanimous	Jorge Alonso	3	5:00
42209	2	UFC Fight Night 70 - Machida vs. Romero	2015-06-27	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Tony Sims	Steve Montgomery	win	loss	30021	49092	KO	Punches	James Warring	1	2:43
42209	1	UFC Fight Night 70 - Machida vs. Romero	2015-06-27	Seminole Hard Rock Hotel and Casino, Hollywood, Florida, United States	Sirwan Kakai	Danny Martinez	win	loss	21446	16777	Decision	Unanimous	John McCarthy	3	5:00
42211	11	UFC 189 - Mendes vs. McGregor	2015-07-11	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Conor McGregor	Chad Mendes	win	loss	29688	38393	TKO	Punches	Herb Dean	2	4:57
42211	10	UFC 189 - Mendes vs. McGregor	2015-07-11	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Robbie Lawler	Rory MacDonald	win	loss	2245	14018	TKO	Punches	John McCarthy	5	1:00
42211	9	UFC 189 - Mendes vs. McGregor	2015-07-11	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jeremy Stephens	Dennis Bermudez	win	loss	12179	58065	TKO	Knee and Punches	Marc Goddard	3	0:32
42211	8	UFC 189 - Mendes vs. McGregor	2015-07-11	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Gunnar Nelson	Brandon Thatch	win	loss	25246	22298	Submission	Rear-Naked Choke	Herb Dean	1	2:54
42211	6	UFC 189 - Mendes vs. McGregor	2015-07-11	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Brown	Tim Means	win	loss	14310	11281	Submission	Guillotine Choke	Marc Goddard	1	4:44
42211	5	UFC 189 - Mendes vs. McGregor	2015-07-11	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Alex Garcia	Mike Swick	win	loss	54124	5199	Decision	Unanimous	Herb Dean	3	5:00
42211	4	UFC 189 - Mendes vs. McGregor	2015-07-11	MGM Grand Garden Arena, Las Vegas, Nevada, United States	John Howard	Cathal Pendred	win	loss	11798	64373	Decision	Split	John McCarthy	3	5:00
42211	2	UFC 189 - Mendes vs. McGregor	2015-07-11	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Louis Smolka	Neil Seery	win	loss	64792	14062	Decision	Unanimous	Marc Goddard	3	5:00
42211	1	UFC 189 - Mendes vs. McGregor	2015-07-11	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Cody Pfister	Yosdenis Cedeno	win	loss	48481	47066	Decision	Unanimous	Chris Tognoni	3	5:00
42213	11	UFC - The Ultimate Fighter 21 Finale	2015-07-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Stephen Thompson	Jake Ellenberger	win	loss	59608	13068	KO	Spinning Hook Kick	John McCarthy	1	4:29
42213	10	UFC - The Ultimate Fighter 21 Finale	2015-07-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Kamaru Usman	Hayder Hassan	win	loss	120691	46033	Submission	Arm-Triangle Choke	Herb Dean	2	1:19
42213	9	UFC - The Ultimate Fighter 21 Finale	2015-07-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Michael Graves	Vicente Luque	win	loss	64989	66474	Decision	Unanimous	Yves Lavigne	3	5:00
42213	8	UFC - The Ultimate Fighter 21 Finale	2015-07-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jorge Masvidal	Cezar Ferreira	win	loss	7688	22400	KO	Elbows and Punches	John McCarthy	1	4:22
42213	7	UFC - The Ultimate Fighter 21 Finale	2015-07-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Michelle Waterson	Angela Magana	win	loss	23091	21720	Submission	Rear-Naked Choke	Herb Dean	3	2:38
42213	6	UFC - The Ultimate Fighter 21 Finale	2015-07-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Maximo Blanco	Mike de la Torre	win	loss	36618	17915	TKO	Punches	Yves Lavigne	1	0:16
42213	5	UFC - The Ultimate Fighter 21 Finale	2015-07-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Josh Samman	Caio Magalhaes	win	loss	17460	51163	Submission	Rear-Naked Choke	John McCarthy	1	2:52
42213	4	UFC - The Ultimate Fighter 21 Finale	2015-07-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Jerrod Sanders	Russell Doane	win	loss	48156	30054	Decision	Unanimous	Herb Dean	3	5:00
42213	3	UFC - The Ultimate Fighter 21 Finale	2015-07-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Trevor Smith	Dan Miller	win	loss	51113	14464	Decision	Unanimous	Kim Winslow	3	5:00
42213	2	UFC - The Ultimate Fighter 21 Finale	2015-07-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	George Sullivan	Dominic Waters	win	loss	15148	68971	Decision	Unanimous	Yves Lavigne	3	5:00
42213	1	UFC - The Ultimate Fighter 21 Finale	2015-07-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Willie Gates	Darrell Montague	win	loss	40436	34214	TKO	Punches and Elbows	Kim Winslow	1	1:36
42215	12	UFC Fight Night 71 - Mir vs. Duffee	2015-07-15	Valley View Casino Center, San Diego, California, United States	Frank Mir	Todd Duffee	win	loss	2329	22903	KO	Punch	John McCarthy	1	1:13
42215	11	UFC Fight Night 71 - Mir vs. Duffee	2015-07-15	Valley View Casino Center, San Diego, California, United States	Tony Ferguson	Josh Thomson	win	loss	31239	2394	Decision	Unanimous	Herb Dean	3	5:00
42215	10	UFC Fight Night 71 - Mir vs. Duffee	2015-07-15	Valley View Casino Center, San Diego, California, United States	Holly Holm	Marion Reneau	win	loss	75125	61266	Decision	Unanimous	Jason Herzog	3	5:00
42215	9	UFC Fight Night 71 - Mir vs. Duffee	2015-07-15	Valley View Casino Center, San Diego, California, United States	Manny Gamburyan	Scott Jorgensen	win	loss	5185	16852	Decision	Unanimous	Herb Dean	3	5:00
2400	2	UFC 49 - Unfinished Business	2004-08-21	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Karo Parisyan	Nick Diaz	win	loss	5153	2831	Decision	Split	N/A	3	5:00
42215	6	UFC Fight Night 71 - Mir vs. Duffee	2015-07-15	Valley View Casino Center, San Diego, California, United States	Sam Sicilia	Yaotzin Meza	win	loss	53205	15937	Decision	Unanimous	Jason Herzog	3	5:00
42215	5	UFC Fight Night 71 - Mir vs. Duffee	2015-07-15	Valley View Casino Center, San Diego, California, United States	Jessica Andrade	Sarah Moras	win	loss	100715	61600	Decision	Unanimous	John McCarthy	3	5:00
42215	4	UFC Fight Night 71 - Mir vs. Duffee	2015-07-15	Valley View Casino Center, San Diego, California, United States	Rani Yahya	Masanori Kanehara	win	loss	10425	13767	Decision	Split	Jason Herzog	3	5:00
42215	2	UFC Fight Night 71 - Mir vs. Duffee	2015-07-15	Valley View Casino Center, San Diego, California, United States	Kevin Casey	Ildemar Alcantara	win	loss	24121	22223	Decision	Unanimous	Herb Dean	3	5:00
42217	12	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Michael Bisping	Thales Leites	win	loss	10196	8593	Decision	Split	Leon Roberts	5	5:00
42217	11	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Evan Dunham	Ross Pearson	win	loss	22038	11884	Decision	Unanimous	Marc Goddard	3	5:00
42217	10	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Joseph Duffy	Ivan Jorge	win	loss	17052	5432	Submission	Triangle Choke	Neil Hall	1	3:05
42217	9	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Joanne Calderwood	Cortney Casey	win	loss	94103	91121	Decision	Unanimous	Grant Waterman	3	5:00
42217	8	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Leon Edwards	Pawel Pawlak	win	loss	62665	65543	Decision	Unanimous	Leon Roberts	3	5:00
42217	7	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Steven Ray	Leonardo Mafra Texeira	win	loss	59838	76653	TKO	Punches	Marc Goddard	1	2:30
42217	6	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Patrick Holohan	Vaughan Lee	win	loss	63616	6946	Decision	Unanimous	Neil Hall	3	5:00
42217	5	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Ilir Latifi	Hans Stringer	win	loss	40207	14825	KO	Punches	Grant Waterman	1	0:56
42217	4	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Mickael Lebout	Teemu Packalen	win	loss	81143	92415	Decision	Unanimous	Leon Roberts	3	5:00
42217	3	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Robert Whiteford	Paul Redmond	win	loss	47105	56615	KO	Punches	Marc Goddard	1	3:04
42217	2	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Jimmie Rivera	Marcus Brimage	win	loss	40954	21618	KO	Punches	Neil Hall	1	1:29
42217	1	UFC Fight Night 72 - Bisping vs. Leites	2015-07-18	SSE Hydro Arena, Glasgow, Scotland, Scotland	Daniel Omielanczuk	Chris de la Rocha	win	loss	54303	146377	TKO	Punches	Grant Waterman	1	0:48
42219	12	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	T.J. Dillashaw	Renan Barao	win	loss	62507	23156	TKO	Punches	Herb Dean	4	0:35
42219	11	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	Miesha Tate	Jessica Eye	win	loss	26252	39575	Decision	Unanimous	Yves Lavigne	3	5:00
42219	10	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	Edson Barboza	Paul Felder	win	loss	46259	68205	Decision	Unanimous	Robert Madrigal	3	5:00
42219	9	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	Joe Lauzon	Takanori Gomi	win	loss	4923	425	TKO	Punches	Herb Dean	1	2:37
42219	8	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	Tom Lawlor	Gian Villante	win	loss	21940	42802	TKO	Punch	Robert Madrigal	2	0:27
42219	7	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	Jim Miller	Danny Castillo	win	loss	14463	26070	Decision	Split	Herb Dean	3	5:00
42219	6	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	Ben Saunders	Kenny Robertson	win	loss	10339	31978	Decision	Split	Otto Torriero	3	5:00
42219	5	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	Bryan Caraway	Eddie Wineland	win	loss	13791	4173	Decision	Unanimous	Yves Lavigne	3	5:00
42219	4	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	James Krause	Daron Cruickshank	win	loss	31766	53717	Submission	Rear-Naked Choke	Robert Madrigal	1	1:27
42219	2	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	Elizabeth Phillips	Jessamyn Duke	win	loss	83021	71307	Decision	Unanimous	Herb Dean	3	5:00
42219	1	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	Zak Cummings	Dominique Steele	win	loss	31808	47845	TKO	Punches	Otto Torriero	1	0:43
42221	13	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Ronda Rousey	Bethe Correia	win	loss	73073	103069	KO	Punch	John McCarthy	1	0:34
42221	12	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Mauricio Rua	Antonio Rogerio Nogueira	win	loss	5707	2270	Decision	Unanimous	Mario Yamasaki	3	5:00
42221	11	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Glaico Franca	Fernando Bruno	win	loss	117927	25491	Submission	Rear-Naked Choke	Herb Dean	3	4:46
42221	9	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Stefan Struve	Antonio Rodrigo Nogueira	win	loss	15063	1440	Decision	Unanimous	Herb Dean	3	5:00
42221	8	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Antonio Silva	Soa Palelei	win	loss	12354	9680	TKO	Punches	John McCarthy	2	0:41
42221	7	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Claudia Gadelha	Jessica Aguilar	win	loss	48404	15174	Decision	Unanimous	Mario Yamasaki	3	5:00
42221	6	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Demian Maia	Neil Magny	win	loss	14637	69166	Submission	Rear-Naked Choke	Herb Dean	2	2:52
42221	5	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Patrick Cummins	Rafael Cavalcante	win	loss	72981	16161	TKO	Elbows	Mario Yamasaki	3	0:45
42221	4	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Warlley Alves	Nordine Taleb	win	loss	70750	26261	Submission	Guillotine Choke	John McCarthy	2	4:11
42221	3	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Iuri Alcantara	Leandro Issa	win	loss	16129	19521	Decision	Unanimous	Osiris Maia	3	5:00
42221	2	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Vitor Miranda	Clint Hester	win	loss	13004	43866	TKO	Punches and Elbows	Herb Dean	2	2:38
42221	1	UFC 190 - Rousey vs. Correia	2015-08-01	HSBC Arena, Rio de Janeiro, Rio de Janeiro, Brazil	Guido Cannetti	Hugo Viana	win	loss	69513	65456	Decision	Unanimous	Osiris Maia	3	5:00
42223	12	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Beneil Dariush	Michael Johnson	win	loss	56583	68788	Decision	Split	Herb Dean	3	5:00
42223	11	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Derek Brunson	Sam Alvey	win	loss	68494	35410	TKO	Punches	Mario Yamasaki	1	2:19
42223	9	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Amanda Nunes	Sara McMann	win	loss	31496	67094	Submission	Rear-Naked Choke	John McCarthy	1	2:53
42223	8	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Ray Borg	Geane Herrera	win	loss	84752	79290	Decision	Unanimous	Mario Yamasaki	3	5:00
42223	7	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Uriah Hall	Oluwale Bamgbose	win	loss	14210	103153	TKO	Punches	Herb Dean	1	2:32
42223	6	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Chris Camozzi	Tom Watson	win	loss	17224	15179	Decision	Unanimous	John McCarthy	3	5:00
42223	5	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Dustin Ortiz	Willie Gates	win	loss	58097	40436	TKO	Punches	Mario Yamasaki	3	2:58
42223	4	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Frankie Saenz	Sirwan Kakai	win	loss	55410	21446	Decision	Split	Herb Dean	3	5:00
42223	3	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Jonathan Wilson	Chris Dempsey	win	loss	108571	79277	KO	Punches	John McCarthy	1	0:50
42223	2	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Marlon Vera	Roman Salazar	win	loss	97179	24790	Submission	Triangle Armbar	Josh Ward	2	2:15
42223	1	UFC Fight Night 73 - Teixeira vs. St. Preux	2015-08-08	Bridgestone Arena, Nashville, Tennessee, United States	Scott Holtzman	Anthony Christodoulou	win	loss	78210	53712	Submission	Rear-Naked Choke	David Ferguson	3	2:40
42225	12	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Max Holloway	Charles Oliveira	win	loss	38671	30300	TKO	Esophagus Injury	Herb Dean	1	1:39
42225	11	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Neil Magny	Erick Silva	win	loss	69166	15009	Decision	Split	Yves Lavigne	3	5:00
42225	10	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Patrick Cote	Joshua Burkman	win	loss	6612	10003	TKO	Punches	Jerin Valel	3	1:26
42225	9	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Francisco Trinaldo	Chad Laprise	win	loss	31103	69681	TKO	Punches	Herb Dean	1	2:43
42225	8	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Olivier Aubin-Mercier	Tony Sims	win	loss	86241	30021	Decision	Unanimous	Jerin Valel	3	5:00
42225	7	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Valerie Letourneau	Maryna Moroz	win	loss	21851	151905	Decision	Unanimous	Yves Lavigne	3	5:00
42225	6	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Frankie Perez	Sam Stout	win	loss	79784	9901	TKO	Punches	Herb Dean	1	0:54
42225	5	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Felipe Arantes	Yves Jabouin	win	loss	31372	1693	Submission	Armbar	Yves Lavigne	1	4:21
42225	4	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Nikita Krylov	Marcos Rogerio de Lima	win	loss	110937	51955	Submission	Rear-Naked Choke	Herb Dean	1	2:29
42225	2	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Shane Campbell	Elias Silverio	win	loss	34625	88613	Decision	Unanimous	Adam Cheadle	3	5:00
42225	1	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Misha Cirkunov	Daniel Jolly	win	loss	59197	83243	KO	Punches	Jerin Valel	1	4:45
42229	11	UFC 191 - Johnson vs. Dodson 2	2015-09-05	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Demetrious Johnson	John Dodson	win	loss	45452	11660	Decision	Unanimous	Herb Dean	5	5:00
42229	10	UFC 191 - Johnson vs. Dodson 2	2015-09-05	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Andrei Arlovski	Frank Mir	win	loss	270	2329	Decision	Unanimous	John McCarthy	3	5:00
42229	9	UFC 191 - Johnson vs. Dodson 2	2015-09-05	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Anthony Johnson	Jimi Manuwa	win	loss	17662	37528	KO	Punches	Jason Herzog	2	0:28
42229	8	UFC 191 - Johnson vs. Dodson 2	2015-09-05	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Corey Anderson	Jan Blachowicz	win	loss	171723	25821	Decision	Unanimous	Herb Dean	3	5:00
42229	7	UFC 191 - Johnson vs. Dodson 2	2015-09-05	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Paige VanZant	Alex Chambers	win	loss	99019	65649	Submission	Armbar	John McCarthy	3	1:01
42229	6	UFC 191 - Johnson vs. Dodson 2	2015-09-05	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Ross Pearson	Paul Felder	win	loss	11884	68205	Decision	Split	Jason Herzog	3	5:00
42229	5	UFC 191 - Johnson vs. Dodson 2	2015-09-05	MGM Grand Garden Arena, Las Vegas, Nevada, United States	John Lineker	Francisco Rivera	win	loss	41906	11908	Submission	Guillotine Choke	Chris Tognoni	1	2:08
2400	1	UFC 49 - Unfinished Business	2004-08-21	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Yves Edwards	Josh Thomson	win	loss	344	2394	KO	Flying Head Kick and Punches	N/A	1	4:32
2512	7	UFC 50 - The War of '04	2004-10-22	Boardwalk Hall, Atlantic City, New Jersey, United States	Tito Ortiz	Patrick Cote	win	loss	158	6612	Decision	Unanimous	N/A	3	5:00
42229	4	UFC 191 - Johnson vs. Dodson 2	2015-09-05	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Raquel Pennington	Jessica Andrade	win	loss	75564	100715	Submission	Rear-Naked Choke	Herb Dean	2	4:58
42229	3	UFC 191 - Johnson vs. Dodson 2	2015-09-05	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tiago dos Santos e Silva	Clay Collard	win	loss	78479	78465	Decision	Split	John McCarthy	3	5:00
42229	2	UFC 191 - Johnson vs. Dodson 2	2015-09-05	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Joe Riggs	Ron Stallings	win	loss	2765	11950	DQ	Illegal Upkick	Jason Herzog	2	2:28
42229	1	UFC 191 - Johnson vs. Dodson 2	2015-09-05	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Joaquim Silva	Nazareno Malegarie	win	loss	146291	33115	Decision	Split	Chris Tognoni	3	5:00
45847	10	UFC Fight Night 75 - Barnett vs. Nelson	2015-09-26	Saitama Super Arena, Saitama, Japan	Josh Barnett	Roy Nelson	win	loss	272	10249	Decision	Unanimous	Steve Perceval	5	5:00
45847	9	UFC Fight Night 75 - Barnett vs. Nelson	2015-09-26	Saitama Super Arena, Saitama, Japan	Uriah Hall	Gegard Mousasi	win	loss	14210	7466	TKO	Flying Knee and Punches	Greg Kleynjans	2	0:25
45847	8	UFC Fight Night 75 - Barnett vs. Nelson	2015-09-26	Saitama Super Arena, Saitama, Japan	Kyoji Horiguchi	Chico Camus	win	loss	64413	42850	Decision	Unanimous	Steve Perceval	3	5:00
45847	7	UFC Fight Night 75 - Barnett vs. Nelson	2015-09-26	Saitama Super Arena, Saitama, Japan	Takeya Mizugaki	George Roop	win	loss	12074	16415	Decision	Unanimous	Neil Swailes	3	5:00
45847	6	UFC Fight Night 75 - Barnett vs. Nelson	2015-09-26	Saitama Super Arena, Saitama, Japan	Diego Brandao	Katsunori Kikuno	win	loss	25097	16806	TKO	Punches	Steve Perceval	1	0:28
45847	5	UFC Fight Night 75 - Barnett vs. Nelson	2015-09-26	Saitama Super Arena, Saitama, Japan	Mizuto Hirota	Teruto Ishihara	draw	draw	12078	78898	Draw	Split	Greg Kleynjans	3	5:00
45847	3	UFC Fight Night 75 - Barnett vs. Nelson	2015-09-26	Saitama Super Arena, Saitama, Japan	Nick Hein	Yusuke Kasuya	win	loss	50774	63414	Decision	Unanimous	Steve Perceval	3	5:00
45847	2	UFC Fight Night 75 - Barnett vs. Nelson	2015-09-26	Saitama Super Arena, Saitama, Japan	Kajan Johnson	Naoyuki Kotani	win	loss	5615	393	Decision	Unanimous	Greg Kleynjans	3	5:00
45847	1	UFC Fight Night 75 - Barnett vs. Nelson	2015-09-26	Saitama Super Arena, Saitama, Japan	Shinsho Anzai	Roger Zapata	win	loss	47183	81585	TKO	Hand Injury	Neil Swailes	3	0:47
42235	12	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Daniel Cormier	Alexander Gustafsson	win	loss	52311	26162	Decision	Split	Herb Dean	5	5:00
42235	11	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Ryan Bader	Rashad Evans	win	loss	22858	10200	Decision	Unanimous	Herb Dean	3	5:00
42235	10	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Ruslan Magomedov	Shawn Jordan	win	loss	74434	45624	Decision	Unanimous	Kerry Hatley	3	5:00
42235	9	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Joseph Benavidez	Ali Bagautinov	win	loss	15008	81198	Decision	Unanimous	Kerry Hatley	3	5:00
42235	8	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Julianna Pena	Jessica Eye	win	loss	50883	39575	Decision	Unanimous	Frank Collazo	3	5:00
42235	7	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Yair Rodriguez	Daniel Hooker	win	loss	106305	45122	Decision	Unanimous	Kerry Hatley	3	5:00
42235	6	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Albert Tumenov	Alan Jouban	win	loss	60198	65878	TKO	Head Kick and Punches	Frank Collazo	1	2:55
42235	5	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Adriano Martins	Islam Makhachev	win	loss	9907	76836	TKO	Punch	Frank Collazo	1	1:46
42235	4	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Rose Namajunas	Angela Hill	win	loss	69083	148517	Submission	Rear-Naked Choke	Joe Solis	1	2:47
42235	3	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Sage Northcutt	Francisco Trevino	win	loss	130911	38029	TKO	Elbows and Punches	Herb Dean	1	0:57
42235	2	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Sergio Pettis	Chris Cariaso	win	loss	50987	16467	Decision	Unanimous	Joe Solis	3	5:00
47107	10	UFC Fight Night 76 - Holohan vs. Smolka	2015-10-24	3Arena, Dublin, Leinster, Ireland	Louis Smolka	Patrick Holohan	win	loss	64792	63616	Submission	Rear-Naked Choke	Marc Goddard	2	4:09
47107	9	UFC Fight Night 76 - Holohan vs. Smolka	2015-10-24	3Arena, Dublin, Leinster, Ireland	Norman Parke	Reza Madadi	win	loss	47549	18921	Decision	Unanimous	Leon Roberts	3	5:00
47107	8	UFC Fight Night 76 - Holohan vs. Smolka	2015-10-24	3Arena, Dublin, Leinster, Ireland	Darren Till	Nicolas Dalby	draw	draw	73436	63608	Draw	Majority	Marc Goddard	3	5:00
47107	7	UFC Fight Night 76 - Holohan vs. Smolka	2015-10-24	3Arena, Dublin, Leinster, Ireland	Neil Seery	Jon delos Reyes	win	loss	14062	58594	Submission	Guillotine Choke	Kevin Sataki	2	4:12
47107	6	UFC Fight Night 76 - Holohan vs. Smolka	2015-10-24	3Arena, Dublin, Leinster, Ireland	Steven Ray	Mickael Lebout	win	loss	59838	81143	Decision	Unanimous	Leon Roberts	3	5:00
47107	5	UFC Fight Night 76 - Holohan vs. Smolka	2015-10-24	3Arena, Dublin, Leinster, Ireland	Aisling Daly	Ericka Almeida	win	loss	25245	98419	Decision	Unanimous	Piotr Michalak	3	5:00
47107	4	UFC Fight Night 76 - Holohan vs. Smolka	2015-10-24	3Arena, Dublin, Leinster, Ireland	Krzysztof Jotko	Scott Askham	win	loss	53380	40518	Decision	Split	Kevin Sataki	3	5:00
47107	3	UFC Fight Night 76 - Holohan vs. Smolka	2015-10-24	3Arena, Dublin, Leinster, Ireland	Tom Breese	Cathal Pendred	win	loss	45986	64373	TKO	Body Kick and Punches	Leon Roberts	1	4:37
2512	6	UFC 50 - The War of '04	2004-10-22	Boardwalk Hall, Atlantic City, New Jersey, United States	Rich Franklin	Jorge Rivera	win	loss	392	2712	Submission	Armbar	N/A	3	4:28
47107	2	UFC Fight Night 76 - Holohan vs. Smolka	2015-10-24	3Arena, Dublin, Leinster, Ireland	Darren Elkins	Robert Whiteford	win	loss	22094	47105	Decision	Unanimous	Marc Goddard	3	5:00
47107	1	UFC Fight Night 76 - Holohan vs. Smolka	2015-10-24	3Arena, Dublin, Leinster, Ireland	Garreth McLellan	Bubba Bush	win	loss	71237	29111	KO	Punches	Piotr Michalak	3	4:58
42237	13	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Vitor Belfort	Dan Henderson	win	loss	156	195	KO	Punches	Mario Yamasaki	1	2:07
42237	12	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Glover Teixeira	Patrick Cummins	win	loss	4655	72981	TKO	Punches	Herb Dean	2	1:12
42237	11	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Thomas Almeida	Anthony Birchak	win	loss	87865	53300	KO	Punch	Keith Peterson	1	4:24
42237	10	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Alex Oliveira	Piotr Hallmann	win	loss	110143	53375	KO	Punch	Mario Yamasaki	3	0:51
42237	9	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Rashid Magomedov	Gilbert Burns	win	loss	41524	91727	Decision	Unanimous	Keith Peterson	3	5:00
42237	8	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Corey Anderson	Fabio Maldonado	win	loss	171723	16426	Decision	Unanimous	Herb Dean	3	5:00
42237	6	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Johnny Case	Yan Cabral	win	loss	28017	27090	Decision	Unanimous	Herb Dean	3	5:00
42237	5	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Thiago Tavares	Clay Guida	win	loss	4647	8184	Submission	Guillotine Choke	Mario Yamasaki	1	0:39
42237	4	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Chas Skelly	Edimilson Souza	win	loss	47227	57343	Submission	Rear-Naked Choke	Herb Dean	2	1:56
42237	3	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Viscardi Andrade	Gasan Umalatov	win	loss	30298	53109	Decision	Unanimous	Eduardo Herdy	3	5:00
42237	2	UFC Fight Night 77 - Belfort vs. Henderson 3	2015-11-07	Geraldo Jose de Almeida (Ibirapuera) State Gymnasium, Sao Paulo, Sao Paulo, Brazil	Jimmie Rivera	Pedro Munhoz	win	loss	40954	52407	Decision	Split	Mario Yamasaki	3	5:00
42239	13	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Holly Holm	Ronda Rousey	win	loss	75125	73073	KO	Head Kick and Punches	Herb Dean	2	0:59
42239	12	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Joanna Jedrzejczyk	Valerie Letourneau	win	loss	101411	21851	Decision	Unanimous	Steve Perceval	5	5:00
42239	11	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Mark Hunt	Antonio Silva	win	loss	10668	12354	TKO	Punches	John Sharp	1	3:41
42239	10	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Robert Whittaker	Uriah Hall	win	loss	45132	14210	Decision	Unanimous	Steve Perceval	3	5:00
42239	9	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Jared Rosholt	Stefan Struve	win	loss	76763	15063	Decision	Unanimous	Herb Dean	3	5:00
42239	8	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Jake Matthews	Akbarh Arreola	win	loss	122139	6120	TKO	Doctor Stoppage	Greg Kleynjans	2	5:00
42239	7	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Kyle Noke	Peter Sobotta	win	loss	7632	15816	TKO	Body Kick and Punches	Steve Perceval	1	2:01
42239	6	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Gian Villante	Anthony Perosh	win	loss	42802	9491	KO	Punch	Greg Kleynjans	1	2:56
42239	5	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Danny Martinez	Richie Vaculik	win	loss	16777	21798	Decision	Unanimous	John Sharp	3	5:00
42239	4	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Daniel Kelly	Steve Montgomery	win	loss	49516	49092	Decision	Unanimous	Herb Dean	3	5:00
42239	3	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Richard Walsh	Steve Kennedy	win	loss	55587	31092	Decision	Unanimous	John Sharp	3	5:00
42239	1	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	Ben Nguyen	Ryan Benoit	win	loss	8183	48566	Submission	Rear-Naked Choke	Greg Kleynjans	1	2:35
42241	13	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Neil Magny	Kelvin Gastelum	win	loss	69166	74700	Decision	Split	John McCarthy	5	5:00
42241	12	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Ricardo Lamas	Diego Sanchez	win	loss	32051	4824	Decision	Unanimous	Dan Miragliotta	3	5:00
42241	11	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Henry Cejudo	Jussier da Silva	win	loss	125297	36939	Decision	Split	Mario Yamasaki	3	5:00
42241	10	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Erick Montano	Enrique Marin	win	loss	40308	27077	Decision	Split	Gary Copeland	3	5:00
42241	9	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Enrique Barzola	Horacio Gutierrez	win	loss	129351	172941	Decision	Unanimous	Mario Yamasaki	3	5:00
42241	8	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Leandro Silva	Efrain Escudero	win	loss	86382	16555	Decision	Unanimous	John McCarthy	3	5:00
42241	7	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Erik Perez	Taylor Lapilus	win	loss	35509	97337	Decision	Unanimous	Dan Miragliotta	3	5:00
2512	5	UFC 50 - The War of '04	2004-10-22	Boardwalk Hall, Atlantic City, New Jersey, United States	Matt Hughes	Georges St. Pierre	win	loss	232	3500	Submission	Armbar	N/A	1	4:59
42241	6	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Bartosz Fabinski	Hector Urbina	win	loss	87101	18168	Decision	Unanimous	Mario Yamasaki	3	5:00
42241	5	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Alejandro Perez	Scott Jorgensen	win	loss	13428	16852	TKO	Leg Injury	Gary Copeland	2	4:26
42241	4	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Andre Fili	Gabriel Benitez	win	loss	58385	25733	KO	Head Kick and Punches	John McCarthy	1	3:13
42241	3	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Alvaro Herrera	Vernon Ramos	win	loss	44627	100921	KO	Punches	Dan Miragliotta	1	0:30
42241	1	UFC Fight Night 78 - Magny vs. Gastelum	2015-11-21	Monterrey Arena, Monterrey, Nuevo Leon, Mexico	Michel Richard Cunha dos Prazeres	Valmir Lazaro	win	loss	22218	22216	Decision	Split	Gary Copeland	3	5:00
42243	9	UFC Fight Night 79 - Henderson vs. Masvidal	2015-11-28	Olympic Gymnastics Arena, Seoul, South Korea	Alberto Mina	Yoshihiro Akiyama	win	loss	16705	11895	Decision	Split	Steve Perceval	3	5:00
42243	8	UFC Fight Night 79 - Henderson vs. Masvidal	2015-11-28	Olympic Gymnastics Arena, Seoul, South Korea	Doo Ho Choi	Sam Sicilia	win	loss	56689	53205	KO	Punches	Greg Kleynjans	1	1:33
42243	7	UFC Fight Night 79 - Henderson vs. Masvidal	2015-11-28	Olympic Gymnastics Arena, Seoul, South Korea	Dongi Yang	Jake Collier	win	loss	23501	83599	TKO	Punches	Herb Dean	2	1:50
42243	6	UFC Fight Night 79 - Henderson vs. Masvidal	2015-11-28	Olympic Gymnastics Arena, Seoul, South Korea	Mike de la Torre	Yui Chul Nam	win	loss	17915	15987	Decision	Split	Leon Roberts	3	5:00
42243	5	UFC Fight Night 79 - Henderson vs. Masvidal	2015-11-28	Olympic Gymnastics Arena, Seoul, South Korea	Tae Hyun Bang	Leo Kuntz	win	loss	23167	44602	Decision	Split	Steve Perceval	3	5:00
42243	4	UFC Fight Night 79 - Henderson vs. Masvidal	2015-11-28	Olympic Gymnastics Arena, Seoul, South Korea	Seo Hee Ham	Cortney Casey	win	loss	21246	91121	Decision	Unanimous	Herb Dean	3	5:00
42243	3	UFC Fight Night 79 - Henderson vs. Masvidal	2015-11-28	Olympic Gymnastics Arena, Seoul, South Korea	Freddy Serrano	Zhikui Yao	win	loss	112413	122383	TKO	Arm Injury	Greg Kleynjans	1	0:44
42243	2	UFC Fight Night 79 - Henderson vs. Masvidal	2015-11-28	Olympic Gymnastics Arena, Seoul, South Korea	Marco Beltran	Guangyou Ning	win	loss	40285	26389	Decision	Split	Steve Perceval	3	5:00
47669	1	UFC Fight Night 80 - Namajunas vs. VanZant	2015-12-10	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Kailin Curran	Emily Kagan	win	loss	62703	68959	Submission	Rear-Naked Choke	Marc Goddard	2	4:13
47669	12	UFC Fight Night 80 - Namajunas vs. VanZant	2015-12-10	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Rose Namajunas	Paige VanZant	win	loss	69083	99019	Submission	Rear-Naked Choke	Herb Dean	5	2:25
47669	11	UFC Fight Night 80 - Namajunas vs. VanZant	2015-12-10	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Michael Chiesa	Jim Miller	win	loss	46224	14463	Submission	Rear-Naked Choke	Jason Herzog	2	2:57
47669	10	UFC Fight Night 80 - Namajunas vs. VanZant	2015-12-10	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Sage Northcutt	Cody Pfister	win	loss	130911	48481	Submission	Guillotine Choke	Mark Smith	2	0:41
47669	9	UFC Fight Night 80 - Namajunas vs. VanZant	2015-12-10	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Thiago Santos	Elias Theodorou	win	loss	90021	81765	Decision	Unanimous	Marc Goddard	3	5:00
47669	8	UFC Fight Night 80 - Namajunas vs. VanZant	2015-12-10	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Tim Means	John Howard	win	loss	11281	11798	KO	Punches	Herb Dean	2	0:21
47669	7	UFC Fight Night 80 - Namajunas vs. VanZant	2015-12-10	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Sergio Moraes	Omari Akhmedov	win	loss	21343	83462	TKO	Punches	Jason Herzog	3	2:18
47669	5	UFC Fight Night 80 - Namajunas vs. VanZant	2015-12-10	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Aljamain Sterling	Johnny Eduardo	win	loss	66313	426	Submission	Guillotine Choke	Marc Goddard	2	4:18
47669	4	UFC Fight Night 80 - Namajunas vs. VanZant	2015-12-10	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Santiago Ponzinibbio	Andreas Stahl	win	loss	64593	57322	TKO	Punches	Herb Dean	1	4:25
47669	2	UFC Fight Night 80 - Namajunas vs. VanZant	2015-12-10	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Zubaira Tukhugov	Phillipe Nover	win	loss	63813	7415	Decision	Split	Mark Smith	3	5:00
47439	9	UFC - The Ultimate Fighter 22 Finale	2015-12-11	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Ryan Hall	Artem Lobov	win	loss	15962	73700	Decision	Unanimous	Herb Dean	3	5:00
47439	8	UFC - The Ultimate Fighter 22 Finale	2015-12-11	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Tony Ferguson	Edson Barboza	win	loss	31239	46259	Submission	Brabo Choke	John McCarthy	2	2:54
47439	7	UFC - The Ultimate Fighter 22 Finale	2015-12-11	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Evan Dunham	Joe Lauzon	win	loss	22038	4923	Decision	Unanimous	Herb Dean	3	5:00
47439	6	UFC - The Ultimate Fighter 22 Finale	2015-12-11	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Tatsuya Kawajiri	Jason Knight	win	loss	1326	44957	Decision	Unanimous	John McCarthy	3	5:00
47439	5	UFC - The Ultimate Fighter 22 Finale	2015-12-11	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Julian Erosa	Marcin Wrzosek	win	loss	71442	85623	Decision	Split	Jason Herzog	3	5:00
47439	4	UFC - The Ultimate Fighter 22 Finale	2015-12-11	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Gabriel Gonzaga	Konstantin Erokhin	win	loss	7306	98151	Decision	Unanimous	Chris Tognoni	3	5:00
47439	3	UFC - The Ultimate Fighter 22 Finale	2015-12-11	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Ryan LaFlare	Mike Pierce	win	loss	34409	25415	Decision	Unanimous	Jason Herzog	3	5:00
2512	4	UFC 50 - The War of '04	2004-10-22	Boardwalk Hall, Atlantic City, New Jersey, United States	Frank Trigg	Renato Verissimo	win	loss	311	4095	TKO	Elbows	N/A	2	2:11
47439	2	UFC - The Ultimate Fighter 22 Finale	2015-12-11	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Geane Herrera	Joby Sanchez	win	loss	79290	50239	TKO	Punches	Chris Tognoni	2	4:28
47439	1	UFC - The Ultimate Fighter 22 Finale	2015-12-11	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Chris Gruetzemacher	Abner Lloveras	win	loss	36924	11729	Decision	Unanimous	Jason Herzog	3	5:00
42245	12	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Conor McGregor	Jose Aldo	win	loss	29688	11506	KO	Punch	John McCarthy	1	0:13
42245	11	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Luke Rockhold	Chris Weidman	win	loss	23345	42804	TKO	Punches	Herb Dean	4	3:12
42245	10	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Yoel Romero	Ronaldo Souza	win	loss	60762	8394	Decision	Split	Marc Goddard	3	5:00
42245	9	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Demian Maia	Gunnar Nelson	win	loss	14637	25246	Decision	Unanimous	John McCarthy	3	5:00
42245	8	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Max Holloway	Jeremy Stephens	win	loss	38671	12179	Decision	Unanimous	Herb Dean	3	5:00
42245	7	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Urijah Faber	Frankie Saenz	win	loss	8847	55410	Decision	Unanimous	Marc Goddard	3	5:00
42245	6	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Tecia Torres	Jocelyn Jones-Lybarger	win	loss	85096	68957	Decision	Unanimous	Herb Dean	3	5:00
42245	5	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Warlley Alves	Colby Covington	win	loss	70750	57269	Submission	Guillotine Choke	Mark Smith	1	1:26
42245	4	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Leonardo Santos	Kevin Lee	win	loss	4810	84342	TKO	Punches	John McCarthy	1	3:26
42245	3	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Magomed Mustafaev	Joe Proctor	win	loss	80231	46307	TKO	Knees and Punches	Mark Smith	1	1:54
42245	2	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Yancy Medeiros	John Makdessi	win	loss	27738	37402	Decision	Split	Marc Goddard	3	5:00
42245	1	UFC 194 - Aldo vs. McGregor	2015-12-12	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Court McGee	Marcio Alexandre Jr.	win	loss	34124	95457	Decision	Unanimous	Mark Smith	3	5:00
42249	13	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Rafael dos Anjos	Donald Cerrone	win	loss	11675	15105	TKO	Punches	Herb Dean	1	1:06
42249	12	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Alistair Overeem	Junior dos Santos	win	loss	461	17272	TKO	Punches	Dan Miragliotta	2	4:43
42249	11	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Nate Diaz	Michael Johnson	win	loss	11451	68788	Decision	Unanimous	Jorge Alonso	3	5:00
42249	10	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Karolina Kowalkiewicz	Randa Markos	win	loss	101401	75417	Decision	Unanimous	Herb Dean	3	5:00
42249	9	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Charles Oliveira	Myles Jury	win	loss	30300	34236	Submission	Guillotine Choke	John Hosegood	1	3:05
42249	8	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Nate Marquardt	C.B. Dollaway	win	loss	1712	22350	KO	Punch	Herb Dean	2	0:28
42249	7	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Valentina Shevchenko	Sarah Kaufman	win	loss	45384	16524	Decision	Split	Dan Miragliotta	3	5:00
42249	6	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Tamdan McCrory	Josh Samman	win	loss	16470	17460	Submission	Triangle Choke	Jorge Alonso	3	4:10
42249	5	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Nik Lentz	Danny Castillo	win	loss	15058	26070	Decision	Split	John Hosegood	3	5:00
42249	3	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Kamaru Usman	Leon Edwards	win	loss	120691	62665	Decision	Unanimous	Dan Miragliotta	3	5:00
42249	1	UFC on Fox 17 - Dos Anjos vs. Cerrone 2	2015-12-19	Amway Center, Orlando, Florida, United States	Francis Ngannou	Luis Henrique Barbosa de Oliveira	win	loss	152341	6608	KO	Punch	John Hosegood	2	2:53
47465	12	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Robbie Lawler	Carlos Condit	win	loss	2245	6765	Decision	Split	John McCarthy	5	5:00
47465	11	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Stipe Miocic	Andrei Arlovski	win	loss	39537	270	TKO	Punches	Herb Dean	1	0:54
47465	10	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Albert Tumenov	Lorenz Larkin	win	loss	60198	51345	Decision	Split	Mario Yamasaki	3	5:00
47465	9	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brian Ortega	Diego Brandao	win	loss	65310	25097	Submission	Triangle Choke	John McCarthy	3	1:37
47465	8	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Abel Trujillo	Tony Sims	win	loss	17129	30021	Submission	Guillotine Choke	Herb Dean	1	3:18
47465	7	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Michael McDonald	Masanori Kanehara	win	loss	30297	13767	Submission	Rear-Naked Choke	Mario Yamasaki	2	2:09
47465	6	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Alex Morono	Kyle Noke	win	loss	64894	7632	Decision	Split	John McCarthy	3	5:00
47465	5	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Justine Kish	Nina Ansaroff	win	loss	67098	69632	Decision	Unanimous	Chris Tognoni	3	5:00
47465	4	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Drew Dober	Scott Holtzman	win	loss	23982	78210	Decision	Unanimous	Herb Dean	3	5:00
47465	3	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dustin Poirier	Joseph Duffy	win	loss	50529	17052	Decision	Unanimous	Chris Tognoni	3	5:00
47465	2	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Michinori Tanaka	Joe Soto	win	loss	71942	17004	Decision	Split	Mario Yamasaki	3	5:00
47465	1	UFC 195 - Lawler vs. Condit	2016-01-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Sheldon Westcott	Edgar Garcia	win	loss	23648	23108	TKO	Punches	Chris Tognoni	1	3:12
47783	13	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Dominick Cruz	T.J. Dillashaw	win	loss	12107	62507	Decision	Split	Herb Dean	5	5:00
47783	12	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Eddie Alvarez	Anthony Pettis	win	loss	9265	26627	Decision	Split	Kevin MacDonald	3	5:00
47783	11	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Travis Browne	Matt Mitrione	win	loss	16785	49519	TKO	Punches	Gary Forman	3	4:09
47783	10	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Francisco Trinaldo	Ross Pearson	win	loss	31103	11884	Decision	Unanimous	Herb Dean	3	5:00
47783	9	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Patrick Cote	Ben Saunders	win	loss	6612	10339	TKO	Punches	Steve Rita	2	1:14
47783	8	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Ed Herman	Tim Boetsch	win	loss	6561	19544	KO	Knee	Kevin MacDonald	2	1:39
47783	7	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Chris Wade	Mehdi Baghdad	win	loss	79335	41993	Submission	Rear-Naked Choke	Gary Forman	1	4:30
47783	6	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Luke Sanders	Maximo Blanco	win	loss	74975	36618	Submission	Rear-Naked Choke	Herb Dean	1	3:38
47783	5	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Paul Felder	Daron Cruickshank	win	loss	68205	53717	Submission	Rear-Naked Choke	Steve Rita	3	3:56
47783	4	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Ilir Latifi	Sean O'Connell	win	loss	40207	33156	TKO	Punches	Kevin MacDonald	1	0:30
47783	3	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Charles Rosa	Kyle Bochniak	win	loss	71116	86246	Decision	Unanimous	Gary Forman	3	5:00
47783	2	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Rob Font	Joey Gomez	win	loss	76100	64975	TKO	Punches	Herb Dean	2	4:13
47783	1	UFC Fight Night 81 - Dillashaw vs. Cruz	2016-01-17	TD Garden, Boston, Massachusetts, United States	Francimar Barroso	Elvis Mutapcic	win	loss	14702	28038	Decision	Unanimous	Steve Rita	3	5:00
47933	13	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Anthony Johnson	Ryan Bader	win	loss	17662	22858	KO	Punches	Keith Peterson	1	1:26
47933	12	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Ben Rothwell	Josh Barnett	win	loss	2262	272	Submission	Guillotine Choke	Gary Copeland	2	3:48
47933	11	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Jimmie Rivera	Iuri Alcantara	win	loss	40954	16129	Decision	Unanimous	Liam Kerrigan	3	5:00
47933	10	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Bryan Barberena	Sage Northcutt	win	loss	51471	130911	Submission	Arm-Triangle Choke	Keith Peterson	2	3:06
47933	7	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Rafael Natal	Kevin Casey	win	loss	13968	24121	TKO	Punches	Gary Copeland	3	3:37
47933	6	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Wilson Reis	Dustin Ortiz	win	loss	23401	58097	Decision	Unanimous	Vitor Ribeiro	3	5:00
47933	5	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Alexander Yakovlev	George Sullivan	win	loss	10846	15148	KO	Punch	Gasper Oliver	1	3:59
47933	4	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Alex Caceres	Masio Fullen	win	loss	41586	40356	Decision	Unanimous	Gary Copeland	3	5:00
47933	3	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Randy Brown	Matt Dwyer	win	loss	115641	53933	Decision	Unanimous	Liam Kerrigan	3	5:00
47933	2	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Damon Jackson	Levan Makashvili	draw	draw	113767	126881	Draw	Majority	Gasper Oliver	3	5:00
47929	5	UFC Fight Night 82 - Hendricks vs. Thompson	2016-02-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Derrick Lewis	Damian Grabowski	win	loss	59284	30320	TKO	Punches	Mark Smith	1	2:17
47929	4	UFC Fight Night 82 - Hendricks vs. Thompson	2016-02-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Justin Scoggins	Ray Borg	win	loss	71120	84752	Decision	Unanimous	Herb Dean	3	5:00
47929	2	UFC Fight Night 82 - Hendricks vs. Thompson	2016-02-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mickey Gall	Mike Jackson	win	loss	160145	63272	Submission	Rear-Naked Choke	Yves Lavigne	1	0:45
47929	1	UFC Fight Night 82 - Hendricks vs. Thompson	2016-02-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Alex White	Artem Lobov	win	loss	55954	73700	Decision	Unanimous	Mark Smith	3	5:00
47935	13	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Donald Cerrone	Alex Oliveira	win	loss	15105	110143	Submission	Triangle Choke	Mario Yamasaki	1	2:33
47935	12	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Derek Brunson	Roan Carneiro	win	loss	68494	2886	KO	Punches	Keith Peterson	1	2:38
47935	11	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Cody Garbrandt	Augusto Mendes	win	loss	50381	160663	KO	Punches	Mario Yamasaki	1	4:18
47935	10	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Dennis Bermudez	Tatsuya Kawajiri	win	loss	58065	1326	Decision	Unanimous	Keith Peterson	3	5:00
47935	9	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Chris Camozzi	Joe Riggs	win	loss	17224	2765	TKO	Knees	Mario Yamasaki	1	0:26
47935	8	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	James Krause	Shane Campbell	win	loss	31766	34625	Decision	Unanimous	Keith Peterson	3	5:00
47935	7	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Sean Strickland	Alex Garcia	win	loss	30452	54124	TKO	Punches	Bill Bookwalter	3	4:25
47935	6	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Oluwale Bamgbose	Daniel Sarafian	win	loss	103153	17665	KO	Head Kick and Punches	James Chappell	1	1:00
47935	5	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Anthony Smith	Leonardo Guimaraes	win	loss	29470	14971	Decision	Unanimous	Chip Snider	3	5:00
47935	4	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Nathan Coy	Jonavin Webb	win	loss	25412	81634	Decision	Unanimous	Keith Peterson	3	5:00
47935	3	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Ashlee Evans-Smith	Marion Reneau	win	loss	75021	61266	Decision	Split	James Chappell	3	5:00
47935	2	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Lauren Murphy	Kelly Faszholz	win	loss	66725	117453	TKO	Elbows and Punches	Bill Bookwalter	3	4:55
47935	1	UFC Fight Night 83 - Cerrone vs. Oliveira	2016-02-21	Consol Energy Center, Pittsburgh, Pennsylvania, United States	Shamil Abdurakhimov	Anthony Hamilton	win	loss	26808	58947	Decision	Unanimous	Chip Snider	3	5:00
47933	1	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Tony Martin	Felipe Olivieri	win	loss	80436	28181	TKO	Submission (Rear-Naked Choke	Liam Kerrigan	3	3:02
2512	3	UFC 50 - The War of '04	2004-10-22	Boardwalk Hall, Atlantic City, New Jersey, United States	Evan Tanner	Robbie Lawler	win	loss	212	2245	Submission	Triangle Choke	N/A	1	2:22
38	6	UFC 28 - High Stakes	2000-11-17	Trump Taj Mahal, Atlantic City, New Jersey, United States	Renato Sobral	Maurice Smith	win	loss	274	175	Decision	Unanimous	John McCarthy	3	5:00
38	5	UFC 28 - High Stakes	2000-11-17	Trump Taj Mahal, Atlantic City, New Jersey, United States	Josh Barnett	Gan McGee	win	loss	272	273	TKO	Punches	John McCarthy	2	4:34
38	4	UFC 28 - High Stakes	2000-11-17	Trump Taj Mahal, Atlantic City, New Jersey, United States	Andrei Arlovski	Aaron Brink	win	loss	270	271	Submission	Armbar	John McCarthy	1	0:55
38	3	UFC 28 - High Stakes	2000-11-17	Trump Taj Mahal, Atlantic City, New Jersey, United States	Jens Pulver	John Lewis	win	loss	228	230	KO	Punch	John McCarthy	1	0:15
38	2	UFC 28 - High Stakes	2000-11-17	Trump Taj Mahal, Atlantic City, New Jersey, United States	Mark Hughes	Alex Stiebling	win	loss	268	269	Decision	Unanimous	John McCarthy	2	5:00
39	7	UFC 29 - Defense of the Belts	2000-12-16	Differ Ariake, Tokyo, Japan, Japan	Tito Ortiz	Yuki Kondo	win	loss	158	263	Submission	Neck Crank	John McCarthy	1	1:52
39	6	UFC 29 - Defense of the Belts	2000-12-16	Differ Ariake, Tokyo, Japan, Japan	Pat Miletich	Kenichi Yamamoto	win	loss	188	236	Submission	Guillotine Choke	John McCarthy	2	1:58
39	5	UFC 29 - Defense of the Belts	2000-12-16	Differ Ariake, Tokyo, Japan, Japan	Matt Lindland	Yoji Anjo	win	loss	276	182	TKO	Punches	John McCarthy	1	2:58
34819	3	UFC - The Ultimate Fighter China Finale	2014-03-01	Cotai Arena, Macau, China, China	Vaughan Lee	Nam Phan	win	loss	6946	5778	Decision	Unanimous	Leon Roberts	3	5:00
34819	2	UFC - The Ultimate Fighter China Finale	2014-03-01	Cotai Arena, Macau, China, China	Anying Wang	Albert Cheng	win	loss	135315	63422	TKO	Doctor Stoppage	Leon Roberts	1	5:00
33949	3	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Justin Scoggins	Will Campuzano	win	loss	71120	35521	Decision	Unanimous	Jacob Montalvo	3	5:00
35107	5	UFC on Fox 11 - Werdum vs. Browne	2014-04-19	Amway Center, Orlando, Florida, United States	Caio Magalhaes	Luke Zachrich	win	loss	51163	15720	TKO	Punches	John McCarthy	1	0:44
39	4	UFC 29 - Defense of the Belts	2000-12-16	Differ Ariake, Tokyo, Japan, Japan	Fabiano Iha	Daiju Takase	win	loss	218	226	TKO	Strikes	John McCarthy	1	2:24
39	3	UFC 29 - Defense of the Belts	2000-12-16	Differ Ariake, Tokyo, Japan, Japan	Evan Tanner	Lance Gibson	win	loss	212	246	TKO	Punches and Elbows	John McCarthy	1	4:48
37719	7	UFC on Fox 12 - Lawler vs. Brown	2014-07-26	SAP Center, San Jose, California, United States	Patrick Cummins	Kyle Kingsbury	win	loss	72981	16558	Decision	Unanimous	John McCarthy	3	5:00
37719	6	UFC on Fox 12 - Lawler vs. Brown	2014-07-26	SAP Center, San Jose, California, United States	Tim Means	Hernani Perpetuo	win	loss	11281	28185	Decision	Unanimous	Herb Dean	3	5:00
39	2	UFC 29 - Defense of the Belts	2000-12-16	Differ Ariake, Tokyo, Japan, Japan	Dennis Hallman	Matt Hughes	win	loss	275	232	Submission	Armbar	John McCarthy	1	0:20
39	1	UFC 29 - Defense of the Belts	2000-12-16	Differ Ariake, Tokyo, Japan, Japan	Chuck Liddell	Jeff Monson	win	loss	192	262	Decision	Unanimous	John McCarthy	3	5:00
40	8	UFC 30 - Battle on the Boardwalk	2001-02-23	Trump Taj Mahal, Atlantic City, New Jersey, United States	Tito Ortiz	Evan Tanner	win	loss	158	212	KO	Slam	John McCarthy	1	0:32
40	7	UFC 30 - Battle on the Boardwalk	2001-02-23	Trump Taj Mahal, Atlantic City, New Jersey, United States	Jens Pulver	Caol Uno	win	loss	228	283	Decision	Unanimous	John McCarthy	5	5:00
40339	2	UFC Fight Night 55 - Rockhold vs. Bisping	2014-11-07	Allphones Arena, Sydney, New South Wales, Australia	Daniel Kelly	Luke Zachrich	win	loss	49516	15720	Submission	Kimura	Leon Roberts	1	4:27
37549	4	UFC 180 - Werdum vs. Hunt	2014-11-15	Mexico City Arena, Mexico City, Federal District, Mexico	Jessica Eye	Leslie Smith	win	loss	39575	46542	TKO	Doctor Stoppage	Herb Dean	2	1:30
37549	1	UFC 180 - Werdum vs. Hunt	2014-11-15	Mexico City Arena, Mexico City, Federal District, Mexico	Marco Beltran	Marlon Vera	win	loss	40285	97179	Decision	Unanimous	Herb Dean	3	5:00
40	6	UFC 30 - Battle on the Boardwalk	2001-02-23	Trump Taj Mahal, Atlantic City, New Jersey, United States	Fabiano Iha	Phil Johns	win	loss	218	282	Submission	Armbar	John McCarthy	1	2:05
40	5	UFC 30 - Battle on the Boardwalk	2001-02-23	Trump Taj Mahal, Atlantic City, New Jersey, United States	Elvis Sinosic	Jeremy Horn	win	loss	281	202	Submission	Triangle Armbar	John McCarthy	1	2:59
40	4	UFC 30 - Battle on the Boardwalk	2001-02-23	Trump Taj Mahal, Atlantic City, New Jersey, United States	Pedro Rizzo	Josh Barnett	win	loss	208	272	KO	Punch	John McCarthy	2	4:21
2512	2	UFC 50 - The War of '04	2004-10-22	Boardwalk Hall, Atlantic City, New Jersey, United States	Ivan Salaverry	Tony Fryklund	win	loss	1351	168	Submission	Body Lock	N/A	1	1:36
42123	10	UFC on Fox 14 - Gustafsson vs. Johnson	2015-01-24	Tele2 Arena, Stockholm, Sweden, Sweden	Ryan Bader	Phil Davis	win	loss	22858	27802	Decision	Split	Marc Goddard	3	5:00
42123	9	UFC on Fox 14 - Gustafsson vs. Johnson	2015-01-24	Tele2 Arena, Stockholm, Sweden, Sweden	Sam Sicilia	Akira Corassani	win	loss	53205	22641	KO	Punch	Neil Hall	1	3:26
2512	1	UFC 50 - The War of '04	2004-10-22	Boardwalk Hall, Atlantic City, New Jersey, United States	Travis Lutter	Marvin Eastman	win	loss	4586	339	KO	Punch	N/A	2	0:43
2690	7	UFC 51 - Super Saturday	2005-02-05	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Andrei Arlovski	Tim Sylvia	win	loss	270	1061	Submission	Achilles Lock	N/A	1	0:47
40	2	UFC 30 - Battle on the Boardwalk	2001-02-23	Trump Taj Mahal, Atlantic City, New Jersey, United States	Phil Baroni	Curtis Stout	win	loss	278	279	Decision	Unanimous	John McCarthy	2	5:00
40	1	UFC 30 - Battle on the Boardwalk	2001-02-23	Trump Taj Mahal, Atlantic City, New Jersey, United States	Sean Sherk	Tiki Ghosn	win	loss	277	88	Submission	Dislocated Shoulder	Mason White	2	4:47
42199	5	UFC 187 - Johnson vs. Cormier	2015-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dong Hyun Kim	Joshua Burkman	win	loss	16374	10003	Submission	Arm-Triangle Choke	Jason Herzog	3	2:13
282	8	UFC 31 - Locked & Loaded	2001-05-04	Trump Taj Mahal, Atlantic City, New Jersey, United States	Randy Couture	Pedro Rizzo	win	loss	166	208	Decision	Unanimous	N/A	5	5:00
282	7	UFC 31 - Locked & Loaded	2001-05-04	Trump Taj Mahal, Atlantic City, New Jersey, United States	Carlos Newton	Pat Miletich	win	loss	7	188	Submission	Bulldog Choke	N/A	3	2:50
282	6	UFC 31 - Locked & Loaded	2001-05-04	Trump Taj Mahal, Atlantic City, New Jersey, United States	Chuck Liddell	Kevin Randleman	win	loss	192	162	KO	Punches	N/A	1	1:18
282	5	UFC 31 - Locked & Loaded	2001-05-04	Trump Taj Mahal, Atlantic City, New Jersey, United States	Shonie Carter	Matt Serra	win	loss	239	1305	KO	Spinning Back Fist	N/A	3	4:51
282	4	UFC 31 - Locked & Loaded	2001-05-04	Trump Taj Mahal, Atlantic City, New Jersey, United States	Semmy Schilt	Pete Williams	win	loss	467	201	TKO	Kick to the Body and Punches	N/A	2	1:28
42211	7	UFC 189 - Mendes vs. McGregor	2015-07-11	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Thomas Almeida	Brad Pickett	win	loss	87865	11743	KO	Knee	John McCarthy	2	0:29
42215	8	UFC Fight Night 71 - Mir vs. Duffee	2015-07-15	Valley View Casino Center, San Diego, California, United States	Kevin Lee	James Moontasri	win	loss	84342	36889	Submission	Rear-Naked Choke	John McCarthy	1	2:56
42215	7	UFC Fight Night 71 - Mir vs. Duffee	2015-07-15	Valley View Casino Center, San Diego, California, United States	Alan Jouban	Matt Dwyer	win	loss	65878	53933	Decision	Unanimous	Herb Dean	3	5:00
282	3	UFC 31 - Locked & Loaded	2001-05-04	Trump Taj Mahal, Atlantic City, New Jersey, United States	Matt Lindland	Ricardo Almeida	win	loss	276	11	DQ	Repeated Fouls	N/A	3	4:21
282	2	UFC 31 - Locked & Loaded	2001-05-04	Trump Taj Mahal, Atlantic City, New Jersey, United States	B.J. Penn	Joey Gilbert	win	loss	1307	1306	TKO	Punches	N/A	1	4:57
14025	9	UFC 120 - Bisping vs. Akiyama	2010-10-16	O2 Arena, London, England, England	Carlos Condit	Dan Hardy	win	loss	6765	10629	KO	Punch	Dan Miragliotta	1	4:27
282	1	UFC 31 - Locked & Loaded	2001-05-04	Trump Taj Mahal, Atlantic City, New Jersey, United States	Tony DeSouza	Steve Berger	win	loss	487	1303	Decision	Unanimous	N/A	3	5:00
429	8	UFC 32 - Showdown in the Meadowlands	2001-06-29	Continental Airlines Arena, East Ruthorford, New Jersey, United States	Tito Ortiz	Elvis Sinosic	win	loss	158	281	TKO	Punches and Elbows	N/A	1	3:32
429	7	UFC 32 - Showdown in the Meadowlands	2001-06-29	Continental Airlines Arena, East Ruthorford, New Jersey, United States	B.J. Penn	Din Thomas	win	loss	1307	1301	TKO	Knee and Punches	N/A	1	2:42
429	6	UFC 32 - Showdown in the Meadowlands	2001-06-29	Continental Airlines Arena, East Ruthorford, New Jersey, United States	Josh Barnett	Semmy Schilt	win	loss	272	467	Submission	Armbar	N/A	1	4:21
429	5	UFC 32 - Showdown in the Meadowlands	2001-06-29	Continental Airlines Arena, East Ruthorford, New Jersey, United States	Pat Miletich	Shonie Carter	win	loss	188	239	KO	Head Kick	N/A	2	2:42
429	4	UFC 32 - Showdown in the Meadowlands	2001-06-29	Continental Airlines Arena, East Ruthorford, New Jersey, United States	Caol Uno	Fabiano Iha	win	loss	283	218	TKO	Punches	N/A	1	1:48
429	3	UFC 32 - Showdown in the Meadowlands	2001-06-29	Continental Airlines Arena, East Ruthorford, New Jersey, United States	Vladimir Matyushenko	Yuki Kondo	win	loss	435	263	Decision	Unanimous	N/A	3	5:00
42243	11	UFC Fight Night 79 - Henderson vs. Masvidal	2015-11-28	Olympic Gymnastics Arena, Seoul, South Korea	Benson Henderson	Jorge Masvidal	win	loss	20548	7688	Decision	Split	Herb Dean	5	5:00
42243	10	UFC Fight Night 79 - Henderson vs. Masvidal	2015-11-28	Olympic Gymnastics Arena, Seoul, South Korea	Dong Hyun Kim	Dominic Waters	win	loss	16374	68971	TKO	Punches	Leon Roberts	1	3:11
47933	9	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Tarec Saffiedine	Jake Ellenberger	win	loss	21912	13068	Decision	Unanimous	Gasper Oliver	3	5:00
47933	8	UFC on Fox 18 - Johnson vs. Bader	2016-01-30	Prudential Center, Newark, New Jersey, United States	Carlos Diego Ferreira	Olivier Aubin-Mercier	win	loss	26358	86241	Decision	Unanimous	Vitor Ribeiro	3	5:00
32	7	UFC 22 - There Can Be Only One Champion	1999-09-24	Lake Charles Civic Center, Lake Charles, Louisiana, United States	Tim Lajcik	Ron Waterman	draw	draw	223	217	Draw	\N	John McCarthy	3	5:00
32	6	UFC 22 - There Can Be Only One Champion	1999-09-24	Lake Charles Civic Center, Lake Charles, Louisiana, United States	Jeremy Horn	Jason Godsey	win	loss	202	215	Submission	Armbar	John McCarthy	1	2:08
32	4	UFC 22 - There Can Be Only One Champion	1999-09-24	Lake Charles Civic Center, Lake Charles, Louisiana, United States	Chuck Liddell	Paul Jones	win	loss	192	224	TKO	Punches	John McCarthy	1	3:53
32	1	UFC 22 - There Can Be Only One Champion	1999-09-24	Lake Charles Civic Center, Lake Charles, Louisiana, United States	Jens Pulver	Alfonso Alcarez	draw	draw	228	229	Draw	\N	John McCarthy	2	5:00
36	7	UFC 26 - Ultimate Field of Dreams	2000-06-09	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Tyrone Roberts	David Dodd	win	loss	260	81	Decision	Unanimous	John McCarthy	3	5:00
36	6	UFC 26 - Ultimate Field of Dreams	2000-06-09	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Pat Miletich	John Alessio	win	loss	188	259	Submission	Armbar	John McCarthy	2	1:43
36	3	UFC 26 - Ultimate Field of Dreams	2000-06-09	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Jens Pulver	Joao Roque	win	loss	228	256	Decision	Unanimous	John McCarthy	3	5:00
36	1	UFC 26 - Ultimate Field of Dreams	2000-06-09	U.S. Cellular Center, Cedar Rapids, Iowa, United States	Shonie Carter	Adrian Serrano	win	loss	239	254	Decision	Unanimous	John McCarthy	2	5:00
37	8	UFC 27 - Ultimate Bad Boyz	2000-09-22	Lakefront Arena, New Orleans, Louisiana, United States	Pedro Rizzo	Dan Severn	win	loss	208	52	Submission	Punches	John McCarthy	1	1:33
37	7	UFC 27 - Ultimate Bad Boyz	2000-09-22	Lakefront Arena, New Orleans, Louisiana, United States	Maurice Smith	Bobby Hoffman	win	loss	175	265	Decision	Majority	John McCarthy	3	5:00
37	6	UFC 27 - Ultimate Bad Boyz	2000-09-22	Lakefront Arena, New Orleans, Louisiana, United States	Jeremy Horn	Eugene Jackson	win	loss	202	222	Submission	Armbar	John McCarthy	1	4:32
37	2	UFC 27 - Ultimate Bad Boyz	2000-09-22	Lakefront Arena, New Orleans, Louisiana, United States	Jeff Monson	Tim Lajcik	win	loss	262	223	Decision	Unanimous	John McCarthy	2	5:00
38	7	UFC 28 - High Stakes	2000-11-17	Trump Taj Mahal, Atlantic City, New Jersey, United States	Randy Couture	Kevin Randleman	win	loss	166	162	TKO	Strikes	John McCarthy	3	4:13
18901	2	UFC 142 - Aldo vs. Mendes	2012-01-14	HSBC Arena, Rio de Janeiro, Brazil, Brazil	Mike Pyle	Ricardo Funch	win	loss	4577	24057	TKO	Knee and Punches	Mario Yamasaki	1	1:22
20821	10	UFC 149 - Faber vs. Barao	2012-07-21	Scotiabank Saddledome, Calgary, Alberta, Canada	Tim Boetsch	Hector Lombard	win	loss	19544	11292	Decision	Split	Josh Rosenthal	3	5:00
34819	7	UFC - The Ultimate Fighter China Finale	2014-03-01	Cotai Arena, Macau, China, China	Lipeng Zhang	Sai Wang	win	loss	50416	47118	Decision	Split	Jerin Valel	3	5:00
6778	9	UFC 85 - Bedlam	2008-06-07	O2 Arena, London, England, England	Mike Swick	Marcus Davis	win	loss	5199	8592	Decision	Unanimous	Mario Yamasaki	3	5:00
429	2	UFC 32 - Showdown in the Meadowlands	2001-06-29	Continental Airlines Arena, East Ruthorford, New Jersey, United States	Ricco Rodriguez	Andrei Arlovski	win	loss	8	270	TKO	Punches	N/A	3	1:23
429	1	UFC 32 - Showdown in the Meadowlands	2001-06-29	Continental Airlines Arena, East Ruthorford, New Jersey, United States	Tony DeSouza	Paul Rodriguez	win	loss	487	1332	Submission	Guillotine Choke	N/A	1	1:05
430	8	UFC 33 - Victory in Vegas	2001-09-28	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Tito Ortiz	Vladimir Matyushenko	win	loss	158	435	Decision	Unanimous	N/A	5	5:00
430	7	UFC 33 - Victory in Vegas	2001-09-28	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jens Pulver	Dennis Hallman	win	loss	228	275	Decision	Unanimous	N/A	5	5:00
430	6	UFC 33 - Victory in Vegas	2001-09-28	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Chuck Liddell	Murilo Bustamante	win	loss	192	253	Decision	Unanimous	N/A	3	5:00
430	5	UFC 33 - Victory in Vegas	2001-09-28	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Matt Serra	Yves Edwards	win	loss	1305	344	Decision	Majority	N/A	3	5:00
430	4	UFC 33 - Victory in Vegas	2001-09-28	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Dave Menne	Gil Castillo	win	loss	245	553	Decision	Unanimous	N/A	5	5:00
430	3	UFC 33 - Victory in Vegas	2001-09-28	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Jutaro Nakao	Tony DeSouza	win	loss	438	487	KO	Punch	N/A	2	0:15
430	2	UFC 33 - Victory in Vegas	2001-09-28	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Ricardo Almeida	Eugene Jackson	win	loss	11	222	Submission	Triangle Choke	N/A	1	4:06
430	1	UFC 33 - Victory in Vegas	2001-09-28	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Din Thomas	Fabiano Iha	win	loss	1301	218	Decision	Unanimous	N/A	3	5:00
540	8	UFC 34 - High Voltage	2001-11-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Randy Couture	Pedro Rizzo	win	loss	166	208	TKO	Punches	N/A	3	1:38
540	7	UFC 34 - High Voltage	2001-11-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Ricco Rodriguez	Pete Williams	win	loss	8	201	TKO	Punches	N/A	2	4:02
540	6	UFC 34 - High Voltage	2001-11-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Matt Hughes	Carlos Newton	win	loss	232	7	KO	Slam	N/A	2	1:27
540	5	UFC 34 - High Voltage	2001-11-02	MGM Grand Garden Arena, Las Vegas, Nevada, United States	B.J. Penn	Caol Uno	win	loss	1307	283	KO	Punches	N/A	1	0:11
668	3	UFC 35 - Throwdown	2002-01-11	Mohegan Sun Arena, Uncasville, Conneticut, United States	Kevin Randleman	Renato Sobral	win	loss	162	274	Decision	Unanimous	N/A	3	5:00
2930	1	UFC 52 - Couture vs. Liddell 2	2005-04-16	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mike Van Arsdale	John Marsh	win	loss	198	9	Decision	Unanimous	N/A	3	5:00
3054	8	UFC 53 - Heavy Hitters	2005-06-04	Boardwalk Hall, Atlantic City, New Jersey, United States	Andrei Arlovski	Justin Eilers	win	loss	270	5936	TKO	Punches	N/A	1	4:10
3054	1	UFC 53 - Heavy Hitters	2005-06-04	Boardwalk Hall, Atlantic City, New Jersey, United States	Nick Diaz	Koji Oishi	win	loss	2831	249	KO	Punches	N/A	1	1:24
3375	5	UFC - The Ultimate Fighter 2 Finale	2005-11-05	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Joe Stevenson	Luke Cummo	win	loss	65	6428	Decision	Unanimous	N/A	3	5:00
3375	4	UFC - The Ultimate Fighter 2 Finale	2005-11-05	Hard Rock Hotel and Casino, Las Vegas, Nevada, United States	Kenny Florian	Kit Cope	win	loss	8021	67	Submission	Rear-Naked Choke	N/A	2	0:37
4993	6	UFC 71 - Liddell vs. Jackson	2007-05-26	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Houston Alexander	Keith Jardine	win	loss	2352	2638	TKO	Punches	Steve Mazzagatti	1	0:48
5417	1	UFC 76 - Knockout	2007-09-22	Honda Center, Anaheim, California, United States	Matt Wiman	Michihiro Omigawa	win	loss	12236	13005	Decision	Unanimous	Herb Dean	3	5:00
5482	9	UFC 77 - Hostile Territory	2007-10-20	U.S. Bank Arena, Cincinnati, Ohio, United States	Anderson Silva	Rich Franklin	win	loss	1356	392	TKO	Knees	John McCarthy	2	1:07
6552	12	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	Kenny Florian	Joe Lauzon	win	loss	8021	4923	TKO	Punches and Elbows	Herb Dean	2	3:28
6552	11	UFC Fight Night 13 - Florian vs. Lauzon	2008-04-02	Broomfield Event Center, Broomfield, Colorado, United States	Gray Maynard	Frankie Edgar	win	loss	15835	14204	Decision	Unanimous	Adam Martinez	3	5:00
8188	10	UFC 90 - Silva vs. Cote	2008-10-25	Allstate Arena, Rosemont, Illinois, United States	Anderson Silva	Patrick Cote	win	loss	1356	6612	TKO	Knee Injury	Herb Dean	3	0:39
8765	4	UFC - The Ultimate Fighter 8 Finale	2008-12-13	Palms Casino Resort, Las Vegas, Nevada, United States	Eliot Marshall	Jules Bruchez	win	loss	15104	41539	Submission	Rear-Naked Choke	Mario Yamasaki	1	1:27
9307	6	UFC Fight Night 17 - Lauzon vs. Stephens	2009-02-07	USF Sun Dome, Tampa, Florida, United States	Kurt Pellegrino	Robert Emerson	win	loss	4153	5286	Submission	Rear-Naked Choke	Jorge Ortiz	2	3:14
9568	10	UFC 100 - Lesnar vs. Mir 2	2009-07-11	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Brock Lesnar	Frank Mir	win	loss	17522	2329	TKO	Punches	Herb Dean	2	1:48
9568	9	UFC 100 - Lesnar vs. Mir 2	2009-07-11	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Georges St. Pierre	Thiago Alves	win	loss	3500	5998	Decision	Unanimous	Steve Mazzagatti	5	5:00
9568	8	UFC 100 - Lesnar vs. Mir 2	2009-07-11	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Dan Henderson	Michael Bisping	win	loss	195	10196	KO	Punch	Mario Yamasaki	2	3:20
10443	7	UFC Fight Night 19 - Diaz vs. Guillard	2009-09-16	Cox Convention Center, Oklahoma City, Oklahoma, United States	Nate Quarry	Tim Credeur	win	loss	2383	1804	Decision	Unanimous	Herb Dean	3	5:00
11052	6	UFC 105 - Couture vs. Vera	2009-11-14	Manchester Evening News Arena, Manchester, Lancashire, England	John Hathaway	Paul Taylor	win	loss	16704	6326	Decision	Unanimous	Kevin Mulhall	3	5:00
11118	2	UFC 107 - Penn vs. Sanchez	2009-12-12	FedEx Forum, Memphis, Tennessee, United States	DaMarques Johnson	Edgar Garcia	win	loss	12913	23108	Submission	Triangle Choke	Herb Dean	1	4:03
12447	11	UFC 115 - Liddell vs. Franklin	2010-06-12	GM Place, Vancouver, British Columbia, Canada	Rich Franklin	Chuck Liddell	win	loss	392	192	KO	Punch	Herb Dean	1	4:55
12447	10	UFC 115 - Liddell vs. Franklin	2010-06-12	GM Place, Vancouver, British Columbia, Canada	Mirko Filipovic	Pat Barry	win	loss	2326	33342	Submission	Rear-Naked Choke	Yves Lavigne	3	4:30
12447	9	UFC 115 - Liddell vs. Franklin	2010-06-12	GM Place, Vancouver, British Columbia, Canada	Martin Kampmann	Paulo Thiago	win	loss	5344	13336	Decision	Unanimous	Herb Dean	3	5:00
13294	7	UFC Live 2 - Jones vs. Matyushenko	2010-08-01	San Diego Sports Arena, San Diego, California, United States	Takanori Gomi	Tyson Griffin	win	loss	425	11689	KO	Punch	Jason Herzog	1	1:04
13294	6	UFC Live 2 - Jones vs. Matyushenko	2010-08-01	San Diego Sports Arena, San Diego, California, United States	Jacob Volkmann	Paul Kelly	win	loss	24765	14028	Decision	Unanimous	John McCarthy	3	5:00
14504	8	UFC 124 - St. Pierre vs. Koscheck 2	2010-12-11	Bell Centre, Montreal, Quebec, Canada	Mac Danzig	Joe Stevenson	win	loss	3396	65	KO	Punch	Dan Miragliotta	1	1:54
14530	8	UFC 125 - Resolution	2011-01-01	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Dong Hyun Kim	Nate Diaz	win	loss	16374	11451	Decision	Unanimous	Yves Lavigne	3	5:00
16712	6	UFC Fight Night 25 - Shields vs. Ellenberger	2011-09-17	Ernest N. Morial Convention Center, New Orleans, Louisiana, United States	Lance Benoist	Matt Riddle	win	loss	59764	34072	Decision	Unanimous	Dan Miragliotta	3	5:00
17043	10	UFC 135 - Jones vs. Rampage	2011-09-24	Pepsi Center, Denver, Colorado, United States	Jon Jones	Quinton Jackson	win	loss	27944	348	Submission	Rear-Naked Choke	Josh Rosenthal	4	1:14
17551	10	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Urijah Faber	Brian Bowles	win	loss	8847	18944	Submission	Guillotine Choke	Jason McCoy	2	1:27
17551	9	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Martin Kampmann	Rick Story	win	loss	5344	25989	Decision	Unanimous	Josh Rosenthal	3	5:00
17551	8	UFC 139 - Shogun vs. Henderson	2011-11-19	HP Pavillion, San Jose, California, United States	Stephan Bonnar	Kyle Kingsbury	win	loss	3014	16558	Decision	Unanimous	Dan Stell	3	5:00
18346	7	UFC 141 - Lesnar vs. Overeem	2011-12-30	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Alexander Gustafsson	Vladimir Matyushenko	win	loss	26162	435	TKO	Punches	Yves Lavigne	1	2:13
18945	4	UFC 143 - Diaz vs. Condit	2012-02-04	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Matt Brown	Chris Cope	win	loss	14310	25784	TKO	Punches	Kim Winslow	2	1:19
20031	12	UFC 145 - Jones vs. Evans	2012-04-21	Phillips Arena, Atlanta, Georgia, United States	Jon Jones	Rashad Evans	win	loss	27944	10200	Decision	Unanimous	Herb Dean	5	5:00
20039	8	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	Michael Johnson	Tony Ferguson	win	loss	68788	31239	Decision	Unanimous	Dan Miragliotta	3	5:00
20039	7	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	John Dodson	Tim Elliott	win	loss	11660	49213	Decision	Unanimous	Keith Peterson	3	5:00
20039	6	UFC on Fox 3 - Diaz vs. Miller	2012-05-05	Izod Center, East Rutherford, New Jersey, United States	John Hathaway	Pascal Krauss	win	loss	16704	43439	Decision	Unanimous	Kevin Mulhall	3	5:00
19325	7	UFC - The Ultimate Fighter 15 Finale	2012-06-01	Palms Casino Resort, Las Vegas, Nevada, United States	Max Holloway	Pat Schilling	win	loss	38671	54054	Decision	Unanimous	Chris Tognoni	3	5:00
22725	11	UFC on Fuel TV 5 - Struve vs. Miocic	2012-09-29	Capital FM Arena, Nottingham, England, England	Stefan Struve	Stipe Miocic	win	loss	15063	39537	TKO	Punches	Herb Dean	2	3:50
24707	2	UFC on FX 6 - Sotiropoulos vs. Pearson	2012-12-15	Gold Coast Convention Centre, Gold Coast, Queensland, Australia	Mike Wilkinson	Brendan Loughnane	win	loss	50586	44417	Decision	Unanimous	John Sharp	3	5:00
26459	2	UFC on Fuel TV 7 - Barao vs. McDonald	2013-02-16	Wembley Arena, London, England, England	Vaughan Lee	Motonobu Tezuka	win	loss	6946	19390	Decision	Unanimous	Leon Roberts	3	5:00
26213	3	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	T.J. Dillashaw	Hugo Viana	win	loss	62507	65456	TKO	Punches	John McCarthy	1	4:22
26213	2	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	Anthony Njokuani	Roger Bowling	win	loss	7540	23052	KO	Punch	Herb Dean	2	2:52
26213	1	UFC on Fox 7 - Henderson vs. Melendez	2013-04-20	HP Pavilion, San Jose, California, United States	Yoel Romero	Clifford Starks	win	loss	60762	56902	KO	Flying Knee and Punches	Mike Beltran	1	1:32
28051	4	UFC 160 - Velasquez vs. Bigfoot 2	2013-05-25	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Khabib Nurmagomedov	Abel Trujillo	win	loss	56035	17129	Decision	Unanimous	Mario Yamasaki	3	5:00
30213	5	UFC Fight Night 28 - Teixeira vs. Bader	2013-09-04	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Edimilson Souza	Felipe Arantes	win	loss	57343	31372	Decision	Split	Neil Hall	3	5:00
30213	3	UFC Fight Night 28 - Teixeira vs. Bader	2013-09-04	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Elias Silverio	Joao Zeferino	win	loss	88613	17577	Decision	Unanimous	Leon Roberts	3	5:00
30213	2	UFC Fight Night 28 - Teixeira vs. Bader	2013-09-04	Jornalista Felipe Drumond Stadium, Belo Horizonte, Minas Gerais, Brazil	Ivan Jorge	Keith Wisniewski	win	loss	5432	2095	Decision	Unanimous	Mario Yamasaki	3	5:00
30813	4	UFC 166 - Velasquez vs. dos Santos 3	2013-10-19	Toyota Center, Houston, Texas, United States	Adlan Amagov	T.J. Waldburger	win	loss	41523	15125	KO	Punches	Jay Stafin	1	3:00
32999	3	UFC Fight Night 34 - Saffiedine vs. Lim	2014-01-04	Marina Bay Sands, Marina Bay, Singapore, Singapore	Mairbek Taisumov	Tae Hyun Bang	win	loss	33161	23167	Decision	Unanimous	Leon Roberts	3	5:00
33383	6	UFC Fight Night 37 - Gustafsson vs. Manuwa	2014-03-08	O2 Arena, London, Greater London, England	Gunnar Nelson	Omari Akhmedov	win	loss	25246	83462	Submission	Guillotine Choke	Grant Waterman	1	4:36
33949	12	UFC 171 - Hendricks vs. Lawler	2014-03-15	American Airlines Arena, Dallas, Texas, United States	Tyron Woodley	Carlos Condit	win	loss	42605	6765	TKO	Leg Kick	Jacob Montalvo	2	2:00
35669	2	UFC Fight Night 39 - Nogueira vs. Nelson	2014-04-11	DU Arena, Abu Dhabi, United Arab Emirates, United Arab Emirates	Jim Alers	Alan Omer	win	loss	36581	23437	Decision	Split	Marc Goddard	3	5:00
34401	1	UFC 172 - Jones vs. Teixeira	2014-04-26	Baltimore Arena, Baltimore, Maryland, United States	Chris Beal	Patrick Williams	win	loss	53369	69607	KO	Flying Knee	Herb Dean	2	1:51
36085	13	UFC Fight Night 40 - Brown vs. Silva	2014-05-10	U.S. Bank Arena, Cincinnati, Ohio, United States	Matt Brown	Erick Silva	win	loss	14310	15009	TKO	Punches	Herb Dean	3	2:11
36427	10	UFC Fight Night 41 - Munoz vs. Mousasi	2014-05-31	O2 World, Berlin, Germany, Germany	Gegard Mousasi	Mark Munoz	win	loss	7466	22411	Submission	Rear-Naked Choke	Marc Goddard	1	3:57
35505	3	UFC 174 - Johnson vs. Bagautinov	2014-06-14	Rogers Arena, Vancouver, British Columbia, Canada	Tae Hyun Bang	Kajan Johnson	win	loss	23167	5615	KO	Punch	John McCarthy	3	2:01
36737	10	UFC - The Ultimate Fighter 19 Finale	2014-07-06	Mandalay Bay Events Center, Las Vegas, Nevada, United States	Corey Anderson	Matt Van Buren	win	loss	171723	64754	TKO	Punches	Mario Yamasaki	1	1:01
36425	10	UFC Fight Night 46 - McGregor vs. Brandao	2014-07-19	The O2, Dublin, Leinster, Ireland	Conor McGregor	Diego Brandao	win	loss	29688	25097	TKO	Punches	Leon Roberts	1	4:05
37741	1	UFC Fight Night 48 - Bisping vs. Le	2014-08-23	Cotai Arena, Macau, China, China	Milana Dudieva	Elizabeth Phillips	win	loss	43885	83021	Decision	Split	Thomas Fan	3	5:00
37745	6	UFC Fight Night 52 - Hunt vs. Nelson	2014-09-20	Saitama Super Arena, Saitama, Japan, Japan	Masanori Kanehara	Alex Caceres	win	loss	13767	41586	Decision	Unanimous	Leon Roberts	3	5:00
37747	5	UFC Fight Night 53 - Nelson vs. Story	2014-10-04	Ericsson Globe Arena, Stockholm, Sweden, Sweden	Dennis Siver	Charles Rosa	win	loss	9817	71116	Decision	Unanimous	Kristian Hacklou	3	5:00
40223	2	UFC Fight Night 56 - Shogun vs. St. Preux	2014-11-08	Tancredo Neves Municipal Gymnasium, Uberlandia, Minas Gerais, Brazil	Thomas Almeida	Tim Gorman	win	loss	87865	17717	Decision	Unanimous	Mario Yamasaki	3	5:00
40223	1	UFC Fight Night 56 - Shogun vs. St. Preux	2014-11-08	Tancredo Neves Municipal Gymnasium, Uberlandia, Minas Gerais, Brazil	Colby Covington	Wagner Silva Gomes	win	loss	57269	115911	Submission	Rear-Naked Choke	Keith Peterson	3	3:26
38841	9	UFC 182 - Jones vs. Cormier	2015-01-03	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Brad Tavares	Nate Marquardt	win	loss	33095	1712	Decision	Unanimous	Yves Lavigne	3	5:00
39291	5	UFC 183 - Silva vs. Diaz	2015-01-31	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Derek Brunson	Ed Herman	win	loss	68494	6561	TKO	Punches	Mark Smith	1	0:36
42199	2	UFC 187 - Johnson vs. Cormier	2015-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Islam Makhachev	Leo Kuntz	win	loss	76836	44602	Submission	Rear-Naked Choke	Jason Herzog	2	2:38
42199	1	UFC 187 - Johnson vs. Cormier	2015-05-23	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Justin Scoggins	Josh Sampo	win	loss	71120	66883	Decision	Unanimous	Mark Smith	3	5:00
42219	3	UFC on Fox 16 - Dillashaw vs. Barao 2	2015-07-25	United Center, Chicago, Illinois, United States	Andrew Holbrook	Ramsey Nijem	win	loss	78384	36963	Decision	Split	Yves Lavigne	3	5:00
42225	3	UFC Fight Night 74 - Holloway vs. Oliveira	2015-08-23	SaskTel Centre, Saskatoon, Saskatchewan, Canada	Chris Kelades	Chris Beal	win	loss	51576	53369	Decision	Split	Adam Cheadle	3	5:00
42235	1	UFC 192 - Cormier vs. Gustafsson	2015-10-03	Toyota Center, Houston, Texas, United States	Derrick Lewis	Viktor Pesta	win	loss	59284	74176	TKO	Punches	Kerry Hatley	3	1:15
42239	2	UFC 193 - Rousey vs. Holm	2015-11-14	Etihad Stadium, Melbourne, Victoria, Australia	James Moontasri	Anton Zafir	win	loss	36889	86294	TKO	Spinning Back Fist	Steve Perceval	1	4:36
47439	10	UFC - The Ultimate Fighter 22 Finale	2015-12-11	The Chelsea at the Cosmopolitan, Las Vegas, Nevada, United States	Frankie Edgar	Chad Mendes	win	loss	14204	38393	KO	Punch	John McCarthy	1	2:28
47929	12	UFC Fight Night 82 - Hendricks vs. Thompson	2016-02-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Stephen Thompson	Johny Hendricks	win	loss	59608	24539	TKO	Punches	John McCarthy	1	3:31
47929	11	UFC Fight Night 82 - Hendricks vs. Thompson	2016-02-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Roy Nelson	Jared Rosholt	win	loss	10249	76763	Decision	Unanimous	Herb Dean	3	5:00
47929	10	UFC Fight Night 82 - Hendricks vs. Thompson	2016-02-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Ovince St. Preux	Rafael Cavalcante	win	loss	38842	16161	Decision	Unanimous	Yves Lavigne	3	5:00
47929	9	UFC Fight Night 82 - Hendricks vs. Thompson	2016-02-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Joseph Benavidez	Zach Makovsky	win	loss	15008	20522	Decision	Unanimous	John McCarthy	3	5:00
47929	8	UFC Fight Night 82 - Hendricks vs. Thompson	2016-02-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Misha Cirkunov	Alex Nicholson	win	loss	59197	121077	Submission	Neck Crank	Herb Dean	2	1:28
47929	7	UFC Fight Night 82 - Hendricks vs. Thompson	2016-02-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Mike Pyle	Sean Spencer	win	loss	4577	60908	TKO	Elbows and Knees	Yves Lavigne	3	4:25
47929	6	UFC Fight Night 82 - Hendricks vs. Thompson	2016-02-06	MGM Grand Garden Arena, Las Vegas, Nevada, United States	Joshua Burkman	K.J. Noons	win	loss	10003	6727	Decision	Unanimous	John McCarthy	3	5:00
\.


--
-- Name: id_pkey; Type: CONSTRAINT; Schema: octagon; Owner: llua
--

ALTER TABLE ONLY fights
    ADD CONSTRAINT id_pkey PRIMARY KEY (event_id, match_id);


--
-- Name: pk_fighters; Type: CONSTRAINT; Schema: octagon; Owner: llua
--

ALTER TABLE ONLY fighters
    ADD CONSTRAINT pk_fighters PRIMARY KEY (fid);


--
-- Name: f1fid_fkey; Type: FK CONSTRAINT; Schema: octagon; Owner: llua
--

ALTER TABLE ONLY fights
    ADD CONSTRAINT f1fid_fkey FOREIGN KEY (f1fid) REFERENCES fighters(fid) ON DELETE CASCADE;


--
-- Name: f2fid_fkey; Type: FK CONSTRAINT; Schema: octagon; Owner: llua
--

ALTER TABLE ONLY fights
    ADD CONSTRAINT f2fid_fkey FOREIGN KEY (f2fid) REFERENCES fighters(fid) ON DELETE CASCADE;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

