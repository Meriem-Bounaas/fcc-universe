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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    type_galaxy integer,
    distance_galaxy integer,
    surface_galaxy numeric(5,1),
    description_galaxy text,
    has__color_galaxy boolean
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
-- Name: lune; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lune (
    lune_id integer NOT NULL,
    name character varying(10) NOT NULL,
    has__color_lune boolean,
    type_lune integer,
    typdistance_lune integer,
    surface_lune numeric(5,1),
    description_lune text
);


ALTER TABLE public.lune OWNER TO freecodecamp;

--
-- Name: lune_lune_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lune_lune_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lune_lune_id_seq OWNER TO freecodecamp;

--
-- Name: lune_lune_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lune_lune_id_seq OWNED BY public.lune.lune_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    type_moon integer,
    distance_moon integer,
    surface_moon numeric(5,1),
    description_moon text,
    has__color_moon boolean,
    planet_id integer
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
    name character varying(20) NOT NULL,
    type_planet integer,
    distance_planet integer,
    surface_planet numeric(5,1),
    description_planet text,
    has__color_planet boolean,
    star_id integer
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
    name character varying(20) NOT NULL,
    type_star integer,
    distance_star integer,
    surface_star numeric(5,1),
    description_star text,
    has__color_star boolean,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: lune lune_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lune ALTER COLUMN lune_id SET DEFAULT nextval('public.lune_lune_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'my galaxy', 1, 1000, 1234.5, 'my galaxy is...', true);
INSERT INTO public.galaxy VALUES (2, 'mounir galaxy', 10, 152, 1548.6, 'mounir galaxy is:...', false);
INSERT INTO public.galaxy VALUES (3, 'meriem galaxy', 55, 500, 5899.4, 'mereiem galaxy is:...', true);
INSERT INTO public.galaxy VALUES (4, ' galaxy_a', 1, 1000, 1234.5, 'my galaxy is...', true);
INSERT INTO public.galaxy VALUES (5, 'galaxy_b', 10, 152, 1548.6, 'mounir galaxy is:...', false);
INSERT INTO public.galaxy VALUES (6, 'galaxy_c', 55, 500, 5899.4, 'mereiem galaxy is:...', true);


--
-- Data for Name: lune; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lune VALUES (1, 'my lune', true, 1, 1000, 1234.5, 'my lune is:...');
INSERT INTO public.lune VALUES (2, 'm lune', false, 10, 152, 1548.6, 'mounir lune is:...');
INSERT INTO public.lune VALUES (3, 'mer lune', true, 55, 500, 5899.4, 'mereiem lune is:...');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'my moon', 1, 1000, 1234.5, 'planetis...', true, NULL);
INSERT INTO public.moon VALUES (2, 'mounir planet', 10, 152, 1548.6, 'mounir planet is:...', false, NULL);
INSERT INTO public.moon VALUES (3, 'meriem planet', 55, 500, 5899.4, 'mereiem planet is:...', true, NULL);
INSERT INTO public.moon VALUES (4, 'my moon', 1, 1000, 1234.5, 'my moon is:...', true, NULL);
INSERT INTO public.moon VALUES (5, 'mounir moon', 10, 152, 1548.6, 'mounir moon is:...', false, NULL);
INSERT INTO public.moon VALUES (6, 'meriem moon', 55, 500, 5899.4, 'mereiem moon is:...', true, NULL);
INSERT INTO public.moon VALUES (7, 'moon_a', 1, 1000, 1234.5, 'my moon is:...', true, NULL);
INSERT INTO public.moon VALUES (8, 'moon_b', 10, 152, 1548.6, 'mounir moon is:...', false, NULL);
INSERT INTO public.moon VALUES (9, 'moon_c', 55, 500, 5899.4, 'mereiem moon is:...', true, NULL);
INSERT INTO public.moon VALUES (10, 'moon_d', 1, 1000, 1234.5, 'my moon is:...', true, NULL);
INSERT INTO public.moon VALUES (11, 'moon_d', 10, 152, 1548.6, 'mounir moon is:...', false, NULL);
INSERT INTO public.moon VALUES (12, 'moon_e', 55, 500, 5899.4, 'mereiem moon is:...', true, NULL);
INSERT INTO public.moon VALUES (13, 'moon_f', 1, 1000, 1234.5, 'my moon is:...', true, NULL);
INSERT INTO public.moon VALUES (14, 'moon_g', 10, 152, 1548.6, 'mounir moon is:...', false, NULL);
INSERT INTO public.moon VALUES (15, 'moon_h', 55, 500, 5899.4, 'mereiem moon is:...', true, NULL);
INSERT INTO public.moon VALUES (16, 'moon_j', 1, 1000, 1234.5, 'my moon is:...', true, NULL);
INSERT INTO public.moon VALUES (17, 'moon_k', 10, 152, 1548.6, 'mounir moon is:...', false, NULL);
INSERT INTO public.moon VALUES (18, 'moon_l', 55, 500, 5899.4, 'mereiem moon is:...', true, NULL);
INSERT INTO public.moon VALUES (19, 'moon_r', 1, 1000, 1234.5, 'my moon is:...', true, NULL);
INSERT INTO public.moon VALUES (20, 'moon_z', 10, 152, 1548.6, 'mounir moon is:...', false, NULL);
INSERT INTO public.moon VALUES (21, 'moon_w', 55, 500, 5899.4, 'mereiem moon is:...', true, NULL);
INSERT INTO public.moon VALUES (22, 'moon_r', 1, 1000, 1234.5, 'my moon is:...', true, NULL);
INSERT INTO public.moon VALUES (23, 'moon_z', 10, 152, 1548.6, 'mounir moon is:...', false, NULL);
INSERT INTO public.moon VALUES (24, 'moon_w', 55, 500, 5899.4, 'mereiem moon is:...', true, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'my planet', 1, 1000, 1234.5, 'planet is...', true, NULL);
INSERT INTO public.planet VALUES (2, 'mounir planet', 10, 152, 1548.6, 'mounir planet is:...', false, NULL);
INSERT INTO public.planet VALUES (3, 'meriem planet', 55, 500, 5899.4, 'mereiem planet is:...', true, NULL);
INSERT INTO public.planet VALUES (4, 'planet_a', 1, 1000, 1234.5, 'planet is...', true, NULL);
INSERT INTO public.planet VALUES (5, 'planet_b', 10, 152, 1548.6, 'mounir planet is:...', false, NULL);
INSERT INTO public.planet VALUES (6, 'planet_c', 55, 500, 5899.4, 'mereiem planet is:...', true, NULL);
INSERT INTO public.planet VALUES (7, 'planet_d', 1, 1000, 1234.5, 'planet is...', true, NULL);
INSERT INTO public.planet VALUES (8, 'planet_e', 10, 152, 1548.6, 'mounir planet is:...', false, NULL);
INSERT INTO public.planet VALUES (9, 'planet_f', 55, 500, 5899.4, 'mereiem planet is:...', true, NULL);
INSERT INTO public.planet VALUES (10, 'planet_g', 1, 1000, 1234.5, 'planet is...', true, NULL);
INSERT INTO public.planet VALUES (11, 'planet_h', 10, 152, 1548.6, 'mounir planet is:...', false, NULL);
INSERT INTO public.planet VALUES (12, 'planet_i', 55, 500, 5899.4, 'mereiem planet is:...', true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'my star', 1, 1000, 1234.5, 'my star is:...', true, NULL);
INSERT INTO public.star VALUES (2, 'mounir star', 10, 152, 1548.6, 'mounir star is:...', false, NULL);
INSERT INTO public.star VALUES (3, 'meriem star', 55, 500, 5899.4, 'mereiem star is:...', true, NULL);
INSERT INTO public.star VALUES (4, 'star_a', 1, 1000, 1234.5, 'my star is:...', true, NULL);
INSERT INTO public.star VALUES (5, 'star_b', 10, 152, 1548.6, 'mounir star is:...', false, NULL);
INSERT INTO public.star VALUES (6, 'star_c', 55, 500, 5899.4, 'mereiem star is:...', true, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: lune_lune_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lune_lune_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: lune lune_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lune
    ADD CONSTRAINT lune_name_key UNIQUE (name);


--
-- Name: lune lune_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lune
    ADD CONSTRAINT lune_pkey PRIMARY KEY (lune_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_ref_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_ref_planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_ref_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_ref_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_ref_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_ref_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_ref_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_ref_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

