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
    planet_count integer,
    age integer,
    nickname character varying(30) NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    is_real boolean
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
    is_real boolean,
    planet_id integer,
    age integer,
    nickname character varying(30) NOT NULL,
    name character varying(30) NOT NULL
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
    radius_in_km numeric(4,2),
    moon_count integer,
    star_id integer,
    age integer,
    nickname character varying(30) NOT NULL,
    name character varying(30) NOT NULL
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
    galaxy_id integer,
    age integer,
    nickname character varying(30) NOT NULL,
    name character varying(30) NOT NULL
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

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 4, 23, 'Unreal', 'Unrealistic', 'Not real', false);
INSERT INTO public.galaxy VALUES (2, 42, 42, 'Real', 'Realistic', 'Real', true);
INSERT INTO public.galaxy VALUES (3, 42, 42, 'RM', 'Real Madrid', 'Madrid', true);
INSERT INTO public.galaxy VALUES (4, 10, 10, 'FCB', 'Barcelona', 'Catalunya', true);
INSERT INTO public.galaxy VALUES (5, 23, 88, 'MANU', 'Manchester', 'United', false);
INSERT INTO public.galaxy VALUES (6, 23, 99, 'MANC', 'ManchesterCity', 'City', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, false, NULL, 2323, 'dwarf', 'Literally Moon');
INSERT INTO public.moon VALUES (3, false, NULL, 2323, 'dwarfy', 'Literally Moonish');
INSERT INTO public.moon VALUES (4, false, NULL, 4423, 'dwarfiest', 'Literally Morning');
INSERT INTO public.moon VALUES (5, true, NULL, 4433, 'latte', 'Literally Evening');
INSERT INTO public.moon VALUES (6, true, NULL, 4433, 'cappcucino', 'Evening');
INSERT INTO public.moon VALUES (7, true, NULL, 4433, 'New Years', 'Eve');
INSERT INTO public.moon VALUES (8, true, NULL, 4433, 'Morgen', 'German');
INSERT INTO public.moon VALUES (9, false, NULL, 5555, 'Evy', 'German');
INSERT INTO public.moon VALUES (10, false, NULL, 5555, 'Mogen', 'Dutch');
INSERT INTO public.moon VALUES (11, false, NULL, 5555, 'Belgian', 'Flemish');
INSERT INTO public.moon VALUES (12, false, NULL, 5555, 'Italian', 'Pizza');
INSERT INTO public.moon VALUES (13, false, NULL, 5555, 'Italianish', 'Pasta');
INSERT INTO public.moon VALUES (14, false, NULL, 7777, 'Italianishy', 'Tiramisu');
INSERT INTO public.moon VALUES (15, false, NULL, 0, 'Irish', 'Drinking');
INSERT INTO public.moon VALUES (16, false, NULL, 999, 'British', 'English');
INSERT INTO public.moon VALUES (17, false, NULL, 999, 'Britishy', 'Welsh');
INSERT INTO public.moon VALUES (18, false, NULL, 999, 'Britishiest', 'Scottish');
INSERT INTO public.moon VALUES (19, false, NULL, 999, 'Safari', 'African');
INSERT INTO public.moon VALUES (20, false, NULL, 999, 'Egypt', 'Sifenks');
INSERT INTO public.moon VALUES (22, false, NULL, 0, 'Australian', 'Kangaroo');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 44.00, 5, NULL, 66, 'Blue', 'Water');
INSERT INTO public.planet VALUES (2, 44.00, 5, NULL, 66, 'Walter', 'White');
INSERT INTO public.planet VALUES (3, 44.00, 5, NULL, 66, 'Red', 'Flame');
INSERT INTO public.planet VALUES (4, 44.00, 5, NULL, 66, 'Yellow', 'Sun');
INSERT INTO public.planet VALUES (5, 44.00, 5, NULL, 66, 'Black', 'Cloud');
INSERT INTO public.planet VALUES (6, 40.00, 50, NULL, 666, 'White', 'Cloudia');
INSERT INTO public.planet VALUES (7, 40.00, 50, NULL, 666, 'Roll', 'Rock');
INSERT INTO public.planet VALUES (8, 40.00, 50, NULL, 666, 'Pure', 'Logic');
INSERT INTO public.planet VALUES (9, 40.00, 50, NULL, 666, 'Lawyer', 'Trial');
INSERT INTO public.planet VALUES (10, 40.00, 50, NULL, 666, 'Alps', 'Hiking');
INSERT INTO public.planet VALUES (11, 40.00, 50, NULL, 666, 'Nepal', 'Mountain');
INSERT INTO public.planet VALUES (12, 40.00, 50, NULL, 666, 'Japan', 'Jungle');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, 22, 'Messi', 'Lionel');
INSERT INTO public.star VALUES (2, NULL, 77, 'Ronaldo', 'Cristiano');
INSERT INTO public.star VALUES (3, NULL, 11, 'R', 'Cristiano');
INSERT INTO public.star VALUES (4, NULL, 18, 'Rivaldo', 'Cristiano');
INSERT INTO public.star VALUES (5, NULL, 10, 'Rihanna', 'Cristiano');
INSERT INTO public.star VALUES (6, NULL, 123, 'Oliviera', 'Cristiano');


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_nickname_key UNIQUE (nickname);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_nickname_key UNIQUE (nickname);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_nickname_key UNIQUE (nickname);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_nickname_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_nickname_key UNIQUE (nickname);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

