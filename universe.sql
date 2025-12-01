--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(100) NOT NULL,
    description text,
    age integer,
    size numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    is_spherical boolean,
    planet_id integer,
    size numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    is_spherical boolean,
    star_id integer,
    size numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: satellit; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellit (
    name character varying(100) NOT NULL,
    satellit_id integer NOT NULL,
    planet_id integer,
    size numeric,
    description text
);


ALTER TABLE public.satellit OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    age integer,
    size numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda (M31)', 'A giant spiral galaxy and the closest large galaxy to the Milky Way', 10, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 'The Milky Way is a barred spiral galaxy that contains our Solar System. It has a central bar-shaped core made of stars, surrounded by four major spiral arms filled with gas, dust, and star-forming regions', 13, NULL);
INSERT INTO public.galaxy VALUES (3, 'Triangulum Galaxy', 'A spiral galaxy in the Local Group, smaller than Andromeda, with active star formation in its arms.', 12, NULL);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'A giant elliptical galaxy in the Virgo Cluster, known for its supermassive black hole and large population of globular clusters.', 13, NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool Galaxy', 'A classic spiral galaxy interacting with a smaller companion galaxy, famous for its well-defined spiral arms.', 12, NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero Galaxy', 'A spiral galaxy with a bright nucleus and a prominent dust lane, appearing like a sombrero hat from Earth.', 13, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 3, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', false, 4, 22.2);
INSERT INTO public.moon VALUES (3, 'Deimos', false, 4, 12.4);
INSERT INTO public.moon VALUES (4, 'Io', true, 5, 3643.2);
INSERT INTO public.moon VALUES (5, 'Europa', true, 5, 3121.6);
INSERT INTO public.moon VALUES (6, 'Ganymede', true, 5, 5268.2);
INSERT INTO public.moon VALUES (7, 'Callisto', true, 5, 4820.6);
INSERT INTO public.moon VALUES (8, 'Mimas', true, 6, 396.4);
INSERT INTO public.moon VALUES (9, 'Enceladus', true, 6, 504.2);
INSERT INTO public.moon VALUES (10, 'Tethys', true, 6, 1062.0);
INSERT INTO public.moon VALUES (11, 'Dione', true, 6, 1123.0);
INSERT INTO public.moon VALUES (12, 'Rhea', true, 6, 1528.0);
INSERT INTO public.moon VALUES (13, 'Titan', true, 6, 5150.0);
INSERT INTO public.moon VALUES (14, 'Iapetus', true, 6, 1469.0);
INSERT INTO public.moon VALUES (15, 'Miranda', true, 7, 471.6);
INSERT INTO public.moon VALUES (16, 'Ariel', true, 7, 1158.8);
INSERT INTO public.moon VALUES (17, 'Umbriel', true, 7, 1169.4);
INSERT INTO public.moon VALUES (18, 'Titania', true, 7, 1577.8);
INSERT INTO public.moon VALUES (19, 'Oberon', true, 7, 1522.8);
INSERT INTO public.moon VALUES (20, 'Triton', true, 8, 2706.8);
INSERT INTO public.moon VALUES (21, 'Nereid', false, 8, 340);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', true, 2, NULL);
INSERT INTO public.planet VALUES (2, 'Venus', true, 2, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', true, 2, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', true, 2, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', true, 2, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', true, 2, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', true, 2, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', true, 2, NULL);
INSERT INTO public.planet VALUES (9, 'Triangulum Prime b', true, 3, 1.2);
INSERT INTO public.planet VALUES (10, 'Triangulum Prime c', true, 3, 0.9);
INSERT INTO public.planet VALUES (11, 'M87 Corestar Alpha', true, 4, 15.0);
INSERT INTO public.planet VALUES (12, 'Whirlpool Nova I', true, 5, 2.5);
INSERT INTO public.planet VALUES (13, 'Sombrero Lumina X', true, 6, 3.1);


--
-- Data for Name: satellit; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellit VALUES ('Hubble Space Telescope', 1, 3, NULL, NULL);
INSERT INTO public.satellit VALUES ('International Space Station', 2, 3, NULL, NULL);
INSERT INTO public.satellit VALUES ('GPS IIF-10', 3, 3, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'A-31 Seraphis', 6, 2, 1);
INSERT INTO public.star VALUES (2, 'Sun', 4, 2, 2);
INSERT INTO public.star VALUES (3, 'Triangulum Prime', 5, 1.8, 3);
INSERT INTO public.star VALUES (4, 'M87 Corestar', 12, 10.5, 4);
INSERT INTO public.star VALUES (5, 'Whirlpool Nova', 8, 2.3, 5);
INSERT INTO public.star VALUES (6, 'Sombrero Lumina', 9, 3.0, 6);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: satellit satellit_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellit
    ADD CONSTRAINT satellit_pkey PRIMARY KEY (satellit_id);


--
-- Name: satellit satellit_satellit_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellit
    ADD CONSTRAINT satellit_satellit_id_key UNIQUE (satellit_id);


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
-- Name: satellit satellit_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellit
    ADD CONSTRAINT satellit_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

