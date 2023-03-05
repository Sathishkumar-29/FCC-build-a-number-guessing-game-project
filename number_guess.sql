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
    number_of_guess integer NOT NULL,
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
    username character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (1, 8, 1);
INSERT INTO public.games VALUES (2, 11, 1);
INSERT INTO public.games VALUES (3, 51, 2);
INSERT INTO public.games VALUES (4, 836, 2);
INSERT INTO public.games VALUES (5, 913, 3);
INSERT INTO public.games VALUES (6, 216, 3);
INSERT INTO public.games VALUES (7, 32, 2);
INSERT INTO public.games VALUES (8, 174, 2);
INSERT INTO public.games VALUES (9, 149, 2);
INSERT INTO public.games VALUES (10, 855, 4);
INSERT INTO public.games VALUES (11, 595, 4);
INSERT INTO public.games VALUES (12, 866, 5);
INSERT INTO public.games VALUES (13, 502, 5);
INSERT INTO public.games VALUES (14, 666, 4);
INSERT INTO public.games VALUES (15, 350, 4);
INSERT INTO public.games VALUES (16, 152, 4);
INSERT INTO public.games VALUES (17, 1, 6);
INSERT INTO public.games VALUES (18, 559, 6);
INSERT INTO public.games VALUES (19, 983, 7);
INSERT INTO public.games VALUES (20, 930, 7);
INSERT INTO public.games VALUES (21, 885, 6);
INSERT INTO public.games VALUES (22, 47, 6);
INSERT INTO public.games VALUES (23, 794, 6);
INSERT INTO public.games VALUES (24, 12, 8);
INSERT INTO public.games VALUES (25, 877, 9);
INSERT INTO public.games VALUES (26, 904, 9);
INSERT INTO public.games VALUES (27, 1, 10);
INSERT INTO public.games VALUES (28, 574, 10);
INSERT INTO public.games VALUES (29, 791, 9);
INSERT INTO public.games VALUES (30, 169, 9);
INSERT INTO public.games VALUES (31, 939, 9);
INSERT INTO public.games VALUES (32, 720, 12);
INSERT INTO public.games VALUES (33, 715, 12);
INSERT INTO public.games VALUES (34, 645, 13);
INSERT INTO public.games VALUES (35, 130, 13);
INSERT INTO public.games VALUES (36, 874, 12);
INSERT INTO public.games VALUES (37, 611, 12);
INSERT INTO public.games VALUES (38, 726, 12);
INSERT INTO public.games VALUES (39, 1, 14);
INSERT INTO public.games VALUES (40, 884, 14);
INSERT INTO public.games VALUES (41, 236, 15);
INSERT INTO public.games VALUES (42, 464, 15);
INSERT INTO public.games VALUES (43, 700, 14);
INSERT INTO public.games VALUES (44, 626, 14);
INSERT INTO public.games VALUES (45, 19, 14);
INSERT INTO public.games VALUES (46, 1, 16);
INSERT INTO public.games VALUES (47, 77, 16);
INSERT INTO public.games VALUES (48, 397, 17);
INSERT INTO public.games VALUES (49, 899, 17);
INSERT INTO public.games VALUES (50, 358, 16);
INSERT INTO public.games VALUES (51, 880, 16);
INSERT INTO public.games VALUES (52, 734, 16);
INSERT INTO public.games VALUES (53, 1, 18);
INSERT INTO public.games VALUES (54, 192, 18);
INSERT INTO public.games VALUES (55, 1, 19);
INSERT INTO public.games VALUES (56, 170, 19);
INSERT INTO public.games VALUES (57, 622, 18);
INSERT INTO public.games VALUES (58, 911, 18);
INSERT INTO public.games VALUES (59, 473, 18);
INSERT INTO public.games VALUES (60, 1, 21);
INSERT INTO public.games VALUES (61, 23, 21);
INSERT INTO public.games VALUES (62, 1, 22);
INSERT INTO public.games VALUES (63, 786, 22);
INSERT INTO public.games VALUES (64, 158, 21);
INSERT INTO public.games VALUES (65, 821, 21);
INSERT INTO public.games VALUES (66, 558, 21);
INSERT INTO public.games VALUES (67, 210, 23);
INSERT INTO public.games VALUES (68, 54, 23);
INSERT INTO public.games VALUES (69, 910, 24);
INSERT INTO public.games VALUES (70, 426, 24);
INSERT INTO public.games VALUES (71, 718, 23);
INSERT INTO public.games VALUES (72, 603, 23);
INSERT INTO public.games VALUES (73, 607, 23);
INSERT INTO public.games VALUES (74, 9, 8);
INSERT INTO public.games VALUES (75, 356, 25);
INSERT INTO public.games VALUES (76, 533, 25);
INSERT INTO public.games VALUES (77, 86, 26);
INSERT INTO public.games VALUES (78, 656, 26);
INSERT INTO public.games VALUES (79, 718, 25);
INSERT INTO public.games VALUES (80, 501, 25);
INSERT INTO public.games VALUES (81, 177, 25);
INSERT INTO public.games VALUES (82, 1, 27);
INSERT INTO public.games VALUES (83, 481, 27);
INSERT INTO public.games VALUES (84, 561, 28);
INSERT INTO public.games VALUES (85, 581, 28);
INSERT INTO public.games VALUES (86, 718, 27);
INSERT INTO public.games VALUES (87, 17, 27);
INSERT INTO public.games VALUES (88, 497, 27);
INSERT INTO public.games VALUES (89, 1, 29);
INSERT INTO public.games VALUES (90, 971, 29);
INSERT INTO public.games VALUES (91, 555, 30);
INSERT INTO public.games VALUES (92, 973, 30);
INSERT INTO public.games VALUES (93, 48, 29);
INSERT INTO public.games VALUES (94, 29, 29);
INSERT INTO public.games VALUES (95, 698, 29);
INSERT INTO public.games VALUES (96, 9, 1);
INSERT INTO public.games VALUES (97, 11, 31);
INSERT INTO public.games VALUES (98, 1, 32);
INSERT INTO public.games VALUES (99, 713, 32);
INSERT INTO public.games VALUES (100, 316, 33);
INSERT INTO public.games VALUES (101, 528, 33);
INSERT INTO public.games VALUES (102, 763, 32);
INSERT INTO public.games VALUES (103, 935, 32);
INSERT INTO public.games VALUES (104, 80, 32);
INSERT INTO public.games VALUES (105, 390, 34);
INSERT INTO public.games VALUES (106, 355, 34);
INSERT INTO public.games VALUES (107, 241, 35);
INSERT INTO public.games VALUES (108, 596, 35);
INSERT INTO public.games VALUES (109, 185, 34);
INSERT INTO public.games VALUES (110, 973, 34);
INSERT INTO public.games VALUES (111, 227, 34);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'sathish');
INSERT INTO public.users VALUES (2, 'user_1678027123206');
INSERT INTO public.users VALUES (3, 'user_1678027123205');
INSERT INTO public.users VALUES (4, 'user_1678027288415');
INSERT INTO public.users VALUES (5, 'user_1678027288414');
INSERT INTO public.users VALUES (6, 'user_1678027543119');
INSERT INTO public.users VALUES (7, 'user_1678027543118');
INSERT INTO public.users VALUES (8, 'vino');
INSERT INTO public.users VALUES (9, 'user_1678027661684');
INSERT INTO public.users VALUES (10, 'user_1678027661683');
INSERT INTO public.users VALUES (11, 'mini');
INSERT INTO public.users VALUES (12, 'user_1678027747863');
INSERT INTO public.users VALUES (13, 'user_1678027747862');
INSERT INTO public.users VALUES (14, 'user_1678027864653');
INSERT INTO public.users VALUES (15, 'user_1678027864652');
INSERT INTO public.users VALUES (16, 'user_1678027914985');
INSERT INTO public.users VALUES (17, 'user_1678027914984');
INSERT INTO public.users VALUES (18, 'user_1678027963742');
INSERT INTO public.users VALUES (19, 'user_1678027963741');
INSERT INTO public.users VALUES (20, 'mivi');
INSERT INTO public.users VALUES (21, 'user_1678028018453');
INSERT INTO public.users VALUES (22, 'user_1678028018452');
INSERT INTO public.users VALUES (23, 'user_1678028043698');
INSERT INTO public.users VALUES (24, 'user_1678028043697');
INSERT INTO public.users VALUES (25, 'user_1678028105135');
INSERT INTO public.users VALUES (26, 'user_1678028105134');
INSERT INTO public.users VALUES (27, 'user_1678028167050');
INSERT INTO public.users VALUES (28, 'user_1678028167049');
INSERT INTO public.users VALUES (29, 'user_1678028213565');
INSERT INTO public.users VALUES (30, 'user_1678028213564');
INSERT INTO public.users VALUES (31, 'vinomini');
INSERT INTO public.users VALUES (32, 'user_1678028335449');
INSERT INTO public.users VALUES (33, 'user_1678028335448');
INSERT INTO public.users VALUES (34, 'user_1678028500667');
INSERT INTO public.users VALUES (35, 'user_1678028500666');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 111, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 35, true);


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

