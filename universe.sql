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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    black_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    black_hole_age_millions_years integer NOT NULL
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: back_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.back_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.back_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: back_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.back_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_age_millions_years integer NOT NULL,
    galaxy_radius_light_years integer,
    galaxy_description text,
    galaxy_speed_rotation_km_per_s numeric(7,3),
    galaxy_has_life boolean,
    galaxy_is_spherical boolean
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
    name character varying(30) NOT NULL,
    moon_age_millions_years integer NOT NULL,
    moon_radius_km integer,
    moon_description text,
    moon_speed_rotation_km_per_s numeric(7,3),
    moon_has_life boolean,
    moon_is_spherical boolean,
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
    name character varying(30) NOT NULL,
    planet_age_millions_years integer NOT NULL,
    planet_radius_km integer,
    planet_description text,
    planet_speed_rotation_km_per_s numeric(7,3),
    planet_has_life boolean,
    planet_is_spherical boolean,
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
    name character varying(30) NOT NULL,
    star_age_millions_years integer NOT NULL,
    star_radius_km integer,
    star_description text,
    star_speed_rotation_km_per_s numeric(7,3),
    star_has_life boolean,
    star_is_spherical boolean,
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.back_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES (1, 'Sagittarius A', 486);
INSERT INTO public.black_hole VALUES (2, 'Messier 32', 6800);
INSERT INTO public.black_hole VALUES (3, 'Cygnus X-1', 6);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Voie lactée', 13610, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Galaxie naine du Sagittaire', 10000, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Grandd Nuage de Magellan', 10101, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Andromède', 10010, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', 13270, NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Petite Ours', 1500, NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lune1', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (2, 'Lune3', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (3, 'Lune2', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (4, 'Lune4', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (5, 'Lune5', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (6, 'Lune6', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Lune7', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (8, 'Lune8', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (9, 'Lune9', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (10, 'Lune10', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (11, 'Lune11', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (12, 'Lune21', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'Lune12', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (14, 'Lune13', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (15, 'Lune14', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (16, 'Lune15', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (17, 'Lune16', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (18, 'Lune17', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'Lune18', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (20, 'Lune19', 4530, NULL, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (21, 'Lune20', 4530, NULL, NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercure', 4503, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 4503, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Terre', 4543, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Mars', 4603, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Jupiter', 4603, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Uranus', 4503, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Saturne', 4503, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (11, 'Neptune', 4503, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'kepler-f', 0, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (13, 'kepler-d', 0, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (14, 'kepler-e', 0, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (15, 'kepler-b', 0, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (16, 'kepler-c', 0, NULL, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (17, 'kepler-g', 0, NULL, NULL, NULL, NULL, NULL, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Soleil', 4603, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 250, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Arcturus', 7105, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Rigel', 8005, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Bételgeuse', 10010, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Altaïr', 1201, NULL, NULL, NULL, NULL, NULL, 1);
INSERT INTO public.star VALUES (7, 'kepler-80', 0, NULL, NULL, NULL, NULL, NULL, 1);


--
-- Name: back_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.back_hole_black_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 39, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: black_hole back_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT back_hole_name_key UNIQUE (name);


--
-- Name: black_hole back_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT back_hole_pkey PRIMARY KEY (black_hole_id);


--
-- Name: galaxy galaxy_name_galaxy_age_millions_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_galaxy_age_millions_years_key UNIQUE (name, galaxy_age_millions_years);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_moon_age_millions_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_moon_age_millions_years_key UNIQUE (name, moon_age_millions_years);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_planet_age_millions_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_planet_age_millions_years_key UNIQUE (name, planet_age_millions_years);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_star_age_millions_years_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_star_age_millions_years_key UNIQUE (name, star_age_millions_years);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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
-- Name: star star_galaxy_fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

