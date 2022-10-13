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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: games_opponent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_opponent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_opponent_id_seq OWNER TO freecodecamp;

--
-- Name: games_opponent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_opponent_id_seq OWNED BY public.games.opponent_id;


--
-- Name: games_winner_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_winner_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_winner_id_seq OWNER TO freecodecamp;

--
-- Name: games_winner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_winner_id_seq OWNED BY public.games.winner_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name text NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: games winner_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN winner_id SET DEFAULT nextval('public.games_winner_id_seq'::regclass);


--
-- Name: games opponent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN opponent_id SET DEFAULT nextval('public.games_opponent_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (228, 2018, 'Final', 4, 2, 169, 170);
INSERT INTO public.games VALUES (229, 2018, 'Third Place', 2, 0, 171, 172);
INSERT INTO public.games VALUES (230, 2018, 'Semi-Final', 2, 1, 170, 172);
INSERT INTO public.games VALUES (231, 2018, 'Semi-Final', 1, 0, 169, 171);
INSERT INTO public.games VALUES (232, 2018, 'Quarter-Final', 3, 2, 170, 173);
INSERT INTO public.games VALUES (233, 2018, 'Quarter-Final', 2, 0, 172, 174);
INSERT INTO public.games VALUES (234, 2018, 'Quarter-Final', 2, 1, 171, 175);
INSERT INTO public.games VALUES (235, 2018, 'Quarter-Final', 2, 0, 169, 176);
INSERT INTO public.games VALUES (236, 2018, 'Eighth-Final', 2, 1, 172, 177);
INSERT INTO public.games VALUES (237, 2018, 'Eighth-Final', 1, 0, 174, 178);
INSERT INTO public.games VALUES (238, 2018, 'Eighth-Final', 3, 2, 171, 179);
INSERT INTO public.games VALUES (239, 2018, 'Eighth-Final', 2, 0, 175, 180);
INSERT INTO public.games VALUES (240, 2018, 'Eighth-Final', 2, 1, 170, 181);
INSERT INTO public.games VALUES (241, 2018, 'Eighth-Final', 2, 1, 173, 182);
INSERT INTO public.games VALUES (242, 2018, 'Eighth-Final', 2, 1, 176, 183);
INSERT INTO public.games VALUES (243, 2018, 'Eighth-Final', 4, 3, 169, 184);
INSERT INTO public.games VALUES (244, 2014, 'Final', 1, 0, 185, 184);
INSERT INTO public.games VALUES (245, 2014, 'Third Place', 3, 0, 186, 175);
INSERT INTO public.games VALUES (246, 2014, 'Semi-Final', 1, 0, 184, 186);
INSERT INTO public.games VALUES (247, 2014, 'Semi-Final', 7, 1, 185, 175);
INSERT INTO public.games VALUES (248, 2014, 'Quarter-Final', 1, 0, 186, 187);
INSERT INTO public.games VALUES (249, 2014, 'Quarter-Final', 1, 0, 184, 171);
INSERT INTO public.games VALUES (250, 2014, 'Quarter-Final', 2, 1, 175, 177);
INSERT INTO public.games VALUES (251, 2014, 'Quarter-Final', 1, 0, 185, 169);
INSERT INTO public.games VALUES (252, 2014, 'Eighth-Final', 2, 1, 175, 188);
INSERT INTO public.games VALUES (253, 2014, 'Eighth-Final', 2, 0, 177, 176);
INSERT INTO public.games VALUES (254, 2014, 'Eighth-Final', 2, 0, 169, 189);
INSERT INTO public.games VALUES (255, 2014, 'Eighth-Final', 2, 1, 185, 190);
INSERT INTO public.games VALUES (256, 2014, 'Eighth-Final', 2, 1, 186, 180);
INSERT INTO public.games VALUES (257, 2014, 'Eighth-Final', 2, 1, 187, 191);
INSERT INTO public.games VALUES (258, 2014, 'Eighth-Final', 1, 0, 184, 178);
INSERT INTO public.games VALUES (259, 2014, 'Eighth-Final', 2, 1, 171, 192);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (169, 'France');
INSERT INTO public.teams VALUES (170, 'Croatia');
INSERT INTO public.teams VALUES (171, 'Belgium');
INSERT INTO public.teams VALUES (172, 'England');
INSERT INTO public.teams VALUES (173, 'Russia');
INSERT INTO public.teams VALUES (174, 'Sweden');
INSERT INTO public.teams VALUES (175, 'Brazil');
INSERT INTO public.teams VALUES (176, 'Uruguay');
INSERT INTO public.teams VALUES (177, 'Colombia');
INSERT INTO public.teams VALUES (178, 'Switzerland');
INSERT INTO public.teams VALUES (179, 'Japan');
INSERT INTO public.teams VALUES (180, 'Mexico');
INSERT INTO public.teams VALUES (181, 'Denmark');
INSERT INTO public.teams VALUES (182, 'Spain');
INSERT INTO public.teams VALUES (183, 'Portugal');
INSERT INTO public.teams VALUES (184, 'Argentina');
INSERT INTO public.teams VALUES (185, 'Germany');
INSERT INTO public.teams VALUES (186, 'Netherlands');
INSERT INTO public.teams VALUES (187, 'Costa Rica');
INSERT INTO public.teams VALUES (188, 'Chile');
INSERT INTO public.teams VALUES (189, 'Nigeria');
INSERT INTO public.teams VALUES (190, 'Algeria');
INSERT INTO public.teams VALUES (191, 'Greece');
INSERT INTO public.teams VALUES (192, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 259, true);


--
-- Name: games_opponent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_opponent_id_seq', 1, false);


--
-- Name: games_winner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_winner_id_seq', 1, false);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 192, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams name_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT name_id UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--


