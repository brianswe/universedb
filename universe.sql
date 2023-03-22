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
-- Name: dwarf_planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dwarf_planet (
    dwarf_planet_id integer NOT NULL,
    name character varying NOT NULL,
    diameter numeric,
    life boolean,
    description text
);


ALTER TABLE public.dwarf_planet OWNER TO freecodecamp;

--
-- Name: dwarf_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dwarf_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dwarf_planet_id_seq OWNER TO freecodecamp;

--
-- Name: dwarf_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dwarf_planet_id_seq OWNED BY public.dwarf_planet.dwarf_planet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    diameter integer NOT NULL,
    galaxy_types character varying,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    planet_of text NOT NULL,
    life boolean,
    diameter text,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    diameter integer NOT NULL,
    life boolean,
    description text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    diameter integer NOT NULL,
    description text,
    type_of_star text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: dwarf_planet dwarf_planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet ALTER COLUMN dwarf_planet_id SET DEFAULT nextval('public.dwarf_planet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: dwarf_planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dwarf_planet VALUES (1, 'pluto', 1500, false, NULL);
INSERT INTO public.dwarf_planet VALUES (2, 'eris', 1500, false, NULL);
INSERT INTO public.dwarf_planet VALUES (3, 'haumea', 1500, false, NULL);
INSERT INTO public.dwarf_planet VALUES (4, 'sedna', 1000, false, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 100000, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'LMC', 14000, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 220000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Cigar', 37000, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 170000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', 50000, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'ganymede', 'jupiter', NULL, '3275', NULL);
INSERT INTO public.moon VALUES (2, 'titan', 'saturn', NULL, '3200', NULL);
INSERT INTO public.moon VALUES (3, 'callisto', 'jupiter', NULL, '2995', NULL);
INSERT INTO public.moon VALUES (5, 'moon', 'earth', NULL, '2295', NULL);
INSERT INTO public.moon VALUES (6, 'europa', 'jupiter', NULL, '1940', NULL);
INSERT INTO public.moon VALUES (7, 'triton', 'neptune', NULL, '1682', NULL);
INSERT INTO public.moon VALUES (8, 'titania', 'uranus', NULL, '980', NULL);
INSERT INTO public.moon VALUES (9, 'rhea', 'saturn', NULL, '950', NULL);
INSERT INTO public.moon VALUES (10, 'oberon', 'uranus', NULL, '946', NULL);
INSERT INTO public.moon VALUES (11, 'metis', 'jupiter', NULL, '25', NULL);
INSERT INTO public.moon VALUES (12, 'adastea', 'jupiter', NULL, '16', NULL);
INSERT INTO public.moon VALUES (13, 'amalthea', 'jupiter', NULL, '106', NULL);
INSERT INTO public.moon VALUES (14, 'himalia', 'jupiter', NULL, '115', NULL);
INSERT INTO public.moon VALUES (15, 'mimas', 'saturn', NULL, '242', NULL);
INSERT INTO public.moon VALUES (16, 'enceladus', 'saturn', NULL, '311', NULL);
INSERT INTO public.moon VALUES (17, 'tethys', 'saturn', NULL, '659', NULL);
INSERT INTO public.moon VALUES (18, 'dione', 'saturn', NULL, '696', NULL);
INSERT INTO public.moon VALUES (19, 'hyperion', 'saturn', NULL, '159', NULL);
INSERT INTO public.moon VALUES (20, 'iapetus', 'saturn', NULL, '907', NULL);
INSERT INTO public.moon VALUES (4, 'io', 'jupiter', false, '2264', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1516, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', 3760, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'jupiter', 43441, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'saturn', 36184, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'uranus', 15759, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'neptune', 15299, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, '14 andromeda', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, '18 delphini b', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, '42 draconis', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, '51 pegasis b', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, '55 cancri b', 1, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'mars', 2106, false, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'earth', 3959, true, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'UY Scuti', 1708, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'V766 Centauri Aa', 1492, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'KY Cygni', 1420, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'AH Scorpi', 1411, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'W Cephi', 1329, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Westerlund', 1241, NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'BC Cygni', 1230, NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'IRC 10414', 1200, NULL, NULL, NULL);


--
-- Name: dwarf_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dwarf_planet_id_seq', 4, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 14, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: dwarf_planet dwarf_planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_name_key UNIQUE (name);


--
-- Name: dwarf_planet dwarf_planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dwarf_planet
    ADD CONSTRAINT dwarf_planet_pkey PRIMARY KEY (dwarf_planet_id);


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
-- Name: moon moon_diameter_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_diameter_key UNIQUE (diameter);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key1 UNIQUE (name);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

