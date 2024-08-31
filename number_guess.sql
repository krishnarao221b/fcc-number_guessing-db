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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 916);
INSERT INTO public.games VALUES (2, 1, 343);
INSERT INTO public.games VALUES (3, 2, 341);
INSERT INTO public.games VALUES (4, 2, 813);
INSERT INTO public.games VALUES (5, 1, 551);
INSERT INTO public.games VALUES (6, 1, 914);
INSERT INTO public.games VALUES (7, 1, 152);
INSERT INTO public.games VALUES (8, 3, 14);
INSERT INTO public.games VALUES (9, 3, 453);
INSERT INTO public.games VALUES (10, 4, 72);
INSERT INTO public.games VALUES (11, 4, 937);
INSERT INTO public.games VALUES (12, 3, 987);
INSERT INTO public.games VALUES (13, 3, 530);
INSERT INTO public.games VALUES (14, 3, 724);
INSERT INTO public.games VALUES (15, 5, 498);
INSERT INTO public.games VALUES (16, 5, 879);
INSERT INTO public.games VALUES (17, 6, 86);
INSERT INTO public.games VALUES (18, 6, 287);
INSERT INTO public.games VALUES (19, 5, 13);
INSERT INTO public.games VALUES (20, 5, 282);
INSERT INTO public.games VALUES (21, 5, 114);
INSERT INTO public.games VALUES (22, 7, 102);
INSERT INTO public.games VALUES (23, 7, 854);
INSERT INTO public.games VALUES (24, 8, 718);
INSERT INTO public.games VALUES (25, 8, 979);
INSERT INTO public.games VALUES (26, 7, 521);
INSERT INTO public.games VALUES (27, 7, 801);
INSERT INTO public.games VALUES (28, 7, 549);
INSERT INTO public.games VALUES (29, 9, 927);
INSERT INTO public.games VALUES (30, 9, 412);
INSERT INTO public.games VALUES (31, 10, 280);
INSERT INTO public.games VALUES (32, 10, 759);
INSERT INTO public.games VALUES (33, 9, 209);
INSERT INTO public.games VALUES (34, 9, 495);
INSERT INTO public.games VALUES (35, 9, 2);
INSERT INTO public.games VALUES (36, 11, 227);
INSERT INTO public.games VALUES (37, 11, 809);
INSERT INTO public.games VALUES (38, 12, 212);
INSERT INTO public.games VALUES (39, 12, 370);
INSERT INTO public.games VALUES (40, 11, 787);
INSERT INTO public.games VALUES (41, 11, 885);
INSERT INTO public.games VALUES (42, 11, 630);
INSERT INTO public.games VALUES (43, 13, 717);
INSERT INTO public.games VALUES (44, 13, 128);
INSERT INTO public.games VALUES (45, 14, 470);
INSERT INTO public.games VALUES (46, 14, 51);
INSERT INTO public.games VALUES (47, 13, 64);
INSERT INTO public.games VALUES (48, 13, 749);
INSERT INTO public.games VALUES (49, 13, 659);
INSERT INTO public.games VALUES (50, 15, 793);
INSERT INTO public.games VALUES (51, 15, 791);
INSERT INTO public.games VALUES (52, 16, 918);
INSERT INTO public.games VALUES (53, 16, 360);
INSERT INTO public.games VALUES (54, 15, 56);
INSERT INTO public.games VALUES (55, 15, 281);
INSERT INTO public.games VALUES (56, 15, 492);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1725097326776', 2);
INSERT INTO public.users VALUES (1, 'user_1725097326777', 5);
INSERT INTO public.users VALUES (4, 'user_1725097395754', 2);
INSERT INTO public.users VALUES (3, 'user_1725097395755', 5);
INSERT INTO public.users VALUES (6, 'user_1725097450866', 2);
INSERT INTO public.users VALUES (5, 'user_1725097450867', 5);
INSERT INTO public.users VALUES (8, 'user_1725097483272', 2);
INSERT INTO public.users VALUES (7, 'user_1725097483273', 5);
INSERT INTO public.users VALUES (10, 'user_1725097519037', 2);
INSERT INTO public.users VALUES (9, 'user_1725097519038', 5);
INSERT INTO public.users VALUES (12, 'user_1725097528298', 2);
INSERT INTO public.users VALUES (11, 'user_1725097528299', 5);
INSERT INTO public.users VALUES (14, 'user_1725097597393', 2);
INSERT INTO public.users VALUES (13, 'user_1725097597394', 5);
INSERT INTO public.users VALUES (16, 'user_1725097629143', 2);
INSERT INTO public.users VALUES (15, 'user_1725097629144', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 56, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 16, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

