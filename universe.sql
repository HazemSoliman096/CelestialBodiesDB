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
-- Name: color; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.color (
    color_id integer NOT NULL,
    name character varying NOT NULL,
    color_code numeric NOT NULL,
    description text,
    is_reachable boolean NOT NULL,
    is_bright boolean NOT NULL,
    rgb integer NOT NULL,
    hua integer NOT NULL
);


ALTER TABLE public.color OWNER TO freecodecamp;

--
-- Name: color_color_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.color ALTER COLUMN color_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.color_color_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    starts_number numeric NOT NULL,
    description text,
    is_reachable boolean NOT NULL,
    is_massive boolean NOT NULL,
    code integer NOT NULL,
    color_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    moons_number numeric NOT NULL,
    description text,
    is_reachable boolean NOT NULL,
    is_massive boolean NOT NULL,
    code integer NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    planets_number numeric NOT NULL,
    description text,
    is_reachable boolean NOT NULL,
    is_massive boolean NOT NULL,
    code integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    plants_number numeric NOT NULL,
    description text,
    is_reachable boolean NOT NULL,
    is_massive boolean NOT NULL,
    code integer NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: color; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.color OVERRIDING SYSTEM VALUE VALUES (7, 'grey', 12, 'f', false, false, 0, 0);
INSERT INTO public.color OVERRIDING SYSTEM VALUE VALUES (8, 'cyan', 22, 'd', true, false, 0, 0);
INSERT INTO public.color OVERRIDING SYSTEM VALUE VALUES (9, 'blue', 13, 's', false, true, 0, 0);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (13, 'f', 0, 'd', false, false, 1, 7);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (14, 'd', 0, 'f', false, false, 2, 7);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (15, 'd', 0, 'f', false, false, 3, 8);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (16, 'f', 0, 'd', false, false, 4, 8);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (17, 'g', 0, 'h', false, false, 5, 9);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (18, 'r', 0, 'e', false, false, 6, 9);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 'g', 0, 'f', false, false, 123, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 'f', 0, 'd', false, false, 230, 2);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 'd', 0, 'f', false, false, 244, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 'v', 0, 'c', false, false, 334, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 'x', 0, 'c', false, false, 555, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 'f', 0, 'd', false, false, 646, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 'e', 0, 'e', false, false, 777, 7);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 'w', 0, 'w', false, false, 865, 8);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 's', 0, 's', false, false, 943, 9);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 'g', 0, 'g', false, false, 1233, 10);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 't', 0, 'f', false, false, 2321, 11);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 'r', 0, 'r', false, false, 5531, 12);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 'e', 0, 'r', false, false, 3478, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 'w', 0, 'r', false, false, 5599, 2);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 'i', 0, 'o', false, false, 7687, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 'i', 0, 'i', false, false, 2254, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 'y', 0, 'u', false, false, 2255, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 't', 0, 'r', false, false, 5556, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 't', 0, 'r', false, false, 5443, 7);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 'k', 0, 'j', false, false, 927, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 'e', 0, 'r', false, false, 7, 7);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 'w', 0, 'r', false, false, 8, 8);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 'd', 0, 'f', false, false, 9, 9);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 'a', 0, 'f', false, false, 11, 10);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 's', 0, 'f', false, false, 23, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 'a', 0, 'd', false, false, 22, 12);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 'd', 0, 'f', false, false, 44, 7);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 'e', 0, 'r', false, false, 50, 8);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 'e', 0, 'e', false, false, 40, 9);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 's', 0, 'd', false, false, 1, 10);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 'a', 0, 'x', false, false, 2, 11);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 'z', 0, 'x', false, false, 3, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (7, 'w', 0, 'e', false, false, 1, 13);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (8, 's', 0, 'd', false, false, 2, 13);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (9, 'f', 0, 'g', false, false, 3, 14);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (10, 'd', 0, 'f', false, false, 4, 14);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (11, 'c', 0, 'g', false, false, 5, 15);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (12, 'h', 0, 'h', false, false, 6, 15);


--
-- Name: color_color_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.color_color_id_seq', 9, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 18, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


--
-- Name: color color_color_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_color_code_key UNIQUE (color_code);


--
-- Name: color color_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.color
    ADD CONSTRAINT color_pkey PRIMARY KEY (color_id);


--
-- Name: galaxy galaxy_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_code_key UNIQUE (code);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_code_key UNIQUE (code);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_code_key UNIQUE (code);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_code_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_code_key UNIQUE (code);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_color_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_color_id_fkey FOREIGN KEY (color_id) REFERENCES public.color(color_id);


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

