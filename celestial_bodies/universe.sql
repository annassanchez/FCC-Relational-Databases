--
-- PostgreSQL database dump
--

-- Dumped from database version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.15 (Ubuntu 12.15-0ubuntu0.20.04.1)

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
-- Name: constellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.constellation (
    constellation_id integer NOT NULL,
    name character varying NOT NULL,
    year integer
);


ALTER TABLE public.constellation OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.constellation_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.constellation_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.constellation_constellation_id_seq OWNED BY public.constellation.constellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    constellation_id integer NOT NULL,
    visible_naked_eye boolean,
    dnomination character varying(50)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_constellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_constellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_constellation_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_constellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_constellation_id_seq OWNED BY public.galaxy.constellation_id;


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
    name character varying NOT NULL,
    planet_id integer,
    mean_diameter_km character varying,
    year_discovered integer
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
    name character varying NOT NULL,
    planet_type text,
    rings boolean,
    orbital_period_in_years numeric
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
    name character varying NOT NULL,
    galaxy_id integer,
    distance_light_years numeric,
    designation character varying(30)
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
-- Name: constellation constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation ALTER COLUMN constellation_id SET DEFAULT nextval('public.constellation_constellation_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy constellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN constellation_id SET DEFAULT nextval('public.galaxy_constellation_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: constellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.constellation VALUES (1, 'Milky Way', 1610);
INSERT INTO public.constellation VALUES (2, 'Andromeda', NULL);
INSERT INTO public.constellation VALUES (3, 'Antlia', 1763);
INSERT INTO public.constellation VALUES (4, 'Apus', 1603);
INSERT INTO public.constellation VALUES (5, 'Aquarius', NULL);
INSERT INTO public.constellation VALUES (6, 'Aquila', NULL);
INSERT INTO public.constellation VALUES (7, 'Ara', NULL);
INSERT INTO public.constellation VALUES (8, 'Aries', NULL);
INSERT INTO public.constellation VALUES (9, 'Auriga', NULL);
INSERT INTO public.constellation VALUES (10, 'Boötes', NULL);
INSERT INTO public.constellation VALUES (11, 'Caelum', 1763);
INSERT INTO public.constellation VALUES (12, 'Camelopardalis', 1613);
INSERT INTO public.constellation VALUES (13, 'Cancer', NULL);
INSERT INTO public.constellation VALUES (14, 'Canes Venatici', 1690);
INSERT INTO public.constellation VALUES (15, 'Canis Major', NULL);
INSERT INTO public.constellation VALUES (16, 'Canis Minor', NULL);
INSERT INTO public.constellation VALUES (17, 'Capricornus', NULL);
INSERT INTO public.constellation VALUES (18, 'Carina', 1763);
INSERT INTO public.constellation VALUES (19, 'Cassiopeia', NULL);
INSERT INTO public.constellation VALUES (20, 'Centaurus', NULL);
INSERT INTO public.constellation VALUES (21, 'Cepheus', NULL);
INSERT INTO public.constellation VALUES (22, 'Cetus', NULL);
INSERT INTO public.constellation VALUES (23, 'Chamaeleon', 1603);
INSERT INTO public.constellation VALUES (24, 'Circinius', 1763);
INSERT INTO public.constellation VALUES (25, 'Columba', 1592);
INSERT INTO public.constellation VALUES (26, 'Coma Berenices', 1536);
INSERT INTO public.constellation VALUES (27, 'Corona Australis', NULL);
INSERT INTO public.constellation VALUES (28, 'Corona Borealis', NULL);
INSERT INTO public.constellation VALUES (29, 'Corvus', NULL);
INSERT INTO public.constellation VALUES (30, 'Crater', NULL);
INSERT INTO public.constellation VALUES (31, 'Crux', 1603);
INSERT INTO public.constellation VALUES (32, 'Cygnus', NULL);
INSERT INTO public.constellation VALUES (33, 'Delphinus', NULL);
INSERT INTO public.constellation VALUES (34, 'Dorado', 1603);
INSERT INTO public.constellation VALUES (35, 'Draco', NULL);
INSERT INTO public.constellation VALUES (36, 'Equuleus', NULL);
INSERT INTO public.constellation VALUES (37, 'Eridanus', NULL);
INSERT INTO public.constellation VALUES (38, 'Fornax', 1763);
INSERT INTO public.constellation VALUES (39, 'Gemini', NULL);
INSERT INTO public.constellation VALUES (40, 'Grus', 1603);
INSERT INTO public.constellation VALUES (41, 'Hercules', NULL);
INSERT INTO public.constellation VALUES (42, 'Horologium', 1763);
INSERT INTO public.constellation VALUES (43, 'Hydra', NULL);
INSERT INTO public.constellation VALUES (44, 'Hydrus', 1603);
INSERT INTO public.constellation VALUES (45, 'Indus', 1603);
INSERT INTO public.constellation VALUES (46, 'Lacertae', 1690);
INSERT INTO public.constellation VALUES (47, 'Leo', NULL);
INSERT INTO public.constellation VALUES (48, 'Leo Minor', 1690);
INSERT INTO public.constellation VALUES (49, 'Lepus', NULL);
INSERT INTO public.constellation VALUES (50, 'Libra', NULL);
INSERT INTO public.constellation VALUES (51, 'Lupus', NULL);
INSERT INTO public.constellation VALUES (52, 'Lynx', 1690);
INSERT INTO public.constellation VALUES (53, 'Lyra', NULL);
INSERT INTO public.constellation VALUES (54, 'Mensa', 1763);
INSERT INTO public.constellation VALUES (55, 'Microscopium', 1763);
INSERT INTO public.constellation VALUES (56, 'Monoceros', 1613);
INSERT INTO public.constellation VALUES (57, 'Musca', 1603);
INSERT INTO public.constellation VALUES (58, 'Norma', 1763);
INSERT INTO public.constellation VALUES (59, 'Octans', 1763);
INSERT INTO public.constellation VALUES (60, 'Ophiucus', NULL);
INSERT INTO public.constellation VALUES (61, 'Orion', NULL);
INSERT INTO public.constellation VALUES (62, 'Pavo', 1603);
INSERT INTO public.constellation VALUES (63, 'Pegasus', NULL);
INSERT INTO public.constellation VALUES (64, 'Perseus', NULL);
INSERT INTO public.constellation VALUES (65, 'Phoenix', 1603);
INSERT INTO public.constellation VALUES (66, 'Pictor', 1763);
INSERT INTO public.constellation VALUES (67, 'Pisces', NULL);
INSERT INTO public.constellation VALUES (68, 'Piscis Austrinus', NULL);
INSERT INTO public.constellation VALUES (69, 'Puppis', 1763);
INSERT INTO public.constellation VALUES (70, 'Pyxis', 1763);
INSERT INTO public.constellation VALUES (71, 'Reticulum', 1763);
INSERT INTO public.constellation VALUES (72, 'Sagitta', NULL);
INSERT INTO public.constellation VALUES (73, 'Sagittarius', NULL);
INSERT INTO public.constellation VALUES (74, 'Scorpius', NULL);
INSERT INTO public.constellation VALUES (75, 'Scutum', 1763);
INSERT INTO public.constellation VALUES (76, 'Serpens', NULL);
INSERT INTO public.constellation VALUES (77, 'Sextans', 1690);
INSERT INTO public.constellation VALUES (78, 'Taurus', NULL);
INSERT INTO public.constellation VALUES (79, 'Telescopium', 1763);
INSERT INTO public.constellation VALUES (80, 'Triangulum', NULL);
INSERT INTO public.constellation VALUES (81, 'Triangulum Australe', 1603);
INSERT INTO public.constellation VALUES (82, 'Tucana', 1603);
INSERT INTO public.constellation VALUES (83, 'Ursa Major', NULL);
INSERT INTO public.constellation VALUES (84, 'Ursa Minor', NULL);
INSERT INTO public.constellation VALUES (85, 'Vela', 1763);
INSERT INTO public.constellation VALUES (86, 'Virgo', NULL);
INSERT INTO public.constellation VALUES (87, 'Volans', 1603);
INSERT INTO public.constellation VALUES (88, 'Vulpecula', 1690);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (10, 'Circinius', 24, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'Cosmos Redshift 7', 77, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'Hoags Galaxy', 76, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Butterfly Galaxies', 86, false, NULL);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2, NULL, 'M31, NGC 224, UGC 454, PGC 2557');
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxy', 29, NULL, 'NGC 4038 & 4039, PGC 37967 & 37969');
INSERT INTO public.galaxy VALUES (4, 'Backward Galaxy', 20, false, 'NGC 4622, PGC 42701');
INSERT INTO public.galaxy VALUES (5, 'Blackeye Galaxy', 26, false, 'Evil Eye Galaxy, M64, NGC 4826, PGC 44182');
INSERT INTO public.galaxy VALUES (6, 'Bodes Galaxy', 83, NULL, 'M81, NGC 3031, UGC 5318, PGC 28630');
INSERT INTO public.galaxy VALUES (8, 'Centaurus A', 20, true, 'NGC 5128, Arp 153, PGC 46957');
INSERT INTO public.galaxy VALUES (9, 'Cigar Galaxy', 83, NULL, 'M82, NGC 3034, UGC 5322, PGC 28655');
INSERT INTO public.galaxy VALUES (11, 'Coma Pinwheel Galaxy', 26, false, 'NGC 4254, PGC 39578');
INSERT INTO public.galaxy VALUES (13, 'Eye of Sauron', 14, NULL, 'NGC 4151, UGC 7166, PGC 38739');
INSERT INTO public.galaxy VALUES (14, 'Fireworks Galaxy', 32, NULL, 'NGC 6946, UGC 11597, PGC 65001');
INSERT INTO public.galaxy VALUES (15, 'Hockey stick galaxy', 14, NULL, 'UGC 7907, PGC 42863');
INSERT INTO public.galaxy VALUES (17, 'Large Magellanic Cloud', 34, NULL, 'ESO 56- G 115, PGC 17223');
INSERT INTO public.galaxy VALUES (18, 'Lindsay-Shapley Ring', 87, NULL, 'PGC 19481, AM 0644-741, ESO 34-11');
INSERT INTO public.galaxy VALUES (20, 'Malin 1', 26, false, 'PGC 42102, LEDA 42102, VPC 1091');
INSERT INTO public.galaxy VALUES (21, 'Medusa Merger', 83, NULL, 'NGC 4194, UGC 7241, PGC 39068');
INSERT INTO public.galaxy VALUES (22, 'Mice Galaxies', 26, false, 'NGC 4676, UGC 7938 / 7939, PGC 43062 / 43065');
INSERT INTO public.galaxy VALUES (23, 'Small Magellanic Cloud', 82, NULL, 'NGC 292, PGC 3085');
INSERT INTO public.galaxy VALUES (24, 'Mayalls Object', 83, NULL, 'APG 148, VV 032');
INSERT INTO public.galaxy VALUES (25, 'Needle Galaxy', 26, false, 'NGC 4565, UGC 7772, PGC 42038');
INSERT INTO public.galaxy VALUES (27, 'Pinwheel Galaxy', 83, NULL, 'M101, NGC 5457, UGC 8981, PGC 50063');
INSERT INTO public.galaxy VALUES (29, 'Southern Pinwheel Galaxy', 43, NULL, 'M83, NGC 5236, PGC 48082');
INSERT INTO public.galaxy VALUES (28, 'Sombrero Galaxy', 86, false, 'M104, NGC 4594, UGC 293, PGC 42407');
INSERT INTO public.galaxy VALUES (19, 'Little Sombrero Galaxy', 63, false, 'NGC 7814, UGC 8, PGC 218');
INSERT INTO public.galaxy VALUES (26, 'Wolf-Lundmark-Melotte', 22, false, 'UGCA 444, PGC 143');
INSERT INTO public.galaxy VALUES (30, 'Sunflower Galaxy', 14, NULL, 'M63, NGC 5055, PGC 46153, UGC 8334');
INSERT INTO public.galaxy VALUES (31, 'Tadpole Galaxy', 35, NULL, 'UGC 10214, Arp 188, PGC 57129');
INSERT INTO public.galaxy VALUES (32, 'Triangulum Galaxy', 80, NULL, 'NGC 0598, UGC 1117, PGC 5818');
INSERT INTO public.galaxy VALUES (33, 'Whirlpool Galaxy', 14, NULL, 'M51a, NGC 5194, UGC 8493, PGC 47404');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (10, 'Elara', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, ' Pasiphae', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Sinope', 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Lysithea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Carme', 5, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Ananke', 5, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Leda', 5, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Adrastea', 5, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Metis', 5, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Callirrhoe', 5, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Themisto', 5, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Megaclite', 5, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Taygete', 5, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Chaldene', 5, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Harpalyke', 5, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'Kalyke', 5, NULL, NULL);
INSERT INTO public.moon VALUES (27, 'Iocaste', 5, NULL, NULL);
INSERT INTO public.moon VALUES (28, 'Erinome', 5, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'Isonoe', 5, NULL, NULL);
INSERT INTO public.moon VALUES (30, 'Praxidike', 5, NULL, NULL);
INSERT INTO public.moon VALUES (31, 'Autonoe', 5, NULL, NULL);
INSERT INTO public.moon VALUES (32, 'Thyone', 5, NULL, NULL);
INSERT INTO public.moon VALUES (33, 'Hermippe', 5, NULL, NULL);
INSERT INTO public.moon VALUES (34, 'Aitne', 5, NULL, NULL);
INSERT INTO public.moon VALUES (35, 'Eurydome', 5, NULL, NULL);
INSERT INTO public.moon VALUES (36, 'Euanthe', 5, NULL, NULL);
INSERT INTO public.moon VALUES (37, 'Euporie', 5, NULL, NULL);
INSERT INTO public.moon VALUES (38, 'Orthosie', 5, NULL, NULL);
INSERT INTO public.moon VALUES (39, 'Sponde', 5, NULL, NULL);
INSERT INTO public.moon VALUES (40, 'Kale', 5, NULL, NULL);
INSERT INTO public.moon VALUES (41, 'Pasithee', 5, NULL, NULL);
INSERT INTO public.moon VALUES (42, 'Hegemone', 5, NULL, NULL);
INSERT INTO public.moon VALUES (43, 'Mneme', 5, NULL, NULL);
INSERT INTO public.moon VALUES (44, 'Aoede', 5, NULL, NULL);
INSERT INTO public.moon VALUES (45, 'Thelxinoe', 5, NULL, NULL);
INSERT INTO public.moon VALUES (46, 'Arche', 5, NULL, NULL);
INSERT INTO public.moon VALUES (47, 'Kallichore', 5, NULL, NULL);
INSERT INTO public.moon VALUES (48, 'Helike', 5, NULL, NULL);
INSERT INTO public.moon VALUES (49, 'Carpo', 5, NULL, NULL);
INSERT INTO public.moon VALUES (50, 'Eukelade', 5, NULL, NULL);
INSERT INTO public.moon VALUES (51, 'Cyllene', 5, NULL, NULL);
INSERT INTO public.moon VALUES (52, 'Kore', 5, NULL, NULL);
INSERT INTO public.moon VALUES (53, 'Herse', 5, NULL, NULL);
INSERT INTO public.moon VALUES (54, 'S/2010 J 1', 5, NULL, NULL);
INSERT INTO public.moon VALUES (55, 'S/2010 J 2', 5, NULL, NULL);
INSERT INTO public.moon VALUES (56, 'Dia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (57, 'S/2016 J 1', 5, NULL, NULL);
INSERT INTO public.moon VALUES (58, 'S/2003 J 18', 5, NULL, NULL);
INSERT INTO public.moon VALUES (59, 'S/2011 J 2', 5, NULL, NULL);
INSERT INTO public.moon VALUES (60, 'Eirene', 5, NULL, NULL);
INSERT INTO public.moon VALUES (61, 'Philophrosyne', 5, NULL, NULL);
INSERT INTO public.moon VALUES (62, 'S/2017 J 1', 5, NULL, NULL);
INSERT INTO public.moon VALUES (63, 'Eupheme', 5, NULL, NULL);
INSERT INTO public.moon VALUES (64, 'S/2003 J 19', 5, NULL, NULL);
INSERT INTO public.moon VALUES (65, 'Valetudo', 5, NULL, NULL);
INSERT INTO public.moon VALUES (66, 'S/2017 J 2', 5, NULL, NULL);
INSERT INTO public.moon VALUES (67, 'S/2017 J 3', 5, NULL, NULL);
INSERT INTO public.moon VALUES (68, 'Pandia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (69, 'S/2017 J 5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (70, 'S/2017 J 6', 5, NULL, NULL);
INSERT INTO public.moon VALUES (71, 'S/2017 J 7', 5, NULL, NULL);
INSERT INTO public.moon VALUES (72, 'S/2017 J 8', 5, NULL, NULL);
INSERT INTO public.moon VALUES (73, 'S/2017 J 9', 5, NULL, NULL);
INSERT INTO public.moon VALUES (74, 'Ersa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (75, 'S/2011 J 1', 5, NULL, NULL);
INSERT INTO public.moon VALUES (76, 'S/2003 J 2', 5, NULL, NULL);
INSERT INTO public.moon VALUES (77, 'S/2003 J 4', 5, NULL, NULL);
INSERT INTO public.moon VALUES (78, 'S/2003 J 9', 5, NULL, NULL);
INSERT INTO public.moon VALUES (79, 'S/2003 J 10', 5, NULL, NULL);
INSERT INTO public.moon VALUES (80, 'S/2003 J 12', 5, NULL, NULL);
INSERT INTO public.moon VALUES (81, 'S/2003 J 16', 5, NULL, NULL);
INSERT INTO public.moon VALUES (82, 'S/2003 J 23', 5, NULL, NULL);
INSERT INTO public.moon VALUES (83, 'S/2003 J 24', 5, NULL, NULL);
INSERT INTO public.moon VALUES (84, 'S/2016 J 4', 5, NULL, NULL);
INSERT INTO public.moon VALUES (85, 'S/2016 J 3', 5, NULL, NULL);
INSERT INTO public.moon VALUES (86, 'S/2018 J 3', 5, NULL, NULL);
INSERT INTO public.moon VALUES (87, 'S/2018 J 4', 5, NULL, NULL);
INSERT INTO public.moon VALUES (88, 'S/2021 J 1', 5, NULL, NULL);
INSERT INTO public.moon VALUES (89, 'S/2021 J 2', 5, NULL, NULL);
INSERT INTO public.moon VALUES (90, 'S/2021 J 3', 5, NULL, NULL);
INSERT INTO public.moon VALUES (91, 'S/2021 J 4', 5, NULL, NULL);
INSERT INTO public.moon VALUES (92, 'S/2021 J 5', 5, NULL, NULL);
INSERT INTO public.moon VALUES (93, 'S/2021 J 6', 5, NULL, NULL);
INSERT INTO public.moon VALUES (103, 'Janus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (104, 'Epimetheus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (105, 'Helene', 6, NULL, NULL);
INSERT INTO public.moon VALUES (106, 'Telesto', 6, NULL, NULL);
INSERT INTO public.moon VALUES (107, 'Calypso', 6, NULL, NULL);
INSERT INTO public.moon VALUES (108, 'Atlas', 6, NULL, NULL);
INSERT INTO public.moon VALUES (109, 'Prometheus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (110, 'Pandora', 6, NULL, NULL);
INSERT INTO public.moon VALUES (111, 'Pan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (112, 'Ymir', 6, NULL, NULL);
INSERT INTO public.moon VALUES (113, 'Paaliaq', 6, NULL, NULL);
INSERT INTO public.moon VALUES (114, 'Tarvos', 6, NULL, NULL);
INSERT INTO public.moon VALUES (115, 'Ijiraq', 6, NULL, NULL);
INSERT INTO public.moon VALUES (116, 'Suttungr', 6, NULL, NULL);
INSERT INTO public.moon VALUES (117, 'Kiviuq', 6, NULL, NULL);
INSERT INTO public.moon VALUES (118, 'Mundilfari', 6, NULL, NULL);
INSERT INTO public.moon VALUES (119, 'Albiorix', 6, NULL, NULL);
INSERT INTO public.moon VALUES (120, 'Skathi', 6, NULL, NULL);
INSERT INTO public.moon VALUES (121, 'Erriapus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (122, 'Siarnaq', 6, NULL, NULL);
INSERT INTO public.moon VALUES (123, 'Thrymr', 6, NULL, NULL);
INSERT INTO public.moon VALUES (124, 'Narvi', 6, NULL, NULL);
INSERT INTO public.moon VALUES (125, 'Methone', 6, NULL, NULL);
INSERT INTO public.moon VALUES (126, 'Pallene', 6, NULL, NULL);
INSERT INTO public.moon VALUES (127, 'Polydeuces', 6, NULL, NULL);
INSERT INTO public.moon VALUES (128, 'Daphnis', 6, NULL, NULL);
INSERT INTO public.moon VALUES (129, 'Aegir', 6, NULL, NULL);
INSERT INTO public.moon VALUES (130, 'Bebhionn', 6, NULL, NULL);
INSERT INTO public.moon VALUES (131, 'Bergelmir', 6, NULL, NULL);
INSERT INTO public.moon VALUES (132, 'Bestla', 6, NULL, NULL);
INSERT INTO public.moon VALUES (133, 'Farbauti', 6, NULL, NULL);
INSERT INTO public.moon VALUES (134, 'Fenrir', 6, NULL, NULL);
INSERT INTO public.moon VALUES (135, 'Fornjot', 6, NULL, NULL);
INSERT INTO public.moon VALUES (136, 'Hati', 6, NULL, NULL);
INSERT INTO public.moon VALUES (137, 'Hyrrokkin', 6, NULL, NULL);
INSERT INTO public.moon VALUES (138, 'Kari', 6, NULL, NULL);
INSERT INTO public.moon VALUES (139, 'Loge', 6, NULL, NULL);
INSERT INTO public.moon VALUES (140, 'Skoll', 6, NULL, NULL);
INSERT INTO public.moon VALUES (141, 'Surtur', 6, NULL, NULL);
INSERT INTO public.moon VALUES (142, 'Anthe', 6, NULL, NULL);
INSERT INTO public.moon VALUES (143, 'Jarnsaxa', 6, NULL, NULL);
INSERT INTO public.moon VALUES (144, 'Greip', 6, NULL, NULL);
INSERT INTO public.moon VALUES (145, 'Tarqeq', 6, NULL, NULL);
INSERT INTO public.moon VALUES (146, 'Aegaeon', 6, NULL, NULL);
INSERT INTO public.moon VALUES (147, 'Gridr', 6, NULL, NULL);
INSERT INTO public.moon VALUES (148, 'Angrboda', 6, NULL, NULL);
INSERT INTO public.moon VALUES (149, 'Skrymir', 6, NULL, NULL);
INSERT INTO public.moon VALUES (150, 'Gerd', 6, NULL, NULL);
INSERT INTO public.moon VALUES (151, 'S/2004 S 26', 6, NULL, NULL);
INSERT INTO public.moon VALUES (152, 'Eggther', 6, NULL, NULL);
INSERT INTO public.moon VALUES (153, 'S/2004 S 29', 6, NULL, NULL);
INSERT INTO public.moon VALUES (154, 'Beli', 6, NULL, NULL);
INSERT INTO public.moon VALUES (155, 'Gunnlod', 6, NULL, NULL);
INSERT INTO public.moon VALUES (156, 'Thiazzi', 6, NULL, NULL);
INSERT INTO public.moon VALUES (157, 'S/2004 S 34', 6, NULL, NULL);
INSERT INTO public.moon VALUES (158, 'Alvaldi', 6, NULL, NULL);
INSERT INTO public.moon VALUES (159, 'Geirrod', 6, NULL, NULL);
INSERT INTO public.moon VALUES (160, 'S/2004 S 7', 6, NULL, NULL);
INSERT INTO public.moon VALUES (161, 'S/2004 S 12', 6, NULL, NULL);
INSERT INTO public.moon VALUES (162, 'S/2004 S 13', 6, NULL, NULL);
INSERT INTO public.moon VALUES (163, 'S/2004 S 17', 6, NULL, NULL);
INSERT INTO public.moon VALUES (164, 'S/2004 S 21', 6, NULL, NULL);
INSERT INTO public.moon VALUES (165, 'S/2004 S 24', 6, NULL, NULL);
INSERT INTO public.moon VALUES (166, 'S/2004 S 28', 6, NULL, NULL);
INSERT INTO public.moon VALUES (167, 'S/2004 S 31', 6, NULL, NULL);
INSERT INTO public.moon VALUES (168, 'S/2004 S 36', 6, NULL, NULL);
INSERT INTO public.moon VALUES (169, 'S/2004 S 37', 6, NULL, NULL);
INSERT INTO public.moon VALUES (170, 'S/2004 S 39', 6, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Amalthea', 5, NULL, 1892);
INSERT INTO public.moon VALUES (100, 'Hyperion', 6, NULL, 1848);
INSERT INTO public.moon VALUES (7, 'Callisto', 5, '4,000 - 6,000', 1610);
INSERT INTO public.moon VALUES (99, 'Titan', 6, '4,000 - 6,000', 1655);
INSERT INTO public.moon VALUES (102, 'Phoebe', 6, NULL, 1899);
INSERT INTO public.moon VALUES (96, 'Tethys', 6, '1,000 - 2,000', NULL);
INSERT INTO public.moon VALUES (98, 'Rhea', 6, '1,000 - 2,000', 1672);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, NULL, 1877);
INSERT INTO public.moon VALUES (4, 'Io', 5, '4,000 - 6,000', 1610);
INSERT INTO public.moon VALUES (9, 'Himalia', 5, NULL, 1904);
INSERT INTO public.moon VALUES (17, 'Thebe', 5, NULL, 1979);
INSERT INTO public.moon VALUES (94, 'Mimas', 6, NULL, 1789);
INSERT INTO public.moon VALUES (101, 'Iapetus', 6, '1,000 - 2,000', 1671);
INSERT INTO public.moon VALUES (171, 'S/2006 S 1', 6, NULL, NULL);
INSERT INTO public.moon VALUES (172, 'S/2006 S 3', 6, NULL, NULL);
INSERT INTO public.moon VALUES (173, 'S/2007 S 2', 6, NULL, NULL);
INSERT INTO public.moon VALUES (174, 'S/2007 S 3', 6, NULL, NULL);
INSERT INTO public.moon VALUES (175, 'S/2009 S 1', 6, NULL, NULL);
INSERT INTO public.moon VALUES (176, 'S/2019 S 1', 6, NULL, NULL);
INSERT INTO public.moon VALUES (181, 'Miranda', 7, NULL, NULL);
INSERT INTO public.moon VALUES (182, 'Cordelia', 7, NULL, NULL);
INSERT INTO public.moon VALUES (183, 'Ophelia', 7, NULL, NULL);
INSERT INTO public.moon VALUES (184, 'Bianca', 7, NULL, NULL);
INSERT INTO public.moon VALUES (185, 'Cressida', 7, NULL, NULL);
INSERT INTO public.moon VALUES (186, 'Desdemona', 7, NULL, NULL);
INSERT INTO public.moon VALUES (187, 'Juliet', 7, NULL, NULL);
INSERT INTO public.moon VALUES (188, 'Portia', 7, NULL, NULL);
INSERT INTO public.moon VALUES (189, 'Rosalind', 7, NULL, NULL);
INSERT INTO public.moon VALUES (190, 'Belinda', 7, NULL, NULL);
INSERT INTO public.moon VALUES (191, 'Puck', 7, NULL, NULL);
INSERT INTO public.moon VALUES (192, 'Caliban', 7, NULL, NULL);
INSERT INTO public.moon VALUES (193, 'Sycorax', 7, NULL, NULL);
INSERT INTO public.moon VALUES (194, 'Prospero', 7, NULL, NULL);
INSERT INTO public.moon VALUES (195, 'Setebos', 7, NULL, NULL);
INSERT INTO public.moon VALUES (196, 'Stephano', 7, NULL, NULL);
INSERT INTO public.moon VALUES (197, 'Trinculo', 7, NULL, NULL);
INSERT INTO public.moon VALUES (198, 'Francisco', 7, NULL, NULL);
INSERT INTO public.moon VALUES (199, 'Margaret', 7, NULL, NULL);
INSERT INTO public.moon VALUES (200, 'Ferdinand', 7, NULL, NULL);
INSERT INTO public.moon VALUES (201, 'Perdita', 7, NULL, NULL);
INSERT INTO public.moon VALUES (202, 'Mab', 7, NULL, NULL);
INSERT INTO public.moon VALUES (203, 'Cupid', 7, NULL, NULL);
INSERT INTO public.moon VALUES (205, 'Nereid', 8, NULL, NULL);
INSERT INTO public.moon VALUES (206, 'Naiad', 8, NULL, NULL);
INSERT INTO public.moon VALUES (207, 'Thalassa', 8, NULL, NULL);
INSERT INTO public.moon VALUES (208, 'Despina', 8, NULL, NULL);
INSERT INTO public.moon VALUES (209, 'Galatea', 8, NULL, NULL);
INSERT INTO public.moon VALUES (210, 'Larissa', 8, NULL, NULL);
INSERT INTO public.moon VALUES (211, 'Proteus', 8, NULL, NULL);
INSERT INTO public.moon VALUES (212, 'Halimede', 8, NULL, NULL);
INSERT INTO public.moon VALUES (213, 'Psamathe', 8, NULL, NULL);
INSERT INTO public.moon VALUES (214, 'Sao', 8, NULL, NULL);
INSERT INTO public.moon VALUES (215, 'Laomedeia', 8, NULL, NULL);
INSERT INTO public.moon VALUES (216, 'Neso', 8, NULL, NULL);
INSERT INTO public.moon VALUES (217, 'Hippocamp', 8, NULL, NULL);
INSERT INTO public.moon VALUES (219, 'Nix', 9, NULL, NULL);
INSERT INTO public.moon VALUES (220, 'Hydra', 9, NULL, NULL);
INSERT INTO public.moon VALUES (221, 'Kerberos', 9, NULL, NULL);
INSERT INTO public.moon VALUES (222, 'Styx', 9, NULL, NULL);
INSERT INTO public.moon VALUES (224, 'S/2015 (136472) 1', 12, NULL, NULL);
INSERT INTO public.moon VALUES (225, 'Hiʻiaka', 13, NULL, NULL);
INSERT INTO public.moon VALUES (226, 'Namaka', 13, NULL, NULL);
INSERT INTO public.moon VALUES (1, 'Moon', 3, '3,000 - 4,000', NULL);
INSERT INTO public.moon VALUES (204, 'Triton', 8, '2,000 - 3,000', NULL);
INSERT INTO public.moon VALUES (179, 'Titania', 7, '1,000 - 2,000', NULL);
INSERT INTO public.moon VALUES (180, 'Oberon', 7, '1,000 - 2,000', NULL);
INSERT INTO public.moon VALUES (178, 'Umbriel', 7, '1,000 - 2,000', NULL);
INSERT INTO public.moon VALUES (177, 'Ariel', 7, '1,000 - 2,000', NULL);
INSERT INTO public.moon VALUES (218, 'Charon', 9, '1,000 - 2,000', NULL);
INSERT INTO public.moon VALUES (223, 'Dysnomia', 9, '500 - 1,000', NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, NULL, 1877);
INSERT INTO public.moon VALUES (5, 'Europa', 5, '4,000 - 6,000', 1610);
INSERT INTO public.moon VALUES (6, 'Ganymede', 5, '4,000 - 6,000', 1610);
INSERT INTO public.moon VALUES (95, 'Enceladus', 6, '500 - 1,000', 1789);
INSERT INTO public.moon VALUES (97, 'Dione', 6, '1,000 - 2,000', 1684);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Planet', false, 0.24);
INSERT INTO public.planet VALUES (2, 'Venus', 'Planet', false, 0.62);
INSERT INTO public.planet VALUES (3, 'Earth', 'Planet', false, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'Planet', false, 1.88);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Planet', true, 11.86);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Planet', true, 29.45);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Planet', true, 84.02);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Planet', true, 164.79);
INSERT INTO public.planet VALUES (9, 'Pluto', 'Dwarf planet', false, 247.9);
INSERT INTO public.planet VALUES (10, 'Eris', 'Dwarf planet', false, 559);
INSERT INTO public.planet VALUES (11, 'Ceres', 'Dwarf planet', false, 4.60);
INSERT INTO public.planet VALUES (12, 'Makemake', 'Dwarf planet', false, 306.2);
INSERT INTO public.planet VALUES (13, 'Haumea', 'Dwarf planet', true, 283.8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 0.000016057, NULL);
INSERT INTO public.star VALUES (2, 'Alpha Andromedae', 2, 97, 'α And');
INSERT INTO public.star VALUES (3, 'Beta Androme', 2, 199, 'β And');
INSERT INTO public.star VALUES (4, 'Gamma1 Andromedae', 2, 355, 'γ1 And');
INSERT INTO public.star VALUES (5, 'Delta Andromedae', 2, 101, 'δ And');
INSERT INTO public.star VALUES (6, '51 Andromedae', 2, 174, '51 And');


--
-- Name: constellation_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.constellation_constellation_id_seq', 1, false);


--
-- Name: galaxy_constellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_constellation_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: constellation constellarion_name_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellarion_name_id UNIQUE (name);


--
-- Name: constellation constellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.constellation
    ADD CONSTRAINT constellation_pkey PRIMARY KEY (constellation_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_name_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_id UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_id UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: star name_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT name_id UNIQUE (name);


--
-- Name: moon name_id_; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT name_id_ UNIQUE (name);


--
-- Name: planet planet_name_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_id UNIQUE (name);


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
-- Name: star star_name_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_id UNIQUE (name);


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
-- Name: galaxy galaxy_constellation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_constellation_id_fkey FOREIGN KEY (constellation_id) REFERENCES public.constellation(constellation_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

