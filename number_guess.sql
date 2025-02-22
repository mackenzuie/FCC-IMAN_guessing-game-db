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
    number_guesses integer NOT NULL,
    user_id integer
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 14, 9);
INSERT INTO public.games VALUES (2, 9, 9);
INSERT INTO public.games VALUES (3, 830, 10);
INSERT INTO public.games VALUES (4, 727, 10);
INSERT INTO public.games VALUES (5, 406, 11);
INSERT INTO public.games VALUES (6, 524, 11);
INSERT INTO public.games VALUES (7, 855, 10);
INSERT INTO public.games VALUES (8, 332, 10);
INSERT INTO public.games VALUES (9, 71, 10);
INSERT INTO public.games VALUES (10, 392, 12);
INSERT INTO public.games VALUES (11, 159, 12);
INSERT INTO public.games VALUES (12, 729, 13);
INSERT INTO public.games VALUES (13, 644, 13);
INSERT INTO public.games VALUES (14, 289, 12);
INSERT INTO public.games VALUES (15, 507, 12);
INSERT INTO public.games VALUES (16, 522, 12);
INSERT INTO public.games VALUES (17, 278, 14);
INSERT INTO public.games VALUES (18, 677, 14);
INSERT INTO public.games VALUES (19, 654, 15);
INSERT INTO public.games VALUES (20, 551, 15);
INSERT INTO public.games VALUES (21, 447, 14);
INSERT INTO public.games VALUES (22, 850, 14);
INSERT INTO public.games VALUES (23, 534, 14);
INSERT INTO public.games VALUES (24, 41, 16);
INSERT INTO public.games VALUES (25, 291, 16);
INSERT INTO public.games VALUES (26, 223, 17);
INSERT INTO public.games VALUES (27, 542, 17);
INSERT INTO public.games VALUES (28, 59, 16);
INSERT INTO public.games VALUES (29, 683, 16);
INSERT INTO public.games VALUES (30, 369, 16);
INSERT INTO public.games VALUES (31, 665, 18);
INSERT INTO public.games VALUES (32, 711, 18);
INSERT INTO public.games VALUES (33, 998, 19);
INSERT INTO public.games VALUES (34, 512, 19);
INSERT INTO public.games VALUES (35, 716, 18);
INSERT INTO public.games VALUES (36, 363, 18);
INSERT INTO public.games VALUES (37, 949, 18);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Mac');
INSERT INTO public.users VALUES (2, 'mac');
INSERT INTO public.users VALUES (3, 'user_1740231685183');
INSERT INTO public.users VALUES (4, 'user_1740231685182');
INSERT INTO public.users VALUES (5, 'user_1740231711615');
INSERT INTO public.users VALUES (6, 'user_1740231711614');
INSERT INTO public.users VALUES (7, 'user_1740231828066');
INSERT INTO public.users VALUES (8, 'user_1740231828065');
INSERT INTO public.users VALUES (9, 'Mackenzie');
INSERT INTO public.users VALUES (10, 'user_1740231986309');
INSERT INTO public.users VALUES (11, 'user_1740231986308');
INSERT INTO public.users VALUES (12, 'user_1740232192822');
INSERT INTO public.users VALUES (13, 'user_1740232192821');
INSERT INTO public.users VALUES (14, 'user_1740232246131');
INSERT INTO public.users VALUES (15, 'user_1740232246130');
INSERT INTO public.users VALUES (16, 'user_1740232275352');
INSERT INTO public.users VALUES (17, 'user_1740232275351');
INSERT INTO public.users VALUES (18, 'user_1740232312781');
INSERT INTO public.users VALUES (19, 'user_1740232312780');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 37, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 19, true);


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

