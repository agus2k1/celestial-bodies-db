--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: black_holes; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_holes (
    size_in_km numeric(10,2) NOT NULL,
    black_holes_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.black_holes OWNER TO freecodecamp;

--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_holes_black_holes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_holes_black_holes_id_seq OWNER TO freecodecamp;

--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_holes_black_holes_id_seq OWNED BY public.black_holes.black_holes_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_in_millions_of_years integer,
    name character varying(255),
    amount_of_stars integer DEFAULT 0 NOT NULL,
    has_black_holes boolean
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
    name character varying(255),
    planet_id integer NOT NULL,
    is_satellite boolean,
    is_habitable boolean
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
    description text,
    has_life boolean,
    is_spherical boolean,
    name character varying(255),
    star_id integer NOT NULL
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
    distance_from_earth_in_km numeric(10,2),
    galaxy_id integer NOT NULL,
    name character varying(255),
    has_danger_of_collapse boolean
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
-- Name: black_holes black_holes_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes ALTER COLUMN black_holes_id SET DEFAULT nextval('public.black_holes_black_holes_id_seq'::regclass);


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
-- Data for Name: black_holes; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_holes VALUES (15.20, 1, 'Cygnus X-1');
INSERT INTO public.black_holes VALUES (50.75, 2, 'V404 Cygni');
INSERT INTO public.black_holes VALUES (120.30, 3, 'M87*');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 10000, 'Andromeda', 1000000, true);
INSERT INTO public.galaxy VALUES (2, 15000, 'Milky Way', 400000, true);
INSERT INTO public.galaxy VALUES (3, 5000, 'Triangulum', 200000, false);
INSERT INTO public.galaxy VALUES (4, 20000, 'Messier 87', 2000000, true);
INSERT INTO public.galaxy VALUES (5, 3000, 'Large Magellanic Cloud', 50000, false);
INSERT INTO public.galaxy VALUES (6, 12000, 'Whirlpool Galaxy', 500000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Phobos', 5, true, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 5, true, false);
INSERT INTO public.moon VALUES (4, 'Io', 6, true, false);
INSERT INTO public.moon VALUES (5, 'Europa', 6, true, true);
INSERT INTO public.moon VALUES (6, 'Ganymede', 6, true, false);
INSERT INTO public.moon VALUES (7, 'Callisto', 6, true, false);
INSERT INTO public.moon VALUES (8, 'Titan', 7, true, true);
INSERT INTO public.moon VALUES (9, 'Enceladus', 7, true, true);
INSERT INTO public.moon VALUES (10, 'Miranda', 8, true, false);
INSERT INTO public.moon VALUES (11, 'Ariel', 8, true, false);
INSERT INTO public.moon VALUES (12, 'Umbriel', 8, true, false);
INSERT INTO public.moon VALUES (13, 'Titania', 8, true, false);
INSERT INTO public.moon VALUES (14, 'Oberon', 8, true, false);
INSERT INTO public.moon VALUES (42, 'Luna Alpha', 82, true, true);
INSERT INTO public.moon VALUES (43, 'Luna Beta', 83, true, false);
INSERT INTO public.moon VALUES (44, 'Luna Gamma', 84, true, true);
INSERT INTO public.moon VALUES (45, 'Luna Delta', 85, true, false);
INSERT INTO public.moon VALUES (46, 'Luna Epsilon', 86, true, true);
INSERT INTO public.moon VALUES (47, 'Luna Zeta', 87, true, false);
INSERT INTO public.moon VALUES (48, 'Luna Eta', 88, true, true);
INSERT INTO public.moon VALUES (49, 'Luna Theta', 89, true, false);
INSERT INTO public.moon VALUES (50, 'Luna Iota', 90, true, true);
INSERT INTO public.moon VALUES (51, 'Luna Kappa', 91, true, false);
INSERT INTO public.moon VALUES (52, 'Luna Lambda', 92, true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (82, 'A small, rocky planet with a thin atmosphere and high temperatures.', false, true, 'Mercury II', 1);
INSERT INTO public.planet VALUES (83, 'A large rocky planet with extensive mountain ranges.', false, true, 'Vesta', 2);
INSERT INTO public.planet VALUES (3, 'A rocky planet with a thin atmosphere.', true, true, 'Earth', 1);
INSERT INTO public.planet VALUES (4, 'A gas giant with a thick atmosphere.', false, true, 'Jupiter', 2);
INSERT INTO public.planet VALUES (5, 'A rocky planet with extreme temperatures.', false, true, 'Mercury', 3);
INSERT INTO public.planet VALUES (6, 'An ice giant with a ring system.', false, true, 'Uranus', 4);
INSERT INTO public.planet VALUES (7, 'A terrestrial planet with evidence of water.', true, true, 'Mars', 5);
INSERT INTO public.planet VALUES (8, 'A gas giant with a prominent ring system.', false, true, 'Saturn', 6);
INSERT INTO public.planet VALUES (84, 'An ice planet with a dense ring system and multiple moons.', false, true, 'Eris', 3);
INSERT INTO public.planet VALUES (85, 'A gas giant with a deep blue color and large storm systems.', false, true, 'Neptune II', 4);
INSERT INTO public.planet VALUES (86, 'A rocky planet with a variety of surface terrains including deserts and oceans.', true, true, 'Oceania', 5);
INSERT INTO public.planet VALUES (87, 'A gas giant with a complex ring system and high radiation levels.', false, true, 'Jupiter II', 6);
INSERT INTO public.planet VALUES (88, 'A rocky planet with active volcanoes and a thick atmosphere.', false, true, 'Vulcan', 1);
INSERT INTO public.planet VALUES (89, 'An ice giant with minimal surface activity and a faint ring system.', false, true, 'Haumea', 2);
INSERT INTO public.planet VALUES (90, 'A small, rocky planet with a cold, icy surface and seasonal temperature changes.', false, true, 'Ceres II', 3);
INSERT INTO public.planet VALUES (91, 'A terrestrial planet with evidence of past water activity and active tectonics.', true, true, 'Artemis', 4);
INSERT INTO public.planet VALUES (92, 'A gas giant with a high gravity and numerous small moons.', false, true, 'Saturn II', 5);
INSERT INTO public.planet VALUES (93, 'A rocky planet with extreme weather patterns and high seismic activity.', false, true, 'Atlas', 6);
INSERT INTO public.planet VALUES (94, 'An ice planet with a dense atmosphere and frequent auroras.', false, true, 'Triton II', 1);
INSERT INTO public.planet VALUES (95, 'A terrestrial planet with large amounts of surface water and diverse ecosystems.', true, true, 'Hera', 2);
INSERT INTO public.planet VALUES (96, 'A gas giant with a unique magnetic field and prominent storm features.', false, true, 'Uranus II', 3);
INSERT INTO public.planet VALUES (97, 'A rocky planet with a rocky surface and irregular orbit.', false, true, 'Erebus', 4);
INSERT INTO public.planet VALUES (98, 'An ice giant with a sparse atmosphere and distant orbit.', false, true, 'Makemake', 5);
INSERT INTO public.planet VALUES (99, 'A terrestrial planet with a dense atmosphere and stable climate.', true, true, 'Vulcan II', 6);
INSERT INTO public.planet VALUES (100, 'A gas giant with multiple layers of clouds and high atmospheric pressure.', false, true, 'Neptune III', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 4200000.00, 2, 'Proxima Centauri', false);
INSERT INTO public.star VALUES (2, 5900000.00, 2, 'Alpha Centauri A', false);
INSERT INTO public.star VALUES (3, 7800000.00, 2, 'Alpha Centauri B', true);
INSERT INTO public.star VALUES (4, 10000000.00, 1, 'Sirius', true);
INSERT INTO public.star VALUES (5, 3000000.00, 1, 'Betelgeuse', true);
INSERT INTO public.star VALUES (6, 11000000.00, 1, 'Rigel', false);


--
-- Name: black_holes_black_holes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_holes_black_holes_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 52, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 100, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: black_holes black_holes_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_name_key UNIQUE (name);


--
-- Name: black_holes black_holes_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_holes
    ADD CONSTRAINT black_holes_pkey PRIMARY KEY (black_holes_id);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

