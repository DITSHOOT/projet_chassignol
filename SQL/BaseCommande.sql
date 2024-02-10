--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Homebrew)
-- Dumped by pg_dump version 14.10 (Homebrew)

-- Started on 2023-11-13 16:27:10 CET

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
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: dimitrichassignol
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO dimitrichassignol;

--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: dimitrichassignol
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 210 (class 1259 OID 16491)
-- Name: commande; Type: TABLE; Schema: public; Owner: dimitrichassignol
--

CREATE TABLE public.commande (
    id_commande integer NOT NULL,
    reference character varying(255),
    date_commande date NOT NULL,
    id_four integer NOT NULL
);


ALTER TABLE public.commande OWNER TO dimitrichassignol;

--
-- TOC entry 209 (class 1259 OID 16384)
-- Name: fournisseur; Type: TABLE; Schema: public; Owner: dimitrichassignol
--

CREATE TABLE public.fournisseur (
    nom character varying(255) NOT NULL,
    id_fournisseurs integer NOT NULL
);


ALTER TABLE public.fournisseur OWNER TO dimitrichassignol;

--
-- TOC entry 3600 (class 0 OID 16491)
-- Dependencies: 210
-- Data for Name: commande; Type: TABLE DATA; Schema: public; Owner: dimitrichassignol
--



--
-- TOC entry 3599 (class 0 OID 16384)
-- Dependencies: 209
-- Data for Name: fournisseur; Type: TABLE DATA; Schema: public; Owner: dimitrichassignol
--



--
-- TOC entry 3458 (class 2606 OID 16495)
-- Name: commande commande_pk; Type: CONSTRAINT; Schema: public; Owner: dimitrichassignol
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_pk PRIMARY KEY (id_four);


--
-- TOC entry 3456 (class 2606 OID 16490)
-- Name: fournisseur fournisseur_pk; Type: CONSTRAINT; Schema: public; Owner: dimitrichassignol
--

ALTER TABLE ONLY public.fournisseur
    ADD CONSTRAINT fournisseur_pk PRIMARY KEY (id_fournisseurs);


--
-- TOC entry 3459 (class 2606 OID 16496)
-- Name: commande commande_fk; Type: FK CONSTRAINT; Schema: public; Owner: dimitrichassignol
--

ALTER TABLE ONLY public.commande
    ADD CONSTRAINT commande_fk FOREIGN KEY (id_four) REFERENCES public.fournisseur(id_fournisseurs);


-- Completed on 2023-11-13 16:27:11 CET

--
-- PostgreSQL database dump complete
--

