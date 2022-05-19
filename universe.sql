--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: engine; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.engine (
    engine_id integer NOT NULL,
    name character varying(20) NOT NULL,
    try integer
);


ALTER TABLE public.engine OWNER TO freecodecamp;

--
-- Name: engine_engine_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.engine_engine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.engine_engine_id_seq OWNER TO freecodecamp;

--
-- Name: engine_engine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.engine_engine_id_seq OWNED BY public.engine.engine_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    colour character varying(20) NOT NULL,
    type character varying(20),
    cantidad integer,
    try integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    planet_id integer NOT NULL,
    cantidad integer,
    dimension integer,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    description text,
    form_spherical boolean,
    star_id integer NOT NULL,
    cantidad integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20),
    num_star integer,
    distance integer,
    distance_year_ligth numeric,
    form_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: engine engine_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.engine ALTER COLUMN engine_id SET DEFAULT nextval('public.engine_engine_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: engine; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.engine VALUES (1, '1', NULL);
INSERT INTO public.engine VALUES (2, '2', NULL);
INSERT INTO public.engine VALUES (3, '3', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'andromeda', 'pink', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'centaurus', 'black', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'lactea', 'white', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'phenix', 'yellow', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'sagitarius', 'light_blue', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'orion', 'light_green', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'gato', 'violet', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'key', 1, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'jum', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'xkau', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'cors', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'hax', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'room', 11, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'jax', 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'surv', 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'tank', 14, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'geo', 15, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'wow', 16, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'pum', 17, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'gbn', 13, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'rtbm', 12, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'uix', 11, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'stv', 5, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'tk', 4, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'rto', 3, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'wsa', 2, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'oim', 1, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'pluton', 'gray color, big', true, 1, NULL);
INSERT INTO public.planet VALUES (2, 'venus', 'gases anillos', false, 2, NULL);
INSERT INTO public.planet VALUES (3, 'marte', 'red third planet', true, 3, NULL);
INSERT INTO public.planet VALUES (4, 'tierra', 'heart and oxigen', false, 4, NULL);
INSERT INTO public.planet VALUES (5, 'mercurio', 'hot', true, 5, NULL);
INSERT INTO public.planet VALUES (11, 'beta', '3D', true, 2, NULL);
INSERT INTO public.planet VALUES (12, 'gama', 'ray x', false, 3, NULL);
INSERT INTO public.planet VALUES (13, 'neptune', 'good the goods', true, 4, NULL);
INSERT INTO public.planet VALUES (14, 'delta', 'rock frezz', false, 5, NULL);
INSERT INTO public.planet VALUES (15, 'neptuno', 'cool', true, 6, NULL);
INSERT INTO public.planet VALUES (16, 'one peace', 'comic', true, 1, NULL);
INSERT INTO public.planet VALUES (17, 'batle', 'boom', false, 6, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'gold', 2, 300, 45.9, true, 1);
INSERT INTO public.star VALUES (2, 'fer', 500, 700, 75.9, true, 2);
INSERT INTO public.star VALUES (3, 'hack', 98, 300, 45.8, false, 3);
INSERT INTO public.star VALUES (4, 'redhc', 800, 340, 55.9, false, 4);
INSERT INTO public.star VALUES (5, 'xxw', 356, 345, 435.4, true, 5);
INSERT INTO public.star VALUES (6, 'hip', 36, 450, 647.5, true, 6);
INSERT INTO public.star VALUES (8, 'chump', 569, 567, 678, true, 4);


--
-- Name: engine_engine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.engine_engine_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 28, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: engine engine_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.engine
    ADD CONSTRAINT engine_name_key UNIQUE (name);


--
-- Name: engine engine_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.engine
    ADD CONSTRAINT engine_pkey PRIMARY KEY (engine_id);


--
-- Name: galaxy galaxi_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxi_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

