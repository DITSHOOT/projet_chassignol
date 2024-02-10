--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4
-- Dumped by pg_dump version 15.4

-- Started on 2023-11-17 14:49:41

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

--
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: pg_database_owner
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO pg_database_owner;

--
-- TOC entry 3355 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: pg_database_owner
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 215 (class 1259 OID 16475)
-- Name: camion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.camion (
    "nom_propriétaire" character varying NOT NULL,
    no_immat character(20) NOT NULL
);


ALTER TABLE public.camion OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16509)
-- Name: limitation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.limitation (
    code_type integer NOT NULL,
    "capacité_max" character varying(255) NOT NULL,
    no_immat character(20) NOT NULL
);


ALTER TABLE public.limitation OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16487)
-- Name: pesee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pesee (
    code_bordereau_pesee integer NOT NULL,
    date_pesee date NOT NULL,
    heure time without time zone NOT NULL,
    code_type integer NOT NULL,
    code_syndicat integer NOT NULL,
    "poids_arrivée" numeric(10,2),
    poids_depart numeric(10,2),
    no_immat character(20)
);


ALTER TABLE public.pesee OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16468)
-- Name: syndicat; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.syndicat (
    code_syndicat integer NOT NULL,
    nom_syndicat character varying(255) NOT NULL,
    adresse_syndicat character varying(255) NOT NULL,
    tel_syndicat character varying(255) NOT NULL
);


ALTER TABLE public.syndicat OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16482)
-- Name: type_dechets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_dechets (
    code_type integer NOT NULL,
    libelle_type character varying(255) NOT NULL
);


ALTER TABLE public.type_dechets OWNER TO postgres;

--
-- TOC entry 3346 (class 0 OID 16475)
-- Dependencies: 215
-- Data for Name: camion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.camion VALUES ('Dupont', 'AA-000-AA           ');
INSERT INTO public.camion VALUES ('Martin', 'BB-111-BB           ');
INSERT INTO public.camion VALUES ('Thomas', 'CC-222-CC           ');
INSERT INTO public.camion VALUES ('Petit', 'DD-333-DD           ');
INSERT INTO public.camion VALUES ('Robert', 'EE-444-EE           ');
INSERT INTO public.camion VALUES ('Richard', 'FF-555-FF           ');
INSERT INTO public.camion VALUES ('Durand', 'GG-666-GG           ');
INSERT INTO public.camion VALUES ('Dubois', 'HH-777-HH           ');
INSERT INTO public.camion VALUES ('Laurent', 'II-888-II           ');
INSERT INTO public.camion VALUES ('Michel', 'JJ-999-JJ           ');
INSERT INTO public.camion VALUES ('Leroy', 'KK-000-KK           ');
INSERT INTO public.camion VALUES ('Roux', 'LL-111-LL           ');
INSERT INTO public.camion VALUES ('David', 'MM-222-MM           ');
INSERT INTO public.camion VALUES ('Jean', 'NN-333-NN           ');
INSERT INTO public.camion VALUES ('Vincent', 'OO-444-OO           ');
INSERT INTO public.camion VALUES ('Moreau', 'PP-555-PP           ');
INSERT INTO public.camion VALUES ('Boyer', 'QQ-666-QQ           ');
INSERT INTO public.camion VALUES ('Legrand', 'RR-777-RR           ');
INSERT INTO public.camion VALUES ('Gauthier', 'SS-888-SS           ');
INSERT INTO public.camion VALUES ('Clement', 'TT-999-TT           ');


--
-- TOC entry 3349 (class 0 OID 16509)
-- Dependencies: 218
-- Data for Name: limitation; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.limitation VALUES (1, '4', 'BB-111-BB           ');
INSERT INTO public.limitation VALUES (5, '8', 'KK-000-KK           ');
INSERT INTO public.limitation VALUES (4, '2', 'OO-444-OO           ');
INSERT INTO public.limitation VALUES (2, '9', 'HH-777-HH           ');
INSERT INTO public.limitation VALUES (9, '1', 'PP-555-PP           ');
INSERT INTO public.limitation VALUES (8, '7', 'AA-000-AA           ');
INSERT INTO public.limitation VALUES (6, '6', 'NN-333-NN           ');
INSERT INTO public.limitation VALUES (5, '2', 'QQ-666-QQ           ');
INSERT INTO public.limitation VALUES (7, '7', 'SS-888-SS           ');
INSERT INTO public.limitation VALUES (8, '6', 'GG-666-GG           ');
INSERT INTO public.limitation VALUES (4, '9', 'BB-111-BB           ');
INSERT INTO public.limitation VALUES (5, '1', 'MM-222-MM           ');
INSERT INTO public.limitation VALUES (6, '3', 'TT-999-TT           ');
INSERT INTO public.limitation VALUES (5, '8', 'EE-444-EE           ');
INSERT INTO public.limitation VALUES (5, '9', 'HH-777-HH           ');
INSERT INTO public.limitation VALUES (5, '6', 'PP-555-PP           ');
INSERT INTO public.limitation VALUES (8, '4', 'KK-000-KK           ');
INSERT INTO public.limitation VALUES (9, '5', 'GG-666-GG           ');
INSERT INTO public.limitation VALUES (7, '3', 'NN-333-NN           ');
INSERT INTO public.limitation VALUES (3, '7', 'EE-444-EE           ');
INSERT INTO public.limitation VALUES (2, '1', 'SS-888-SS           ');
INSERT INTO public.limitation VALUES (8, '8', 'DD-333-DD           ');
INSERT INTO public.limitation VALUES (4, '7', 'AA-000-AA           ');
INSERT INTO public.limitation VALUES (6, '5', 'GG-666-GG           ');
INSERT INTO public.limitation VALUES (7, '1', 'JJ-999-JJ           ');
INSERT INTO public.limitation VALUES (4, '1', 'HH-777-HH           ');
INSERT INTO public.limitation VALUES (8, '6', 'OO-444-OO           ');
INSERT INTO public.limitation VALUES (4, '9', 'RR-777-RR           ');
INSERT INTO public.limitation VALUES (6, '8', 'FF-555-FF           ');
INSERT INTO public.limitation VALUES (9, '6', 'QQ-666-QQ           ');


--
-- TOC entry 3348 (class 0 OID 16487)
-- Dependencies: 217
-- Data for Name: pesee; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pesee VALUES (1, '2023-11-13', '11:20:00', 2, 3, 1.50, 1.10, 'MM-222-MM           ');
INSERT INTO public.pesee VALUES (2, '2023-11-13', '11:23:00', 1, 1, 2.10, 1.00, 'II-888-II           ');
INSERT INTO public.pesee VALUES (11, '2023-11-13', '11:41:00', 2, 3, 1.10, 0.60, 'CC-222-CC           ');
INSERT INTO public.pesee VALUES (12, '2023-11-13', '11:43:00', 8, 4, 1.30, 0.90, 'TT-999-TT           ');
INSERT INTO public.pesee VALUES (13, '2023-11-13', '11:45:00', 9, 5, 1.80, 1.00, 'OO-444-OO           ');
INSERT INTO public.pesee VALUES (14, '2023-11-13', '11:47:00', 10, 1, 1.60, 1.10, 'BB-111-BB           ');
INSERT INTO public.pesee VALUES (15, '2023-11-13', '11:49:00', 10, 3, 1.70, 1.20, 'NN-333-NN           ');
INSERT INTO public.pesee VALUES (16, '2023-11-13', '11:51:00', 7, 1, 1.30, 1.10, 'PP-555-PP           ');
INSERT INTO public.pesee VALUES (17, '2023-11-13', '11:53:00', 9, 4, 1.80, 1.00, 'RR-777-RR           ');
INSERT INTO public.pesee VALUES (18, '2023-11-13', '11:55:00', 1, 2, 1.50, 0.80, 'KK-000-KK           ');
INSERT INTO public.pesee VALUES (19, '2023-11-13', '11:57:00', 2, 5, 1.40, 0.90, 'AA-000-AA           ');
INSERT INTO public.pesee VALUES (20, '2023-11-13', '11:59:00', 8, 4, 1.90, 1.00, 'JJ-999-JJ           ');
INSERT INTO public.pesee VALUES (21, '2023-11-13', '12:01:00', 6, 1, 2.00, 1.30, 'SS-888-SS           ');
INSERT INTO public.pesee VALUES (3, '2023-11-13', '11:25:00', 7, 4, 1.70, 1.20, 'DD-333-DD           ');
INSERT INTO public.pesee VALUES (4, '2023-11-13', '11:27:00', 3, 2, 1.20, 0.50, 'PP-555-PP           ');
INSERT INTO public.pesee VALUES (5, '2023-11-13', '11:29:00', 4, 5, 1.50, 1.20, 'MM-222-MM           ');
INSERT INTO public.pesee VALUES (6, '2023-11-13', '11:31:00', 8, 4, 1.70, 1.20, 'QQ-666-QQ           ');
INSERT INTO public.pesee VALUES (7, '2023-11-13', '11:33:00', 9, 2, 1.50, 1.10, 'BB-111-BB           ');
INSERT INTO public.pesee VALUES (8, '2023-11-13', '11:35:00', 2, 3, 1.40, 1.20, 'KK-000-KK           ');
INSERT INTO public.pesee VALUES (9, '2023-11-13', '11:37:00', 7, 1, 1.90, 1.10, 'FF-555-FF           ');
INSERT INTO public.pesee VALUES (10, '2023-11-13', '11:39:00', 3, 1, 1.80, 1.00, 'OO-444-OO           ');
INSERT INTO public.pesee VALUES (22, '2023-11-17', '14:10:00', 8, 4, 1.50, 1.10, 'OO-444-OO           ');
INSERT INTO public.pesee VALUES (23, '2023-11-17', '14:12:00', 2, 3, 1.10, 0.50, 'QQ-666-QQ           ');
INSERT INTO public.pesee VALUES (24, '2023-11-17', '14:13:00', 7, 1, 1.80, 1.00, 'PP-555-PP           ');
INSERT INTO public.pesee VALUES (25, '2023-11-17', '14:14:00', 5, 5, 1.40, 1.10, 'NN-333-NN           ');
INSERT INTO public.pesee VALUES (26, '2023-11-17', '14:16:00', 9, 2, 1.60, 1.10, 'OO-444-OO           ');
INSERT INTO public.pesee VALUES (27, '2023-11-17', '14:18:00', 1, 1, 1.90, 1.50, 'RR-777-RR           ');
INSERT INTO public.pesee VALUES (28, '2023-11-17', '14:19:00', 8, 4, 2.90, 2.00, 'BB-111-BB           ');
INSERT INTO public.pesee VALUES (29, '2023-11-17', '14:21:00', 6, 2, 1.80, 1.10, 'LL-111-LL           ');
INSERT INTO public.pesee VALUES (30, '2023-11-17', '14:23:00', 7, 5, 1.90, 1.30, 'OO-444-OO           ');
INSERT INTO public.pesee VALUES (31, '2023-11-17', '14:25:00', 6, 1, 1.50, 1.20, 'SS-888-SS           ');
INSERT INTO public.pesee VALUES (32, '2023-11-17', '14:27:00', 6, 3, 2.10, 1.50, 'EE-444-EE           ');
INSERT INTO public.pesee VALUES (33, '2023-11-17', '14:29:00', 5, 3, 2.00, 1.40, 'II-888-II           ');
INSERT INTO public.pesee VALUES (34, '2023-11-17', '14:31:00', 5, 2, 1.60, 1.10, 'AA-000-AA           ');
INSERT INTO public.pesee VALUES (35, '2023-11-17', '14:33:00', 6, 4, 1.00, 0.50, 'PP-555-PP           ');
INSERT INTO public.pesee VALUES (36, '2023-11-17', '14:35:00', 3, 2, 1.20, 1.00, 'MM-222-MM           ');
INSERT INTO public.pesee VALUES (37, '2023-11-17', '14:37:00', 1, 3, 1.50, 1.10, 'BB-111-BB           ');
INSERT INTO public.pesee VALUES (38, '2023-11-17', '14:39:00', 3, 5, 1.30, 0.70, 'TT-999-TT           ');
INSERT INTO public.pesee VALUES (39, '2023-11-17', '14:41:00', 4, 1, 1.80, 1.50, 'FF-555-FF           ');
INSERT INTO public.pesee VALUES (40, '2023-11-17', '14:43:00', 8, 4, 1.90, 1.20, 'NN-333-NN           ');
INSERT INTO public.pesee VALUES (41, '2023-11-17', '14:45:00', 6, 3, 1.10, 1.10, 'RR-777-RR           ');
INSERT INTO public.pesee VALUES (42, '2023-11-17', '14:47:00', 9, 5, 1.00, 0.50, 'HH-777-HH           ');
INSERT INTO public.pesee VALUES (43, '2023-11-17', '14:49:00', 4, 1, 1.60, 1.10, 'KK-000-KK           ');
INSERT INTO public.pesee VALUES (44, '2023-11-17', '14:51:00', 5, 2, 1.20, 0.50, 'GG-666-GG           ');
INSERT INTO public.pesee VALUES (45, '2023-11-17', '14:53:00', 5, 5, 1.70, 1.40, 'MM-222-MM           ');
INSERT INTO public.pesee VALUES (46, '2023-11-17', '14:55:00', 2, 4, 2.10, 1.70, 'OO-444-OO           ');
INSERT INTO public.pesee VALUES (47, '2023-11-17', '14:57:00', 6, 3, 2.30, 1.80, 'CC-222-CC           ');
INSERT INTO public.pesee VALUES (48, '2023-11-17', '14:59:00', 8, 2, 1.20, 0.90, 'FF-555-FF           ');
INSERT INTO public.pesee VALUES (49, '2023-11-17', '15:01:00', 5, 2, 1.60, 1.10, 'JJ-999-JJ           ');
INSERT INTO public.pesee VALUES (50, '2023-11-17', '15:03:00', 9, 5, 1.10, 0.50, 'II-888-II           ');


--
-- TOC entry 3345 (class 0 OID 16468)
-- Dependencies: 214
-- Data for Name: syndicat; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.syndicat VALUES (1, 'Syndicat1', '1 rue machin', '01 01 01 01 01');
INSERT INTO public.syndicat VALUES (2, 'Syndicat2', '1 boulevard truc', '02 02 02 02 02');
INSERT INTO public.syndicat VALUES (3, 'Syndicat3', '1 avenue bidule', '03 03 03 03 03');
INSERT INTO public.syndicat VALUES (4, 'Syndicat4', '1 voie machin', '04 04 04 04 04');
INSERT INTO public.syndicat VALUES (5, 'Syndicat5', '1 passage de truc', '05 05 05 05 05');


--
-- TOC entry 3347 (class 0 OID 16482)
-- Dependencies: 216
-- Data for Name: type_dechets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.type_dechets VALUES (1, 'Verre');
INSERT INTO public.type_dechets VALUES (2, 'Emballages recyclables');
INSERT INTO public.type_dechets VALUES (3, 'Ordures ménagères');
INSERT INTO public.type_dechets VALUES (4, 'Encombrants');
INSERT INTO public.type_dechets VALUES (5, 'Déchets verts');
INSERT INTO public.type_dechets VALUES (6, 'Déchets éléctriques');
INSERT INTO public.type_dechets VALUES (7, 'Déchets dangeureux');
INSERT INTO public.type_dechets VALUES (8, 'Déchets electroniques');
INSERT INTO public.type_dechets VALUES (9, 'Emballages non recyclables');
INSERT INTO public.type_dechets VALUES (10, 'Cartons');


--
-- TOC entry 3191 (class 2606 OID 16522)
-- Name: camion camion_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.camion
    ADD CONSTRAINT camion_pk PRIMARY KEY (no_immat);


--
-- TOC entry 3197 (class 2606 OID 16541)
-- Name: limitation limitation_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limitation
    ADD CONSTRAINT limitation_pk PRIMARY KEY (code_type, no_immat);


--
-- TOC entry 3195 (class 2606 OID 16493)
-- Name: pesee pesee_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesee
    ADD CONSTRAINT pesee_pk PRIMARY KEY (code_bordereau_pesee);


--
-- TOC entry 3189 (class 2606 OID 16474)
-- Name: syndicat syndicat_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.syndicat
    ADD CONSTRAINT syndicat_pk PRIMARY KEY (code_syndicat);


--
-- TOC entry 3193 (class 2606 OID 16486)
-- Name: type_dechets type_dechets_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_dechets
    ADD CONSTRAINT type_dechets_pk PRIMARY KEY (code_type);


--
-- TOC entry 3201 (class 2606 OID 16530)
-- Name: limitation limitation_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limitation
    ADD CONSTRAINT limitation_fk FOREIGN KEY (no_immat) REFERENCES public.camion(no_immat);


--
-- TOC entry 3202 (class 2606 OID 16535)
-- Name: limitation limitation_fk_1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.limitation
    ADD CONSTRAINT limitation_fk_1 FOREIGN KEY (code_type) REFERENCES public.type_dechets(code_type);


--
-- TOC entry 3198 (class 2606 OID 16494)
-- Name: pesee pesee_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesee
    ADD CONSTRAINT pesee_fk FOREIGN KEY (code_type) REFERENCES public.type_dechets(code_type);


--
-- TOC entry 3199 (class 2606 OID 16504)
-- Name: pesee pesee_fk_2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesee
    ADD CONSTRAINT pesee_fk_2 FOREIGN KEY (code_syndicat) REFERENCES public.syndicat(code_syndicat);


--
-- TOC entry 3200 (class 2606 OID 16630)
-- Name: pesee pesee_fk_3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pesee
    ADD CONSTRAINT pesee_fk_3 FOREIGN KEY (no_immat) REFERENCES public.camion(no_immat);


-- Completed on 2023-11-17 14:49:41

--
-- PostgreSQL database dump complete
--

